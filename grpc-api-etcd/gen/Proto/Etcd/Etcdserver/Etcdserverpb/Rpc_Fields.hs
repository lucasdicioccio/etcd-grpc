{- This file was auto-generated from etcd/etcdserver/etcdserverpb/rpc.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields where
import qualified Data.ProtoLens.Reexport.Prelude as Prelude
import qualified Data.ProtoLens.Reexport.Data.Int as Data.Int
import qualified Data.ProtoLens.Reexport.Data.Word as Data.Word
import qualified Data.ProtoLens.Reexport.Data.ProtoLens
       as Data.ProtoLens
import qualified
       Data.ProtoLens.Reexport.Data.ProtoLens.Message.Enum
       as Data.ProtoLens.Message.Enum
import qualified
       Data.ProtoLens.Reexport.Data.ProtoLens.Service.Types
       as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Reexport.Lens.Family2
       as Lens.Family2
import qualified Data.ProtoLens.Reexport.Lens.Family2.Unchecked
       as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Reexport.Data.Default.Class
       as Data.Default.Class
import qualified Data.ProtoLens.Reexport.Data.Text as Data.Text
import qualified Data.ProtoLens.Reexport.Data.Map as Data.Map
import qualified Data.ProtoLens.Reexport.Data.ByteString
       as Data.ByteString
import qualified Data.ProtoLens.Reexport.Data.ByteString.Char8
       as Data.ByteString.Char8
import qualified Data.ProtoLens.Reexport.Lens.Labels as Lens.Labels
import qualified Data.ProtoLens.Reexport.Text.Read as Text.Read
import qualified Proto.Etcd.Auth.Authpb.Auth
import qualified Proto.Etcd.Mvcc.Mvccpb.Kv
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations

action ::
       forall f s t a b . (Lens.Labels.HasLens f s t "action" a b) =>
         Lens.Family2.LensLike f s t a b
action
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "action")
alarm ::
      forall f s t a b . (Lens.Labels.HasLens f s t "alarm" a b) =>
        Lens.Family2.LensLike f s t a b
alarm
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "alarm")
alarms ::
       forall f s t a b . (Lens.Labels.HasLens f s t "alarms" a b) =>
         Lens.Family2.LensLike f s t a b
alarms
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "alarms")
blob ::
     forall f s t a b . (Lens.Labels.HasLens f s t "blob" a b) =>
       Lens.Family2.LensLike f s t a b
blob
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "blob")
cancelReason ::
             forall f s t a b .
               (Lens.Labels.HasLens f s t "cancelReason" a b) =>
               Lens.Family2.LensLike f s t a b
cancelReason
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "cancelReason")
cancelRequest ::
              forall f s t a b .
                (Lens.Labels.HasLens f s t "cancelRequest" a b) =>
                Lens.Family2.LensLike f s t a b
cancelRequest
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "cancelRequest")
canceled ::
         forall f s t a b . (Lens.Labels.HasLens f s t "canceled" a b) =>
           Lens.Family2.LensLike f s t a b
canceled
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "canceled")
checkpoints ::
            forall f s t a b . (Lens.Labels.HasLens f s t "checkpoints" a b) =>
              Lens.Family2.LensLike f s t a b
checkpoints
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "checkpoints")
clientURLs ::
           forall f s t a b . (Lens.Labels.HasLens f s t "clientURLs" a b) =>
             Lens.Family2.LensLike f s t a b
clientURLs
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "clientURLs")
clusterId ::
          forall f s t a b . (Lens.Labels.HasLens f s t "clusterId" a b) =>
            Lens.Family2.LensLike f s t a b
clusterId
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "clusterId")
compactRevision ::
                forall f s t a b .
                  (Lens.Labels.HasLens f s t "compactRevision" a b) =>
                  Lens.Family2.LensLike f s t a b
compactRevision
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "compactRevision")
compare ::
        forall f s t a b . (Lens.Labels.HasLens f s t "compare" a b) =>
          Lens.Family2.LensLike f s t a b
compare
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "compare")
count ::
      forall f s t a b . (Lens.Labels.HasLens f s t "count" a b) =>
        Lens.Family2.LensLike f s t a b
