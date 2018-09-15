{- This file was auto-generated from etcd/auth/authpb/auth.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Etcd.Auth.Authpb.Auth_Fields where
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

key ::
    forall f s a .
      (Prelude.Functor f, Lens.Labels.HasLens' s "key" a) =>
      Lens.Family2.LensLike' f s a
key
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")
keyPermission ::
              forall f s a .
                (Prelude.Functor f, Lens.Labels.HasLens' s "keyPermission" a) =>
                Lens.Family2.LensLike' f s a
keyPermission
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "keyPermission")
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
permType ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "permType" a) =>
           Lens.Family2.LensLike' f s a
permType
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "permType")
rangeEnd ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "rangeEnd" a) =>
           Lens.Family2.LensLike' f s a
rangeEnd
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "rangeEnd")
roles ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "roles" a) =>
        Lens.Family2.LensLike' f s a
roles
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "roles")