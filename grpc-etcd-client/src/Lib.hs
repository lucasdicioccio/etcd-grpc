{-# LANGUAGE FlexibleContexts #-}

-- | Simple lib to access Etcd over gRPC.
module Lib
    ( etcdClientConfigSimple
    , unaryOutput
    -- * re-exports
    , def
    , module Control.Lens
    ) where

import Control.Lens
import Data.Default.Class
import Data.ByteString (ByteString)
import GHC.Int (Int64)
import Network.GRPC.Client
import Network.GRPC.Client.Helpers
import Network.HTTP2.Client (TooMuchConcurrency)
import Network.Socket (HostName, PortNumber)
import Proto.Etcd.Etcdserver.Etcdserverpb.Rpc
import Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields as EtcdPB

-- | EtcdClient configurationk
etcdClientConfigSimple :: HostName -> PortNumber -> UseTlsOrNot -> GrpcClientConfig
etcdClientConfigSimple host port tls =
    (grpcClientConfigSimple host port tls) { _grpcClientConfigCompression = uncompressed }

unaryOutput
  :: (Applicative f, Field3 a1 b1 (Either c1 a2) (Either c1 b2)) =>
     (a2 -> f b2)
     -> Either c2 (Either c3 a1) -> f (Either c2 (Either c3 b1))
unaryOutput = _Right . _Right . _3 . _Right

type EtcdQuery a = IO (Maybe a)

-- | Put one value.
put :: GrpcClient -> ByteString -> ByteString -> EtcdQuery PutResponse
put grpc k v =
    preview unaryOutput <$> rawUnary (RPC :: RPC KV "put") grpc (def & key .~ k & value .~ v)

-- | Lookup one value.
--
-- This is a special RangeRequest.
lookup :: GrpcClient -> ByteString -> EtcdQuery RangeResponse
lookup grpc k =
    preview unaryOutput <$> rawUnary (RPC :: RPC KV "range") grpc (def & key .~ k)

newtype GrantedLease = GrantedLease Int64

fromLeaseGrantResponse :: LeaseGrantResponse -> GrantedLease
fromLeaseGrantResponse r = GrantedLease $ r ^. EtcdPB.id

-- | Asks for a lease of a given duration.
lease :: GrpcClient -> Int64 -> EtcdQuery LeaseGrantResponse
lease grpc seconds =
    preview unaryOutput <$> rawUnary (RPC :: RPC Lease "leaseGrant") grpc (def & ttl .~ seconds)

-- | Keep a lease alive.
keepAlive :: GrpcClient -> GrantedLease -> EtcdQuery LeaseKeepAliveResponse
keepAlive grpc (GrantedLease leaseID) =
    preview unaryOutput <$> rawUnary (RPC :: RPC Lease "leaseKeepAlive") grpc (def & EtcdPB.id .~ leaseID)