count
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "count")
countOnly ::
          forall f s t a b . (Lens.Labels.HasLens f s t "countOnly" a b) =>
            Lens.Family2.LensLike f s t a b
countOnly
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "countOnly")
createRequest ::
              forall f s t a b .
                (Lens.Labels.HasLens f s t "createRequest" a b) =>
                Lens.Family2.LensLike f s t a b
createRequest
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "createRequest")
createRevision ::
               forall f s t a b .
                 (Lens.Labels.HasLens f s t "createRevision" a b) =>
                 Lens.Family2.LensLike f s t a b
createRevision
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "createRevision")
created ::
        forall f s t a b . (Lens.Labels.HasLens f s t "created" a b) =>
          Lens.Family2.LensLike f s t a b
created
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "created")
dbSize ::
       forall f s t a b . (Lens.Labels.HasLens f s t "dbSize" a b) =>
         Lens.Family2.LensLike f s t a b
dbSize
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "dbSize")
dbSizeInUse ::
            forall f s t a b . (Lens.Labels.HasLens f s t "dbSizeInUse" a b) =>
              Lens.Family2.LensLike f s t a b
dbSizeInUse
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "dbSizeInUse")
deleted ::
        forall f s t a b . (Lens.Labels.HasLens f s t "deleted" a b) =>
          Lens.Family2.LensLike f s t a b
deleted
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "deleted")
error ::
      forall f s t a b . (Lens.Labels.HasLens f s t "error" a b) =>
        Lens.Family2.LensLike f s t a b
error
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "error")
errors ::
       forall f s t a b . (Lens.Labels.HasLens f s t "errors" a b) =>
         Lens.Family2.LensLike f s t a b
errors
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "errors")
events ::
       forall f s t a b . (Lens.Labels.HasLens f s t "events" a b) =>
         Lens.Family2.LensLike f s t a b
events
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "events")
failure ::
        forall f s t a b . (Lens.Labels.HasLens f s t "failure" a b) =>
          Lens.Family2.LensLike f s t a b
failure
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "failure")
filters ::
        forall f s t a b . (Lens.Labels.HasLens f s t "filters" a b) =>
          Lens.Family2.LensLike f s t a b
filters
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "filters")
fragment ::
         forall f s t a b . (Lens.Labels.HasLens f s t "fragment" a b) =>
           Lens.Family2.LensLike f s t a b
fragment
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fragment")
grantedTTL ::
           forall f s t a b . (Lens.Labels.HasLens f s t "grantedTTL" a b) =>
             Lens.Family2.LensLike f s t a b
grantedTTL
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "grantedTTL")
hash ::
     forall f s t a b . (Lens.Labels.HasLens f s t "hash" a b) =>
       Lens.Family2.LensLike f s t a b
hash
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "hash")
header ::
       forall f s t a b . (Lens.Labels.HasLens f s t "header" a b) =>
         Lens.Family2.LensLike f s t a b
header
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "header")
id ::
   forall f s t a b . (Lens.Labels.HasLens f s t "id" a b) =>
     Lens.Family2.LensLike f s t a b
id
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")
ignoreLease ::
            forall f s t a b . (Lens.Labels.HasLens f s t "ignoreLease" a b) =>
              Lens.Family2.LensLike f s t a b
ignoreLease
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "ignoreLease")
ignoreValue ::
            forall f s t a b . (Lens.Labels.HasLens f s t "ignoreValue" a b) =>
              Lens.Family2.LensLike f s t a b
ignoreValue
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "ignoreValue")
key ::
    forall f s t a b . (Lens.Labels.HasLens f s t "key" a b) =>
      Lens.Family2.LensLike f s t a b
key
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")
keys ::
     forall f s t a b . (Lens.Labels.HasLens f s t "keys" a b) =>
       Lens.Family2.LensLike f s t a b
keys
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "keys")
keysOnly ::
         forall f s t a b . (Lens.Labels.HasLens f s t "keysOnly" a b) =>
           Lens.Family2.LensLike f s t a b
