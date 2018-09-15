{- This file was auto-generated from etcd/etcdserver/etcdserverpb/rpc.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields where
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens
       as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum
       as Data.ProtoLens.Message.Enum
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types
       as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2
       as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked
       as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString
       as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8
       as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Lens.Labels as Lens.Labels
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
import qualified Proto.Etcd.Auth.Authpb.Auth
import qualified Proto.Etcd.Mvcc.Mvccpb.Kv
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations

action ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "action" a) =>
         Lens.Family2.LensLike' f s a
action
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "action")
alarm ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "alarm" a) =>
        Lens.Family2.LensLike' f s a
alarm
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "alarm")
alarms ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "alarms" a) =>
         Lens.Family2.LensLike' f s a
alarms
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "alarms")
blob ::
     forall f s a .
       (Prelude.Functor f, Lens.Labels.HasLens' s "blob" a) =>
       Lens.Family2.LensLike' f s a
blob
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "blob")
cancelReason ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "cancelReason" a) =>
               Lens.Family2.LensLike' f s a
cancelReason
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "cancelReason")
cancelRequest ::
              forall f s a .
                (Prelude.Functor f, Lens.Labels.HasLens' s "cancelRequest" a) =>
                Lens.Family2.LensLike' f s a
cancelRequest
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "cancelRequest")
canceled ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "canceled" a) =>
           Lens.Family2.LensLike' f s a
canceled
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "canceled")
checkpoints ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "checkpoints" a) =>
              Lens.Family2.LensLike' f s a
checkpoints
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "checkpoints")
clientURLs ::
           forall f s a .
             (Prelude.Functor f, Lens.Labels.HasLens' s "clientURLs" a) =>
             Lens.Family2.LensLike' f s a
clientURLs
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "clientURLs")
clusterId ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "clusterId" a) =>
            Lens.Family2.LensLike' f s a
clusterId
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "clusterId")
compactRevision ::
                forall f s a .
                  (Prelude.Functor f, Lens.Labels.HasLens' s "compactRevision" a) =>
                  Lens.Family2.LensLike' f s a
compactRevision
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "compactRevision")
compare ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "compare" a) =>
          Lens.Family2.LensLike' f s a
compare
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "compare")
count ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "count" a) =>
        Lens.Family2.LensLike' f s a
count
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "count")
countOnly ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "countOnly" a) =>
            Lens.Family2.LensLike' f s a
countOnly
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "countOnly")
createRequest ::
              forall f s a .
                (Prelude.Functor f, Lens.Labels.HasLens' s "createRequest" a) =>
                Lens.Family2.LensLike' f s a
createRequest
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "createRequest")
createRevision ::
               forall f s a .
                 (Prelude.Functor f, Lens.Labels.HasLens' s "createRevision" a) =>
                 Lens.Family2.LensLike' f s a
createRevision
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "createRevision")
created ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "created" a) =>
          Lens.Family2.LensLike' f s a
created
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "created")
dbSize ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "dbSize" a) =>
         Lens.Family2.LensLike' f s a
dbSize
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "dbSize")
dbSizeInUse ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "dbSizeInUse" a) =>
              Lens.Family2.LensLike' f s a
dbSizeInUse
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "dbSizeInUse")
deleted ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "deleted" a) =>
          Lens.Family2.LensLike' f s a
deleted
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "deleted")
error ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "error" a) =>
        Lens.Family2.LensLike' f s a
error
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "error")
errors ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "errors" a) =>
         Lens.Family2.LensLike' f s a
errors
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "errors")
events ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "events" a) =>
         Lens.Family2.LensLike' f s a
events
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "events")
failure ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "failure" a) =>
          Lens.Family2.LensLike' f s a
failure
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "failure")
filters ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "filters" a) =>
          Lens.Family2.LensLike' f s a
filters
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "filters")
fragment ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "fragment" a) =>
           Lens.Family2.LensLike' f s a
fragment
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fragment")
grantedTTL ::
           forall f s a .
             (Prelude.Functor f, Lens.Labels.HasLens' s "grantedTTL" a) =>
             Lens.Family2.LensLike' f s a
grantedTTL
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "grantedTTL")
hash ::
     forall f s a .
       (Prelude.Functor f, Lens.Labels.HasLens' s "hash" a) =>
       Lens.Family2.LensLike' f s a
hash
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "hash")
header ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "header" a) =>
         Lens.Family2.LensLike' f s a
header
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "header")
id ::
   forall f s a .
     (Prelude.Functor f, Lens.Labels.HasLens' s "id" a) =>
     Lens.Family2.LensLike' f s a
id
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")
ignoreLease ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "ignoreLease" a) =>
              Lens.Family2.LensLike' f s a
