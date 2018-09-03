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
    -- * re-exports
    , def
    , module Control.Lens
    , module EtcdPB
    , module EtcdRPC
    ) where

import Control.Lens
import Data.Default.Class (def)
import Data.ByteString (ByteString)
import qualified Data.ByteString.Char8 as C8
import Data.Semigroup (Endo)
import GHC.Int (Int64)
import Network.GRPC.Client
import Network.GRPC.Client.Helpers
import Network.Socket (HostName, PortNumber)
import Proto.Etcd.Etcdserver.Etcdserverpb.Rpc as EtcdRPC
import Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields as EtcdPB

-- | EtcdClient configuration.
etcdClientConfigSimple :: HostName -> PortNumber -> UseTlsOrNot -> GrpcClientConfig
etcdClientConfigSimple host port tls =
    (grpcClientConfigSimple host port tls) { _grpcClientConfigCompression = uncompressed }

-- | Helper to unpack an unary gRPC call output.
unaryOutput
  :: (Applicative f, Field3 a1 b1 (Either c1 a2) (Either c1 b2)) =>
     (a2 -> f b2)
     -> Either c2 (Either c3 a1) -> f (Either c2 (Either c3 b1))
unaryOutput = _Right . _Right . _3 . _Right

-- | Type alias to simplify type signatures.
type EtcdQuery a = IO (Maybe a)

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
  -> EtcdQuery RangeResponse
range grpc r = preview unaryOutput <$>
    rawUnary (RPC :: RPC KV "range") grpc (def & key .~ k0 & rangeEnd .~ kend)
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
  :: Getting (Endo [(ByteString, ByteString)]) RangeResponse (ByteString, ByteString)
rangeResponsePairs = kvs . traverse . to (\x -> (x ^. key, x ^. value))

-- | Internal helper for turning a 'KeyRange' into the start/end queries Etcd
-- 'range' RPC needs.
rangePairForRangeQuery :: KeyRange -> (ByteString, ByteString)
rangePairForRangeQuery (SingleKey k) = (k, "")
rangePairForRangeQuery (FromKey k) = (k, "\NUL")
rangePairForRangeQuery (Prefixed k) = (k, kPlus1)
  where
    rest = C8.dropWhile (== '\xff') $ C8.reverse k
    kPlus1 = if C8.null rest then "\NUL" else C8.reverse $ C8.cons (succ (C8.head rest)) (C8.drop 1 rest)

-- | Asks for a lease of a given duration.
grantLease
  :: GrpcClient
  -- ^ Initialized gRPC client.
  -> Int64
  -- ^ TTL for the lease.
  -> EtcdQuery LeaseGrantResponse
grantLease grpc seconds =
    preview unaryOutput <$> rawUnary (RPC :: RPC Lease "leaseGrant") grpc (def & ttl .~ seconds)

-- | Opaque lease result.
--
-- Show instance used for printing purposes only.
newtype GrantedLease = GrantedLease { _getGrantedLeaseId :: Int64 }

instance Show GrantedLease where
  show (GrantedLease n) = "(lease #" <> show n <> ")"

-- | Constructor for 'GrantedLease'.
fromLeaseGrantResponse :: LeaseGrantResponse -> GrantedLease
fromLeaseGrantResponse r = GrantedLease $ r ^. EtcdPB.id

-- | Keep a lease alive.
keepAlive
  :: GrpcClient
  -- ^ Initialized gRPC client.
  -> GrantedLease
  -- ^ A previously-granted lease.
  -> EtcdQuery LeaseKeepAliveResponse
keepAlive grpc (GrantedLease leaseID) =
    preview unaryOutput <$> rawUnary (RPC :: RPC Lease "leaseKeepAlive") grpc (def & EtcdPB.id .~ leaseID)

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
  -> EtcdQuery PutResponse
put grpc k v gl =
    preview unaryOutput <$> rawUnary (RPC :: RPC KV "put") grpc (def & key .~ k & value .~ v & lease .~ l)
  where
    l = maybe 0 _getGrantedLeaseId gl