keysOnly
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "keysOnly")
kvs ::
    forall f s t a b . (Lens.Labels.HasLens f s t "kvs" a b) =>
      Lens.Family2.LensLike f s t a b
kvs
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "kvs")
leader ::
       forall f s t a b . (Lens.Labels.HasLens f s t "leader" a b) =>
         Lens.Family2.LensLike f s t a b
leader
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "leader")
lease ::
      forall f s t a b . (Lens.Labels.HasLens f s t "lease" a b) =>
        Lens.Family2.LensLike f s t a b
lease
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "lease")
leases ::
       forall f s t a b . (Lens.Labels.HasLens f s t "leases" a b) =>
         Lens.Family2.LensLike f s t a b
leases
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "leases")
limit ::
      forall f s t a b . (Lens.Labels.HasLens f s t "limit" a b) =>
        Lens.Family2.LensLike f s t a b
limit
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "limit")
maxCreateRevision ::
                  forall f s t a b .
                    (Lens.Labels.HasLens f s t "maxCreateRevision" a b) =>
                    Lens.Family2.LensLike f s t a b
maxCreateRevision
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maxCreateRevision")
maxModRevision ::
               forall f s t a b .
                 (Lens.Labels.HasLens f s t "maxModRevision" a b) =>
                 Lens.Family2.LensLike f s t a b
maxModRevision
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maxModRevision")
maybe'cancelRequest ::
                    forall f s t a b .
                      (Lens.Labels.HasLens f s t "maybe'cancelRequest" a b) =>
                      Lens.Family2.LensLike f s t a b
maybe'cancelRequest
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'cancelRequest")
maybe'createRequest ::
                    forall f s t a b .
                      (Lens.Labels.HasLens f s t "maybe'createRequest" a b) =>
                      Lens.Family2.LensLike f s t a b
maybe'createRequest
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'createRequest")
maybe'createRevision ::
                     forall f s t a b .
                       (Lens.Labels.HasLens f s t "maybe'createRevision" a b) =>
                       Lens.Family2.LensLike f s t a b
maybe'createRevision
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'createRevision")
maybe'header ::
             forall f s t a b .
               (Lens.Labels.HasLens f s t "maybe'header" a b) =>
               Lens.Family2.LensLike f s t a b
maybe'header
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")
maybe'lease ::
            forall f s t a b . (Lens.Labels.HasLens f s t "maybe'lease" a b) =>
              Lens.Family2.LensLike f s t a b
maybe'lease
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'lease")
maybe'member ::
             forall f s t a b .
               (Lens.Labels.HasLens f s t "maybe'member" a b) =>
               Lens.Family2.LensLike f s t a b
maybe'member
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'member")
maybe'modRevision ::
                  forall f s t a b .
                    (Lens.Labels.HasLens f s t "maybe'modRevision" a b) =>
                    Lens.Family2.LensLike f s t a b
maybe'modRevision
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'modRevision")
maybe'perm ::
           forall f s t a b . (Lens.Labels.HasLens f s t "maybe'perm" a b) =>
             Lens.Family2.LensLike f s t a b
maybe'perm
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'perm")
maybe'prevKv ::
             forall f s t a b .
               (Lens.Labels.HasLens f s t "maybe'prevKv" a b) =>
               Lens.Family2.LensLike f s t a b
maybe'prevKv
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'prevKv")
maybe'progressRequest ::
                      forall f s t a b .
                        (Lens.Labels.HasLens f s t "maybe'progressRequest" a b) =>
                        Lens.Family2.LensLike f s t a b
maybe'progressRequest
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'progressRequest")
maybe'request ::
              forall f s t a b .
                (Lens.Labels.HasLens f s t "maybe'request" a b) =>
                Lens.Family2.LensLike f s t a b
maybe'request
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'request")
maybe'requestDeleteRange ::
                         forall f s t a b .
                           (Lens.Labels.HasLens f s t "maybe'requestDeleteRange" a b) =>
                           Lens.Family2.LensLike f s t a b
maybe'requestDeleteRange
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'requestDeleteRange")
maybe'requestPut ::
                 forall f s t a b .
                   (Lens.Labels.HasLens f s t "maybe'requestPut" a b) =>
                   Lens.Family2.LensLike f s t a b
