{- This file was auto-generated from etcd/mvcc/mvccpb/kv.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Etcd.Mvcc.Mvccpb.Kv
       (Event(), Event'EventType(..), Event'EventType(),
        Event'EventType'UnrecognizedValue, KeyValue())
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
import qualified Proto.Gogoproto.Gogo

{- | Fields :

    * 'Proto.Etcd.Mvcc.Mvccpb.Kv_Fields.type'' @:: Lens' Event Event'EventType@
    * 'Proto.Etcd.Mvcc.Mvccpb.Kv_Fields.kv' @:: Lens' Event KeyValue@
    * 'Proto.Etcd.Mvcc.Mvccpb.Kv_Fields.maybe'kv' @:: Lens' Event (Prelude.Maybe KeyValue)@
    * 'Proto.Etcd.Mvcc.Mvccpb.Kv_Fields.prevKv' @:: Lens' Event KeyValue@
    * 'Proto.Etcd.Mvcc.Mvccpb.Kv_Fields.maybe'prevKv' @:: Lens' Event (Prelude.Maybe KeyValue)@
 -}
data Event = Event{_Event'type' :: !Event'EventType,
                   _Event'kv :: !(Prelude.Maybe KeyValue),
                   _Event'prevKv :: !(Prelude.Maybe KeyValue),
                   _Event'_unknownFields :: !Data.ProtoLens.FieldSet}
               deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Event where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' Event "type'" (Event'EventType) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Event'type'
                 (\ x__ y__ -> x__{_Event'type' = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Event "kv" (KeyValue) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Event'kv
                 (\ x__ y__ -> x__{_Event'kv = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' Event "maybe'kv"
           (Prelude.Maybe KeyValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Event'kv
                 (\ x__ y__ -> x__{_Event'kv = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Event "prevKv" (KeyValue) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Event'prevKv
                 (\ x__ y__ -> x__{_Event'prevKv = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' Event "maybe'prevKv"
           (Prelude.Maybe KeyValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Event'prevKv
                 (\ x__ y__ -> x__{_Event'prevKv = y__}))
              Prelude.id
instance Data.ProtoLens.Message Event where
        messageName _ = Data.Text.pack "mvccpb.Event"
        fieldsByTag
          = let type'__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "type"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor Event'EventType)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "type'")))
                      :: Data.ProtoLens.FieldDescriptor Event
                kv__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "kv"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor KeyValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'kv")))
                      :: Data.ProtoLens.FieldDescriptor Event
                prevKv__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "prev_kv"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor KeyValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'prevKv")))
                      :: Data.ProtoLens.FieldDescriptor Event
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, type'__field_descriptor),
                 (Data.ProtoLens.Tag 2, kv__field_descriptor),
                 (Data.ProtoLens.Tag 3, prevKv__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Event'_unknownFields
              (\ x__ y__ -> x__{_Event'_unknownFields = y__})
        defMessage
          = Event{_Event'type' = Data.ProtoLens.fieldDefault,
                  _Event'kv = Prelude.Nothing, _Event'prevKv = Prelude.Nothing,
                  _Event'_unknownFields = ([])}
instance Control.DeepSeq.NFData Event where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_Event'_unknownFields x__)
                (Control.DeepSeq.deepseq (_Event'type' x__)
                   (Control.DeepSeq.deepseq (_Event'kv x__)
                      (Control.DeepSeq.deepseq (_Event'prevKv x__) (()))))
data Event'EventType = Event'PUT
                     | Event'DELETE
                     | Event'EventType'Unrecognized !Event'EventType'UnrecognizedValue
                         deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
newtype Event'EventType'UnrecognizedValue = Event'EventType'UnrecognizedValue Data.Int.Int32
                                              deriving (Prelude.Eq, Prelude.Ord, Prelude.Show)
instance Data.ProtoLens.MessageEnum Event'EventType where
        maybeToEnum 0 = Prelude.Just Event'PUT
        maybeToEnum 1 = Prelude.Just Event'DELETE
        maybeToEnum k
          = Prelude.Just
              (Event'EventType'Unrecognized
                 (Event'EventType'UnrecognizedValue (Prelude.fromIntegral k)))
        showEnum Event'PUT = "PUT"
        showEnum Event'DELETE = "DELETE"
        showEnum
          (Event'EventType'Unrecognized
             (Event'EventType'UnrecognizedValue k))
          = Prelude.show k
        readEnum "PUT" = Prelude.Just Event'PUT
        readEnum "DELETE" = Prelude.Just Event'DELETE
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Event'EventType where
        minBound = Event'PUT
        maxBound = Event'DELETE
instance Prelude.Enum Event'EventType where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum EventType: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum Event'PUT = 0
        fromEnum Event'DELETE = 1
        fromEnum
          (Event'EventType'Unrecognized
             (Event'EventType'UnrecognizedValue k))
          = Prelude.fromIntegral k
        succ Event'DELETE
          = Prelude.error
              "Event'EventType.succ: bad argument Event'DELETE. This value would be out of bounds."
        succ Event'PUT = Event'DELETE
        succ _
          = Prelude.error
              "Event'EventType.succ: bad argument: unrecognized value"
        pred Event'PUT
          = Prelude.error
              "Event'EventType.pred: bad argument Event'PUT. This value would be out of bounds."
        pred Event'DELETE = Event'PUT
        pred _
          = Prelude.error
              "Event'EventType.pred: bad argument: unrecognized value"
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Event'EventType where
        fieldDefault = Event'PUT
instance Control.DeepSeq.NFData Event'EventType where
        rnf x__ = Prelude.seq x__ (())
{- | Fields :

    * 'Proto.Etcd.Mvcc.Mvccpb.Kv_Fields.key' @:: Lens' KeyValue Data.ByteString.ByteString@
    * 'Proto.Etcd.Mvcc.Mvccpb.Kv_Fields.createRevision' @:: Lens' KeyValue Data.Int.Int64@
    * 'Proto.Etcd.Mvcc.Mvccpb.Kv_Fields.modRevision' @:: Lens' KeyValue Data.Int.Int64@
    * 'Proto.Etcd.Mvcc.Mvccpb.Kv_Fields.version' @:: Lens' KeyValue Data.Int.Int64@
    * 'Proto.Etcd.Mvcc.Mvccpb.Kv_Fields.value' @:: Lens' KeyValue Data.ByteString.ByteString@
    * 'Proto.Etcd.Mvcc.Mvccpb.Kv_Fields.lease' @:: Lens' KeyValue Data.Int.Int64@
 -}
data KeyValue = KeyValue{_KeyValue'key ::
                         !Data.ByteString.ByteString,
                         _KeyValue'createRevision :: !Data.Int.Int64,
                         _KeyValue'modRevision :: !Data.Int.Int64,
                         _KeyValue'version :: !Data.Int.Int64,
                         _KeyValue'value :: !Data.ByteString.ByteString,
                         _KeyValue'lease :: !Data.Int.Int64,
                         _KeyValue'_unknownFields :: !Data.ProtoLens.FieldSet}
                  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KeyValue where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' KeyValue "key"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _KeyValue'key
                 (\ x__ y__ -> x__{_KeyValue'key = y__}))
              Prelude.id
instance Lens.Labels.HasLens' KeyValue "createRevision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _KeyValue'createRevision
                 (\ x__ y__ -> x__{_KeyValue'createRevision = y__}))
              Prelude.id
instance Lens.Labels.HasLens' KeyValue "modRevision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _KeyValue'modRevision
                 (\ x__ y__ -> x__{_KeyValue'modRevision = y__}))
              Prelude.id
instance Lens.Labels.HasLens' KeyValue "version" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _KeyValue'version
                 (\ x__ y__ -> x__{_KeyValue'version = y__}))
              Prelude.id
instance Lens.Labels.HasLens' KeyValue "value"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _KeyValue'value
                 (\ x__ y__ -> x__{_KeyValue'value = y__}))
              Prelude.id
instance Lens.Labels.HasLens' KeyValue "lease" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _KeyValue'lease
                 (\ x__ y__ -> x__{_KeyValue'lease = y__}))
              Prelude.id
instance Data.ProtoLens.Message KeyValue where
        messageName _ = Data.Text.pack "mvccpb.KeyValue"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor KeyValue
                createRevision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "create_revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "createRevision")))
                      :: Data.ProtoLens.FieldDescriptor KeyValue
                modRevision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "mod_revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "modRevision")))
                      :: Data.ProtoLens.FieldDescriptor KeyValue
                version__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "version"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "version")))
                      :: Data.ProtoLens.FieldDescriptor KeyValue
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor KeyValue
                lease__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "lease"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "lease")))
                      :: Data.ProtoLens.FieldDescriptor KeyValue
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, createRevision__field_descriptor),
                 (Data.ProtoLens.Tag 3, modRevision__field_descriptor),
                 (Data.ProtoLens.Tag 4, version__field_descriptor),
                 (Data.ProtoLens.Tag 5, value__field_descriptor),
                 (Data.ProtoLens.Tag 6, lease__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _KeyValue'_unknownFields
              (\ x__ y__ -> x__{_KeyValue'_unknownFields = y__})
        defMessage
          = KeyValue{_KeyValue'key = Data.ProtoLens.fieldDefault,
                     _KeyValue'createRevision = Data.ProtoLens.fieldDefault,
                     _KeyValue'modRevision = Data.ProtoLens.fieldDefault,
                     _KeyValue'version = Data.ProtoLens.fieldDefault,
                     _KeyValue'value = Data.ProtoLens.fieldDefault,
                     _KeyValue'lease = Data.ProtoLens.fieldDefault,
                     _KeyValue'_unknownFields = ([])}
instance Control.DeepSeq.NFData KeyValue where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_KeyValue'_unknownFields x__)
                (Control.DeepSeq.deepseq (_KeyValue'key x__)
                   (Control.DeepSeq.deepseq (_KeyValue'createRevision x__)
                      (Control.DeepSeq.deepseq (_KeyValue'modRevision x__)
                         (Control.DeepSeq.deepseq (_KeyValue'version x__)
                            (Control.DeepSeq.deepseq (_KeyValue'value x__)
                               (Control.DeepSeq.deepseq (_KeyValue'lease x__) (())))))))