ignoreLease
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "ignoreLease")
ignoreValue ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "ignoreValue" a) =>
              Lens.Family2.LensLike' f s a
ignoreValue
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "ignoreValue")
key ::
    forall f s a .
      (Prelude.Functor f, Lens.Labels.HasLens' s "key" a) =>
      Lens.Family2.LensLike' f s a
key
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")
keys ::
     forall f s a .
       (Prelude.Functor f, Lens.Labels.HasLens' s "keys" a) =>
       Lens.Family2.LensLike' f s a
keys
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "keys")
keysOnly ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "keysOnly" a) =>
           Lens.Family2.LensLike' f s a
keysOnly
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "keysOnly")
kvs ::
    forall f s a .
      (Prelude.Functor f, Lens.Labels.HasLens' s "kvs" a) =>
      Lens.Family2.LensLike' f s a
kvs
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "kvs")
leader ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "leader" a) =>
         Lens.Family2.LensLike' f s a
leader
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "leader")
lease ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "lease" a) =>
        Lens.Family2.LensLike' f s a
lease
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "lease")
leases ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "leases" a) =>
         Lens.Family2.LensLike' f s a
leases
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "leases")
limit ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "limit" a) =>
        Lens.Family2.LensLike' f s a
limit
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "limit")
maxCreateRevision ::
                  forall f s a .
                    (Prelude.Functor f,
                     Lens.Labels.HasLens' s "maxCreateRevision" a) =>
                    Lens.Family2.LensLike' f s a
maxCreateRevision
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maxCreateRevision")
maxModRevision ::
               forall f s a .
                 (Prelude.Functor f, Lens.Labels.HasLens' s "maxModRevision" a) =>
                 Lens.Family2.LensLike' f s a
maxModRevision
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maxModRevision")
maybe'cancelRequest ::
                    forall f s a .
                      (Prelude.Functor f,
                       Lens.Labels.HasLens' s "maybe'cancelRequest" a) =>
                      Lens.Family2.LensLike' f s a
maybe'cancelRequest
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'cancelRequest")
maybe'createRequest ::
                    forall f s a .
                      (Prelude.Functor f,
                       Lens.Labels.HasLens' s "maybe'createRequest" a) =>
                      Lens.Family2.LensLike' f s a
maybe'createRequest
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'createRequest")
maybe'createRevision ::
                     forall f s a .
                       (Prelude.Functor f,
                        Lens.Labels.HasLens' s "maybe'createRevision" a) =>
                       Lens.Family2.LensLike' f s a
maybe'createRevision
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'createRevision")
maybe'header ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'header" a) =>
               Lens.Family2.LensLike' f s a
maybe'header
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")
maybe'lease ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'lease" a) =>
              Lens.Family2.LensLike' f s a
maybe'lease
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'lease")
maybe'member ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'member" a) =>
               Lens.Family2.LensLike' f s a
maybe'member
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'member")
maybe'modRevision ::
                  forall f s a .
                    (Prelude.Functor f,
                     Lens.Labels.HasLens' s "maybe'modRevision" a) =>
                    Lens.Family2.LensLike' f s a
maybe'modRevision
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'modRevision")
maybe'perm ::
           forall f s a .
             (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'perm" a) =>
             Lens.Family2.LensLike' f s a
maybe'perm
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'perm")
maybe'prevKv ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'prevKv" a) =>
               Lens.Family2.LensLike' f s a
maybe'prevKv
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'prevKv")
maybe'progressRequest ::
                      forall f s a .
                        (Prelude.Functor f,
                         Lens.Labels.HasLens' s "maybe'progressRequest" a) =>
                        Lens.Family2.LensLike' f s a
maybe'progressRequest
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'progressRequest")
maybe'request ::
              forall f s a .
                (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'request" a) =>
                Lens.Family2.LensLike' f s a
maybe'request
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'request")
maybe'requestDeleteRange ::
                         forall f s a .
                           (Prelude.Functor f,
                            Lens.Labels.HasLens' s "maybe'requestDeleteRange" a) =>
                           Lens.Family2.LensLike' f s a
maybe'requestDeleteRange
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'requestDeleteRange")
maybe'requestPut ::
                 forall f s a .
                   (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'requestPut" a) =>
                   Lens.Family2.LensLike' f s a
maybe'requestPut
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'requestPut")
maybe'requestRange ::
                   forall f s a .
                     (Prelude.Functor f,
                      Lens.Labels.HasLens' s "maybe'requestRange" a) =>
                     Lens.Family2.LensLike' f s a
maybe'requestRange
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'requestRange")
maybe'requestTxn ::
                 forall f s a .
                   (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'requestTxn" a) =>
                   Lens.Family2.LensLike' f s a
maybe'requestTxn
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'requestTxn")
maybe'requestUnion ::
                   forall f s a .
                     (Prelude.Functor f,
                      Lens.Labels.HasLens' s "maybe'requestUnion" a) =>
                     Lens.Family2.LensLike' f s a
maybe'requestUnion
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'requestUnion")
maybe'response ::
               forall f s a .
                 (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'response" a) =>
                 Lens.Family2.LensLike' f s a
maybe'response
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'response")
maybe'responseDeleteRange ::
                          forall f s a .
                            (Prelude.Functor f,
                             Lens.Labels.HasLens' s "maybe'responseDeleteRange" a) =>
                            Lens.Family2.LensLike' f s a
maybe'responseDeleteRange
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'responseDeleteRange")
maybe'responsePut ::
                  forall f s a .
                    (Prelude.Functor f,
                     Lens.Labels.HasLens' s "maybe'responsePut" a) =>
                    Lens.Family2.LensLike' f s a
maybe'responsePut
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'responsePut")
maybe'responseRange ::
                    forall f s a .
                      (Prelude.Functor f,
                       Lens.Labels.HasLens' s "maybe'responseRange" a) =>
                      Lens.Family2.LensLike' f s a
maybe'responseRange
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "maybe'responseRange")
maybe'responseTxn ::
                  forall f s a .
                    (Prelude.Functor f,
                     Lens.Labels.HasLens' s "maybe'responseTxn" a) =>
                    Lens.Family2.LensLike' f s a
maybe'responseTxn
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'responseTxn")
maybe'targetUnion ::
                  forall f s a .
                    (Prelude.Functor f,
                     Lens.Labels.HasLens' s "maybe'targetUnion" a) =>
                    Lens.Family2.LensLike' f s a
maybe'targetUnion
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'targetUnion")
maybe'value ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'value" a) =>
              Lens.Family2.LensLike' f s a
maybe'value
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'value")
maybe'version ::
              forall f s a .
                (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'version" a) =>
                Lens.Family2.LensLike' f s a
maybe'version
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'version")
member ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "member" a) =>
         Lens.Family2.LensLike' f s a
member
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "member")
memberID ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "memberID" a) =>
           Lens.Family2.LensLike' f s a
memberID
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "memberID")
memberId ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "memberId" a) =>
           Lens.Family2.LensLike' f s a
memberId
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "memberId")
members ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "members" a) =>
          Lens.Family2.LensLike' f s a
members
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "members")
minCreateRevision ::
                  forall f s a .
                    (Prelude.Functor f,
                     Lens.Labels.HasLens' s "minCreateRevision" a) =>
                    Lens.Family2.LensLike' f s a
minCreateRevision
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "minCreateRevision")
minModRevision ::
               forall f s a .
                 (Prelude.Functor f, Lens.Labels.HasLens' s "minModRevision" a) =>
                 Lens.Family2.LensLike' f s a
minModRevision
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "minModRevision")
modRevision ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "modRevision" a) =>
              Lens.Family2.LensLike' f s a
modRevision
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "modRevision")
more ::
     forall f s a .
       (Prelude.Functor f, Lens.Labels.HasLens' s "more" a) =>
       Lens.Family2.LensLike' f s a
more
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "more")
name ::
     forall f s a .
       (Prelude.Functor f, Lens.Labels.HasLens' s "name" a) =>
       Lens.Family2.LensLike' f s a
name
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")
password ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "password" a) =>
           Lens.Family2.LensLike' f s a
password
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "password")
peerURLs ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "peerURLs" a) =>
           Lens.Family2.LensLike' f s a
peerURLs
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "peerURLs")
perm ::
     forall f s a .
       (Prelude.Functor f, Lens.Labels.HasLens' s "perm" a) =>
       Lens.Family2.LensLike' f s a
perm
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "perm")
physical ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "physical" a) =>
           Lens.Family2.LensLike' f s a
physical
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "physical")
prevKv ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "prevKv" a) =>
         Lens.Family2.LensLike' f s a
prevKv
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "prevKv")
prevKvs ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "prevKvs" a) =>
          Lens.Family2.LensLike' f s a
prevKvs
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "prevKvs")
progressNotify ::
               forall f s a .
                 (Prelude.Functor f, Lens.Labels.HasLens' s "progressNotify" a) =>
                 Lens.Family2.LensLike' f s a
progressNotify
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "progressNotify")
progressRequest ::
                forall f s a .
                  (Prelude.Functor f, Lens.Labels.HasLens' s "progressRequest" a) =>
                  Lens.Family2.LensLike' f s a
progressRequest
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "progressRequest")
raftAppliedIndex ::
                 forall f s a .
                   (Prelude.Functor f, Lens.Labels.HasLens' s "raftAppliedIndex" a) =>
                   Lens.Family2.LensLike' f s a
raftAppliedIndex
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "raftAppliedIndex")
raftIndex ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "raftIndex" a) =>
            Lens.Family2.LensLike' f s a