maybe'requestPut
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'requestPut")
maybe'requestRange ::
                   forall f s t a b .
                     (Lens.Labels.HasLens f s t "maybe'requestRange" a b) =>
                     Lens.Family2.LensLike f s t a b
maybe'requestRange
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'requestRange")
maybe'requestTxn ::
                 forall f s t a b .
                   (Lens.Labels.HasLens f s t "maybe'requestTxn" a b) =>
                   Lens.Family2.LensLike f s t a b
maybe'requestTxn
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'requestTxn")
maybe'requestUnion ::
                   forall f s t a b .
                     (Lens.Labels.HasLens f s t "maybe'requestUnion" a b) =>
                     Lens.Family2.LensLike f s t a b
maybe'requestUnion
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'requestUnion")
maybe'response ::
               forall f s t a b .
                 (Lens.Labels.HasLens f s t "maybe'response" a b) =>
                 Lens.Family2.LensLike f s t a b
maybe'response
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'response")
maybe'responseDeleteRange ::
                          forall f s t a b .
                            (Lens.Labels.HasLens f s t "maybe'responseDeleteRange" a b) =>
                            Lens.Family2.LensLike f s t a b
maybe'responseDeleteRange
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'responseDeleteRange")
maybe'responsePut ::
                  forall f s t a b .
                    (Lens.Labels.HasLens f s t "maybe'responsePut" a b) =>
                    Lens.Family2.LensLike f s t a b
maybe'responsePut
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'responsePut")
maybe'responseRange ::
                    forall f s t a b .
                      (Lens.Labels.HasLens f s t "maybe'responseRange" a b) =>
                      Lens.Family2.LensLike f s t a b
maybe'responseRange
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'responseRange")
maybe'responseTxn ::
                  forall f s t a b .
                    (Lens.Labels.HasLens f s t "maybe'responseTxn" a b) =>
                    Lens.Family2.LensLike f s t a b
maybe'responseTxn
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'responseTxn")
maybe'targetUnion ::
                  forall f s t a b .
                    (Lens.Labels.HasLens f s t "maybe'targetUnion" a b) =>
                    Lens.Family2.LensLike f s t a b
maybe'targetUnion
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'targetUnion")
maybe'value ::
            forall f s t a b . (Lens.Labels.HasLens f s t "maybe'value" a b) =>
              Lens.Family2.LensLike f s t a b
maybe'value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'value")
maybe'version ::
              forall f s t a b .
                (Lens.Labels.HasLens f s t "maybe'version" a b) =>
                Lens.Family2.LensLike f s t a b
maybe'version
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'version")
member ::
       forall f s t a b . (Lens.Labels.HasLens f s t "member" a b) =>
         Lens.Family2.LensLike f s t a b
member
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "member")
memberID ::
         forall f s t a b . (Lens.Labels.HasLens f s t "memberID" a b) =>
           Lens.Family2.LensLike f s t a b
memberID
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "memberID")
memberId ::
         forall f s t a b . (Lens.Labels.HasLens f s t "memberId" a b) =>
           Lens.Family2.LensLike f s t a b
memberId
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "memberId")
members ::
        forall f s t a b . (Lens.Labels.HasLens f s t "members" a b) =>
          Lens.Family2.LensLike f s t a b
members
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "members")
minCreateRevision ::
                  forall f s t a b .
                    (Lens.Labels.HasLens f s t "minCreateRevision" a b) =>
                    Lens.Family2.LensLike f s t a b
minCreateRevision
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "minCreateRevision")
minModRevision ::
               forall f s t a b .
                 (Lens.Labels.HasLens f s t "minModRevision" a b) =>
                 Lens.Family2.LensLike f s t a b
minModRevision
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "minModRevision")
modRevision ::
            forall f s t a b . (Lens.Labels.HasLens f s t "modRevision" a b) =>
              Lens.Family2.LensLike f s t a b
modRevision
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "modRevision")
more ::
     forall f s t a b . (Lens.Labels.HasLens f s t "more" a b) =>
       Lens.Family2.LensLike f s t a b
