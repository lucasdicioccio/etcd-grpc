{-# LANGUAGE TypeFamilies     #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

-- | Simple lib to access Etcd over gRPC.
--
-- This library offers a low-on-details EtcdV3 APIs to easily add distributed
-- system mechanisms into your Haskell applications.
--
-- This library uses the 'Network.GRPC.Client.Helpers' module from
-- 'http2-client-grpc', which may trade some functionalities for the sake of
-- simplicity. A typically hidden functionality is the possibility to abort a
-- query upon a client decision (e.g., while waiting for some Lock).
--
-- In general, this library provides some simplification to express the input
-- messages of RPCs. For instance, the MVCC capabilities are mostly hidden from
-- the _querying_ side of this library (i.e., queries will requet the latest
-- revision of a key/value pair). It is pretty simple, however, to reuse the
-- smart constructor (such as 'putReq' and continue editing values with lens)
-- and then call the gRPC RPC in a one liner.
--
-- A reason for this design is that the intended user of this library will run
-- a continuous loop to acquire some leadership or monitor some values for the
-- whole duration of a program.
module Network.EtcdV3
    (
    -- * Generalities.
      etcdClientConfigSimple
    , EtcdQuery
    -- * Reading.
    , KeyRange(..)
    , range
    , rangeReq
    , rangeResponsePairs
    -- * Granting leases.
    , grantLease
    , GrantedLease
    , fromLeaseGrantResponse
    , keepAlive
    -- * Writing.
    , put
    , putReq
    , delete
    , delReq
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
    -- * Watches.
    , watchForever
    , watchReq
    -- * Leader election.
    , Election(..)
    , LeaderEvidence
    , runForLeadership
    , fromCampaignResponse
    , proclaim
    , resign
    , getProclaimedValue
    , observeProclaimedValues
    , proclaimReq
    , campaignReq
    , resignReq
    , leaderReq
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
import Data.String (IsString)
import GHC.Int (Int64)
import Network.GRPC.Client
import Network.GRPC.Client.Helpers
import Network.HTTP2.Client (TooMuchConcurrency)
import Network.Socket (HostName, PortNumber)
import qualified Proto.Etcd.Etcdserver.Etcdserverpb.Rpc as EtcdRPC
import qualified Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields as EtcdPB
import qualified Proto.Etcd.Etcdserver.Api.V3lock.V3lockpb.V3lock as LockRPC
import qualified Proto.Etcd.Etcdserver.Api.V3lock.V3lockpb.V3lock_Fields as LockPB
import qualified Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election as ElectionRPC
import qualified Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields as ElectionPB

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

-- | Smart constructor, to use in conjunction with other smart constructor
-- which give a small DSL for the common cases. The proto-lens generated code
-- is fine but requires qualified imports to avoid namespace clashes.
--
-- Example use:
-- @
-- putStrLn $ Data.ProtoLens.showMessage$ successTxnReq [kvEq "hello" "world"] [putReq "txn-written" "1234" Nothing] [] []
-- compare { target: VALUE key: "hello" value: "world" }
-- success { request_put { key: "txn-written" value: "1234" } }
-- @
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

-- | Issue a transaction request, performing many modifications at once.
--
-- See 'successTxnReq' for a smart constructor of transaction request.
transaction
  :: GrpcClient
  -- ^ Initialized gRPC client.
  -> EtcdRPC.TxnRequest
  -- ^ Transaction
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
--
-- See 'watchReq' for building watch requests.
watchForever
  :: GrpcClient
  -- ^ Initialized gRPC client.
  -> [EtcdRPC.WatchRequest]
  -- ^ List of watches to register.
  -> (a -> EtcdRPC.WatchResponse -> IO a)
  -- ^ State-passing handler for handling watches.
  -> a
  -- ^ Initial state.
  -> IO (Either TooMuchConcurrency ())
watchForever grpc wcs handle v0 = do
    fmap (const ()) <$> rawGeneralStream (RPC :: RPC EtcdRPC.Watch "watch") grpc v0 handleWatch wcs registerAndWait
  where
    handleWatch v (RecvMessage msg) = handle v msg
    handleWatch _ (Invalid err)     = throwIO err
    handleWatch v _                 = pure v
    registerAndWait (x:xs)          = pure (xs, SendMessage Compressed x)
    registerAndWait []              = pure ([], Finalize)

-----------------------------------------------------------------------------------------

-- | A newtype around ByteString to speak about election names.
newtype Election = Election { _getElectionName :: ByteString }
  deriving (Show, Eq, Ord, IsString)

-- | An Opaque type around returned leader key.
newtype LeaderEvidence = LeaderEvidence { _getLeaderKey :: ElectionRPC.LeaderKey }

-- | Waits until elected.
runForLeadership
  :: GrpcClient
  -- ^ Initialized gRPC client.
  -> Election
  -- ^ An election to run for.
  -> GrantedLease
  -- ^ A lease delimiting the leadership duration.
  -> ByteString
  -- ^ The initially-proclaimed value.
  -> EtcdQuery ElectionRPC.CampaignResponse
runForLeadership grpc el gl v = preview unaryOutput <$>
    rawUnary (RPC :: RPC ElectionRPC.Election "campaign") grpc (campaignReq el gl v)

campaignReq
  :: Election
  -> GrantedLease
  -> ByteString
  -> ElectionRPC.CampaignRequest
campaignReq el gl v = def
  & ElectionPB.name .~ _getElectionName el
  & ElectionPB.lease .~ _getGrantedLeaseId gl
  & ElectionPB.value .~ v

-- | Helper to retrieve an evidence that we are a leader from a CampaignResponse.
fromCampaignResponse :: ElectionRPC.CampaignResponse -> Maybe LeaderEvidence
fromCampaignResponse cr = cr ^? ElectionPB.leader . to LeaderEvidence

-- | As a leader, proclaim a new value.
--
-- Observers will be notified.
proclaim
  :: GrpcClient
  -- ^ Initialized gRPC client.
  -> LeaderEvidence
  -- ^ Proof of recent successful participation to a leader-election.
  -> ByteString
  -- ^ New value to proclaim.
  -> EtcdQuery ElectionRPC.ProclaimResponse
proclaim grpc le v = preview unaryOutput <$>
    rawUnary (RPC :: RPC ElectionRPC.Election "proclaim") grpc (proclaimReq le v)

proclaimReq
  :: LeaderEvidence
  -> ByteString
  -> ElectionRPC.ProclaimRequest
proclaimReq le v = def
  & ElectionPB.leader .~ _getLeaderKey le
  & ElectionPB.value .~ v

-- | Resign from leadership.
--
-- If other campaigners are waiting for the role, they will get elected.
resign
  :: GrpcClient
  -- ^ Initialized gRPC client.
  -> LeaderEvidence
  -- ^ Proof of recent successful participation to a leader-election.
  -> EtcdQuery ElectionRPC.ResignResponse
resign grpc le = preview unaryOutput <$>
    rawUnary (RPC :: RPC ElectionRPC.Election "resign") grpc (resignReq le)

resignReq
  :: LeaderEvidence
  -> ElectionRPC.ResignRequest
resignReq le = def
  & ElectionPB.leader .~ _getLeaderKey le

-- | As a bystander of an election, get the proclaimed value.
getProclaimedValue
  :: GrpcClient
  -- ^ Initialized gRPC client.
  -> Election
  -- ^ Election to read value from.
  -> EtcdQuery ElectionRPC.LeaderResponse
getProclaimedValue grpc el = preview unaryOutput <$>
    rawUnary (RPC :: RPC ElectionRPC.Election "leader") grpc (leaderReq el)

leaderReq
  :: Election
  -> ElectionRPC.LeaderRequest
leaderReq el = def
  & ElectionPB.name .~ _getElectionName el

-- | As a bystander of an election, get notified for every proclaimed value.
observeProclaimedValues
  :: GrpcClient
  -- ^ Initialized gRPC client.
  -> Election
  -- ^ Election to wait for values from.
  -> (a -> ElectionRPC.LeaderResponse -> IO a)
  -- ^ State-passing handler for handling iteratively updated proclaimed values.
  -> a
  -- ^ An initial state.
  -> IO (Either TooMuchConcurrency a)
observeProclaimedValues grpc el handler v0 = fmap (view _1) <$>
    rawStreamServer (RPC :: RPC ElectionRPC.Election "observe") grpc v0 (observeReq el) handle2
  where
    observeReq = leaderReq
    handle2 v1 _ msg = handler v1 msg