raftIndex
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "raftIndex")
raftTerm ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "raftTerm" a) =>
           Lens.Family2.LensLike' f s a
raftTerm
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "raftTerm")
rangeEnd ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "rangeEnd" a) =>
           Lens.Family2.LensLike' f s a
rangeEnd
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "rangeEnd")
remainingBytes ::
               forall f s a .
                 (Prelude.Functor f, Lens.Labels.HasLens' s "remainingBytes" a) =>
                 Lens.Family2.LensLike' f s a
remainingBytes
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "remainingBytes")
remainingTTL ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "remainingTTL" a) =>
               Lens.Family2.LensLike' f s a
remainingTTL
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "remainingTTL")
requestDeleteRange ::
                   forall f s a .
                     (Prelude.Functor f,
                      Lens.Labels.HasLens' s "requestDeleteRange" a) =>
                     Lens.Family2.LensLike' f s a
requestDeleteRange
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "requestDeleteRange")
requestPut ::
           forall f s a .
             (Prelude.Functor f, Lens.Labels.HasLens' s "requestPut" a) =>
             Lens.Family2.LensLike' f s a
requestPut
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "requestPut")
requestRange ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "requestRange" a) =>
               Lens.Family2.LensLike' f s a
requestRange
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "requestRange")
requestTxn ::
           forall f s a .
             (Prelude.Functor f, Lens.Labels.HasLens' s "requestTxn" a) =>
             Lens.Family2.LensLike' f s a
requestTxn
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "requestTxn")
responseDeleteRange ::
                    forall f s a .
                      (Prelude.Functor f,
                       Lens.Labels.HasLens' s "responseDeleteRange" a) =>
                      Lens.Family2.LensLike' f s a
responseDeleteRange
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "responseDeleteRange")
responsePut ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "responsePut" a) =>
              Lens.Family2.LensLike' f s a
