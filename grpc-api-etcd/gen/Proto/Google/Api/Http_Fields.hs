{- This file was auto-generated from google/api/http.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Google.Api.Http_Fields where
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

additionalBindings ::
                   forall f s t a b .
                     (Lens.Labels.HasLens f s t "additionalBindings" a b) =>
                     Lens.Family2.LensLike f s t a b
additionalBindings
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "additionalBindings")
body ::
     forall f s t a b . (Lens.Labels.HasLens f s t "body" a b) =>
       Lens.Family2.LensLike f s t a b
body
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "body")
custom ::
       forall f s t a b . (Lens.Labels.HasLens f s t "custom" a b) =>
         Lens.Family2.LensLike f s t a b
custom
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "custom")
delete ::
       forall f s t a b . (Lens.Labels.HasLens f s t "delete" a b) =>
         Lens.Family2.LensLike f s t a b
delete
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "delete")
fullyDecodeReservedExpansion ::
                             forall f s t a b .
                               (Lens.Labels.HasLens f s t "fullyDecodeReservedExpansion" a b) =>
                               Lens.Family2.LensLike f s t a b
fullyDecodeReservedExpansion
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) ::
         (Lens.Labels.Proxy#) "fullyDecodeReservedExpansion")
get ::
    forall f s t a b . (Lens.Labels.HasLens f s t "get" a b) =>
      Lens.Family2.LensLike f s t a b
get
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "get")
kind ::
     forall f s t a b . (Lens.Labels.HasLens f s t "kind" a b) =>
       Lens.Family2.LensLike f s t a b
kind
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "kind")
maybe'custom ::
             forall f s t a b .
               (Lens.Labels.HasLens f s t "maybe'custom" a b) =>
               Lens.Family2.LensLike f s t a b
maybe'custom
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'custom")
maybe'delete ::
             forall f s t a b .
               (Lens.Labels.HasLens f s t "maybe'delete" a b) =>
               Lens.Family2.LensLike f s t a b
maybe'delete
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'delete")
maybe'get ::
          forall f s t a b . (Lens.Labels.HasLens f s t "maybe'get" a b) =>
            Lens.Family2.LensLike f s t a b
maybe'get
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'get")
maybe'patch ::
            forall f s t a b . (Lens.Labels.HasLens f s t "maybe'patch" a b) =>
              Lens.Family2.LensLike f s t a b
maybe'patch
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'patch")
maybe'pattern' ::
               forall f s t a b .
                 (Lens.Labels.HasLens f s t "maybe'pattern'" a b) =>
                 Lens.Family2.LensLike f s t a b
maybe'pattern'
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'pattern'")
maybe'post ::
           forall f s t a b . (Lens.Labels.HasLens f s t "maybe'post" a b) =>
             Lens.Family2.LensLike f s t a b
maybe'post
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'post")
maybe'put ::
          forall f s t a b . (Lens.Labels.HasLens f s t "maybe'put" a b) =>
            Lens.Family2.LensLike f s t a b
maybe'put
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'put")
patch ::
      forall f s t a b . (Lens.Labels.HasLens f s t "patch" a b) =>
        Lens.Family2.LensLike f s t a b
patch
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "patch")
path ::
     forall f s t a b . (Lens.Labels.HasLens f s t "path" a b) =>
       Lens.Family2.LensLike f s t a b
path
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "path")
post ::
     forall f s t a b . (Lens.Labels.HasLens f s t "post" a b) =>
       Lens.Family2.LensLike f s t a b
post
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "post")
put ::
    forall f s t a b . (Lens.Labels.HasLens f s t "put" a b) =>
      Lens.Family2.LensLike f s t a b
put
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "put")
responseBody ::
             forall f s t a b .
               (Lens.Labels.HasLens f s t "responseBody" a b) =>
               Lens.Family2.LensLike f s t a b
responseBody
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "responseBody")
rules ::
      forall f s t a b . (Lens.Labels.HasLens f s t "rules" a b) =>
        Lens.Family2.LensLike f s t a b
rules
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "rules")
selector ::
         forall f s t a b . (Lens.Labels.HasLens f s t "selector" a b) =>
           Lens.Family2.LensLike f s t a b
selector
  = Lens.Labels.lensOf
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "selector")