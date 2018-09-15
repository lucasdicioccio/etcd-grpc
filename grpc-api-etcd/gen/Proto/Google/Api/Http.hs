{- This file was auto-generated from google/api/http.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Google.Api.Http
       (CustomHttpPattern(), Http(), HttpRule(), HttpRule'Pattern(..),
        _HttpRule'Get, _HttpRule'Put, _HttpRule'Post, _HttpRule'Delete,
        _HttpRule'Patch, _HttpRule'Custom)
       where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq
       as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Lens.Labels.Prism
       as Lens.Labels.Prism
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

{- | Fields :

    * 'Proto.Google.Api.Http_Fields.kind' @:: Lens' CustomHttpPattern Data.Text.Text@
    * 'Proto.Google.Api.Http_Fields.path' @:: Lens' CustomHttpPattern Data.Text.Text@
 -}
data CustomHttpPattern = CustomHttpPattern{_CustomHttpPattern'kind
                                           :: !Data.Text.Text,
                                           _CustomHttpPattern'path :: !Data.Text.Text,
                                           _CustomHttpPattern'_unknownFields ::
                                           !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CustomHttpPattern where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' CustomHttpPattern "kind"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CustomHttpPattern'kind
                 (\ x__ y__ -> x__{_CustomHttpPattern'kind = y__}))
              Prelude.id
instance Lens.Labels.HasLens' CustomHttpPattern "path"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CustomHttpPattern'path
                 (\ x__ y__ -> x__{_CustomHttpPattern'path = y__}))
              Prelude.id
instance Data.ProtoLens.Message CustomHttpPattern where
        messageName _ = Data.Text.pack "google.api.CustomHttpPattern"
        fieldsByTag
          = let kind__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "kind"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "kind")))
                      :: Data.ProtoLens.FieldDescriptor CustomHttpPattern
                path__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "path"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "path")))
                      :: Data.ProtoLens.FieldDescriptor CustomHttpPattern
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, kind__field_descriptor),
                 (Data.ProtoLens.Tag 2, path__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _CustomHttpPattern'_unknownFields
              (\ x__ y__ -> x__{_CustomHttpPattern'_unknownFields = y__})
        defMessage
          = CustomHttpPattern{_CustomHttpPattern'kind =
                                Data.ProtoLens.fieldDefault,
                              _CustomHttpPattern'path = Data.ProtoLens.fieldDefault,
                              _CustomHttpPattern'_unknownFields = ([])}
instance Control.DeepSeq.NFData CustomHttpPattern where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_CustomHttpPattern'_unknownFields x__)
                (Control.DeepSeq.deepseq (_CustomHttpPattern'kind x__)
                   (Control.DeepSeq.deepseq (_CustomHttpPattern'path x__) (())))
{- | Fields :

    * 'Proto.Google.Api.Http_Fields.rules' @:: Lens' Http [HttpRule]@
    * 'Proto.Google.Api.Http_Fields.fullyDecodeReservedExpansion' @:: Lens' Http Prelude.Bool@
 -}
data Http = Http{_Http'rules :: ![HttpRule],
                 _Http'fullyDecodeReservedExpansion :: !Prelude.Bool,
                 _Http'_unknownFields :: !Data.ProtoLens.FieldSet}
              deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Http where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' Http "rules" ([HttpRule]) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Http'rules
                 (\ x__ y__ -> x__{_Http'rules = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Http "fullyDecodeReservedExpansion"
           (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Http'fullyDecodeReservedExpansion
                 (\ x__ y__ -> x__{_Http'fullyDecodeReservedExpansion = y__}))
              Prelude.id
instance Data.ProtoLens.Message Http where
        messageName _ = Data.Text.pack "google.api.Http"
        fieldsByTag
          = let rules__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "rules"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor HttpRule)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "rules")))
                      :: Data.ProtoLens.FieldDescriptor Http
                fullyDecodeReservedExpansion__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "fully_decode_reserved_expansion"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
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
        defMessage
          = Http{_Http'rules = [],
                 _Http'fullyDecodeReservedExpansion = Data.ProtoLens.fieldDefault,
                 _Http'_unknownFields = ([])}
instance Control.DeepSeq.NFData Http where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_Http'_unknownFields x__)
                (Control.DeepSeq.deepseq (_Http'rules x__)
                   (Control.DeepSeq.deepseq (_Http'fullyDecodeReservedExpansion x__)
                      (())))
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
                  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpRule where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
data HttpRule'Pattern = HttpRule'Get !Data.Text.Text
                      | HttpRule'Put !Data.Text.Text
                      | HttpRule'Post !Data.Text.Text
                      | HttpRule'Delete !Data.Text.Text
                      | HttpRule'Patch !Data.Text.Text
                      | HttpRule'Custom !CustomHttpPattern
                          deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Lens.Labels.HasLens' HttpRule "selector" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'selector
                 (\ x__ y__ -> x__{_HttpRule'selector = y__}))
              Prelude.id
instance Lens.Labels.HasLens' HttpRule "body" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'body
                 (\ x__ y__ -> x__{_HttpRule'body = y__}))
              Prelude.id
instance Lens.Labels.HasLens' HttpRule "responseBody"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'responseBody
                 (\ x__ y__ -> x__{_HttpRule'responseBody = y__}))
              Prelude.id
instance Lens.Labels.HasLens' HttpRule "additionalBindings"
           ([HttpRule])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'additionalBindings
                 (\ x__ y__ -> x__{_HttpRule'additionalBindings = y__}))
              Prelude.id
instance Lens.Labels.HasLens' HttpRule "maybe'pattern'"
           (Prelude.Maybe HttpRule'Pattern)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HttpRule'pattern'
                 (\ x__ y__ -> x__{_HttpRule'pattern' = y__}))
              Prelude.id
instance Lens.Labels.HasLens' HttpRule "maybe'get"
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
instance Lens.Labels.HasLens' HttpRule "get" (Data.Text.Text) where
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
instance Lens.Labels.HasLens' HttpRule "maybe'put"
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
instance Lens.Labels.HasLens' HttpRule "put" (Data.Text.Text) where
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
instance Lens.Labels.HasLens' HttpRule "maybe'post"
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
instance Lens.Labels.HasLens' HttpRule "post" (Data.Text.Text)
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
instance Lens.Labels.HasLens' HttpRule "maybe'delete"
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
instance Lens.Labels.HasLens' HttpRule "delete" (Data.Text.Text)
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
instance Lens.Labels.HasLens' HttpRule "maybe'patch"
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
instance Lens.Labels.HasLens' HttpRule "patch" (Data.Text.Text)
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
instance Lens.Labels.HasLens' HttpRule "maybe'custom"
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
instance Lens.Labels.HasLens' HttpRule "custom" (CustomHttpPattern)
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
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message HttpRule where
        messageName _ = Data.Text.pack "google.api.HttpRule"
        fieldsByTag
          = let selector__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "selector"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "selector")))
                      :: Data.ProtoLens.FieldDescriptor HttpRule
                body__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "body"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "body")))
                      :: Data.ProtoLens.FieldDescriptor HttpRule
                responseBody__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "response_body"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "responseBody")))
                      :: Data.ProtoLens.FieldDescriptor HttpRule
                additionalBindings__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "additional_bindings"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor HttpRule)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "additionalBindings")))
                      :: Data.ProtoLens.FieldDescriptor HttpRule
                get__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "get"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'get")))
                      :: Data.ProtoLens.FieldDescriptor HttpRule
                put__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "put"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'put")))
                      :: Data.ProtoLens.FieldDescriptor HttpRule
                post__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "post"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'post")))
                      :: Data.ProtoLens.FieldDescriptor HttpRule
                delete__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "delete"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'delete")))
                      :: Data.ProtoLens.FieldDescriptor HttpRule
                patch__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "patch"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'patch")))
                      :: Data.ProtoLens.FieldDescriptor HttpRule
                custom__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "custom"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor CustomHttpPattern)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
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
        defMessage
          = HttpRule{_HttpRule'selector = Data.ProtoLens.fieldDefault,
                     _HttpRule'body = Data.ProtoLens.fieldDefault,
                     _HttpRule'responseBody = Data.ProtoLens.fieldDefault,
                     _HttpRule'additionalBindings = [],
                     _HttpRule'pattern' = Prelude.Nothing,
                     _HttpRule'_unknownFields = ([])}
instance Control.DeepSeq.NFData HttpRule where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_HttpRule'_unknownFields x__)
                (Control.DeepSeq.deepseq (_HttpRule'selector x__)
                   (Control.DeepSeq.deepseq (_HttpRule'body x__)
                      (Control.DeepSeq.deepseq (_HttpRule'responseBody x__)
                         (Control.DeepSeq.deepseq (_HttpRule'additionalBindings x__)
                            (Control.DeepSeq.deepseq (_HttpRule'pattern' x__) (()))))))
instance Control.DeepSeq.NFData HttpRule'Pattern where
        rnf (HttpRule'Get x__) = Control.DeepSeq.rnf x__
        rnf (HttpRule'Put x__) = Control.DeepSeq.rnf x__
        rnf (HttpRule'Post x__) = Control.DeepSeq.rnf x__
        rnf (HttpRule'Delete x__) = Control.DeepSeq.rnf x__
        rnf (HttpRule'Patch x__) = Control.DeepSeq.rnf x__
        rnf (HttpRule'Custom x__) = Control.DeepSeq.rnf x__
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