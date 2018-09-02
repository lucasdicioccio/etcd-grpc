{- This file was auto-generated from google/api/http.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Google.Api.Http
       (CustomHttpPattern(..), Http(..), HttpRule(..),
        HttpRule'Pattern(..), _HttpRule'Get, _HttpRule'Put, _HttpRule'Post,
        _HttpRule'Delete, _HttpRule'Patch, _HttpRule'Custom)
       where
import qualified Data.ProtoLens.Reexport.Lens.Labels.Prism
       as Lens.Labels.Prism
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

{- | Fields :

    * 'Proto.Google.Api.Http_Fields.kind' @:: Lens' CustomHttpPattern Data.Text.Text@
    * 'Proto.Google.Api.Http_Fields.path' @:: Lens' CustomHttpPattern Data.Text.Text@
 -}
data CustomHttpPattern = CustomHttpPattern{_CustomHttpPattern'kind
                                           :: !Data.Text.Text,
                                           _CustomHttpPattern'path :: !Data.Text.Text,
                                           _CustomHttpPattern'_unknownFields ::
                                           !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f CustomHttpPattern x a, a ~ b) =>
         Lens.Labels.HasLens f CustomHttpPattern CustomHttpPattern x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f CustomHttpPattern "kind" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CustomHttpPattern'kind
                 (\ x__ y__ -> x__{_CustomHttpPattern'kind = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f CustomHttpPattern "path" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CustomHttpPattern'path
                 (\ x__ y__ -> x__{_CustomHttpPattern'path = y__}))
              Prelude.id
instance Data.Default.Class.Default CustomHttpPattern where
        def
          = CustomHttpPattern{_CustomHttpPattern'kind =
                                Data.ProtoLens.fieldDefault,
                              _CustomHttpPattern'path = Data.ProtoLens.fieldDefault,
                              _CustomHttpPattern'_unknownFields = ([])}
instance Data.ProtoLens.Message CustomHttpPattern where
        messageName _ = Data.Text.pack "google.api.CustomHttpPattern"
        fieldsByTag
          = let kind__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "kind"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "kind")))
                      :: Data.ProtoLens.FieldDescriptor CustomHttpPattern
                path__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "path"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "path")))
                      :: Data.ProtoLens.FieldDescriptor CustomHttpPattern
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, kind__field_descriptor),
                 (Data.ProtoLens.Tag 2, path__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _CustomHttpPattern'_unknownFields
              (\ x__ y__ -> x__{_CustomHttpPattern'_unknownFields = y__})
{- | Fields :

    * 'Proto.Google.Api.Http_Fields.rules' @:: Lens' Http [HttpRule]@
    * 'Proto.Google.Api.Http_Fields.fullyDecodeReservedExpansion' @:: Lens' Http Prelude.Bool@
 -}
data Http = Http{_Http'rules :: ![HttpRule],
                 _Http'fullyDecodeReservedExpansion :: !Prelude.Bool,
                 _Http'_unknownFields :: !Data.ProtoLens.FieldSet}
              deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f Http x a, a ~ b) =>
         Lens.Labels.HasLens f Http Http x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f Http "rules" ([HttpRule])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Http'rules
                 (\ x__ y__ -> x__{_Http'rules = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f Http "fullyDecodeReservedExpansion"
           (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Http'fullyDecodeReservedExpansion
                 (\ x__ y__ -> x__{_Http'fullyDecodeReservedExpansion = y__}))
              Prelude.id
instance Data.Default.Class.Default Http where
        def
          = Http{_Http'rules = [],
                 _Http'fullyDecodeReservedExpansion = Data.ProtoLens.fieldDefault,
                 _Http'_unknownFields = ([])}
instance Data.ProtoLens.Message Http where
        messageName _ = Data.Text.pack "google.api.Http"
        fieldsByTag
          = let rules__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "rules"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor HttpRule)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "rules")))
                      :: Data.ProtoLens.FieldDescriptor Http
                fullyDecodeReservedExpansion__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "fully_decode_reserved_expansion"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "fullyDecodeReservedExpansion")))
                      :: Data.ProtoLens.FieldDescriptor Http
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, rules__field_descriptor),
                 (Data.ProtoLens.Tag 2,
                  fullyDecodeReservedExpansion__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Http'_unknownFields
              (\ x__ y__ -> x__{_Http'_unknownFields = y__})
{- | Fields :

    * 'Proto.Google.Api.Http_Fields.selector' @:: Lens' HttpRule Data.Text.Text@
    * 'Proto.Google.Api.Http_Fields.body' @:: Lens' HttpRule Data.Text.Text@
    * 'Proto.Google.Api.Http_Fields.responseBody' @:: Lens' HttpRule Data.Text.Text@
    * 'Proto.Google.Api.Http_Fields.additionalBindings' @:: Lens' HttpRule [HttpRule]@
    * 'Proto.Google.Api.Http_Fields.maybe'pattern'' @:: Lens' HttpRule (Prelude.Maybe HttpRule'Pattern)@
    * 'Proto.Google.Api.Http_Fields.maybe'get' @:: Lens' HttpRule (Prelude.Maybe Data.Text.Text)@
    * 'Proto.Google.Api.Http_Fields.get' @:: Lens' HttpRule Data.Text.Text@
    * 'Proto.Google.Api.Http_Fields.maybe'put' @:: Lens' HttpRule (Prelude.Maybe Data.Text.Text)@
    * 'Proto.Google.Api.Http_Fields.put' @:: Lens' HttpRule Data.Text.Text@
    * 'Proto.Google.Api.Http_Fields.maybe'post' @:: Lens' HttpRule (Prelude.Maybe Data.Text.Text)@
    * 'Proto.Google.Api.Http_Fields.post' @:: Lens' HttpRule Data.Text.Text@
    * 'Proto.Google.Api.Http_Fields.maybe'delete' @:: Lens' HttpRule (Prelude.Maybe Data.Text.Text)@
    * 'Proto.Google.Api.Http_Fields.delete' @:: Lens' HttpRule Data.Text.Text@
    * 'Proto.Google.Api.Http_Fields.maybe'patch' @:: Lens' HttpRule (Prelude.Maybe Data.Text.Text)@
    * 'Proto.Google.Api.Http_Fields.patch' @:: Lens' HttpRule Data.Text.Text@
    * 'Proto.Google.Api.Http_Fields.maybe'custom' @:: Lens' HttpRule (Prelude.Maybe CustomHttpPattern)@
    * 'Proto.Google.Api.Http_Fields.custom' @:: Lens' HttpRule CustomHttpPattern@
 -}
data HttpRule = HttpRule{_HttpRule'selector :: !Data.Text.Text,
                         _HttpRule'body :: !Data.Text.Text,
                         _HttpRule'responseBody :: !Data.Text.Text,
                         _HttpRule'additionalBindings :: ![HttpRule],
                         _HttpRule'pattern' :: !(Prelude.Maybe HttpRule'Pattern),
                         _HttpRule'_unknownFields :: !Data.ProtoLens.FieldSet}
                  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
data HttpRule'Pattern = HttpRule'Get !Data.Text.Text
                      | HttpRule'Put !Data.Text.Text
                      | HttpRule'Post !Data.Text.Text
                      | HttpRule'Delete !Data.Text.Text
                      | HttpRule'Patch !Data.Text.Text
                      | HttpRule'Custom !CustomHttpPattern
                          deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f HttpRule x a, a ~ b) =>
         Lens.Labels.HasLens f HttpRule HttpRule x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HttpRule "selector" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'selector
                 (\ x__ y__ -> x__{_HttpRule'selector = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HttpRule "body" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'body
                 (\ x__ y__ -> x__{_HttpRule'body = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HttpRule "responseBody" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'responseBody
                 (\ x__ y__ -> x__{_HttpRule'responseBody = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HttpRule "additionalBindings" ([HttpRule])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'additionalBindings
                 (\ x__ y__ -> x__{_HttpRule'additionalBindings = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HttpRule "maybe'pattern'"
           (Prelude.Maybe HttpRule'Pattern)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'pattern'
                 (\ x__ y__ -> x__{_HttpRule'pattern' = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HttpRule "maybe'get"
           (Prelude.Maybe Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'pattern'
                 (\ x__ y__ -> x__{_HttpRule'pattern' = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (HttpRule'Get x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap HttpRule'Get y__))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HttpRule "get" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'pattern'
                 (\ x__ y__ -> x__{_HttpRule'pattern' = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (HttpRule'Get x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap HttpRule'Get y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HttpRule "maybe'put"
           (Prelude.Maybe Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'pattern'
                 (\ x__ y__ -> x__{_HttpRule'pattern' = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (HttpRule'Put x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap HttpRule'Put y__))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HttpRule "put" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'pattern'
                 (\ x__ y__ -> x__{_HttpRule'pattern' = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (HttpRule'Put x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap HttpRule'Put y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HttpRule "maybe'post"
           (Prelude.Maybe Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'pattern'
                 (\ x__ y__ -> x__{_HttpRule'pattern' = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (HttpRule'Post x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap HttpRule'Post y__))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HttpRule "post" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'pattern'
                 (\ x__ y__ -> x__{_HttpRule'pattern' = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (HttpRule'Post x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap HttpRule'Post y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HttpRule "maybe'delete"
           (Prelude.Maybe Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'pattern'
                 (\ x__ y__ -> x__{_HttpRule'pattern' = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (HttpRule'Delete x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap HttpRule'Delete y__))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HttpRule "delete" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'pattern'
                 (\ x__ y__ -> x__{_HttpRule'pattern' = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (HttpRule'Delete x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap HttpRule'Delete y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HttpRule "maybe'patch"
           (Prelude.Maybe Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'pattern'
                 (\ x__ y__ -> x__{_HttpRule'pattern' = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (HttpRule'Patch x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap HttpRule'Patch y__))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HttpRule "patch" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'pattern'
                 (\ x__ y__ -> x__{_HttpRule'pattern' = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (HttpRule'Patch x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap HttpRule'Patch y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HttpRule "maybe'custom"
           (Prelude.Maybe CustomHttpPattern)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'pattern'
                 (\ x__ y__ -> x__{_HttpRule'pattern' = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (HttpRule'Custom x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap HttpRule'Custom y__))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HttpRule "custom" (CustomHttpPattern)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'pattern'
                 (\ x__ y__ -> x__{_HttpRule'pattern' = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (HttpRule'Custom x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap HttpRule'Custom y__))
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))
instance Data.Default.Class.Default HttpRule where
        def
          = HttpRule{_HttpRule'selector = Data.ProtoLens.fieldDefault,
                     _HttpRule'body = Data.ProtoLens.fieldDefault,
                     _HttpRule'responseBody = Data.ProtoLens.fieldDefault,
                     _HttpRule'additionalBindings = [],
                     _HttpRule'pattern' = Prelude.Nothing,
                     _HttpRule'_unknownFields = ([])}
instance Data.ProtoLens.Message HttpRule where
        messageName _ = Data.Text.pack "google.api.HttpRule"
        fieldsByTag
          = let selector__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "selector"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "selector")))
                      :: Data.ProtoLens.FieldDescriptor HttpRule
                body__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "body"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "body")))
                      :: Data.ProtoLens.FieldDescriptor HttpRule
                responseBody__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "response_body"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "responseBody")))
                      :: Data.ProtoLens.FieldDescriptor HttpRule
                additionalBindings__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "additional_bindings"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor HttpRule)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "additionalBindings")))
                      :: Data.ProtoLens.FieldDescriptor HttpRule
                get__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "get"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'get")))
                      :: Data.ProtoLens.FieldDescriptor HttpRule
                put__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "put"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'put")))
                      :: Data.ProtoLens.FieldDescriptor HttpRule
                post__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "post"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'post")))
                      :: Data.ProtoLens.FieldDescriptor HttpRule
                delete__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "delete"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'delete")))
                      :: Data.ProtoLens.FieldDescriptor HttpRule
                patch__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "patch"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'patch")))
                      :: Data.ProtoLens.FieldDescriptor HttpRule
                custom__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "custom"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor CustomHttpPattern)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'custom")))
                      :: Data.ProtoLens.FieldDescriptor HttpRule
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, selector__field_descriptor),
                 (Data.ProtoLens.Tag 7, body__field_descriptor),
                 (Data.ProtoLens.Tag 12, responseBody__field_descriptor),
                 (Data.ProtoLens.Tag 11, additionalBindings__field_descriptor),
                 (Data.ProtoLens.Tag 2, get__field_descriptor),
                 (Data.ProtoLens.Tag 3, put__field_descriptor),
                 (Data.ProtoLens.Tag 4, post__field_descriptor),
                 (Data.ProtoLens.Tag 5, delete__field_descriptor),
                 (Data.ProtoLens.Tag 6, patch__field_descriptor),
                 (Data.ProtoLens.Tag 8, custom__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _HttpRule'_unknownFields
              (\ x__ y__ -> x__{_HttpRule'_unknownFields = y__})
_HttpRule'Get ::
              Lens.Labels.Prism.Prism' HttpRule'Pattern Data.Text.Text
_HttpRule'Get
  = Lens.Labels.Prism.prism' HttpRule'Get
      (\ p__ ->
         case p__ of
             HttpRule'Get p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_HttpRule'Put ::
              Lens.Labels.Prism.Prism' HttpRule'Pattern Data.Text.Text
_HttpRule'Put
  = Lens.Labels.Prism.prism' HttpRule'Put
      (\ p__ ->
         case p__ of
             HttpRule'Put p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_HttpRule'Post ::
               Lens.Labels.Prism.Prism' HttpRule'Pattern Data.Text.Text
_HttpRule'Post
  = Lens.Labels.Prism.prism' HttpRule'Post
      (\ p__ ->
         case p__ of
             HttpRule'Post p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_HttpRule'Delete ::
                 Lens.Labels.Prism.Prism' HttpRule'Pattern Data.Text.Text
_HttpRule'Delete
  = Lens.Labels.Prism.prism' HttpRule'Delete
      (\ p__ ->
         case p__ of
             HttpRule'Delete p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_HttpRule'Patch ::
                Lens.Labels.Prism.Prism' HttpRule'Pattern Data.Text.Text
_HttpRule'Patch
  = Lens.Labels.Prism.prism' HttpRule'Patch
      (\ p__ ->
         case p__ of
             HttpRule'Patch p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_HttpRule'Custom ::
                 Lens.Labels.Prism.Prism' HttpRule'Pattern CustomHttpPattern
_HttpRule'Custom
  = Lens.Labels.Prism.prism' HttpRule'Custom
      (\ p__ ->
         case p__ of
             HttpRule'Custom p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)