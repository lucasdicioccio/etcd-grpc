{- This file was auto-generated from etcd/etcdserver/api/v3lock/v3lockpb/v3lock.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Etcd.Etcdserver.Api.V3lock.V3lockpb.V3lock_Fields
       where
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
import qualified Proto.Etcd.Etcdserver.Etcdserverpb.Rpc
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations

header ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "header" a) =>
         Lens.Family2.LensLike' f s a
header
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "header")
key ::
    forall f s a .
      (Prelude.Functor f, Lens.Labels.HasLens' s "key" a) =>
      Lens.Family2.LensLike' f s a
key
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")
lease ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "lease" a) =>
        Lens.Family2.LensLike' f s a
lease
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "lease")
maybe'header ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'header" a) =>
               Lens.Family2.LensLike' f s a
maybe'header
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")
name ::
     forall f s a .
       (Prelude.Functor f, Lens.Labels.HasLens' s "name" a) =>
       Lens.Family2.LensLike' f s a
name
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")