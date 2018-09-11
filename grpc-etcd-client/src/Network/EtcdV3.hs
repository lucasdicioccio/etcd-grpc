{-# LANGUAGE TypeFamilies     #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Simple lib to access Etcd over gRPC.
module Network.EtcdV3
    (
    -- * Generalities.
      etcdClientConfigSimple
    , EtcdQuery
    -- * Reading.
    , KeyRange(..)
    , range
    , rangeResponsePairs
    -- * Granting leases.
    , grantLease
    , GrantedLease
    , fromLeaseGrantResponse
    , keepAlive
    -- * Writing.
    , put
    , delete
    -- * Locking.
    , AcquiredLock
    , fromLockResponse
    , lock
    , unlock
    -- * Transactions.
    , transaction
    -- * A Few Smart Constructors To Make Life Easy When Building Transactions.
    , successTxnReq
    , kvEq
    , kvNeq
    , kvGt
    , kvLt
    , rangeReq
    , putReq
    , delReq
    -- * Watches.
    , watchForever
    , watchReq
    -- * re-exports
    , def
    , module Control.Lens
    ) where

import Control.Lens
import Control.Exception (throwIO)
import Data.Default.Class (def)
import Data.ByteString (ByteString)
import qualified Data.ByteString.Char8 as C8
import Data.Semigroup (Endo)
import GHC.Int (Int64)
import Network.GRPC.Client
import Network.GRPC.Client.Helpers
import Network.HTTP2.Client (TooMuchConcurrency)
import Network.Socket (HostName, PortNumber)
import qualified Proto.Etcd.Etcdserver.Etcdserverpb.Rpc as EtcdRPC
import qualified Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields as EtcdPB
import qualified Proto.Etcd.Etcdserver.Api.V3lock.V3lockpb.V3lock as LockRPC
import qualified Proto.Etcd.Etcdserver.Api.V3lock.V3lockpb.V3lock_Fields as LockPB

-- | EtcdClient configuration.
etcdClientConfigSimple :: HostName -> PortNumber -> UseTlsOrNot -> GrpcClientConfig
etcdClientConfigSimple host port tls =
    (grpcClientConfigSimple host port tls) { _grpcClientConfigCompression = uncompressed }

-- | Type alias to simplify type signatures.
type EtcdQuery a = IO (Maybe a)

-----------------------------------------------------------------------------------------

-- | Data type to unify the three addressing schemes in etcd.
--
-- See 'range'.
data KeyRange
  = SingleKey !ByteString
  -- ^ Exactly one key.
  | FromKey !ByteString
  | Prefixed !ByteString
  deriving (Show, Eq, Ord)

-- | Lookup a range of values
range
  :: GrpcClient
  -- ^ Initialized gRPC client.
  -> KeyRange
  -- ^ Looked-up range.
  -> EtcdQuery EtcdRPC.RangeResponse
range grpc r = preview unaryOutput <$>
    rawUnary (RPC :: RPC EtcdRPC.KV "range") grpc (rangeReq r)

rangeReq :: KeyRange -> EtcdRPC.RangeRequest
rangeReq r = def
  & EtcdPB.key .~ k0
  & EtcdPB.rangeEnd .~ kend
  where
    (k0, kend) = rangePairForRangeQuery r

-- | Specific fold to get the key-values of a 'RangeResponse'
--
-- Typical usage is:
--
-- @ x <- range grpc (Prefixed "/some-dir/")
-- @ print $ x ^.. _Just . rangePairs
--
-- Note that Etcd RangeResponse is a rich object, please refer to Etcd
-- documentation to understand what you will miss out (e.g., whether the list
-- is complete or not).
rangeResponsePairs
  :: Getting (Endo [(ByteString, ByteString)]) EtcdRPC.RangeResponse (ByteString, ByteString)
rangeResponsePairs = EtcdPB.kvs . traverse . to (\x -> (x ^. EtcdPB.key, x ^. EtcdPB.value))

-- | Internal helper for turning a 'KeyRange' into the start/end queries Etcd
-- 'range' RPC needs.
rangePairForRangeQuery :: KeyRange -> (ByteString, ByteString)
rangePairForRangeQuery (SingleKey k) = (k, "")
rangePairForRangeQuery (FromKey k) = (k, "\NUL")
rangePairForRangeQuery (Prefixed k) = (k, kPlus1)
  where
    rest = C8.dropWhile (== '\xff') $ C8.reverse k
    kPlus1 = if C8.null rest then "\NUL" else C8.reverse $ C8.cons (succ (C8.head rest)) (C8.drop 1 rest)

-----------------------------------------------------------------------------------------

-- | Asks for a lease of a given duration.
grantLease
  :: GrpcClient
  -- ^ Initialized gRPC client.
  -> Int64
  -- ^ TTL for the lease.
  -> EtcdQuery EtcdRPC.LeaseGrantResponse
grantLease grpc seconds =
    preview unaryOutput <$> rawUnary (RPC :: RPC EtcdRPC.Lease "leaseGrant") grpc (def & EtcdPB.ttl .~ seconds)

-- | Opaque lease result.
--
-- Show instance used for printing purposes only.
newtype GrantedLease = GrantedLease { _getGrantedLeaseId :: Int64 }

instance Show GrantedLease where
  show (GrantedLease n) = "(lease #" <> show n <> ")"

-- | Constructor for 'GrantedLease'.
fromLeaseGrantResponse :: EtcdRPC.LeaseGrantResponse -> GrantedLease
fromLeaseGrantResponse r = GrantedLease $ r ^. EtcdPB.id

-- | Keep a lease alive.
keepAlive
  :: GrpcClient
  -- ^ Initialized gRPC client.
  -> GrantedLease
  -- ^ A previously-granted lease.
  -> EtcdQuery EtcdRPC.LeaseKeepAliveResponse
keepAlive grpc (GrantedLease leaseID) =
    preview unaryOutput <$> rawUnary (RPC :: RPC EtcdRPC.Lease "leaseKeepAlive") grpc (def & EtcdPB.id .~ leaseID)

-----------------------------------------------------------------------------------------

-- | Put one value.
put
  :: GrpcClient
  -- ^ initialized gRPC client
  -> ByteString
  -- ^ Key.
  -> ByteString

  -- ^ Value.
  -> Maybe GrantedLease
  -- ^ Lease on the key.
  -> EtcdQuery EtcdRPC.PutResponse
put grpc k v gl =
    preview unaryOutput <$> rawUnary (RPC :: RPC EtcdRPC.KV "put") grpc (putReq k v gl)

putReq :: ByteString -> ByteString -> Maybe GrantedLease -> EtcdRPC.PutRequest
putReq k v gl = def
  & EtcdPB.key .~ k
  & EtcdPB.value .~ v
  & EtcdPB.lease .~ (maybe 0 _getGrantedLeaseId gl)

-- | Delete a range of values.
delete
  :: GrpcClient
  -- ^ Initialized gRPC client.
  -> KeyRange
  -- ^ Deleted range.
  -> EtcdQuery EtcdRPC.DeleteRangeResponse
delete grpc r = preview unaryOutput <$>
    rawUnary (RPC :: RPC EtcdRPC.KV "deleteRange") grpc (delReq r)

delReq :: KeyRange -> EtcdRPC.DeleteRangeRequest
delReq r = def
  & EtcdPB.key .~ k0
  & EtcdPB.rangeEnd .~ kend
  where
    (k0, kend) = rangePairForRangeQuery r

-----------------------------------------------------------------------------------------

-- | Opaque lock.
--
-- Show instance used for printing purposes only.
newtype AcquiredLock = AcquiredLock { _getAcquiredLock :: ByteString }

instance Show AcquiredLock where
  show (AcquiredLock n) = "(lock #" <> show n <> ")"

fromLockResponse :: LockRPC.LockResponse -> AcquiredLock
fromLockResponse l = AcquiredLock $ l ^. LockPB.key

lock
  :: GrpcClient
  -- ^ Initialized gRPC client.
  -> ByteString
  -- ^ Lock Name
  -> GrantedLease
  -- ^ Previously-granted lease that will bound the lifetime of the lock ownership.
  -> EtcdQuery LockRPC.LockResponse
lock grpc n (GrantedLease leaseID) = preview unaryOutput <$>
    rawUnary (RPC :: RPC LockRPC.Lock "lock") grpc (def & LockPB.name .~ n & LockPB.lease .~ leaseID)

unlock
  :: GrpcClient
  -- ^ Initialized gRPC client.
  -> AcquiredLock
  -- ^ Previously-acquired lock.
  -> EtcdQuery LockRPC.UnlockResponse
unlock grpc (AcquiredLock k) = preview unaryOutput <$>
    rawUnary (RPC :: RPC LockRPC.Lock "unlock") grpc (def & LockPB.key .~ k)

-----------------------------------------------------------------------------------------

kvEq :: ByteString -> ByteString -> EtcdRPC.Compare
kvEq k v = def
  & EtcdPB.target .~ EtcdRPC.Compare'VALUE
  & EtcdPB.result .~ EtcdRPC.Compare'EQUAL
  & EtcdPB.key    .~ k
  & EtcdPB.value  .~ v

kvNeq :: ByteString -> ByteString -> EtcdRPC.Compare
kvNeq k v = def
  & EtcdPB.target .~ EtcdRPC.Compare'VALUE
  & EtcdPB.result .~ EtcdRPC.Compare'NOT_EQUAL
  & EtcdPB.key    .~ k
  & EtcdPB.value  .~ v

kvGt :: ByteString -> ByteString -> EtcdRPC.Compare
kvGt k v = def
  & EtcdPB.target .~ EtcdRPC.Compare'VALUE
  & EtcdPB.result .~ EtcdRPC.Compare'GREATER
  & EtcdPB.key    .~ k
  & EtcdPB.value  .~ v

kvLt :: ByteString -> ByteString -> EtcdRPC.Compare
kvLt k v = def
  & EtcdPB.target .~ EtcdRPC.Compare'VALUE
  & EtcdPB.result .~ EtcdRPC.Compare'LESS
  & EtcdPB.key    .~ k
  & EtcdPB.value  .~ v

successTxnReq
  :: [EtcdRPC.Compare]
  -> [EtcdRPC.PutRequest]
  -> [EtcdRPC.DeleteRangeRequest]
  -> [EtcdRPC.RangeRequest]
  -> EtcdRPC.TxnRequest
successTxnReq cmps rps drrs rrs = def
  & EtcdPB.compare .~ cmps
  & EtcdPB.success .~ (mconcat [
          [ def & EtcdPB.maybe'requestPut ?~ rp | rp <- rps ]
        , [ def & EtcdPB.maybe'requestDeleteRange ?~ drr | drr <- drrs ]
        , [ def & EtcdPB.maybe'requestRange ?~ rr | rr <- rrs ]
        ])

transaction
  :: GrpcClient
  -> EtcdRPC.TxnRequest
  -> EtcdQuery EtcdRPC.TxnResponse
transaction grpc tx = preview unaryOutput <$>
    rawUnary (RPC :: RPC EtcdRPC.KV "txn") grpc tx

-----------------------------------------------------------------------------------------

watchReq
  :: KeyRange
  -> [EtcdRPC.WatchCreateRequest'FilterType]
  -> Int64
  -> EtcdRPC.WatchRequest
watchReq r fs wId = def
  & EtcdPB.maybe'createRequest ?~ (def
      & EtcdPB.key .~ k0
      & EtcdPB.rangeEnd .~ kend
      & EtcdPB.filters .~ fs
      & EtcdPB.fragment .~ True
      & EtcdPB.watchId .~ wId)
  where
    (k0, kend) = rangePairForRangeQuery r

-- | Starts some watches until an exception occurs.
--
-- Alas there is no simple way to discard a watch or stop a stream with this
-- method as http2-client-grpc does not yet expose an 'OutgoingEvent' to
-- forcefully close the client stream.
watchForever
  :: GrpcClient
  -> [EtcdRPC.WatchRequest]
  -> (a -> EtcdRPC.WatchResponse -> IO a)
  -> a
  -> IO (Either TooMuchConcurrency ())
watchForever grpc wcs handle v0 = do
    fmap (const ()) <$> rawGeneralStream (RPC :: RPC EtcdRPC.Watch "watch") grpc v0 handleWatch wcs registerAndWait
  where
    handleWatch v (RecvMessage msg) = handle v msg
    handleWatch _ (Invalid err)     = throwIO err
    handleWatch v _                 = pure v
    registerAndWait (x:xs)          = pure (xs, SendMessage Compressed x)
    registerAndWait []              = pure ([], Finalize)