more
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "more")
name ::
     forall f s t a b . (Lens.Labels.HasLens f s t "name" a b) =>
       Lens.Family2.LensLike f s t a b
name
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")
password ::
         forall f s t a b . (Lens.Labels.HasLens f s t "password" a b) =>
           Lens.Family2.LensLike f s t a b
password
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "password")
peerURLs ::
         forall f s t a b . (Lens.Labels.HasLens f s t "peerURLs" a b) =>
           Lens.Family2.LensLike f s t a b
peerURLs
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "peerURLs")
perm ::
     forall f s t a b . (Lens.Labels.HasLens f s t "perm" a b) =>
       Lens.Family2.LensLike f s t a b
perm
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "perm")
physical ::
         forall f s t a b . (Lens.Labels.HasLens f s t "physical" a b) =>
           Lens.Family2.LensLike f s t a b
physical
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "physical")
prevKv ::
       forall f s t a b . (Lens.Labels.HasLens f s t "prevKv" a b) =>
         Lens.Family2.LensLike f s t a b
prevKv
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "prevKv")
prevKvs ::
        forall f s t a b . (Lens.Labels.HasLens f s t "prevKvs" a b) =>
          Lens.Family2.LensLike f s t a b
prevKvs
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "prevKvs")
progressNotify ::
               forall f s t a b .
                 (Lens.Labels.HasLens f s t "progressNotify" a b) =>
                 Lens.Family2.LensLike f s t a b
progressNotify
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "progressNotify")
progressRequest ::
                forall f s t a b .
                  (Lens.Labels.HasLens f s t "progressRequest" a b) =>
                  Lens.Family2.LensLike f s t a b
progressRequest
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "progressRequest")
raftAppliedIndex ::
                 forall f s t a b .
                   (Lens.Labels.HasLens f s t "raftAppliedIndex" a b) =>
                   Lens.Family2.LensLike f s t a b
raftAppliedIndex
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "raftAppliedIndex")
raftIndex ::
          forall f s t a b . (Lens.Labels.HasLens f s t "raftIndex" a b) =>
            Lens.Family2.LensLike f s t a b
raftIndex
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "raftIndex")
raftTerm ::
         forall f s t a b . (Lens.Labels.HasLens f s t "raftTerm" a b) =>
           Lens.Family2.LensLike f s t a b
raftTerm
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "raftTerm")
rangeEnd ::
         forall f s t a b . (Lens.Labels.HasLens f s t "rangeEnd" a b) =>
           Lens.Family2.LensLike f s t a b
rangeEnd
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "rangeEnd")
remainingBytes ::
               forall f s t a b .
                 (Lens.Labels.HasLens f s t "remainingBytes" a b) =>
                 Lens.Family2.LensLike f s t a b
remainingBytes
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "remainingBytes")
remainingTTL ::
             forall f s t a b .
               (Lens.Labels.HasLens f s t "remainingTTL" a b) =>
               Lens.Family2.LensLike f s t a b
remainingTTL
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "remainingTTL")
requestDeleteRange ::
                   forall f s t a b .
                     (Lens.Labels.HasLens f s t "requestDeleteRange" a b) =>
                     Lens.Family2.LensLike f s t a b
requestDeleteRange
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "requestDeleteRange")
requestPut ::
           forall f s t a b . (Lens.Labels.HasLens f s t "requestPut" a b) =>
             Lens.Family2.LensLike f s t a b
requestPut
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "requestPut")
requestRange ::
             forall f s t a b .
               (Lens.Labels.HasLens f s t "requestRange" a b) =>
               Lens.Family2.LensLike f s t a b
requestRange
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "requestRange")
requestTxn ::
           forall f s t a b . (Lens.Labels.HasLens f s t "requestTxn" a b) =>
             Lens.Family2.LensLike f s t a b
requestTxn
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "requestTxn")
responseDeleteRange ::
                    forall f s t a b .
                      (Lens.Labels.HasLens f s t "responseDeleteRange" a b) =>
                      Lens.Family2.LensLike f s t a b
