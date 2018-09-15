{- This file was auto-generated from google/api/http.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Google.Api.Http_Fields where
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

additionalBindings ::
                   forall f s a .
                     (Prelude.Functor f,
                      Lens.Labels.HasLens' s "additionalBindings" a) =>
                     Lens.Family2.LensLike' f s a
additionalBindings
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "additionalBindings")
body ::
     forall f s a .
       (Prelude.Functor f, Lens.Labels.HasLens' s "body" a) =>
       Lens.Family2.LensLike' f s a
body
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "body")
custom ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "custom" a) =>
         Lens.Family2.LensLike' f s a
custom
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "custom")
delete ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "delete" a) =>
         Lens.Family2.LensLike' f s a
delete
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "delete")
fullyDecodeReservedExpansion ::
                             forall f s a .
                               (Prelude.Functor f,
                                Lens.Labels.HasLens' s "fullyDecodeReservedExpansion" a) =>
                               Lens.Family2.LensLike' f s a
fullyDecodeReservedExpansion
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "fullyDecodeReservedExpansion")
get ::
    forall f s a .
      (Prelude.Functor f, Lens.Labels.HasLens' s "get" a) =>
      Lens.Family2.LensLike' f s a
get
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "get")
kind ::
     forall f s a .
       (Prelude.Functor f, Lens.Labels.HasLens' s "kind" a) =>
       Lens.Family2.LensLike' f s a
kind
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "kind")
maybe'custom ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'custom" a) =>
               Lens.Family2.LensLike' f s a
maybe'custom
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'custom")
maybe'delete ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'delete" a) =>
               Lens.Family2.LensLike' f s a
maybe'delete
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'delete")
maybe'get ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'get" a) =>
            Lens.Family2.LensLike' f s a
maybe'get
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'get")
maybe'patch ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'patch" a) =>
              Lens.Family2.LensLike' f s a
maybe'patch
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'patch")
maybe'pattern' ::
               forall f s a .
                 (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'pattern'" a) =>
                 Lens.Family2.LensLike' f s a
maybe'pattern'
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'pattern'")
maybe'post ::
           forall f s a .
             (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'post" a) =>
             Lens.Family2.LensLike' f s a
maybe'post
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'post")
maybe'put ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'put" a) =>
            Lens.Family2.LensLike' f s a
maybe'put
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'put")
patch ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "patch" a) =>
        Lens.Family2.LensLike' f s a
patch
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "patch")
path ::
     forall f s a .
       (Prelude.Functor f, Lens.Labels.HasLens' s "path" a) =>
       Lens.Family2.LensLike' f s a
path
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "path")
post ::
     forall f s a .
       (Prelude.Functor f, Lens.Labels.HasLens' s "post" a) =>
       Lens.Family2.LensLike' f s a
post
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "post")
put ::
    forall f s a .
      (Prelude.Functor f, Lens.Labels.HasLens' s "put" a) =>
      Lens.Family2.LensLike' f s a
put
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "put")
responseBody ::
             forall f s a .
               (Prelude.Functor f, Lens.Labels.HasLens' s "responseBody" a) =>
               Lens.Family2.LensLike' f s a
responseBody
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "responseBody")
rules ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "rules" a) =>
        Lens.Family2.LensLike' f s a
rules
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "rules")
selector ::
         forall f s a .
           (Prelude.Functor f, Lens.Labels.HasLens' s "selector" a) =>
           Lens.Family2.LensLike' f s a
selector
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "selector")