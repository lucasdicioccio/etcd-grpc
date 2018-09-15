{- This file was auto-generated from etcd/etcdserver/api/v3lock/v3lockpb/v3lock.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Etcd.Etcdserver.Api.V3lock.V3lockpb.V3lock
       (Lock(..), LockRequest(), LockResponse(), UnlockRequest(),
        UnlockResponse())
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
import qualified Proto.Etcd.Etcdserver.Etcdserverpb.Rpc
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations

{- | Fields :

    * 'Proto.Etcd.Etcdserver.Api.V3lock.V3lockpb.V3lock_Fields.name' @:: Lens' LockRequest Data.ByteString.ByteString@
    * 'Proto.Etcd.Etcdserver.Api.V3lock.V3lockpb.V3lock_Fields.lease' @:: Lens' LockRequest Data.Int.Int64@
 -}
data LockRequest = LockRequest{_LockRequest'name ::
                               !Data.ByteString.ByteString,
                               _LockRequest'lease :: !Data.Int.Int64,
                               _LockRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LockRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' LockRequest "name"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LockRequest'name
                 (\ x__ y__ -> x__{_LockRequest'name = y__}))
              Prelude.id
instance Lens.Labels.HasLens' LockRequest "lease" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LockRequest'lease
                 (\ x__ y__ -> x__{_LockRequest'lease = y__}))
              Prelude.id
instance Data.ProtoLens.Message LockRequest where
        messageName _ = Data.Text.pack "v3lockpb.LockRequest"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor LockRequest
                lease__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "lease"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "lease")))
                      :: Data.ProtoLens.FieldDescriptor LockRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, name__field_descriptor),
                 (Data.ProtoLens.Tag 2, lease__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LockRequest'_unknownFields
              (\ x__ y__ -> x__{_LockRequest'_unknownFields = y__})
        defMessage
          = LockRequest{_LockRequest'name = Data.ProtoLens.fieldDefault,
                        _LockRequest'lease = Data.ProtoLens.fieldDefault,
                        _LockRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData LockRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_LockRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_LockRequest'name x__)
                   (Control.DeepSeq.deepseq (_LockRequest'lease x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Api.V3lock.V3lockpb.V3lock_Fields.header' @:: Lens' LockResponse
  Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Api.V3lock.V3lockpb.V3lock_Fields.maybe'header' @:: Lens' LockResponse
  (Prelude.Maybe
     Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Api.V3lock.V3lockpb.V3lock_Fields.key' @:: Lens' LockResponse Data.ByteString.ByteString@
 -}
data LockResponse = LockResponse{_LockResponse'header ::
                                 !(Prelude.Maybe
                                     Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader),
                                 _LockResponse'key :: !Data.ByteString.ByteString,
                                 _LockResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
                      deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LockResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' LockResponse "header"
           (Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LockResponse'header
                 (\ x__ y__ -> x__{_LockResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' LockResponse "maybe'header"
           (Prelude.Maybe
              Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LockResponse'header
                 (\ x__ y__ -> x__{_LockResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' LockResponse "key"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LockResponse'key
                 (\ x__ y__ -> x__{_LockResponse'key = y__}))
              Prelude.id
instance Data.ProtoLens.Message LockResponse where
        messageName _ = Data.Text.pack "v3lockpb.LockResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor LockResponse
                key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor LockResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, key__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LockResponse'_unknownFields
              (\ x__ y__ -> x__{_LockResponse'_unknownFields = y__})
        defMessage
          = LockResponse{_LockResponse'header = Prelude.Nothing,
                         _LockResponse'key = Data.ProtoLens.fieldDefault,
                         _LockResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData LockResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_LockResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_LockResponse'header x__)
                   (Control.DeepSeq.deepseq (_LockResponse'key x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Api.V3lock.V3lockpb.V3lock_Fields.key' @:: Lens' UnlockRequest Data.ByteString.ByteString@
 -}
data UnlockRequest = UnlockRequest{_UnlockRequest'key ::
                                   !Data.ByteString.ByteString,
                                   _UnlockRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
                       deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UnlockRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' UnlockRequest "key"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _UnlockRequest'key
                 (\ x__ y__ -> x__{_UnlockRequest'key = y__}))
              Prelude.id
instance Data.ProtoLens.Message UnlockRequest where
        messageName _ = Data.Text.pack "v3lockpb.UnlockRequest"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor UnlockRequest
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, key__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _UnlockRequest'_unknownFields
              (\ x__ y__ -> x__{_UnlockRequest'_unknownFields = y__})
        defMessage
          = UnlockRequest{_UnlockRequest'key = Data.ProtoLens.fieldDefault,
                          _UnlockRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData UnlockRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_UnlockRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_UnlockRequest'key x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Api.V3lock.V3lockpb.V3lock_Fields.header' @:: Lens' UnlockResponse
  Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Api.V3lock.V3lockpb.V3lock_Fields.maybe'header' @:: Lens' UnlockResponse
  (Prelude.Maybe
     Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)@
 -}
data UnlockResponse = UnlockResponse{_UnlockResponse'header ::
                                     !(Prelude.Maybe
                                         Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader),
                                     _UnlockResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
                        deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UnlockResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' UnlockResponse "header"
           (Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _UnlockResponse'header
                 (\ x__ y__ -> x__{_UnlockResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' UnlockResponse "maybe'header"
           (Prelude.Maybe
              Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _UnlockResponse'header
                 (\ x__ y__ -> x__{_UnlockResponse'header = y__}))
              Prelude.id
instance Data.ProtoLens.Message UnlockResponse where
        messageName _ = Data.Text.pack "v3lockpb.UnlockResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor UnlockResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _UnlockResponse'_unknownFields
              (\ x__ y__ -> x__{_UnlockResponse'_unknownFields = y__})
        defMessage
          = UnlockResponse{_UnlockResponse'header = Prelude.Nothing,
                           _UnlockResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData UnlockResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_UnlockResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_UnlockResponse'header x__) (()))
data Lock = Lock{}
              deriving ()
instance Data.ProtoLens.Service.Types.Service Lock where
        type ServiceName Lock = "Lock"
        type ServicePackage Lock = "v3lockpb"
        type ServiceMethods Lock = '["lock", "unlock"]
instance Data.ProtoLens.Service.Types.HasMethodImpl Lock "lock"
         where
        type MethodName Lock "lock" = "Lock"
        type MethodInput Lock "lock" = LockRequest
        type MethodOutput Lock "lock" = LockResponse
        type MethodStreamingType Lock "lock" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Lock "unlock"
         where
        type MethodName Lock "unlock" = "Unlock"
        type MethodInput Lock "unlock" = UnlockRequest
        type MethodOutput Lock "unlock" = UnlockResponse
        type MethodStreamingType Lock "unlock" =
             'Data.ProtoLens.Service.Types.NonStreaming