responseDeleteRange
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "responseDeleteRange")
responsePut ::
            forall f s t a b . (Lens.Labels.HasLens f s t "responsePut" a b) =>
              Lens.Family2.LensLike f s t a b
responsePut
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "responsePut")
responseRange ::
              forall f s t a b .
                (Lens.Labels.HasLens f s t "responseRange" a b) =>
                Lens.Family2.LensLike f s t a b
responseRange
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "responseRange")
responseTxn ::
            forall f s t a b . (Lens.Labels.HasLens f s t "responseTxn" a b) =>
              Lens.Family2.LensLike f s t a b
responseTxn
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "responseTxn")
responses ::
          forall f s t a b . (Lens.Labels.HasLens f s t "responses" a b) =>
            Lens.Family2.LensLike f s t a b
responses
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "responses")
result ::
       forall f s t a b . (Lens.Labels.HasLens f s t "result" a b) =>
         Lens.Family2.LensLike f s t a b
result
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "result")
revision ::
         forall f s t a b . (Lens.Labels.HasLens f s t "revision" a b) =>
           Lens.Family2.LensLike f s t a b
revision
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "revision")
role ::
     forall f s t a b . (Lens.Labels.HasLens f s t "role" a b) =>
       Lens.Family2.LensLike f s t a b
role
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "role")
roles ::
      forall f s t a b . (Lens.Labels.HasLens f s t "roles" a b) =>
        Lens.Family2.LensLike f s t a b
roles
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "roles")
serializable ::
             forall f s t a b .
               (Lens.Labels.HasLens f s t "serializable" a b) =>
               Lens.Family2.LensLike f s t a b
serializable
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "serializable")
sortOrder ::
          forall f s t a b . (Lens.Labels.HasLens f s t "sortOrder" a b) =>
            Lens.Family2.LensLike f s t a b
sortOrder
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "sortOrder")
sortTarget ::
           forall f s t a b . (Lens.Labels.HasLens f s t "sortTarget" a b) =>
             Lens.Family2.LensLike f s t a b
sortTarget
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "sortTarget")
startRevision ::
              forall f s t a b .
                (Lens.Labels.HasLens f s t "startRevision" a b) =>
                Lens.Family2.LensLike f s t a b
startRevision
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "startRevision")
succeeded ::
          forall f s t a b . (Lens.Labels.HasLens f s t "succeeded" a b) =>
            Lens.Family2.LensLike f s t a b
succeeded
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "succeeded")
success ::
        forall f s t a b . (Lens.Labels.HasLens f s t "success" a b) =>
          Lens.Family2.LensLike f s t a b
success
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "success")
target ::
       forall f s t a b . (Lens.Labels.HasLens f s t "target" a b) =>
         Lens.Family2.LensLike f s t a b
target
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "target")
targetID ::
         forall f s t a b . (Lens.Labels.HasLens f s t "targetID" a b) =>
           Lens.Family2.LensLike f s t a b
targetID
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "targetID")
token ::
      forall f s t a b . (Lens.Labels.HasLens f s t "token" a b) =>
        Lens.Family2.LensLike f s t a b
token
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "token")
ttl ::
    forall f s t a b . (Lens.Labels.HasLens f s t "ttl" a b) =>
      Lens.Family2.LensLike f s t a b
ttl
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "ttl")
user ::
     forall f s t a b . (Lens.Labels.HasLens f s t "user" a b) =>
       Lens.Family2.LensLike f s t a b
user
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "user")
users ::
      forall f s t a b . (Lens.Labels.HasLens f s t "users" a b) =>
        Lens.Family2.LensLike f s t a b
users
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "users")
value ::
      forall f s t a b . (Lens.Labels.HasLens f s t "value" a b) =>
        Lens.Family2.LensLike f s t a b
value
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")
version ::
        forall f s t a b . (Lens.Labels.HasLens f s t "version" a b) =>
          Lens.Family2.LensLike f s t a b
version
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "version")
watchId ::
        forall f s t a b . (Lens.Labels.HasLens f s t "watchId" a b) =>
          Lens.Family2.LensLike f s t a b
watchId
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "watchId")