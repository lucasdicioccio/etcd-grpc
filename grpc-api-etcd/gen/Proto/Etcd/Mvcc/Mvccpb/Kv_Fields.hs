{- This file was auto-generated from etcd/mvcc/mvccpb/kv.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Etcd.Mvcc.Mvccpb.Kv_Fields where
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
import qualified Proto.Gogoproto.Gogo

createRevision ::
               forall f s a .
                 (Prelude.Functor f, Lens.Labels.HasLens' s "createRevision" a) =>
                 Lens.Family2.LensLike' f s a
createRevision
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "createRevision")
key ::
    forall f s a .
      (Prelude.Functor f, Lens.Labels.HasLens' s "key" a) =>
      Lens.Family2.LensLike' f s a
key
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")
kv ::
   forall f s a .
     (Prelude.Functor f, Lens.Labels.HasLens' s "kv" a) =>
     Lens.Family2.LensLike' f s a
kv
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "kv")
lease ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "lease" a) =>
        Lens.Family2.LensLike' f s a
lease
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "lease")
maybe'kv ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'kv" a) =>
           Lens.Family2.LensLike' f s a
maybe'kv
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'kv")
maybe'prevKv ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'prevKv" a) =>
               Lens.Family2.LensLike' f s a
maybe'prevKv
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'prevKv")
modRevision ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "modRevision" a) =>
              Lens.Family2.LensLike' f s a
modRevision
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "modRevision")
prevKv ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "prevKv" a) =>
         Lens.Family2.LensLike' f s a
prevKv
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "prevKv")
type' ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "type'" a) =>
        Lens.Family2.LensLike' f s a
type'
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "type'")
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