responsePut
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "responsePut")
responseRange ::
              forall f s a .
                (Prelude.Functor f, Lens.Labels.HasLens' s "responseRange" a) =>
                Lens.Family2.LensLike' f s a
responseRange
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "responseRange")
responseTxn ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "responseTxn" a) =>
              Lens.Family2.LensLike' f s a
responseTxn
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "responseTxn")
responses ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "responses" a) =>
            Lens.Family2.LensLike' f s a
responses
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "responses")
result ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "result" a) =>
         Lens.Family2.LensLike' f s a
result
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "result")
revision ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "revision" a) =>
           Lens.Family2.LensLike' f s a
revision
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "revision")
role ::
     forall f s a .
       (Prelude.Functor f, Lens.Labels.HasLens' s "role" a) =>
       Lens.Family2.LensLike' f s a
role
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "role")
roles ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "roles" a) =>
        Lens.Family2.LensLike' f s a
roles
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "roles")
serializable ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "serializable" a) =>
               Lens.Family2.LensLike' f s a
serializable
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "serializable")
sortOrder ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "sortOrder" a) =>
            Lens.Family2.LensLike' f s a
sortOrder
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "sortOrder")
sortTarget ::
           forall f s a .
             (Prelude.Functor f, Lens.Labels.HasLens' s "sortTarget" a) =>
             Lens.Family2.LensLike' f s a
sortTarget
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "sortTarget")
startRevision ::
              forall f s a .
                (Prelude.Functor f, Lens.Labels.HasLens' s "startRevision" a) =>
                Lens.Family2.LensLike' f s a
startRevision
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "startRevision")
succeeded ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "succeeded" a) =>
            Lens.Family2.LensLike' f s a
succeeded
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "succeeded")
success ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "success" a) =>
          Lens.Family2.LensLike' f s a
success
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "success")
target ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "target" a) =>
         Lens.Family2.LensLike' f s a
target
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "target")
targetID ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "targetID" a) =>
           Lens.Family2.LensLike' f s a
targetID
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "targetID")
token ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "token" a) =>
        Lens.Family2.LensLike' f s a
token
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "token")
ttl ::
    forall f s a .
      (Prelude.Functor f, Lens.Labels.HasLens' s "ttl" a) =>
      Lens.Family2.LensLike' f s a
ttl
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "ttl")
user ::
     forall f s a .
       (Prelude.Functor f, Lens.Labels.HasLens' s "user" a) =>
       Lens.Family2.LensLike' f s a
user
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "user")
users ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "users" a) =>
        Lens.Family2.LensLike' f s a
users
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "users")
value ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "value" a) =>
        Lens.Family2.LensLike' f s a
value
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")
version ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "version" a) =>
          Lens.Family2.LensLike' f s a
version
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "version")
watchId ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "watchId" a) =>
          Lens.Family2.LensLike' f s a
watchId
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "watchId")