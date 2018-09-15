{- This file was auto-generated from etcd/etcdserver/etcdserverpb/rpc.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Etcd.Etcdserver.Etcdserverpb.Rpc
       (KV(..), Watch(..), Lease(..), Cluster(..), Maintenance(..),
        Auth(..), AlarmMember(), AlarmRequest(),
        AlarmRequest'AlarmAction(..), AlarmRequest'AlarmAction(),
        AlarmRequest'AlarmAction'UnrecognizedValue, AlarmResponse(),
        AlarmType(..), AlarmType(), AlarmType'UnrecognizedValue,
        AuthDisableRequest(), AuthDisableResponse(), AuthEnableRequest(),
        AuthEnableResponse(), AuthRoleAddRequest(), AuthRoleAddResponse(),
        AuthRoleDeleteRequest(), AuthRoleDeleteResponse(),
        AuthRoleGetRequest(), AuthRoleGetResponse(),
        AuthRoleGrantPermissionRequest(),
        AuthRoleGrantPermissionResponse(), AuthRoleListRequest(),
        AuthRoleListResponse(), AuthRoleRevokePermissionRequest(),
        AuthRoleRevokePermissionResponse(), AuthUserAddRequest(),
        AuthUserAddResponse(), AuthUserChangePasswordRequest(),
        AuthUserChangePasswordResponse(), AuthUserDeleteRequest(),
        AuthUserDeleteResponse(), AuthUserGetRequest(),
        AuthUserGetResponse(), AuthUserGrantRoleRequest(),
        AuthUserGrantRoleResponse(), AuthUserListRequest(),
        AuthUserListResponse(), AuthUserRevokeRoleRequest(),
        AuthUserRevokeRoleResponse(), AuthenticateRequest(),
        AuthenticateResponse(), CompactionRequest(), CompactionResponse(),
        Compare(), Compare'TargetUnion(..), _Compare'Version,
        _Compare'CreateRevision, _Compare'ModRevision, _Compare'Value,
        _Compare'Lease, Compare'CompareResult(..), Compare'CompareResult(),
        Compare'CompareResult'UnrecognizedValue, Compare'CompareTarget(..),
        Compare'CompareTarget(), Compare'CompareTarget'UnrecognizedValue,
        DefragmentRequest(), DefragmentResponse(), DeleteRangeRequest(),
        DeleteRangeResponse(), HashKVRequest(), HashKVResponse(),
        HashRequest(), HashResponse(), LeaseCheckpoint(),
        LeaseCheckpointRequest(), LeaseCheckpointResponse(),
        LeaseGrantRequest(), LeaseGrantResponse(), LeaseKeepAliveRequest(),
        LeaseKeepAliveResponse(), LeaseLeasesRequest(),
        LeaseLeasesResponse(), LeaseRevokeRequest(), LeaseRevokeResponse(),
        LeaseStatus(), LeaseTimeToLiveRequest(), LeaseTimeToLiveResponse(),
        Member(), MemberAddRequest(), MemberAddResponse(),
        MemberListRequest(), MemberListResponse(), MemberRemoveRequest(),
        MemberRemoveResponse(), MemberUpdateRequest(),
        MemberUpdateResponse(), MoveLeaderRequest(), MoveLeaderResponse(),
        PutRequest(), PutResponse(), RangeRequest(),
        RangeRequest'SortOrder(..), RangeRequest'SortOrder(),
        RangeRequest'SortOrder'UnrecognizedValue,
        RangeRequest'SortTarget(..), RangeRequest'SortTarget(),
        RangeRequest'SortTarget'UnrecognizedValue, RangeResponse(),
        RequestOp(), RequestOp'Request(..), _RequestOp'RequestRange,
        _RequestOp'RequestPut, _RequestOp'RequestDeleteRange,
        _RequestOp'RequestTxn, ResponseHeader(), ResponseOp(),
        ResponseOp'Response(..), _ResponseOp'ResponseRange,
        _ResponseOp'ResponsePut, _ResponseOp'ResponseDeleteRange,
        _ResponseOp'ResponseTxn, SnapshotRequest(), SnapshotResponse(),
        StatusRequest(), StatusResponse(), TxnRequest(), TxnResponse(),
        WatchCancelRequest(), WatchCreateRequest(),
        WatchCreateRequest'FilterType(..), WatchCreateRequest'FilterType(),
        WatchCreateRequest'FilterType'UnrecognizedValue,
        WatchProgressRequest(), WatchRequest(),
        WatchRequest'RequestUnion(..), _WatchRequest'CreateRequest,
        _WatchRequest'CancelRequest, _WatchRequest'ProgressRequest,
        WatchResponse())
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
import qualified Proto.Etcd.Auth.Authpb.Auth
import qualified Proto.Etcd.Mvcc.Mvccpb.Kv
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations

{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.memberID' @:: Lens' AlarmMember Data.Word.Word64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.alarm' @:: Lens' AlarmMember AlarmType@
 -}
data AlarmMember = AlarmMember{_AlarmMember'memberID ::
                               !Data.Word.Word64,
                               _AlarmMember'alarm :: !AlarmType,
                               _AlarmMember'_unknownFields :: !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AlarmMember where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AlarmMember "memberID"
           (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AlarmMember'memberID
                 (\ x__ y__ -> x__{_AlarmMember'memberID = y__}))
              Prelude.id
instance Lens.Labels.HasLens' AlarmMember "alarm" (AlarmType) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AlarmMember'alarm
                 (\ x__ y__ -> x__{_AlarmMember'alarm = y__}))
              Prelude.id
instance Data.ProtoLens.Message AlarmMember where
        messageName _ = Data.Text.pack "etcdserverpb.AlarmMember"
        fieldsByTag
          = let memberID__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "memberID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "memberID")))
                      :: Data.ProtoLens.FieldDescriptor AlarmMember
                alarm__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "alarm"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor AlarmType)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "alarm")))
                      :: Data.ProtoLens.FieldDescriptor AlarmMember
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, memberID__field_descriptor),
                 (Data.ProtoLens.Tag 2, alarm__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AlarmMember'_unknownFields
              (\ x__ y__ -> x__{_AlarmMember'_unknownFields = y__})
        defMessage
          = AlarmMember{_AlarmMember'memberID = Data.ProtoLens.fieldDefault,
                        _AlarmMember'alarm = Data.ProtoLens.fieldDefault,
                        _AlarmMember'_unknownFields = ([])}
instance Control.DeepSeq.NFData AlarmMember where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AlarmMember'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AlarmMember'memberID x__)
                   (Control.DeepSeq.deepseq (_AlarmMember'alarm x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.action' @:: Lens' AlarmRequest AlarmRequest'AlarmAction@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.memberID' @:: Lens' AlarmRequest Data.Word.Word64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.alarm' @:: Lens' AlarmRequest AlarmType@
 -}
data AlarmRequest = AlarmRequest{_AlarmRequest'action ::
                                 !AlarmRequest'AlarmAction,
                                 _AlarmRequest'memberID :: !Data.Word.Word64,
                                 _AlarmRequest'alarm :: !AlarmType,
                                 _AlarmRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
                      deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AlarmRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AlarmRequest "action"
           (AlarmRequest'AlarmAction)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AlarmRequest'action
                 (\ x__ y__ -> x__{_AlarmRequest'action = y__}))
              Prelude.id
instance Lens.Labels.HasLens' AlarmRequest "memberID"
           (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AlarmRequest'memberID
                 (\ x__ y__ -> x__{_AlarmRequest'memberID = y__}))
              Prelude.id
instance Lens.Labels.HasLens' AlarmRequest "alarm" (AlarmType)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AlarmRequest'alarm
                 (\ x__ y__ -> x__{_AlarmRequest'alarm = y__}))
              Prelude.id
instance Data.ProtoLens.Message AlarmRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AlarmRequest"
        fieldsByTag
          = let action__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "action"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor AlarmRequest'AlarmAction)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "action")))
                      :: Data.ProtoLens.FieldDescriptor AlarmRequest
                memberID__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "memberID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "memberID")))
                      :: Data.ProtoLens.FieldDescriptor AlarmRequest
                alarm__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "alarm"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor AlarmType)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "alarm")))
                      :: Data.ProtoLens.FieldDescriptor AlarmRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, action__field_descriptor),
                 (Data.ProtoLens.Tag 2, memberID__field_descriptor),
                 (Data.ProtoLens.Tag 3, alarm__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AlarmRequest'_unknownFields
              (\ x__ y__ -> x__{_AlarmRequest'_unknownFields = y__})
        defMessage
          = AlarmRequest{_AlarmRequest'action = Data.ProtoLens.fieldDefault,
                         _AlarmRequest'memberID = Data.ProtoLens.fieldDefault,
                         _AlarmRequest'alarm = Data.ProtoLens.fieldDefault,
                         _AlarmRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData AlarmRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AlarmRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AlarmRequest'action x__)
                   (Control.DeepSeq.deepseq (_AlarmRequest'memberID x__)
                      (Control.DeepSeq.deepseq (_AlarmRequest'alarm x__) (()))))
data AlarmRequest'AlarmAction = AlarmRequest'GET
                              | AlarmRequest'ACTIVATE
                              | AlarmRequest'DEACTIVATE
                              | AlarmRequest'AlarmAction'Unrecognized !AlarmRequest'AlarmAction'UnrecognizedValue
                                  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
newtype AlarmRequest'AlarmAction'UnrecognizedValue = AlarmRequest'AlarmAction'UnrecognizedValue Data.Int.Int32
                                                       deriving (Prelude.Eq, Prelude.Ord,
                                                                 Prelude.Show)
instance Data.ProtoLens.MessageEnum AlarmRequest'AlarmAction where
        maybeToEnum 0 = Prelude.Just AlarmRequest'GET
        maybeToEnum 1 = Prelude.Just AlarmRequest'ACTIVATE
        maybeToEnum 2 = Prelude.Just AlarmRequest'DEACTIVATE
        maybeToEnum k
          = Prelude.Just
              (AlarmRequest'AlarmAction'Unrecognized
                 (AlarmRequest'AlarmAction'UnrecognizedValue
                    (Prelude.fromIntegral k)))
        showEnum AlarmRequest'GET = "GET"
        showEnum AlarmRequest'ACTIVATE = "ACTIVATE"
        showEnum AlarmRequest'DEACTIVATE = "DEACTIVATE"
        showEnum
          (AlarmRequest'AlarmAction'Unrecognized
             (AlarmRequest'AlarmAction'UnrecognizedValue k))
          = Prelude.show k
        readEnum "GET" = Prelude.Just AlarmRequest'GET
        readEnum "ACTIVATE" = Prelude.Just AlarmRequest'ACTIVATE
        readEnum "DEACTIVATE" = Prelude.Just AlarmRequest'DEACTIVATE
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded AlarmRequest'AlarmAction where
        minBound = AlarmRequest'GET
        maxBound = AlarmRequest'DEACTIVATE
instance Prelude.Enum AlarmRequest'AlarmAction where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum AlarmAction: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum AlarmRequest'GET = 0
        fromEnum AlarmRequest'ACTIVATE = 1
        fromEnum AlarmRequest'DEACTIVATE = 2
        fromEnum
          (AlarmRequest'AlarmAction'Unrecognized
             (AlarmRequest'AlarmAction'UnrecognizedValue k))
          = Prelude.fromIntegral k
        succ AlarmRequest'DEACTIVATE
          = Prelude.error
              "AlarmRequest'AlarmAction.succ: bad argument AlarmRequest'DEACTIVATE. This value would be out of bounds."
        succ AlarmRequest'GET = AlarmRequest'ACTIVATE
        succ AlarmRequest'ACTIVATE = AlarmRequest'DEACTIVATE
        succ _
          = Prelude.error
              "AlarmRequest'AlarmAction.succ: bad argument: unrecognized value"
        pred AlarmRequest'GET
          = Prelude.error
              "AlarmRequest'AlarmAction.pred: bad argument AlarmRequest'GET. This value would be out of bounds."
        pred AlarmRequest'ACTIVATE = AlarmRequest'GET
        pred AlarmRequest'DEACTIVATE = AlarmRequest'ACTIVATE
        pred _
          = Prelude.error
              "AlarmRequest'AlarmAction.pred: bad argument: unrecognized value"
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault AlarmRequest'AlarmAction where
        fieldDefault = AlarmRequest'GET
instance Control.DeepSeq.NFData AlarmRequest'AlarmAction where
        rnf x__ = Prelude.seq x__ (())
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AlarmResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AlarmResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.alarms' @:: Lens' AlarmResponse [AlarmMember]@
 -}
data AlarmResponse = AlarmResponse{_AlarmResponse'header ::
                                   !(Prelude.Maybe ResponseHeader),
                                   _AlarmResponse'alarms :: ![AlarmMember],
                                   _AlarmResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
                       deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AlarmResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AlarmResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AlarmResponse'header
                 (\ x__ y__ -> x__{_AlarmResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' AlarmResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AlarmResponse'header
                 (\ x__ y__ -> x__{_AlarmResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' AlarmResponse "alarms"
           ([AlarmMember])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AlarmResponse'alarms
                 (\ x__ y__ -> x__{_AlarmResponse'alarms = y__}))
              Prelude.id
instance Data.ProtoLens.Message AlarmResponse where
        messageName _ = Data.Text.pack "etcdserverpb.AlarmResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AlarmResponse
                alarms__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "alarms"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor AlarmMember)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "alarms")))
                      :: Data.ProtoLens.FieldDescriptor AlarmResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, alarms__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AlarmResponse'_unknownFields
              (\ x__ y__ -> x__{_AlarmResponse'_unknownFields = y__})
        defMessage
          = AlarmResponse{_AlarmResponse'header = Prelude.Nothing,
                          _AlarmResponse'alarms = [], _AlarmResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData AlarmResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AlarmResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AlarmResponse'header x__)
                   (Control.DeepSeq.deepseq (_AlarmResponse'alarms x__) (())))
data AlarmType = NONE
               | NOSPACE
               | CORRUPT
               | AlarmType'Unrecognized !AlarmType'UnrecognizedValue
                   deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
newtype AlarmType'UnrecognizedValue = AlarmType'UnrecognizedValue Data.Int.Int32
                                        deriving (Prelude.Eq, Prelude.Ord, Prelude.Show)
instance Data.ProtoLens.MessageEnum AlarmType where
        maybeToEnum 0 = Prelude.Just NONE
        maybeToEnum 1 = Prelude.Just NOSPACE
        maybeToEnum 2 = Prelude.Just CORRUPT
        maybeToEnum k
          = Prelude.Just
              (AlarmType'Unrecognized
                 (AlarmType'UnrecognizedValue (Prelude.fromIntegral k)))
        showEnum NONE = "NONE"
        showEnum NOSPACE = "NOSPACE"
        showEnum CORRUPT = "CORRUPT"
        showEnum (AlarmType'Unrecognized (AlarmType'UnrecognizedValue k))
          = Prelude.show k
        readEnum "NONE" = Prelude.Just NONE
        readEnum "NOSPACE" = Prelude.Just NOSPACE
        readEnum "CORRUPT" = Prelude.Just CORRUPT
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded AlarmType where
        minBound = NONE
        maxBound = CORRUPT
instance Prelude.Enum AlarmType where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum AlarmType: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum NONE = 0
        fromEnum NOSPACE = 1
        fromEnum CORRUPT = 2
        fromEnum (AlarmType'Unrecognized (AlarmType'UnrecognizedValue k))
          = Prelude.fromIntegral k
        succ CORRUPT
          = Prelude.error
              "AlarmType.succ: bad argument CORRUPT. This value would be out of bounds."
        succ NONE = NOSPACE
        succ NOSPACE = CORRUPT
        succ _
          = Prelude.error "AlarmType.succ: bad argument: unrecognized value"
        pred NONE
          = Prelude.error
              "AlarmType.pred: bad argument NONE. This value would be out of bounds."
        pred NOSPACE = NONE
        pred CORRUPT = NOSPACE
        pred _
          = Prelude.error "AlarmType.pred: bad argument: unrecognized value"
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault AlarmType where
        fieldDefault = NONE
instance Control.DeepSeq.NFData AlarmType where
        rnf x__ = Prelude.seq x__ (())
{- | Fields :

 -}
data AuthDisableRequest = AuthDisableRequest{_AuthDisableRequest'_unknownFields
                                             :: !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthDisableRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message AuthDisableRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthDisableRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthDisableRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthDisableRequest'_unknownFields = y__})
        defMessage
          = AuthDisableRequest{_AuthDisableRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthDisableRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AuthDisableRequest'_unknownFields x__)
                (())
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthDisableResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthDisableResponse (Prelude.Maybe ResponseHeader)@
 -}
data AuthDisableResponse = AuthDisableResponse{_AuthDisableResponse'header
                                               :: !(Prelude.Maybe ResponseHeader),
                                               _AuthDisableResponse'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthDisableResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthDisableResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthDisableResponse'header
                 (\ x__ y__ -> x__{_AuthDisableResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' AuthDisableResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthDisableResponse'header
                 (\ x__ y__ -> x__{_AuthDisableResponse'header = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthDisableResponse where
        messageName _ = Data.Text.pack "etcdserverpb.AuthDisableResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthDisableResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthDisableResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthDisableResponse'_unknownFields = y__})
        defMessage
          = AuthDisableResponse{_AuthDisableResponse'header =
                                  Prelude.Nothing,
                                _AuthDisableResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthDisableResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AuthDisableResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthDisableResponse'header x__) (()))
{- | Fields :

 -}
data AuthEnableRequest = AuthEnableRequest{_AuthEnableRequest'_unknownFields
                                           :: !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthEnableRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message AuthEnableRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthEnableRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthEnableRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthEnableRequest'_unknownFields = y__})
        defMessage
          = AuthEnableRequest{_AuthEnableRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthEnableRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AuthEnableRequest'_unknownFields x__)
                (())
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthEnableResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthEnableResponse (Prelude.Maybe ResponseHeader)@
 -}
data AuthEnableResponse = AuthEnableResponse{_AuthEnableResponse'header
                                             :: !(Prelude.Maybe ResponseHeader),
                                             _AuthEnableResponse'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthEnableResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthEnableResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthEnableResponse'header
                 (\ x__ y__ -> x__{_AuthEnableResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' AuthEnableResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthEnableResponse'header
                 (\ x__ y__ -> x__{_AuthEnableResponse'header = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthEnableResponse where
        messageName _ = Data.Text.pack "etcdserverpb.AuthEnableResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthEnableResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthEnableResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthEnableResponse'_unknownFields = y__})
        defMessage
          = AuthEnableResponse{_AuthEnableResponse'header = Prelude.Nothing,
                               _AuthEnableResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthEnableResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AuthEnableResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthEnableResponse'header x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.name' @:: Lens' AuthRoleAddRequest Data.Text.Text@
 -}
data AuthRoleAddRequest = AuthRoleAddRequest{_AuthRoleAddRequest'name
                                             :: !Data.Text.Text,
                                             _AuthRoleAddRequest'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthRoleAddRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthRoleAddRequest "name"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleAddRequest'name
                 (\ x__ y__ -> x__{_AuthRoleAddRequest'name = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthRoleAddRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthRoleAddRequest"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleAddRequest
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, name__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthRoleAddRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthRoleAddRequest'_unknownFields = y__})
        defMessage
          = AuthRoleAddRequest{_AuthRoleAddRequest'name =
                                 Data.ProtoLens.fieldDefault,
                               _AuthRoleAddRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthRoleAddRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AuthRoleAddRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthRoleAddRequest'name x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthRoleAddResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthRoleAddResponse (Prelude.Maybe ResponseHeader)@
 -}
data AuthRoleAddResponse = AuthRoleAddResponse{_AuthRoleAddResponse'header
                                               :: !(Prelude.Maybe ResponseHeader),
                                               _AuthRoleAddResponse'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthRoleAddResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthRoleAddResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleAddResponse'header
                 (\ x__ y__ -> x__{_AuthRoleAddResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' AuthRoleAddResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleAddResponse'header
                 (\ x__ y__ -> x__{_AuthRoleAddResponse'header = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthRoleAddResponse where
        messageName _ = Data.Text.pack "etcdserverpb.AuthRoleAddResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleAddResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthRoleAddResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthRoleAddResponse'_unknownFields = y__})
        defMessage
          = AuthRoleAddResponse{_AuthRoleAddResponse'header =
                                  Prelude.Nothing,
                                _AuthRoleAddResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthRoleAddResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AuthRoleAddResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthRoleAddResponse'header x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.role' @:: Lens' AuthRoleDeleteRequest Data.Text.Text@
 -}
data AuthRoleDeleteRequest = AuthRoleDeleteRequest{_AuthRoleDeleteRequest'role
                                                   :: !Data.Text.Text,
                                                   _AuthRoleDeleteRequest'_unknownFields ::
                                                   !Data.ProtoLens.FieldSet}
                               deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthRoleDeleteRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthRoleDeleteRequest "role"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleDeleteRequest'role
                 (\ x__ y__ -> x__{_AuthRoleDeleteRequest'role = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthRoleDeleteRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthRoleDeleteRequest"
        fieldsByTag
          = let role__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "role"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "role")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleDeleteRequest
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, role__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthRoleDeleteRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthRoleDeleteRequest'_unknownFields = y__})
        defMessage
          = AuthRoleDeleteRequest{_AuthRoleDeleteRequest'role =
                                    Data.ProtoLens.fieldDefault,
                                  _AuthRoleDeleteRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthRoleDeleteRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AuthRoleDeleteRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthRoleDeleteRequest'role x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthRoleDeleteResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthRoleDeleteResponse (Prelude.Maybe ResponseHeader)@
 -}
data AuthRoleDeleteResponse = AuthRoleDeleteResponse{_AuthRoleDeleteResponse'header
                                                     :: !(Prelude.Maybe ResponseHeader),
                                                     _AuthRoleDeleteResponse'_unknownFields ::
                                                     !Data.ProtoLens.FieldSet}
                                deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthRoleDeleteResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthRoleDeleteResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleDeleteResponse'header
                 (\ x__ y__ -> x__{_AuthRoleDeleteResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' AuthRoleDeleteResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleDeleteResponse'header
                 (\ x__ y__ -> x__{_AuthRoleDeleteResponse'header = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthRoleDeleteResponse where
        messageName _
          = Data.Text.pack "etcdserverpb.AuthRoleDeleteResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleDeleteResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _AuthRoleDeleteResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthRoleDeleteResponse'_unknownFields = y__})
        defMessage
          = AuthRoleDeleteResponse{_AuthRoleDeleteResponse'header =
                                     Prelude.Nothing,
                                   _AuthRoleDeleteResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthRoleDeleteResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_AuthRoleDeleteResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthRoleDeleteResponse'header x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.role' @:: Lens' AuthRoleGetRequest Data.Text.Text@
 -}
data AuthRoleGetRequest = AuthRoleGetRequest{_AuthRoleGetRequest'role
                                             :: !Data.Text.Text,
                                             _AuthRoleGetRequest'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthRoleGetRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthRoleGetRequest "role"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleGetRequest'role
                 (\ x__ y__ -> x__{_AuthRoleGetRequest'role = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthRoleGetRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthRoleGetRequest"
        fieldsByTag
          = let role__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "role"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "role")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleGetRequest
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, role__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthRoleGetRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthRoleGetRequest'_unknownFields = y__})
        defMessage
          = AuthRoleGetRequest{_AuthRoleGetRequest'role =
                                 Data.ProtoLens.fieldDefault,
                               _AuthRoleGetRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthRoleGetRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AuthRoleGetRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthRoleGetRequest'role x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthRoleGetResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthRoleGetResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.perm' @:: Lens' AuthRoleGetResponse [Proto.Etcd.Auth.Authpb.Auth.Permission]@
 -}
data AuthRoleGetResponse = AuthRoleGetResponse{_AuthRoleGetResponse'header
                                               :: !(Prelude.Maybe ResponseHeader),
                                               _AuthRoleGetResponse'perm ::
                                               ![Proto.Etcd.Auth.Authpb.Auth.Permission],
                                               _AuthRoleGetResponse'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthRoleGetResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthRoleGetResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleGetResponse'header
                 (\ x__ y__ -> x__{_AuthRoleGetResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' AuthRoleGetResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleGetResponse'header
                 (\ x__ y__ -> x__{_AuthRoleGetResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' AuthRoleGetResponse "perm"
           ([Proto.Etcd.Auth.Authpb.Auth.Permission])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleGetResponse'perm
                 (\ x__ y__ -> x__{_AuthRoleGetResponse'perm = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthRoleGetResponse where
        messageName _ = Data.Text.pack "etcdserverpb.AuthRoleGetResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleGetResponse
                perm__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "perm"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Etcd.Auth.Authpb.Auth.Permission)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "perm")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleGetResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, perm__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthRoleGetResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthRoleGetResponse'_unknownFields = y__})
        defMessage
          = AuthRoleGetResponse{_AuthRoleGetResponse'header =
                                  Prelude.Nothing,
                                _AuthRoleGetResponse'perm = [],
                                _AuthRoleGetResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthRoleGetResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AuthRoleGetResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthRoleGetResponse'header x__)
                   (Control.DeepSeq.deepseq (_AuthRoleGetResponse'perm x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.name' @:: Lens' AuthRoleGrantPermissionRequest Data.Text.Text@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.perm' @:: Lens' AuthRoleGrantPermissionRequest
  Proto.Etcd.Auth.Authpb.Auth.Permission@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'perm' @:: Lens' AuthRoleGrantPermissionRequest
  (Prelude.Maybe Proto.Etcd.Auth.Authpb.Auth.Permission)@
 -}
data AuthRoleGrantPermissionRequest = AuthRoleGrantPermissionRequest{_AuthRoleGrantPermissionRequest'name
                                                                     :: !Data.Text.Text,
                                                                     _AuthRoleGrantPermissionRequest'perm
                                                                     ::
                                                                     !(Prelude.Maybe
                                                                         Proto.Etcd.Auth.Authpb.Auth.Permission),
                                                                     _AuthRoleGrantPermissionRequest'_unknownFields
                                                                     :: !Data.ProtoLens.FieldSet}
                                        deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthRoleGrantPermissionRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthRoleGrantPermissionRequest "name"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleGrantPermissionRequest'name
                 (\ x__ y__ -> x__{_AuthRoleGrantPermissionRequest'name = y__}))
              Prelude.id
instance Lens.Labels.HasLens' AuthRoleGrantPermissionRequest "perm"
           (Proto.Etcd.Auth.Authpb.Auth.Permission)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleGrantPermissionRequest'perm
                 (\ x__ y__ -> x__{_AuthRoleGrantPermissionRequest'perm = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' AuthRoleGrantPermissionRequest
           "maybe'perm"
           (Prelude.Maybe Proto.Etcd.Auth.Authpb.Auth.Permission)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleGrantPermissionRequest'perm
                 (\ x__ y__ -> x__{_AuthRoleGrantPermissionRequest'perm = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthRoleGrantPermissionRequest
         where
        messageName _
          = Data.Text.pack "etcdserverpb.AuthRoleGrantPermissionRequest"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleGrantPermissionRequest
                perm__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "perm"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Etcd.Auth.Authpb.Auth.Permission)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'perm")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleGrantPermissionRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, name__field_descriptor),
                 (Data.ProtoLens.Tag 2, perm__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _AuthRoleGrantPermissionRequest'_unknownFields
              (\ x__ y__ ->
                 x__{_AuthRoleGrantPermissionRequest'_unknownFields = y__})
        defMessage
          = AuthRoleGrantPermissionRequest{_AuthRoleGrantPermissionRequest'name
                                             = Data.ProtoLens.fieldDefault,
                                           _AuthRoleGrantPermissionRequest'perm = Prelude.Nothing,
                                           _AuthRoleGrantPermissionRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthRoleGrantPermissionRequest
         where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_AuthRoleGrantPermissionRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthRoleGrantPermissionRequest'name x__)
                   (Control.DeepSeq.deepseq (_AuthRoleGrantPermissionRequest'perm x__)
                      (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthRoleGrantPermissionResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthRoleGrantPermissionResponse
  (Prelude.Maybe ResponseHeader)@
 -}
data AuthRoleGrantPermissionResponse = AuthRoleGrantPermissionResponse{_AuthRoleGrantPermissionResponse'header
                                                                       ::
                                                                       !(Prelude.Maybe
                                                                           ResponseHeader),
                                                                       _AuthRoleGrantPermissionResponse'_unknownFields
                                                                       :: !Data.ProtoLens.FieldSet}
                                         deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthRoleGrantPermissionResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthRoleGrantPermissionResponse
           "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _AuthRoleGrantPermissionResponse'header
                 (\ x__ y__ -> x__{_AuthRoleGrantPermissionResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' AuthRoleGrantPermissionResponse
           "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _AuthRoleGrantPermissionResponse'header
                 (\ x__ y__ -> x__{_AuthRoleGrantPermissionResponse'header = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthRoleGrantPermissionResponse
         where
        messageName _
          = Data.Text.pack "etcdserverpb.AuthRoleGrantPermissionResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleGrantPermissionResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _AuthRoleGrantPermissionResponse'_unknownFields
              (\ x__ y__ ->
                 x__{_AuthRoleGrantPermissionResponse'_unknownFields = y__})
        defMessage
          = AuthRoleGrantPermissionResponse{_AuthRoleGrantPermissionResponse'header
                                              = Prelude.Nothing,
                                            _AuthRoleGrantPermissionResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthRoleGrantPermissionResponse
         where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_AuthRoleGrantPermissionResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq
                   (_AuthRoleGrantPermissionResponse'header x__)
                   (()))
{- | Fields :

 -}
data AuthRoleListRequest = AuthRoleListRequest{_AuthRoleListRequest'_unknownFields
                                               :: !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthRoleListRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message AuthRoleListRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthRoleListRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthRoleListRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthRoleListRequest'_unknownFields = y__})
        defMessage
          = AuthRoleListRequest{_AuthRoleListRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthRoleListRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AuthRoleListRequest'_unknownFields x__)
                (())
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthRoleListResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthRoleListResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.roles' @:: Lens' AuthRoleListResponse [Data.Text.Text]@
 -}
data AuthRoleListResponse = AuthRoleListResponse{_AuthRoleListResponse'header
                                                 :: !(Prelude.Maybe ResponseHeader),
                                                 _AuthRoleListResponse'roles :: ![Data.Text.Text],
                                                 _AuthRoleListResponse'_unknownFields ::
                                                 !Data.ProtoLens.FieldSet}
                              deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthRoleListResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthRoleListResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleListResponse'header
                 (\ x__ y__ -> x__{_AuthRoleListResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' AuthRoleListResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleListResponse'header
                 (\ x__ y__ -> x__{_AuthRoleListResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' AuthRoleListResponse "roles"
           ([Data.Text.Text])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleListResponse'roles
                 (\ x__ y__ -> x__{_AuthRoleListResponse'roles = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthRoleListResponse where
        messageName _ = Data.Text.pack "etcdserverpb.AuthRoleListResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleListResponse
                roles__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "roles"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "roles")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleListResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, roles__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthRoleListResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthRoleListResponse'_unknownFields = y__})
        defMessage
          = AuthRoleListResponse{_AuthRoleListResponse'header =
                                   Prelude.Nothing,
                                 _AuthRoleListResponse'roles = [],
                                 _AuthRoleListResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthRoleListResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AuthRoleListResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthRoleListResponse'header x__)
                   (Control.DeepSeq.deepseq (_AuthRoleListResponse'roles x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.role' @:: Lens' AuthRoleRevokePermissionRequest Data.Text.Text@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.key' @:: Lens' AuthRoleRevokePermissionRequest Data.ByteString.ByteString@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.rangeEnd' @:: Lens' AuthRoleRevokePermissionRequest Data.ByteString.ByteString@
 -}
data AuthRoleRevokePermissionRequest = AuthRoleRevokePermissionRequest{_AuthRoleRevokePermissionRequest'role
                                                                       :: !Data.Text.Text,
                                                                       _AuthRoleRevokePermissionRequest'key
                                                                       ::
                                                                       !Data.ByteString.ByteString,
                                                                       _AuthRoleRevokePermissionRequest'rangeEnd
                                                                       ::
                                                                       !Data.ByteString.ByteString,
                                                                       _AuthRoleRevokePermissionRequest'_unknownFields
                                                                       :: !Data.ProtoLens.FieldSet}
                                         deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthRoleRevokePermissionRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthRoleRevokePermissionRequest
           "role"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleRevokePermissionRequest'role
                 (\ x__ y__ -> x__{_AuthRoleRevokePermissionRequest'role = y__}))
              Prelude.id
instance Lens.Labels.HasLens' AuthRoleRevokePermissionRequest "key"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleRevokePermissionRequest'key
                 (\ x__ y__ -> x__{_AuthRoleRevokePermissionRequest'key = y__}))
              Prelude.id
instance Lens.Labels.HasLens' AuthRoleRevokePermissionRequest
           "rangeEnd"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _AuthRoleRevokePermissionRequest'rangeEnd
                 (\ x__ y__ ->
                    x__{_AuthRoleRevokePermissionRequest'rangeEnd = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthRoleRevokePermissionRequest
         where
        messageName _
          = Data.Text.pack "etcdserverpb.AuthRoleRevokePermissionRequest"
        fieldsByTag
          = let role__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "role"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "role")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleRevokePermissionRequest
                key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleRevokePermissionRequest
                rangeEnd__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "range_end"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "rangeEnd")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleRevokePermissionRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, role__field_descriptor),
                 (Data.ProtoLens.Tag 2, key__field_descriptor),
                 (Data.ProtoLens.Tag 3, rangeEnd__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _AuthRoleRevokePermissionRequest'_unknownFields
              (\ x__ y__ ->
                 x__{_AuthRoleRevokePermissionRequest'_unknownFields = y__})
        defMessage
          = AuthRoleRevokePermissionRequest{_AuthRoleRevokePermissionRequest'role
                                              = Data.ProtoLens.fieldDefault,
                                            _AuthRoleRevokePermissionRequest'key =
                                              Data.ProtoLens.fieldDefault,
                                            _AuthRoleRevokePermissionRequest'rangeEnd =
                                              Data.ProtoLens.fieldDefault,
                                            _AuthRoleRevokePermissionRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthRoleRevokePermissionRequest
         where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_AuthRoleRevokePermissionRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq
                   (_AuthRoleRevokePermissionRequest'role x__)
                   (Control.DeepSeq.deepseq (_AuthRoleRevokePermissionRequest'key x__)
                      (Control.DeepSeq.deepseq
                         (_AuthRoleRevokePermissionRequest'rangeEnd x__)
                         (()))))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthRoleRevokePermissionResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthRoleRevokePermissionResponse
  (Prelude.Maybe ResponseHeader)@
 -}
data AuthRoleRevokePermissionResponse = AuthRoleRevokePermissionResponse{_AuthRoleRevokePermissionResponse'header
                                                                         ::
                                                                         !(Prelude.Maybe
                                                                             ResponseHeader),
                                                                         _AuthRoleRevokePermissionResponse'_unknownFields
                                                                         ::
                                                                         !Data.ProtoLens.FieldSet}
                                          deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthRoleRevokePermissionResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthRoleRevokePermissionResponse
           "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _AuthRoleRevokePermissionResponse'header
                 (\ x__ y__ -> x__{_AuthRoleRevokePermissionResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' AuthRoleRevokePermissionResponse
           "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _AuthRoleRevokePermissionResponse'header
                 (\ x__ y__ -> x__{_AuthRoleRevokePermissionResponse'header = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthRoleRevokePermissionResponse
         where
        messageName _
          = Data.Text.pack "etcdserverpb.AuthRoleRevokePermissionResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleRevokePermissionResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _AuthRoleRevokePermissionResponse'_unknownFields
              (\ x__ y__ ->
                 x__{_AuthRoleRevokePermissionResponse'_unknownFields = y__})
        defMessage
          = AuthRoleRevokePermissionResponse{_AuthRoleRevokePermissionResponse'header
                                               = Prelude.Nothing,
                                             _AuthRoleRevokePermissionResponse'_unknownFields =
                                               ([])}
instance Control.DeepSeq.NFData AuthRoleRevokePermissionResponse
         where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_AuthRoleRevokePermissionResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq
                   (_AuthRoleRevokePermissionResponse'header x__)
                   (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.name' @:: Lens' AuthUserAddRequest Data.Text.Text@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.password' @:: Lens' AuthUserAddRequest Data.Text.Text@
 -}
data AuthUserAddRequest = AuthUserAddRequest{_AuthUserAddRequest'name
                                             :: !Data.Text.Text,
                                             _AuthUserAddRequest'password :: !Data.Text.Text,
                                             _AuthUserAddRequest'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthUserAddRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthUserAddRequest "name"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserAddRequest'name
                 (\ x__ y__ -> x__{_AuthUserAddRequest'name = y__}))
              Prelude.id
instance Lens.Labels.HasLens' AuthUserAddRequest "password"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserAddRequest'password
                 (\ x__ y__ -> x__{_AuthUserAddRequest'password = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthUserAddRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthUserAddRequest"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserAddRequest
                password__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "password"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "password")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserAddRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, name__field_descriptor),
                 (Data.ProtoLens.Tag 2, password__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthUserAddRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthUserAddRequest'_unknownFields = y__})
        defMessage
          = AuthUserAddRequest{_AuthUserAddRequest'name =
                                 Data.ProtoLens.fieldDefault,
                               _AuthUserAddRequest'password = Data.ProtoLens.fieldDefault,
                               _AuthUserAddRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthUserAddRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AuthUserAddRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthUserAddRequest'name x__)
                   (Control.DeepSeq.deepseq (_AuthUserAddRequest'password x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthUserAddResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthUserAddResponse (Prelude.Maybe ResponseHeader)@
 -}
data AuthUserAddResponse = AuthUserAddResponse{_AuthUserAddResponse'header
                                               :: !(Prelude.Maybe ResponseHeader),
                                               _AuthUserAddResponse'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthUserAddResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthUserAddResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserAddResponse'header
                 (\ x__ y__ -> x__{_AuthUserAddResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' AuthUserAddResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserAddResponse'header
                 (\ x__ y__ -> x__{_AuthUserAddResponse'header = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthUserAddResponse where
        messageName _ = Data.Text.pack "etcdserverpb.AuthUserAddResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserAddResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthUserAddResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthUserAddResponse'_unknownFields = y__})
        defMessage
          = AuthUserAddResponse{_AuthUserAddResponse'header =
                                  Prelude.Nothing,
                                _AuthUserAddResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthUserAddResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AuthUserAddResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthUserAddResponse'header x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.name' @:: Lens' AuthUserChangePasswordRequest Data.Text.Text@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.password' @:: Lens' AuthUserChangePasswordRequest Data.Text.Text@
 -}
data AuthUserChangePasswordRequest = AuthUserChangePasswordRequest{_AuthUserChangePasswordRequest'name
                                                                   :: !Data.Text.Text,
                                                                   _AuthUserChangePasswordRequest'password
                                                                   :: !Data.Text.Text,
                                                                   _AuthUserChangePasswordRequest'_unknownFields
                                                                   :: !Data.ProtoLens.FieldSet}
                                       deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthUserChangePasswordRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthUserChangePasswordRequest "name"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserChangePasswordRequest'name
                 (\ x__ y__ -> x__{_AuthUserChangePasswordRequest'name = y__}))
              Prelude.id
instance Lens.Labels.HasLens' AuthUserChangePasswordRequest
           "password"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _AuthUserChangePasswordRequest'password
                 (\ x__ y__ -> x__{_AuthUserChangePasswordRequest'password = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthUserChangePasswordRequest where
        messageName _
          = Data.Text.pack "etcdserverpb.AuthUserChangePasswordRequest"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserChangePasswordRequest
                password__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "password"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "password")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserChangePasswordRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, name__field_descriptor),
                 (Data.ProtoLens.Tag 2, password__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _AuthUserChangePasswordRequest'_unknownFields
              (\ x__ y__ ->
                 x__{_AuthUserChangePasswordRequest'_unknownFields = y__})
        defMessage
          = AuthUserChangePasswordRequest{_AuthUserChangePasswordRequest'name
                                            = Data.ProtoLens.fieldDefault,
                                          _AuthUserChangePasswordRequest'password =
                                            Data.ProtoLens.fieldDefault,
                                          _AuthUserChangePasswordRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthUserChangePasswordRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_AuthUserChangePasswordRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthUserChangePasswordRequest'name x__)
                   (Control.DeepSeq.deepseq
                      (_AuthUserChangePasswordRequest'password x__)
                      (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthUserChangePasswordResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthUserChangePasswordResponse (Prelude.Maybe ResponseHeader)@
 -}
data AuthUserChangePasswordResponse = AuthUserChangePasswordResponse{_AuthUserChangePasswordResponse'header
                                                                     ::
                                                                     !(Prelude.Maybe
                                                                         ResponseHeader),
                                                                     _AuthUserChangePasswordResponse'_unknownFields
                                                                     :: !Data.ProtoLens.FieldSet}
                                        deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthUserChangePasswordResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthUserChangePasswordResponse
           "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserChangePasswordResponse'header
                 (\ x__ y__ -> x__{_AuthUserChangePasswordResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' AuthUserChangePasswordResponse
           "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserChangePasswordResponse'header
                 (\ x__ y__ -> x__{_AuthUserChangePasswordResponse'header = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthUserChangePasswordResponse
         where
        messageName _
          = Data.Text.pack "etcdserverpb.AuthUserChangePasswordResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserChangePasswordResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _AuthUserChangePasswordResponse'_unknownFields
              (\ x__ y__ ->
                 x__{_AuthUserChangePasswordResponse'_unknownFields = y__})
        defMessage
          = AuthUserChangePasswordResponse{_AuthUserChangePasswordResponse'header
                                             = Prelude.Nothing,
                                           _AuthUserChangePasswordResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthUserChangePasswordResponse
         where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_AuthUserChangePasswordResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq
                   (_AuthUserChangePasswordResponse'header x__)
                   (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.name' @:: Lens' AuthUserDeleteRequest Data.Text.Text@
 -}
data AuthUserDeleteRequest = AuthUserDeleteRequest{_AuthUserDeleteRequest'name
                                                   :: !Data.Text.Text,
                                                   _AuthUserDeleteRequest'_unknownFields ::
                                                   !Data.ProtoLens.FieldSet}
                               deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthUserDeleteRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthUserDeleteRequest "name"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserDeleteRequest'name
                 (\ x__ y__ -> x__{_AuthUserDeleteRequest'name = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthUserDeleteRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthUserDeleteRequest"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserDeleteRequest
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, name__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthUserDeleteRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthUserDeleteRequest'_unknownFields = y__})
        defMessage
          = AuthUserDeleteRequest{_AuthUserDeleteRequest'name =
                                    Data.ProtoLens.fieldDefault,
                                  _AuthUserDeleteRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthUserDeleteRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AuthUserDeleteRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthUserDeleteRequest'name x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthUserDeleteResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthUserDeleteResponse (Prelude.Maybe ResponseHeader)@
 -}
data AuthUserDeleteResponse = AuthUserDeleteResponse{_AuthUserDeleteResponse'header
                                                     :: !(Prelude.Maybe ResponseHeader),
                                                     _AuthUserDeleteResponse'_unknownFields ::
                                                     !Data.ProtoLens.FieldSet}
                                deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthUserDeleteResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthUserDeleteResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserDeleteResponse'header
                 (\ x__ y__ -> x__{_AuthUserDeleteResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' AuthUserDeleteResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserDeleteResponse'header
                 (\ x__ y__ -> x__{_AuthUserDeleteResponse'header = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthUserDeleteResponse where
        messageName _
          = Data.Text.pack "etcdserverpb.AuthUserDeleteResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserDeleteResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _AuthUserDeleteResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthUserDeleteResponse'_unknownFields = y__})
        defMessage
          = AuthUserDeleteResponse{_AuthUserDeleteResponse'header =
                                     Prelude.Nothing,
                                   _AuthUserDeleteResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthUserDeleteResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_AuthUserDeleteResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthUserDeleteResponse'header x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.name' @:: Lens' AuthUserGetRequest Data.Text.Text@
 -}
data AuthUserGetRequest = AuthUserGetRequest{_AuthUserGetRequest'name
                                             :: !Data.Text.Text,
                                             _AuthUserGetRequest'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthUserGetRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthUserGetRequest "name"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserGetRequest'name
                 (\ x__ y__ -> x__{_AuthUserGetRequest'name = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthUserGetRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthUserGetRequest"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserGetRequest
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, name__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthUserGetRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthUserGetRequest'_unknownFields = y__})
        defMessage
          = AuthUserGetRequest{_AuthUserGetRequest'name =
                                 Data.ProtoLens.fieldDefault,
                               _AuthUserGetRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthUserGetRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AuthUserGetRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthUserGetRequest'name x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthUserGetResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthUserGetResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.roles' @:: Lens' AuthUserGetResponse [Data.Text.Text]@
 -}
data AuthUserGetResponse = AuthUserGetResponse{_AuthUserGetResponse'header
                                               :: !(Prelude.Maybe ResponseHeader),
                                               _AuthUserGetResponse'roles :: ![Data.Text.Text],
                                               _AuthUserGetResponse'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthUserGetResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthUserGetResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserGetResponse'header
                 (\ x__ y__ -> x__{_AuthUserGetResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' AuthUserGetResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserGetResponse'header
                 (\ x__ y__ -> x__{_AuthUserGetResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' AuthUserGetResponse "roles"
           ([Data.Text.Text])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserGetResponse'roles
                 (\ x__ y__ -> x__{_AuthUserGetResponse'roles = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthUserGetResponse where
        messageName _ = Data.Text.pack "etcdserverpb.AuthUserGetResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserGetResponse
                roles__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "roles"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "roles")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserGetResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, roles__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthUserGetResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthUserGetResponse'_unknownFields = y__})
        defMessage
          = AuthUserGetResponse{_AuthUserGetResponse'header =
                                  Prelude.Nothing,
                                _AuthUserGetResponse'roles = [],
                                _AuthUserGetResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthUserGetResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AuthUserGetResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthUserGetResponse'header x__)
                   (Control.DeepSeq.deepseq (_AuthUserGetResponse'roles x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.user' @:: Lens' AuthUserGrantRoleRequest Data.Text.Text@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.role' @:: Lens' AuthUserGrantRoleRequest Data.Text.Text@
 -}
data AuthUserGrantRoleRequest = AuthUserGrantRoleRequest{_AuthUserGrantRoleRequest'user
                                                         :: !Data.Text.Text,
                                                         _AuthUserGrantRoleRequest'role ::
                                                         !Data.Text.Text,
                                                         _AuthUserGrantRoleRequest'_unknownFields ::
                                                         !Data.ProtoLens.FieldSet}
                                  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthUserGrantRoleRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthUserGrantRoleRequest "user"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserGrantRoleRequest'user
                 (\ x__ y__ -> x__{_AuthUserGrantRoleRequest'user = y__}))
              Prelude.id
instance Lens.Labels.HasLens' AuthUserGrantRoleRequest "role"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserGrantRoleRequest'role
                 (\ x__ y__ -> x__{_AuthUserGrantRoleRequest'role = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthUserGrantRoleRequest where
        messageName _
          = Data.Text.pack "etcdserverpb.AuthUserGrantRoleRequest"
        fieldsByTag
          = let user__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "user"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "user")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserGrantRoleRequest
                role__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "role"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "role")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserGrantRoleRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, user__field_descriptor),
                 (Data.ProtoLens.Tag 2, role__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _AuthUserGrantRoleRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthUserGrantRoleRequest'_unknownFields = y__})
        defMessage
          = AuthUserGrantRoleRequest{_AuthUserGrantRoleRequest'user =
                                       Data.ProtoLens.fieldDefault,
                                     _AuthUserGrantRoleRequest'role = Data.ProtoLens.fieldDefault,
                                     _AuthUserGrantRoleRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthUserGrantRoleRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_AuthUserGrantRoleRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthUserGrantRoleRequest'user x__)
                   (Control.DeepSeq.deepseq (_AuthUserGrantRoleRequest'role x__)
                      (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthUserGrantRoleResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthUserGrantRoleResponse (Prelude.Maybe ResponseHeader)@
 -}
data AuthUserGrantRoleResponse = AuthUserGrantRoleResponse{_AuthUserGrantRoleResponse'header
                                                           :: !(Prelude.Maybe ResponseHeader),
                                                           _AuthUserGrantRoleResponse'_unknownFields
                                                           :: !Data.ProtoLens.FieldSet}
                                   deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthUserGrantRoleResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthUserGrantRoleResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserGrantRoleResponse'header
                 (\ x__ y__ -> x__{_AuthUserGrantRoleResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' AuthUserGrantRoleResponse
           "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserGrantRoleResponse'header
                 (\ x__ y__ -> x__{_AuthUserGrantRoleResponse'header = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthUserGrantRoleResponse where
        messageName _
          = Data.Text.pack "etcdserverpb.AuthUserGrantRoleResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserGrantRoleResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _AuthUserGrantRoleResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthUserGrantRoleResponse'_unknownFields = y__})
        defMessage
          = AuthUserGrantRoleResponse{_AuthUserGrantRoleResponse'header =
                                        Prelude.Nothing,
                                      _AuthUserGrantRoleResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthUserGrantRoleResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_AuthUserGrantRoleResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthUserGrantRoleResponse'header x__)
                   (()))
{- | Fields :

 -}
data AuthUserListRequest = AuthUserListRequest{_AuthUserListRequest'_unknownFields
                                               :: !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthUserListRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message AuthUserListRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthUserListRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthUserListRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthUserListRequest'_unknownFields = y__})
        defMessage
          = AuthUserListRequest{_AuthUserListRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthUserListRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AuthUserListRequest'_unknownFields x__)
                (())
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthUserListResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthUserListResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.users' @:: Lens' AuthUserListResponse [Data.Text.Text]@
 -}
data AuthUserListResponse = AuthUserListResponse{_AuthUserListResponse'header
                                                 :: !(Prelude.Maybe ResponseHeader),
                                                 _AuthUserListResponse'users :: ![Data.Text.Text],
                                                 _AuthUserListResponse'_unknownFields ::
                                                 !Data.ProtoLens.FieldSet}
                              deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthUserListResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthUserListResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserListResponse'header
                 (\ x__ y__ -> x__{_AuthUserListResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' AuthUserListResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserListResponse'header
                 (\ x__ y__ -> x__{_AuthUserListResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' AuthUserListResponse "users"
           ([Data.Text.Text])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserListResponse'users
                 (\ x__ y__ -> x__{_AuthUserListResponse'users = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthUserListResponse where
        messageName _ = Data.Text.pack "etcdserverpb.AuthUserListResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserListResponse
                users__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "users"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "users")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserListResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, users__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthUserListResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthUserListResponse'_unknownFields = y__})
        defMessage
          = AuthUserListResponse{_AuthUserListResponse'header =
                                   Prelude.Nothing,
                                 _AuthUserListResponse'users = [],
                                 _AuthUserListResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthUserListResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AuthUserListResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthUserListResponse'header x__)
                   (Control.DeepSeq.deepseq (_AuthUserListResponse'users x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.name' @:: Lens' AuthUserRevokeRoleRequest Data.Text.Text@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.role' @:: Lens' AuthUserRevokeRoleRequest Data.Text.Text@
 -}
data AuthUserRevokeRoleRequest = AuthUserRevokeRoleRequest{_AuthUserRevokeRoleRequest'name
                                                           :: !Data.Text.Text,
                                                           _AuthUserRevokeRoleRequest'role ::
                                                           !Data.Text.Text,
                                                           _AuthUserRevokeRoleRequest'_unknownFields
                                                           :: !Data.ProtoLens.FieldSet}
                                   deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthUserRevokeRoleRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthUserRevokeRoleRequest "name"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserRevokeRoleRequest'name
                 (\ x__ y__ -> x__{_AuthUserRevokeRoleRequest'name = y__}))
              Prelude.id
instance Lens.Labels.HasLens' AuthUserRevokeRoleRequest "role"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserRevokeRoleRequest'role
                 (\ x__ y__ -> x__{_AuthUserRevokeRoleRequest'role = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthUserRevokeRoleRequest where
        messageName _
          = Data.Text.pack "etcdserverpb.AuthUserRevokeRoleRequest"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserRevokeRoleRequest
                role__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "role"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "role")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserRevokeRoleRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, name__field_descriptor),
                 (Data.ProtoLens.Tag 2, role__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _AuthUserRevokeRoleRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthUserRevokeRoleRequest'_unknownFields = y__})
        defMessage
          = AuthUserRevokeRoleRequest{_AuthUserRevokeRoleRequest'name =
                                        Data.ProtoLens.fieldDefault,
                                      _AuthUserRevokeRoleRequest'role = Data.ProtoLens.fieldDefault,
                                      _AuthUserRevokeRoleRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthUserRevokeRoleRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_AuthUserRevokeRoleRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthUserRevokeRoleRequest'name x__)
                   (Control.DeepSeq.deepseq (_AuthUserRevokeRoleRequest'role x__)
                      (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthUserRevokeRoleResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthUserRevokeRoleResponse (Prelude.Maybe ResponseHeader)@
 -}
data AuthUserRevokeRoleResponse = AuthUserRevokeRoleResponse{_AuthUserRevokeRoleResponse'header
                                                             :: !(Prelude.Maybe ResponseHeader),
                                                             _AuthUserRevokeRoleResponse'_unknownFields
                                                             :: !Data.ProtoLens.FieldSet}
                                    deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthUserRevokeRoleResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthUserRevokeRoleResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserRevokeRoleResponse'header
                 (\ x__ y__ -> x__{_AuthUserRevokeRoleResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' AuthUserRevokeRoleResponse
           "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserRevokeRoleResponse'header
                 (\ x__ y__ -> x__{_AuthUserRevokeRoleResponse'header = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthUserRevokeRoleResponse where
        messageName _
          = Data.Text.pack "etcdserverpb.AuthUserRevokeRoleResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserRevokeRoleResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _AuthUserRevokeRoleResponse'_unknownFields
              (\ x__ y__ ->
                 x__{_AuthUserRevokeRoleResponse'_unknownFields = y__})
        defMessage
          = AuthUserRevokeRoleResponse{_AuthUserRevokeRoleResponse'header =
                                         Prelude.Nothing,
                                       _AuthUserRevokeRoleResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthUserRevokeRoleResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_AuthUserRevokeRoleResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthUserRevokeRoleResponse'header x__)
                   (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.name' @:: Lens' AuthenticateRequest Data.Text.Text@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.password' @:: Lens' AuthenticateRequest Data.Text.Text@
 -}
data AuthenticateRequest = AuthenticateRequest{_AuthenticateRequest'name
                                               :: !Data.Text.Text,
                                               _AuthenticateRequest'password :: !Data.Text.Text,
                                               _AuthenticateRequest'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthenticateRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthenticateRequest "name"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthenticateRequest'name
                 (\ x__ y__ -> x__{_AuthenticateRequest'name = y__}))
              Prelude.id
instance Lens.Labels.HasLens' AuthenticateRequest "password"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthenticateRequest'password
                 (\ x__ y__ -> x__{_AuthenticateRequest'password = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthenticateRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthenticateRequest"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor AuthenticateRequest
                password__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "password"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "password")))
                      :: Data.ProtoLens.FieldDescriptor AuthenticateRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, name__field_descriptor),
                 (Data.ProtoLens.Tag 2, password__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthenticateRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthenticateRequest'_unknownFields = y__})
        defMessage
          = AuthenticateRequest{_AuthenticateRequest'name =
                                  Data.ProtoLens.fieldDefault,
                                _AuthenticateRequest'password = Data.ProtoLens.fieldDefault,
                                _AuthenticateRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthenticateRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AuthenticateRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthenticateRequest'name x__)
                   (Control.DeepSeq.deepseq (_AuthenticateRequest'password x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthenticateResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthenticateResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.token' @:: Lens' AuthenticateResponse Data.Text.Text@
 -}
data AuthenticateResponse = AuthenticateResponse{_AuthenticateResponse'header
                                                 :: !(Prelude.Maybe ResponseHeader),
                                                 _AuthenticateResponse'token :: !Data.Text.Text,
                                                 _AuthenticateResponse'_unknownFields ::
                                                 !Data.ProtoLens.FieldSet}
                              deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AuthenticateResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' AuthenticateResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthenticateResponse'header
                 (\ x__ y__ -> x__{_AuthenticateResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' AuthenticateResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthenticateResponse'header
                 (\ x__ y__ -> x__{_AuthenticateResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' AuthenticateResponse "token"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthenticateResponse'token
                 (\ x__ y__ -> x__{_AuthenticateResponse'token = y__}))
              Prelude.id
instance Data.ProtoLens.Message AuthenticateResponse where
        messageName _ = Data.Text.pack "etcdserverpb.AuthenticateResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthenticateResponse
                token__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "token"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "token")))
                      :: Data.ProtoLens.FieldDescriptor AuthenticateResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, token__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthenticateResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthenticateResponse'_unknownFields = y__})
        defMessage
          = AuthenticateResponse{_AuthenticateResponse'header =
                                   Prelude.Nothing,
                                 _AuthenticateResponse'token = Data.ProtoLens.fieldDefault,
                                 _AuthenticateResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData AuthenticateResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_AuthenticateResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_AuthenticateResponse'header x__)
                   (Control.DeepSeq.deepseq (_AuthenticateResponse'token x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.revision' @:: Lens' CompactionRequest Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.physical' @:: Lens' CompactionRequest Prelude.Bool@
 -}
data CompactionRequest = CompactionRequest{_CompactionRequest'revision
                                           :: !Data.Int.Int64,
                                           _CompactionRequest'physical :: !Prelude.Bool,
                                           _CompactionRequest'_unknownFields ::
                                           !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CompactionRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' CompactionRequest "revision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CompactionRequest'revision
                 (\ x__ y__ -> x__{_CompactionRequest'revision = y__}))
              Prelude.id
instance Lens.Labels.HasLens' CompactionRequest "physical"
           (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CompactionRequest'physical
                 (\ x__ y__ -> x__{_CompactionRequest'physical = y__}))
              Prelude.id
instance Data.ProtoLens.Message CompactionRequest where
        messageName _ = Data.Text.pack "etcdserverpb.CompactionRequest"
        fieldsByTag
          = let revision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "revision")))
                      :: Data.ProtoLens.FieldDescriptor CompactionRequest
                physical__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "physical"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "physical")))
                      :: Data.ProtoLens.FieldDescriptor CompactionRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, revision__field_descriptor),
                 (Data.ProtoLens.Tag 2, physical__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _CompactionRequest'_unknownFields
              (\ x__ y__ -> x__{_CompactionRequest'_unknownFields = y__})
        defMessage
          = CompactionRequest{_CompactionRequest'revision =
                                Data.ProtoLens.fieldDefault,
                              _CompactionRequest'physical = Data.ProtoLens.fieldDefault,
                              _CompactionRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData CompactionRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_CompactionRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_CompactionRequest'revision x__)
                   (Control.DeepSeq.deepseq (_CompactionRequest'physical x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' CompactionResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' CompactionResponse (Prelude.Maybe ResponseHeader)@
 -}
data CompactionResponse = CompactionResponse{_CompactionResponse'header
                                             :: !(Prelude.Maybe ResponseHeader),
                                             _CompactionResponse'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CompactionResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' CompactionResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CompactionResponse'header
                 (\ x__ y__ -> x__{_CompactionResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' CompactionResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CompactionResponse'header
                 (\ x__ y__ -> x__{_CompactionResponse'header = y__}))
              Prelude.id
instance Data.ProtoLens.Message CompactionResponse where
        messageName _ = Data.Text.pack "etcdserverpb.CompactionResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor CompactionResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _CompactionResponse'_unknownFields
              (\ x__ y__ -> x__{_CompactionResponse'_unknownFields = y__})
        defMessage
          = CompactionResponse{_CompactionResponse'header = Prelude.Nothing,
                               _CompactionResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData CompactionResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_CompactionResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_CompactionResponse'header x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.result' @:: Lens' Compare Compare'CompareResult@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.target' @:: Lens' Compare Compare'CompareTarget@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.key' @:: Lens' Compare Data.ByteString.ByteString@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.rangeEnd' @:: Lens' Compare Data.ByteString.ByteString@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'targetUnion' @:: Lens' Compare (Prelude.Maybe Compare'TargetUnion)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'version' @:: Lens' Compare (Prelude.Maybe Data.Int.Int64)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.version' @:: Lens' Compare Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'createRevision' @:: Lens' Compare (Prelude.Maybe Data.Int.Int64)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.createRevision' @:: Lens' Compare Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'modRevision' @:: Lens' Compare (Prelude.Maybe Data.Int.Int64)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.modRevision' @:: Lens' Compare Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'value' @:: Lens' Compare (Prelude.Maybe Data.ByteString.ByteString)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.value' @:: Lens' Compare Data.ByteString.ByteString@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'lease' @:: Lens' Compare (Prelude.Maybe Data.Int.Int64)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.lease' @:: Lens' Compare Data.Int.Int64@
 -}
data Compare = Compare{_Compare'result :: !Compare'CompareResult,
                       _Compare'target :: !Compare'CompareTarget,
                       _Compare'key :: !Data.ByteString.ByteString,
                       _Compare'rangeEnd :: !Data.ByteString.ByteString,
                       _Compare'targetUnion :: !(Prelude.Maybe Compare'TargetUnion),
                       _Compare'_unknownFields :: !Data.ProtoLens.FieldSet}
                 deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Compare where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
data Compare'TargetUnion = Compare'Version !Data.Int.Int64
                         | Compare'CreateRevision !Data.Int.Int64
                         | Compare'ModRevision !Data.Int.Int64
                         | Compare'Value !Data.ByteString.ByteString
                         | Compare'Lease !Data.Int.Int64
                             deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Lens.Labels.HasLens' Compare "result"
           (Compare'CompareResult)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Compare'result
                 (\ x__ y__ -> x__{_Compare'result = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Compare "target"
           (Compare'CompareTarget)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Compare'target
                 (\ x__ y__ -> x__{_Compare'target = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Compare "key"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Compare'key
                 (\ x__ y__ -> x__{_Compare'key = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Compare "rangeEnd"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Compare'rangeEnd
                 (\ x__ y__ -> x__{_Compare'rangeEnd = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Compare "maybe'targetUnion"
           (Prelude.Maybe Compare'TargetUnion)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Compare'targetUnion
                 (\ x__ y__ -> x__{_Compare'targetUnion = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Compare "maybe'version"
           (Prelude.Maybe Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Compare'targetUnion
                 (\ x__ y__ -> x__{_Compare'targetUnion = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Compare'Version x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Compare'Version y__))
instance Lens.Labels.HasLens' Compare "version" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Compare'targetUnion
                 (\ x__ y__ -> x__{_Compare'targetUnion = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Compare'Version x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Compare'Version y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Lens.Labels.HasLens' Compare "maybe'createRevision"
           (Prelude.Maybe Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Compare'targetUnion
                 (\ x__ y__ -> x__{_Compare'targetUnion = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Compare'CreateRevision x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Compare'CreateRevision y__))
instance Lens.Labels.HasLens' Compare "createRevision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Compare'targetUnion
                 (\ x__ y__ -> x__{_Compare'targetUnion = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Compare'CreateRevision x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Compare'CreateRevision y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Lens.Labels.HasLens' Compare "maybe'modRevision"
           (Prelude.Maybe Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Compare'targetUnion
                 (\ x__ y__ -> x__{_Compare'targetUnion = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Compare'ModRevision x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Compare'ModRevision y__))
instance Lens.Labels.HasLens' Compare "modRevision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Compare'targetUnion
                 (\ x__ y__ -> x__{_Compare'targetUnion = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Compare'ModRevision x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Compare'ModRevision y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Lens.Labels.HasLens' Compare "maybe'value"
           (Prelude.Maybe Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Compare'targetUnion
                 (\ x__ y__ -> x__{_Compare'targetUnion = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Compare'Value x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Compare'Value y__))
instance Lens.Labels.HasLens' Compare "value"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Compare'targetUnion
                 (\ x__ y__ -> x__{_Compare'targetUnion = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Compare'Value x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Compare'Value y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Lens.Labels.HasLens' Compare "maybe'lease"
           (Prelude.Maybe Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Compare'targetUnion
                 (\ x__ y__ -> x__{_Compare'targetUnion = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Compare'Lease x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Compare'Lease y__))
instance Lens.Labels.HasLens' Compare "lease" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Compare'targetUnion
                 (\ x__ y__ -> x__{_Compare'targetUnion = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Compare'Lease x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Compare'Lease y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message Compare where
        messageName _ = Data.Text.pack "etcdserverpb.Compare"
        fieldsByTag
          = let result__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "result"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor Compare'CompareResult)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "result")))
                      :: Data.ProtoLens.FieldDescriptor Compare
                target__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "target"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor Compare'CompareTarget)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "target")))
                      :: Data.ProtoLens.FieldDescriptor Compare
                key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor Compare
                rangeEnd__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "range_end"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "rangeEnd")))
                      :: Data.ProtoLens.FieldDescriptor Compare
                version__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "version"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'version")))
                      :: Data.ProtoLens.FieldDescriptor Compare
                createRevision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "create_revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'createRevision")))
                      :: Data.ProtoLens.FieldDescriptor Compare
                modRevision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "mod_revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'modRevision")))
                      :: Data.ProtoLens.FieldDescriptor Compare
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'value")))
                      :: Data.ProtoLens.FieldDescriptor Compare
                lease__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "lease"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'lease")))
                      :: Data.ProtoLens.FieldDescriptor Compare
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, result__field_descriptor),
                 (Data.ProtoLens.Tag 2, target__field_descriptor),
                 (Data.ProtoLens.Tag 3, key__field_descriptor),
                 (Data.ProtoLens.Tag 64, rangeEnd__field_descriptor),
                 (Data.ProtoLens.Tag 4, version__field_descriptor),
                 (Data.ProtoLens.Tag 5, createRevision__field_descriptor),
                 (Data.ProtoLens.Tag 6, modRevision__field_descriptor),
                 (Data.ProtoLens.Tag 7, value__field_descriptor),
                 (Data.ProtoLens.Tag 8, lease__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Compare'_unknownFields
              (\ x__ y__ -> x__{_Compare'_unknownFields = y__})
        defMessage
          = Compare{_Compare'result = Data.ProtoLens.fieldDefault,
                    _Compare'target = Data.ProtoLens.fieldDefault,
                    _Compare'key = Data.ProtoLens.fieldDefault,
                    _Compare'rangeEnd = Data.ProtoLens.fieldDefault,
                    _Compare'targetUnion = Prelude.Nothing,
                    _Compare'_unknownFields = ([])}
instance Control.DeepSeq.NFData Compare where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_Compare'_unknownFields x__)
                (Control.DeepSeq.deepseq (_Compare'result x__)
                   (Control.DeepSeq.deepseq (_Compare'target x__)
                      (Control.DeepSeq.deepseq (_Compare'key x__)
                         (Control.DeepSeq.deepseq (_Compare'rangeEnd x__)
                            (Control.DeepSeq.deepseq (_Compare'targetUnion x__) (()))))))
instance Control.DeepSeq.NFData Compare'TargetUnion where
        rnf (Compare'Version x__) = Control.DeepSeq.rnf x__
        rnf (Compare'CreateRevision x__) = Control.DeepSeq.rnf x__
        rnf (Compare'ModRevision x__) = Control.DeepSeq.rnf x__
        rnf (Compare'Value x__) = Control.DeepSeq.rnf x__
        rnf (Compare'Lease x__) = Control.DeepSeq.rnf x__
_Compare'Version ::
                 Lens.Labels.Prism.Prism' Compare'TargetUnion Data.Int.Int64
_Compare'Version
  = Lens.Labels.Prism.prism' Compare'Version
      (\ p__ ->
         case p__ of
             Compare'Version p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Compare'CreateRevision ::
                        Lens.Labels.Prism.Prism' Compare'TargetUnion Data.Int.Int64
_Compare'CreateRevision
  = Lens.Labels.Prism.prism' Compare'CreateRevision
      (\ p__ ->
         case p__ of
             Compare'CreateRevision p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Compare'ModRevision ::
                     Lens.Labels.Prism.Prism' Compare'TargetUnion Data.Int.Int64
_Compare'ModRevision
  = Lens.Labels.Prism.prism' Compare'ModRevision
      (\ p__ ->
         case p__ of
             Compare'ModRevision p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Compare'Value ::
               Lens.Labels.Prism.Prism' Compare'TargetUnion
                 Data.ByteString.ByteString
_Compare'Value
  = Lens.Labels.Prism.prism' Compare'Value
      (\ p__ ->
         case p__ of
             Compare'Value p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Compare'Lease ::
               Lens.Labels.Prism.Prism' Compare'TargetUnion Data.Int.Int64
_Compare'Lease
  = Lens.Labels.Prism.prism' Compare'Lease
      (\ p__ ->
         case p__ of
             Compare'Lease p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
data Compare'CompareResult = Compare'EQUAL
                           | Compare'GREATER
                           | Compare'LESS
                           | Compare'NOT_EQUAL
                           | Compare'CompareResult'Unrecognized !Compare'CompareResult'UnrecognizedValue
                               deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
newtype Compare'CompareResult'UnrecognizedValue = Compare'CompareResult'UnrecognizedValue Data.Int.Int32
                                                    deriving (Prelude.Eq, Prelude.Ord, Prelude.Show)
instance Data.ProtoLens.MessageEnum Compare'CompareResult where
        maybeToEnum 0 = Prelude.Just Compare'EQUAL
        maybeToEnum 1 = Prelude.Just Compare'GREATER
        maybeToEnum 2 = Prelude.Just Compare'LESS
        maybeToEnum 3 = Prelude.Just Compare'NOT_EQUAL
        maybeToEnum k
          = Prelude.Just
              (Compare'CompareResult'Unrecognized
                 (Compare'CompareResult'UnrecognizedValue (Prelude.fromIntegral k)))
        showEnum Compare'EQUAL = "EQUAL"
        showEnum Compare'GREATER = "GREATER"
        showEnum Compare'LESS = "LESS"
        showEnum Compare'NOT_EQUAL = "NOT_EQUAL"
        showEnum
          (Compare'CompareResult'Unrecognized
             (Compare'CompareResult'UnrecognizedValue k))
          = Prelude.show k
        readEnum "EQUAL" = Prelude.Just Compare'EQUAL
        readEnum "GREATER" = Prelude.Just Compare'GREATER
        readEnum "LESS" = Prelude.Just Compare'LESS
        readEnum "NOT_EQUAL" = Prelude.Just Compare'NOT_EQUAL
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Compare'CompareResult where
        minBound = Compare'EQUAL
        maxBound = Compare'NOT_EQUAL
instance Prelude.Enum Compare'CompareResult where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum CompareResult: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum Compare'EQUAL = 0
        fromEnum Compare'GREATER = 1
        fromEnum Compare'LESS = 2
        fromEnum Compare'NOT_EQUAL = 3
        fromEnum
          (Compare'CompareResult'Unrecognized
             (Compare'CompareResult'UnrecognizedValue k))
          = Prelude.fromIntegral k
        succ Compare'NOT_EQUAL
          = Prelude.error
              "Compare'CompareResult.succ: bad argument Compare'NOT_EQUAL. This value would be out of bounds."
        succ Compare'EQUAL = Compare'GREATER
        succ Compare'GREATER = Compare'LESS
        succ Compare'LESS = Compare'NOT_EQUAL
        succ _
          = Prelude.error
              "Compare'CompareResult.succ: bad argument: unrecognized value"
        pred Compare'EQUAL
          = Prelude.error
              "Compare'CompareResult.pred: bad argument Compare'EQUAL. This value would be out of bounds."
        pred Compare'GREATER = Compare'EQUAL
        pred Compare'LESS = Compare'GREATER
        pred Compare'NOT_EQUAL = Compare'LESS
        pred _
          = Prelude.error
              "Compare'CompareResult.pred: bad argument: unrecognized value"
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Compare'CompareResult where
        fieldDefault = Compare'EQUAL
instance Control.DeepSeq.NFData Compare'CompareResult where
        rnf x__ = Prelude.seq x__ (())
data Compare'CompareTarget = Compare'VERSION
                           | Compare'CREATE
                           | Compare'MOD
                           | Compare'VALUE
                           | Compare'LEASE
                           | Compare'CompareTarget'Unrecognized !Compare'CompareTarget'UnrecognizedValue
                               deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
newtype Compare'CompareTarget'UnrecognizedValue = Compare'CompareTarget'UnrecognizedValue Data.Int.Int32
                                                    deriving (Prelude.Eq, Prelude.Ord, Prelude.Show)
instance Data.ProtoLens.MessageEnum Compare'CompareTarget where
        maybeToEnum 0 = Prelude.Just Compare'VERSION
        maybeToEnum 1 = Prelude.Just Compare'CREATE
        maybeToEnum 2 = Prelude.Just Compare'MOD
        maybeToEnum 3 = Prelude.Just Compare'VALUE
        maybeToEnum 4 = Prelude.Just Compare'LEASE
        maybeToEnum k
          = Prelude.Just
              (Compare'CompareTarget'Unrecognized
                 (Compare'CompareTarget'UnrecognizedValue (Prelude.fromIntegral k)))
        showEnum Compare'VERSION = "VERSION"
        showEnum Compare'CREATE = "CREATE"
        showEnum Compare'MOD = "MOD"
        showEnum Compare'VALUE = "VALUE"
        showEnum Compare'LEASE = "LEASE"
        showEnum
          (Compare'CompareTarget'Unrecognized
             (Compare'CompareTarget'UnrecognizedValue k))
          = Prelude.show k
        readEnum "VERSION" = Prelude.Just Compare'VERSION
        readEnum "CREATE" = Prelude.Just Compare'CREATE
        readEnum "MOD" = Prelude.Just Compare'MOD
        readEnum "VALUE" = Prelude.Just Compare'VALUE
        readEnum "LEASE" = Prelude.Just Compare'LEASE
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Compare'CompareTarget where
        minBound = Compare'VERSION
        maxBound = Compare'LEASE
instance Prelude.Enum Compare'CompareTarget where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum CompareTarget: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum Compare'VERSION = 0
        fromEnum Compare'CREATE = 1
        fromEnum Compare'MOD = 2
        fromEnum Compare'VALUE = 3
        fromEnum Compare'LEASE = 4
        fromEnum
          (Compare'CompareTarget'Unrecognized
             (Compare'CompareTarget'UnrecognizedValue k))
          = Prelude.fromIntegral k
        succ Compare'LEASE
          = Prelude.error
              "Compare'CompareTarget.succ: bad argument Compare'LEASE. This value would be out of bounds."
        succ Compare'VERSION = Compare'CREATE
        succ Compare'CREATE = Compare'MOD
        succ Compare'MOD = Compare'VALUE
        succ Compare'VALUE = Compare'LEASE
        succ _
          = Prelude.error
              "Compare'CompareTarget.succ: bad argument: unrecognized value"
        pred Compare'VERSION
          = Prelude.error
              "Compare'CompareTarget.pred: bad argument Compare'VERSION. This value would be out of bounds."
        pred Compare'CREATE = Compare'VERSION
        pred Compare'MOD = Compare'CREATE
        pred Compare'VALUE = Compare'MOD
        pred Compare'LEASE = Compare'VALUE
        pred _
          = Prelude.error
              "Compare'CompareTarget.pred: bad argument: unrecognized value"
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Compare'CompareTarget where
        fieldDefault = Compare'VERSION
instance Control.DeepSeq.NFData Compare'CompareTarget where
        rnf x__ = Prelude.seq x__ (())
{- | Fields :

 -}
data DefragmentRequest = DefragmentRequest{_DefragmentRequest'_unknownFields
                                           :: !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DefragmentRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message DefragmentRequest where
        messageName _ = Data.Text.pack "etcdserverpb.DefragmentRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _DefragmentRequest'_unknownFields
              (\ x__ y__ -> x__{_DefragmentRequest'_unknownFields = y__})
        defMessage
          = DefragmentRequest{_DefragmentRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData DefragmentRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_DefragmentRequest'_unknownFields x__)
                (())
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' DefragmentResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' DefragmentResponse (Prelude.Maybe ResponseHeader)@
 -}
data DefragmentResponse = DefragmentResponse{_DefragmentResponse'header
                                             :: !(Prelude.Maybe ResponseHeader),
                                             _DefragmentResponse'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DefragmentResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' DefragmentResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DefragmentResponse'header
                 (\ x__ y__ -> x__{_DefragmentResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' DefragmentResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DefragmentResponse'header
                 (\ x__ y__ -> x__{_DefragmentResponse'header = y__}))
              Prelude.id
instance Data.ProtoLens.Message DefragmentResponse where
        messageName _ = Data.Text.pack "etcdserverpb.DefragmentResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor DefragmentResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _DefragmentResponse'_unknownFields
              (\ x__ y__ -> x__{_DefragmentResponse'_unknownFields = y__})
        defMessage
          = DefragmentResponse{_DefragmentResponse'header = Prelude.Nothing,
                               _DefragmentResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData DefragmentResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_DefragmentResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_DefragmentResponse'header x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.key' @:: Lens' DeleteRangeRequest Data.ByteString.ByteString@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.rangeEnd' @:: Lens' DeleteRangeRequest Data.ByteString.ByteString@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.prevKv' @:: Lens' DeleteRangeRequest Prelude.Bool@
 -}
data DeleteRangeRequest = DeleteRangeRequest{_DeleteRangeRequest'key
                                             :: !Data.ByteString.ByteString,
                                             _DeleteRangeRequest'rangeEnd ::
                                             !Data.ByteString.ByteString,
                                             _DeleteRangeRequest'prevKv :: !Prelude.Bool,
                                             _DeleteRangeRequest'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DeleteRangeRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' DeleteRangeRequest "key"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DeleteRangeRequest'key
                 (\ x__ y__ -> x__{_DeleteRangeRequest'key = y__}))
              Prelude.id
instance Lens.Labels.HasLens' DeleteRangeRequest "rangeEnd"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DeleteRangeRequest'rangeEnd
                 (\ x__ y__ -> x__{_DeleteRangeRequest'rangeEnd = y__}))
              Prelude.id
instance Lens.Labels.HasLens' DeleteRangeRequest "prevKv"
           (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DeleteRangeRequest'prevKv
                 (\ x__ y__ -> x__{_DeleteRangeRequest'prevKv = y__}))
              Prelude.id
instance Data.ProtoLens.Message DeleteRangeRequest where
        messageName _ = Data.Text.pack "etcdserverpb.DeleteRangeRequest"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor DeleteRangeRequest
                rangeEnd__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "range_end"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "rangeEnd")))
                      :: Data.ProtoLens.FieldDescriptor DeleteRangeRequest
                prevKv__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "prev_kv"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "prevKv")))
                      :: Data.ProtoLens.FieldDescriptor DeleteRangeRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, rangeEnd__field_descriptor),
                 (Data.ProtoLens.Tag 3, prevKv__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _DeleteRangeRequest'_unknownFields
              (\ x__ y__ -> x__{_DeleteRangeRequest'_unknownFields = y__})
        defMessage
          = DeleteRangeRequest{_DeleteRangeRequest'key =
                                 Data.ProtoLens.fieldDefault,
                               _DeleteRangeRequest'rangeEnd = Data.ProtoLens.fieldDefault,
                               _DeleteRangeRequest'prevKv = Data.ProtoLens.fieldDefault,
                               _DeleteRangeRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData DeleteRangeRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_DeleteRangeRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_DeleteRangeRequest'key x__)
                   (Control.DeepSeq.deepseq (_DeleteRangeRequest'rangeEnd x__)
                      (Control.DeepSeq.deepseq (_DeleteRangeRequest'prevKv x__) (()))))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' DeleteRangeResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' DeleteRangeResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.deleted' @:: Lens' DeleteRangeResponse Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.prevKvs' @:: Lens' DeleteRangeResponse [Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue]@
 -}
data DeleteRangeResponse = DeleteRangeResponse{_DeleteRangeResponse'header
                                               :: !(Prelude.Maybe ResponseHeader),
                                               _DeleteRangeResponse'deleted :: !Data.Int.Int64,
                                               _DeleteRangeResponse'prevKvs ::
                                               ![Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue],
                                               _DeleteRangeResponse'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DeleteRangeResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' DeleteRangeResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DeleteRangeResponse'header
                 (\ x__ y__ -> x__{_DeleteRangeResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' DeleteRangeResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DeleteRangeResponse'header
                 (\ x__ y__ -> x__{_DeleteRangeResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' DeleteRangeResponse "deleted"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DeleteRangeResponse'deleted
                 (\ x__ y__ -> x__{_DeleteRangeResponse'deleted = y__}))
              Prelude.id
instance Lens.Labels.HasLens' DeleteRangeResponse "prevKvs"
           ([Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DeleteRangeResponse'prevKvs
                 (\ x__ y__ -> x__{_DeleteRangeResponse'prevKvs = y__}))
              Prelude.id
instance Data.ProtoLens.Message DeleteRangeResponse where
        messageName _ = Data.Text.pack "etcdserverpb.DeleteRangeResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor DeleteRangeResponse
                deleted__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "deleted"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "deleted")))
                      :: Data.ProtoLens.FieldDescriptor DeleteRangeResponse
                prevKvs__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "prev_kvs"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "prevKvs")))
                      :: Data.ProtoLens.FieldDescriptor DeleteRangeResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, deleted__field_descriptor),
                 (Data.ProtoLens.Tag 3, prevKvs__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _DeleteRangeResponse'_unknownFields
              (\ x__ y__ -> x__{_DeleteRangeResponse'_unknownFields = y__})
        defMessage
          = DeleteRangeResponse{_DeleteRangeResponse'header =
                                  Prelude.Nothing,
                                _DeleteRangeResponse'deleted = Data.ProtoLens.fieldDefault,
                                _DeleteRangeResponse'prevKvs = [],
                                _DeleteRangeResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData DeleteRangeResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_DeleteRangeResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_DeleteRangeResponse'header x__)
                   (Control.DeepSeq.deepseq (_DeleteRangeResponse'deleted x__)
                      (Control.DeepSeq.deepseq (_DeleteRangeResponse'prevKvs x__) (()))))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.revision' @:: Lens' HashKVRequest Data.Int.Int64@
 -}
data HashKVRequest = HashKVRequest{_HashKVRequest'revision ::
                                   !Data.Int.Int64,
                                   _HashKVRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
                       deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HashKVRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' HashKVRequest "revision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HashKVRequest'revision
                 (\ x__ y__ -> x__{_HashKVRequest'revision = y__}))
              Prelude.id
instance Data.ProtoLens.Message HashKVRequest where
        messageName _ = Data.Text.pack "etcdserverpb.HashKVRequest"
        fieldsByTag
          = let revision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "revision")))
                      :: Data.ProtoLens.FieldDescriptor HashKVRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, revision__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _HashKVRequest'_unknownFields
              (\ x__ y__ -> x__{_HashKVRequest'_unknownFields = y__})
        defMessage
          = HashKVRequest{_HashKVRequest'revision =
                            Data.ProtoLens.fieldDefault,
                          _HashKVRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData HashKVRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_HashKVRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_HashKVRequest'revision x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' HashKVResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' HashKVResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.hash' @:: Lens' HashKVResponse Data.Word.Word32@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.compactRevision' @:: Lens' HashKVResponse Data.Int.Int64@
 -}
data HashKVResponse = HashKVResponse{_HashKVResponse'header ::
                                     !(Prelude.Maybe ResponseHeader),
                                     _HashKVResponse'hash :: !Data.Word.Word32,
                                     _HashKVResponse'compactRevision :: !Data.Int.Int64,
                                     _HashKVResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
                        deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HashKVResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' HashKVResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HashKVResponse'header
                 (\ x__ y__ -> x__{_HashKVResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' HashKVResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HashKVResponse'header
                 (\ x__ y__ -> x__{_HashKVResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' HashKVResponse "hash"
           (Data.Word.Word32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HashKVResponse'hash
                 (\ x__ y__ -> x__{_HashKVResponse'hash = y__}))
              Prelude.id
instance Lens.Labels.HasLens' HashKVResponse "compactRevision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HashKVResponse'compactRevision
                 (\ x__ y__ -> x__{_HashKVResponse'compactRevision = y__}))
              Prelude.id
instance Data.ProtoLens.Message HashKVResponse where
        messageName _ = Data.Text.pack "etcdserverpb.HashKVResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor HashKVResponse
                hash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "hash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "hash")))
                      :: Data.ProtoLens.FieldDescriptor HashKVResponse
                compactRevision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "compact_revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "compactRevision")))
                      :: Data.ProtoLens.FieldDescriptor HashKVResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, hash__field_descriptor),
                 (Data.ProtoLens.Tag 3, compactRevision__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _HashKVResponse'_unknownFields
              (\ x__ y__ -> x__{_HashKVResponse'_unknownFields = y__})
        defMessage
          = HashKVResponse{_HashKVResponse'header = Prelude.Nothing,
                           _HashKVResponse'hash = Data.ProtoLens.fieldDefault,
                           _HashKVResponse'compactRevision = Data.ProtoLens.fieldDefault,
                           _HashKVResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData HashKVResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_HashKVResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_HashKVResponse'header x__)
                   (Control.DeepSeq.deepseq (_HashKVResponse'hash x__)
                      (Control.DeepSeq.deepseq (_HashKVResponse'compactRevision x__)
                         (()))))
{- | Fields :

 -}
data HashRequest = HashRequest{_HashRequest'_unknownFields ::
                               !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HashRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message HashRequest where
        messageName _ = Data.Text.pack "etcdserverpb.HashRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _HashRequest'_unknownFields
              (\ x__ y__ -> x__{_HashRequest'_unknownFields = y__})
        defMessage = HashRequest{_HashRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData HashRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_HashRequest'_unknownFields x__) (())
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' HashResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' HashResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.hash' @:: Lens' HashResponse Data.Word.Word32@
 -}
data HashResponse = HashResponse{_HashResponse'header ::
                                 !(Prelude.Maybe ResponseHeader),
                                 _HashResponse'hash :: !Data.Word.Word32,
                                 _HashResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
                      deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HashResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' HashResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HashResponse'header
                 (\ x__ y__ -> x__{_HashResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' HashResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HashResponse'header
                 (\ x__ y__ -> x__{_HashResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' HashResponse "hash"
           (Data.Word.Word32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HashResponse'hash
                 (\ x__ y__ -> x__{_HashResponse'hash = y__}))
              Prelude.id
instance Data.ProtoLens.Message HashResponse where
        messageName _ = Data.Text.pack "etcdserverpb.HashResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor HashResponse
                hash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "hash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "hash")))
                      :: Data.ProtoLens.FieldDescriptor HashResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, hash__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _HashResponse'_unknownFields
              (\ x__ y__ -> x__{_HashResponse'_unknownFields = y__})
        defMessage
          = HashResponse{_HashResponse'header = Prelude.Nothing,
                         _HashResponse'hash = Data.ProtoLens.fieldDefault,
                         _HashResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData HashResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_HashResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_HashResponse'header x__)
                   (Control.DeepSeq.deepseq (_HashResponse'hash x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.id' @:: Lens' LeaseCheckpoint Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.remainingTTL' @:: Lens' LeaseCheckpoint Data.Int.Int64@
 -}
data LeaseCheckpoint = LeaseCheckpoint{_LeaseCheckpoint'id ::
                                       !Data.Int.Int64,
                                       _LeaseCheckpoint'remainingTTL :: !Data.Int.Int64,
                                       _LeaseCheckpoint'_unknownFields :: !Data.ProtoLens.FieldSet}
                         deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LeaseCheckpoint where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' LeaseCheckpoint "id" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseCheckpoint'id
                 (\ x__ y__ -> x__{_LeaseCheckpoint'id = y__}))
              Prelude.id
instance Lens.Labels.HasLens' LeaseCheckpoint "remainingTTL"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseCheckpoint'remainingTTL
                 (\ x__ y__ -> x__{_LeaseCheckpoint'remainingTTL = y__}))
              Prelude.id
instance Data.ProtoLens.Message LeaseCheckpoint where
        messageName _ = Data.Text.pack "etcdserverpb.LeaseCheckpoint"
        fieldsByTag
          = let id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor LeaseCheckpoint
                remainingTTL__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "remaining_TTL"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "remainingTTL")))
                      :: Data.ProtoLens.FieldDescriptor LeaseCheckpoint
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, id__field_descriptor),
                 (Data.ProtoLens.Tag 2, remainingTTL__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LeaseCheckpoint'_unknownFields
              (\ x__ y__ -> x__{_LeaseCheckpoint'_unknownFields = y__})
        defMessage
          = LeaseCheckpoint{_LeaseCheckpoint'id =
                              Data.ProtoLens.fieldDefault,
                            _LeaseCheckpoint'remainingTTL = Data.ProtoLens.fieldDefault,
                            _LeaseCheckpoint'_unknownFields = ([])}
instance Control.DeepSeq.NFData LeaseCheckpoint where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_LeaseCheckpoint'_unknownFields x__)
                (Control.DeepSeq.deepseq (_LeaseCheckpoint'id x__)
                   (Control.DeepSeq.deepseq (_LeaseCheckpoint'remainingTTL x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.checkpoints' @:: Lens' LeaseCheckpointRequest [LeaseCheckpoint]@
 -}
data LeaseCheckpointRequest = LeaseCheckpointRequest{_LeaseCheckpointRequest'checkpoints
                                                     :: ![LeaseCheckpoint],
                                                     _LeaseCheckpointRequest'_unknownFields ::
                                                     !Data.ProtoLens.FieldSet}
                                deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LeaseCheckpointRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' LeaseCheckpointRequest "checkpoints"
           ([LeaseCheckpoint])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseCheckpointRequest'checkpoints
                 (\ x__ y__ -> x__{_LeaseCheckpointRequest'checkpoints = y__}))
              Prelude.id
instance Data.ProtoLens.Message LeaseCheckpointRequest where
        messageName _
          = Data.Text.pack "etcdserverpb.LeaseCheckpointRequest"
        fieldsByTag
          = let checkpoints__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "checkpoints"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor LeaseCheckpoint)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "checkpoints")))
                      :: Data.ProtoLens.FieldDescriptor LeaseCheckpointRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, checkpoints__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _LeaseCheckpointRequest'_unknownFields
              (\ x__ y__ -> x__{_LeaseCheckpointRequest'_unknownFields = y__})
        defMessage
          = LeaseCheckpointRequest{_LeaseCheckpointRequest'checkpoints = [],
                                   _LeaseCheckpointRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData LeaseCheckpointRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_LeaseCheckpointRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_LeaseCheckpointRequest'checkpoints x__)
                   (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' LeaseCheckpointResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' LeaseCheckpointResponse (Prelude.Maybe ResponseHeader)@
 -}
data LeaseCheckpointResponse = LeaseCheckpointResponse{_LeaseCheckpointResponse'header
                                                       :: !(Prelude.Maybe ResponseHeader),
                                                       _LeaseCheckpointResponse'_unknownFields ::
                                                       !Data.ProtoLens.FieldSet}
                                 deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LeaseCheckpointResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' LeaseCheckpointResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseCheckpointResponse'header
                 (\ x__ y__ -> x__{_LeaseCheckpointResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' LeaseCheckpointResponse
           "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseCheckpointResponse'header
                 (\ x__ y__ -> x__{_LeaseCheckpointResponse'header = y__}))
              Prelude.id
instance Data.ProtoLens.Message LeaseCheckpointResponse where
        messageName _
          = Data.Text.pack "etcdserverpb.LeaseCheckpointResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor LeaseCheckpointResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _LeaseCheckpointResponse'_unknownFields
              (\ x__ y__ -> x__{_LeaseCheckpointResponse'_unknownFields = y__})
        defMessage
          = LeaseCheckpointResponse{_LeaseCheckpointResponse'header =
                                      Prelude.Nothing,
                                    _LeaseCheckpointResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData LeaseCheckpointResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_LeaseCheckpointResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_LeaseCheckpointResponse'header x__)
                   (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.ttl' @:: Lens' LeaseGrantRequest Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.id' @:: Lens' LeaseGrantRequest Data.Int.Int64@
 -}
data LeaseGrantRequest = LeaseGrantRequest{_LeaseGrantRequest'ttl
                                           :: !Data.Int.Int64,
                                           _LeaseGrantRequest'id :: !Data.Int.Int64,
                                           _LeaseGrantRequest'_unknownFields ::
                                           !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LeaseGrantRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' LeaseGrantRequest "ttl"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseGrantRequest'ttl
                 (\ x__ y__ -> x__{_LeaseGrantRequest'ttl = y__}))
              Prelude.id
instance Lens.Labels.HasLens' LeaseGrantRequest "id"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseGrantRequest'id
                 (\ x__ y__ -> x__{_LeaseGrantRequest'id = y__}))
              Prelude.id
instance Data.ProtoLens.Message LeaseGrantRequest where
        messageName _ = Data.Text.pack "etcdserverpb.LeaseGrantRequest"
        fieldsByTag
          = let ttl__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "TTL"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "ttl")))
                      :: Data.ProtoLens.FieldDescriptor LeaseGrantRequest
                id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor LeaseGrantRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, ttl__field_descriptor),
                 (Data.ProtoLens.Tag 2, id__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LeaseGrantRequest'_unknownFields
              (\ x__ y__ -> x__{_LeaseGrantRequest'_unknownFields = y__})
        defMessage
          = LeaseGrantRequest{_LeaseGrantRequest'ttl =
                                Data.ProtoLens.fieldDefault,
                              _LeaseGrantRequest'id = Data.ProtoLens.fieldDefault,
                              _LeaseGrantRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData LeaseGrantRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_LeaseGrantRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_LeaseGrantRequest'ttl x__)
                   (Control.DeepSeq.deepseq (_LeaseGrantRequest'id x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' LeaseGrantResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' LeaseGrantResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.id' @:: Lens' LeaseGrantResponse Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.ttl' @:: Lens' LeaseGrantResponse Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.error' @:: Lens' LeaseGrantResponse Data.Text.Text@
 -}
data LeaseGrantResponse = LeaseGrantResponse{_LeaseGrantResponse'header
                                             :: !(Prelude.Maybe ResponseHeader),
                                             _LeaseGrantResponse'id :: !Data.Int.Int64,
                                             _LeaseGrantResponse'ttl :: !Data.Int.Int64,
                                             _LeaseGrantResponse'error :: !Data.Text.Text,
                                             _LeaseGrantResponse'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LeaseGrantResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' LeaseGrantResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseGrantResponse'header
                 (\ x__ y__ -> x__{_LeaseGrantResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' LeaseGrantResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseGrantResponse'header
                 (\ x__ y__ -> x__{_LeaseGrantResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' LeaseGrantResponse "id"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseGrantResponse'id
                 (\ x__ y__ -> x__{_LeaseGrantResponse'id = y__}))
              Prelude.id
instance Lens.Labels.HasLens' LeaseGrantResponse "ttl"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseGrantResponse'ttl
                 (\ x__ y__ -> x__{_LeaseGrantResponse'ttl = y__}))
              Prelude.id
instance Lens.Labels.HasLens' LeaseGrantResponse "error"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseGrantResponse'error
                 (\ x__ y__ -> x__{_LeaseGrantResponse'error = y__}))
              Prelude.id
instance Data.ProtoLens.Message LeaseGrantResponse where
        messageName _ = Data.Text.pack "etcdserverpb.LeaseGrantResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor LeaseGrantResponse
                id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor LeaseGrantResponse
                ttl__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "TTL"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "ttl")))
                      :: Data.ProtoLens.FieldDescriptor LeaseGrantResponse
                error__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "error"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "error")))
                      :: Data.ProtoLens.FieldDescriptor LeaseGrantResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, id__field_descriptor),
                 (Data.ProtoLens.Tag 3, ttl__field_descriptor),
                 (Data.ProtoLens.Tag 4, error__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LeaseGrantResponse'_unknownFields
              (\ x__ y__ -> x__{_LeaseGrantResponse'_unknownFields = y__})
        defMessage
          = LeaseGrantResponse{_LeaseGrantResponse'header = Prelude.Nothing,
                               _LeaseGrantResponse'id = Data.ProtoLens.fieldDefault,
                               _LeaseGrantResponse'ttl = Data.ProtoLens.fieldDefault,
                               _LeaseGrantResponse'error = Data.ProtoLens.fieldDefault,
                               _LeaseGrantResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData LeaseGrantResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_LeaseGrantResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_LeaseGrantResponse'header x__)
                   (Control.DeepSeq.deepseq (_LeaseGrantResponse'id x__)
                      (Control.DeepSeq.deepseq (_LeaseGrantResponse'ttl x__)
                         (Control.DeepSeq.deepseq (_LeaseGrantResponse'error x__) (())))))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.id' @:: Lens' LeaseKeepAliveRequest Data.Int.Int64@
 -}
data LeaseKeepAliveRequest = LeaseKeepAliveRequest{_LeaseKeepAliveRequest'id
                                                   :: !Data.Int.Int64,
                                                   _LeaseKeepAliveRequest'_unknownFields ::
                                                   !Data.ProtoLens.FieldSet}
                               deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LeaseKeepAliveRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' LeaseKeepAliveRequest "id"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseKeepAliveRequest'id
                 (\ x__ y__ -> x__{_LeaseKeepAliveRequest'id = y__}))
              Prelude.id
instance Data.ProtoLens.Message LeaseKeepAliveRequest where
        messageName _ = Data.Text.pack "etcdserverpb.LeaseKeepAliveRequest"
        fieldsByTag
          = let id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor LeaseKeepAliveRequest
              in Data.Map.fromList [(Data.ProtoLens.Tag 1, id__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LeaseKeepAliveRequest'_unknownFields
              (\ x__ y__ -> x__{_LeaseKeepAliveRequest'_unknownFields = y__})
        defMessage
          = LeaseKeepAliveRequest{_LeaseKeepAliveRequest'id =
                                    Data.ProtoLens.fieldDefault,
                                  _LeaseKeepAliveRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData LeaseKeepAliveRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_LeaseKeepAliveRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_LeaseKeepAliveRequest'id x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' LeaseKeepAliveResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' LeaseKeepAliveResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.id' @:: Lens' LeaseKeepAliveResponse Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.ttl' @:: Lens' LeaseKeepAliveResponse Data.Int.Int64@
 -}
data LeaseKeepAliveResponse = LeaseKeepAliveResponse{_LeaseKeepAliveResponse'header
                                                     :: !(Prelude.Maybe ResponseHeader),
                                                     _LeaseKeepAliveResponse'id :: !Data.Int.Int64,
                                                     _LeaseKeepAliveResponse'ttl :: !Data.Int.Int64,
                                                     _LeaseKeepAliveResponse'_unknownFields ::
                                                     !Data.ProtoLens.FieldSet}
                                deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LeaseKeepAliveResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' LeaseKeepAliveResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseKeepAliveResponse'header
                 (\ x__ y__ -> x__{_LeaseKeepAliveResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' LeaseKeepAliveResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseKeepAliveResponse'header
                 (\ x__ y__ -> x__{_LeaseKeepAliveResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' LeaseKeepAliveResponse "id"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseKeepAliveResponse'id
                 (\ x__ y__ -> x__{_LeaseKeepAliveResponse'id = y__}))
              Prelude.id
instance Lens.Labels.HasLens' LeaseKeepAliveResponse "ttl"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseKeepAliveResponse'ttl
                 (\ x__ y__ -> x__{_LeaseKeepAliveResponse'ttl = y__}))
              Prelude.id
instance Data.ProtoLens.Message LeaseKeepAliveResponse where
        messageName _
          = Data.Text.pack "etcdserverpb.LeaseKeepAliveResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor LeaseKeepAliveResponse
                id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor LeaseKeepAliveResponse
                ttl__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "TTL"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "ttl")))
                      :: Data.ProtoLens.FieldDescriptor LeaseKeepAliveResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, id__field_descriptor),
                 (Data.ProtoLens.Tag 3, ttl__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _LeaseKeepAliveResponse'_unknownFields
              (\ x__ y__ -> x__{_LeaseKeepAliveResponse'_unknownFields = y__})
        defMessage
          = LeaseKeepAliveResponse{_LeaseKeepAliveResponse'header =
                                     Prelude.Nothing,
                                   _LeaseKeepAliveResponse'id = Data.ProtoLens.fieldDefault,
                                   _LeaseKeepAliveResponse'ttl = Data.ProtoLens.fieldDefault,
                                   _LeaseKeepAliveResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData LeaseKeepAliveResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_LeaseKeepAliveResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_LeaseKeepAliveResponse'header x__)
                   (Control.DeepSeq.deepseq (_LeaseKeepAliveResponse'id x__)
                      (Control.DeepSeq.deepseq (_LeaseKeepAliveResponse'ttl x__) (()))))
{- | Fields :

 -}
data LeaseLeasesRequest = LeaseLeasesRequest{_LeaseLeasesRequest'_unknownFields
                                             :: !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LeaseLeasesRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message LeaseLeasesRequest where
        messageName _ = Data.Text.pack "etcdserverpb.LeaseLeasesRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _LeaseLeasesRequest'_unknownFields
              (\ x__ y__ -> x__{_LeaseLeasesRequest'_unknownFields = y__})
        defMessage
          = LeaseLeasesRequest{_LeaseLeasesRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData LeaseLeasesRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_LeaseLeasesRequest'_unknownFields x__)
                (())
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' LeaseLeasesResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' LeaseLeasesResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.leases' @:: Lens' LeaseLeasesResponse [LeaseStatus]@
 -}
data LeaseLeasesResponse = LeaseLeasesResponse{_LeaseLeasesResponse'header
                                               :: !(Prelude.Maybe ResponseHeader),
                                               _LeaseLeasesResponse'leases :: ![LeaseStatus],
                                               _LeaseLeasesResponse'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LeaseLeasesResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' LeaseLeasesResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseLeasesResponse'header
                 (\ x__ y__ -> x__{_LeaseLeasesResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' LeaseLeasesResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseLeasesResponse'header
                 (\ x__ y__ -> x__{_LeaseLeasesResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' LeaseLeasesResponse "leases"
           ([LeaseStatus])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseLeasesResponse'leases
                 (\ x__ y__ -> x__{_LeaseLeasesResponse'leases = y__}))
              Prelude.id
instance Data.ProtoLens.Message LeaseLeasesResponse where
        messageName _ = Data.Text.pack "etcdserverpb.LeaseLeasesResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor LeaseLeasesResponse
                leases__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "leases"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor LeaseStatus)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "leases")))
                      :: Data.ProtoLens.FieldDescriptor LeaseLeasesResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, leases__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LeaseLeasesResponse'_unknownFields
              (\ x__ y__ -> x__{_LeaseLeasesResponse'_unknownFields = y__})
        defMessage
          = LeaseLeasesResponse{_LeaseLeasesResponse'header =
                                  Prelude.Nothing,
                                _LeaseLeasesResponse'leases = [],
                                _LeaseLeasesResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData LeaseLeasesResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_LeaseLeasesResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_LeaseLeasesResponse'header x__)
                   (Control.DeepSeq.deepseq (_LeaseLeasesResponse'leases x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.id' @:: Lens' LeaseRevokeRequest Data.Int.Int64@
 -}
data LeaseRevokeRequest = LeaseRevokeRequest{_LeaseRevokeRequest'id
                                             :: !Data.Int.Int64,
                                             _LeaseRevokeRequest'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LeaseRevokeRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' LeaseRevokeRequest "id"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseRevokeRequest'id
                 (\ x__ y__ -> x__{_LeaseRevokeRequest'id = y__}))
              Prelude.id
instance Data.ProtoLens.Message LeaseRevokeRequest where
        messageName _ = Data.Text.pack "etcdserverpb.LeaseRevokeRequest"
        fieldsByTag
          = let id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor LeaseRevokeRequest
              in Data.Map.fromList [(Data.ProtoLens.Tag 1, id__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LeaseRevokeRequest'_unknownFields
              (\ x__ y__ -> x__{_LeaseRevokeRequest'_unknownFields = y__})
        defMessage
          = LeaseRevokeRequest{_LeaseRevokeRequest'id =
                                 Data.ProtoLens.fieldDefault,
                               _LeaseRevokeRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData LeaseRevokeRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_LeaseRevokeRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_LeaseRevokeRequest'id x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' LeaseRevokeResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' LeaseRevokeResponse (Prelude.Maybe ResponseHeader)@
 -}
data LeaseRevokeResponse = LeaseRevokeResponse{_LeaseRevokeResponse'header
                                               :: !(Prelude.Maybe ResponseHeader),
                                               _LeaseRevokeResponse'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LeaseRevokeResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' LeaseRevokeResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseRevokeResponse'header
                 (\ x__ y__ -> x__{_LeaseRevokeResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' LeaseRevokeResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseRevokeResponse'header
                 (\ x__ y__ -> x__{_LeaseRevokeResponse'header = y__}))
              Prelude.id
instance Data.ProtoLens.Message LeaseRevokeResponse where
        messageName _ = Data.Text.pack "etcdserverpb.LeaseRevokeResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor LeaseRevokeResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LeaseRevokeResponse'_unknownFields
              (\ x__ y__ -> x__{_LeaseRevokeResponse'_unknownFields = y__})
        defMessage
          = LeaseRevokeResponse{_LeaseRevokeResponse'header =
                                  Prelude.Nothing,
                                _LeaseRevokeResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData LeaseRevokeResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_LeaseRevokeResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_LeaseRevokeResponse'header x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.id' @:: Lens' LeaseStatus Data.Int.Int64@
 -}
data LeaseStatus = LeaseStatus{_LeaseStatus'id :: !Data.Int.Int64,
                               _LeaseStatus'_unknownFields :: !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LeaseStatus where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' LeaseStatus "id" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseStatus'id
                 (\ x__ y__ -> x__{_LeaseStatus'id = y__}))
              Prelude.id
instance Data.ProtoLens.Message LeaseStatus where
        messageName _ = Data.Text.pack "etcdserverpb.LeaseStatus"
        fieldsByTag
          = let id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor LeaseStatus
              in Data.Map.fromList [(Data.ProtoLens.Tag 1, id__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LeaseStatus'_unknownFields
              (\ x__ y__ -> x__{_LeaseStatus'_unknownFields = y__})
        defMessage
          = LeaseStatus{_LeaseStatus'id = Data.ProtoLens.fieldDefault,
                        _LeaseStatus'_unknownFields = ([])}
instance Control.DeepSeq.NFData LeaseStatus where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_LeaseStatus'_unknownFields x__)
                (Control.DeepSeq.deepseq (_LeaseStatus'id x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.id' @:: Lens' LeaseTimeToLiveRequest Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.keys' @:: Lens' LeaseTimeToLiveRequest Prelude.Bool@
 -}
data LeaseTimeToLiveRequest = LeaseTimeToLiveRequest{_LeaseTimeToLiveRequest'id
                                                     :: !Data.Int.Int64,
                                                     _LeaseTimeToLiveRequest'keys :: !Prelude.Bool,
                                                     _LeaseTimeToLiveRequest'_unknownFields ::
                                                     !Data.ProtoLens.FieldSet}
                                deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LeaseTimeToLiveRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' LeaseTimeToLiveRequest "id"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseTimeToLiveRequest'id
                 (\ x__ y__ -> x__{_LeaseTimeToLiveRequest'id = y__}))
              Prelude.id
instance Lens.Labels.HasLens' LeaseTimeToLiveRequest "keys"
           (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseTimeToLiveRequest'keys
                 (\ x__ y__ -> x__{_LeaseTimeToLiveRequest'keys = y__}))
              Prelude.id
instance Data.ProtoLens.Message LeaseTimeToLiveRequest where
        messageName _
          = Data.Text.pack "etcdserverpb.LeaseTimeToLiveRequest"
        fieldsByTag
          = let id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor LeaseTimeToLiveRequest
                keys__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "keys"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "keys")))
                      :: Data.ProtoLens.FieldDescriptor LeaseTimeToLiveRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, id__field_descriptor),
                 (Data.ProtoLens.Tag 2, keys__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _LeaseTimeToLiveRequest'_unknownFields
              (\ x__ y__ -> x__{_LeaseTimeToLiveRequest'_unknownFields = y__})
        defMessage
          = LeaseTimeToLiveRequest{_LeaseTimeToLiveRequest'id =
                                     Data.ProtoLens.fieldDefault,
                                   _LeaseTimeToLiveRequest'keys = Data.ProtoLens.fieldDefault,
                                   _LeaseTimeToLiveRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData LeaseTimeToLiveRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_LeaseTimeToLiveRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_LeaseTimeToLiveRequest'id x__)
                   (Control.DeepSeq.deepseq (_LeaseTimeToLiveRequest'keys x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' LeaseTimeToLiveResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' LeaseTimeToLiveResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.id' @:: Lens' LeaseTimeToLiveResponse Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.ttl' @:: Lens' LeaseTimeToLiveResponse Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.grantedTTL' @:: Lens' LeaseTimeToLiveResponse Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.keys' @:: Lens' LeaseTimeToLiveResponse [Data.ByteString.ByteString]@
 -}
data LeaseTimeToLiveResponse = LeaseTimeToLiveResponse{_LeaseTimeToLiveResponse'header
                                                       :: !(Prelude.Maybe ResponseHeader),
                                                       _LeaseTimeToLiveResponse'id ::
                                                       !Data.Int.Int64,
                                                       _LeaseTimeToLiveResponse'ttl ::
                                                       !Data.Int.Int64,
                                                       _LeaseTimeToLiveResponse'grantedTTL ::
                                                       !Data.Int.Int64,
                                                       _LeaseTimeToLiveResponse'keys ::
                                                       ![Data.ByteString.ByteString],
                                                       _LeaseTimeToLiveResponse'_unknownFields ::
                                                       !Data.ProtoLens.FieldSet}
                                 deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LeaseTimeToLiveResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' LeaseTimeToLiveResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseTimeToLiveResponse'header
                 (\ x__ y__ -> x__{_LeaseTimeToLiveResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' LeaseTimeToLiveResponse
           "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseTimeToLiveResponse'header
                 (\ x__ y__ -> x__{_LeaseTimeToLiveResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' LeaseTimeToLiveResponse "id"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseTimeToLiveResponse'id
                 (\ x__ y__ -> x__{_LeaseTimeToLiveResponse'id = y__}))
              Prelude.id
instance Lens.Labels.HasLens' LeaseTimeToLiveResponse "ttl"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseTimeToLiveResponse'ttl
                 (\ x__ y__ -> x__{_LeaseTimeToLiveResponse'ttl = y__}))
              Prelude.id
instance Lens.Labels.HasLens' LeaseTimeToLiveResponse "grantedTTL"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseTimeToLiveResponse'grantedTTL
                 (\ x__ y__ -> x__{_LeaseTimeToLiveResponse'grantedTTL = y__}))
              Prelude.id
instance Lens.Labels.HasLens' LeaseTimeToLiveResponse "keys"
           ([Data.ByteString.ByteString])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseTimeToLiveResponse'keys
                 (\ x__ y__ -> x__{_LeaseTimeToLiveResponse'keys = y__}))
              Prelude.id
instance Data.ProtoLens.Message LeaseTimeToLiveResponse where
        messageName _
          = Data.Text.pack "etcdserverpb.LeaseTimeToLiveResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor LeaseTimeToLiveResponse
                id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor LeaseTimeToLiveResponse
                ttl__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "TTL"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "ttl")))
                      :: Data.ProtoLens.FieldDescriptor LeaseTimeToLiveResponse
                grantedTTL__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "grantedTTL"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "grantedTTL")))
                      :: Data.ProtoLens.FieldDescriptor LeaseTimeToLiveResponse
                keys__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "keys"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "keys")))
                      :: Data.ProtoLens.FieldDescriptor LeaseTimeToLiveResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, id__field_descriptor),
                 (Data.ProtoLens.Tag 3, ttl__field_descriptor),
                 (Data.ProtoLens.Tag 4, grantedTTL__field_descriptor),
                 (Data.ProtoLens.Tag 5, keys__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _LeaseTimeToLiveResponse'_unknownFields
              (\ x__ y__ -> x__{_LeaseTimeToLiveResponse'_unknownFields = y__})
        defMessage
          = LeaseTimeToLiveResponse{_LeaseTimeToLiveResponse'header =
                                      Prelude.Nothing,
                                    _LeaseTimeToLiveResponse'id = Data.ProtoLens.fieldDefault,
                                    _LeaseTimeToLiveResponse'ttl = Data.ProtoLens.fieldDefault,
                                    _LeaseTimeToLiveResponse'grantedTTL =
                                      Data.ProtoLens.fieldDefault,
                                    _LeaseTimeToLiveResponse'keys = [],
                                    _LeaseTimeToLiveResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData LeaseTimeToLiveResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq
                (_LeaseTimeToLiveResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_LeaseTimeToLiveResponse'header x__)
                   (Control.DeepSeq.deepseq (_LeaseTimeToLiveResponse'id x__)
                      (Control.DeepSeq.deepseq (_LeaseTimeToLiveResponse'ttl x__)
                         (Control.DeepSeq.deepseq (_LeaseTimeToLiveResponse'grantedTTL x__)
                            (Control.DeepSeq.deepseq (_LeaseTimeToLiveResponse'keys x__)
                               (()))))))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.id' @:: Lens' Member Data.Word.Word64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.name' @:: Lens' Member Data.Text.Text@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.peerURLs' @:: Lens' Member [Data.Text.Text]@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.clientURLs' @:: Lens' Member [Data.Text.Text]@
 -}
data Member = Member{_Member'id :: !Data.Word.Word64,
                     _Member'name :: !Data.Text.Text,
                     _Member'peerURLs :: ![Data.Text.Text],
                     _Member'clientURLs :: ![Data.Text.Text],
                     _Member'_unknownFields :: !Data.ProtoLens.FieldSet}
                deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Member where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' Member "id" (Data.Word.Word64) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Member'id
                 (\ x__ y__ -> x__{_Member'id = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Member "name" (Data.Text.Text) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Member'name
                 (\ x__ y__ -> x__{_Member'name = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Member "peerURLs" ([Data.Text.Text])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Member'peerURLs
                 (\ x__ y__ -> x__{_Member'peerURLs = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Member "clientURLs"
           ([Data.Text.Text])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Member'clientURLs
                 (\ x__ y__ -> x__{_Member'clientURLs = y__}))
              Prelude.id
instance Data.ProtoLens.Message Member where
        messageName _ = Data.Text.pack "etcdserverpb.Member"
        fieldsByTag
          = let id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor Member
                name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor Member
                peerURLs__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "peerURLs"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "peerURLs")))
                      :: Data.ProtoLens.FieldDescriptor Member
                clientURLs__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "clientURLs"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "clientURLs")))
                      :: Data.ProtoLens.FieldDescriptor Member
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, id__field_descriptor),
                 (Data.ProtoLens.Tag 2, name__field_descriptor),
                 (Data.ProtoLens.Tag 3, peerURLs__field_descriptor),
                 (Data.ProtoLens.Tag 4, clientURLs__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Member'_unknownFields
              (\ x__ y__ -> x__{_Member'_unknownFields = y__})
        defMessage
          = Member{_Member'id = Data.ProtoLens.fieldDefault,
                   _Member'name = Data.ProtoLens.fieldDefault, _Member'peerURLs = [],
                   _Member'clientURLs = [], _Member'_unknownFields = ([])}
instance Control.DeepSeq.NFData Member where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_Member'_unknownFields x__)
                (Control.DeepSeq.deepseq (_Member'id x__)
                   (Control.DeepSeq.deepseq (_Member'name x__)
                      (Control.DeepSeq.deepseq (_Member'peerURLs x__)
                         (Control.DeepSeq.deepseq (_Member'clientURLs x__) (())))))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.peerURLs' @:: Lens' MemberAddRequest [Data.Text.Text]@
 -}
data MemberAddRequest = MemberAddRequest{_MemberAddRequest'peerURLs
                                         :: ![Data.Text.Text],
                                         _MemberAddRequest'_unknownFields ::
                                         !Data.ProtoLens.FieldSet}
                          deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MemberAddRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' MemberAddRequest "peerURLs"
           ([Data.Text.Text])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberAddRequest'peerURLs
                 (\ x__ y__ -> x__{_MemberAddRequest'peerURLs = y__}))
              Prelude.id
instance Data.ProtoLens.Message MemberAddRequest where
        messageName _ = Data.Text.pack "etcdserverpb.MemberAddRequest"
        fieldsByTag
          = let peerURLs__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "peerURLs"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "peerURLs")))
                      :: Data.ProtoLens.FieldDescriptor MemberAddRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, peerURLs__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _MemberAddRequest'_unknownFields
              (\ x__ y__ -> x__{_MemberAddRequest'_unknownFields = y__})
        defMessage
          = MemberAddRequest{_MemberAddRequest'peerURLs = [],
                             _MemberAddRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData MemberAddRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_MemberAddRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_MemberAddRequest'peerURLs x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' MemberAddResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' MemberAddResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.member' @:: Lens' MemberAddResponse Member@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'member' @:: Lens' MemberAddResponse (Prelude.Maybe Member)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.members' @:: Lens' MemberAddResponse [Member]@
 -}
data MemberAddResponse = MemberAddResponse{_MemberAddResponse'header
                                           :: !(Prelude.Maybe ResponseHeader),
                                           _MemberAddResponse'member :: !(Prelude.Maybe Member),
                                           _MemberAddResponse'members :: ![Member],
                                           _MemberAddResponse'_unknownFields ::
                                           !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MemberAddResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' MemberAddResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberAddResponse'header
                 (\ x__ y__ -> x__{_MemberAddResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' MemberAddResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberAddResponse'header
                 (\ x__ y__ -> x__{_MemberAddResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' MemberAddResponse "member" (Member)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberAddResponse'member
                 (\ x__ y__ -> x__{_MemberAddResponse'member = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' MemberAddResponse "maybe'member"
           (Prelude.Maybe Member)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberAddResponse'member
                 (\ x__ y__ -> x__{_MemberAddResponse'member = y__}))
              Prelude.id
instance Lens.Labels.HasLens' MemberAddResponse "members"
           ([Member])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberAddResponse'members
                 (\ x__ y__ -> x__{_MemberAddResponse'members = y__}))
              Prelude.id
instance Data.ProtoLens.Message MemberAddResponse where
        messageName _ = Data.Text.pack "etcdserverpb.MemberAddResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor MemberAddResponse
                member__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "member"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Member)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'member")))
                      :: Data.ProtoLens.FieldDescriptor MemberAddResponse
                members__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "members"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Member)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "members")))
                      :: Data.ProtoLens.FieldDescriptor MemberAddResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, member__field_descriptor),
                 (Data.ProtoLens.Tag 3, members__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _MemberAddResponse'_unknownFields
              (\ x__ y__ -> x__{_MemberAddResponse'_unknownFields = y__})
        defMessage
          = MemberAddResponse{_MemberAddResponse'header = Prelude.Nothing,
                              _MemberAddResponse'member = Prelude.Nothing,
                              _MemberAddResponse'members = [],
                              _MemberAddResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData MemberAddResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_MemberAddResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_MemberAddResponse'header x__)
                   (Control.DeepSeq.deepseq (_MemberAddResponse'member x__)
                      (Control.DeepSeq.deepseq (_MemberAddResponse'members x__) (()))))
{- | Fields :

 -}
data MemberListRequest = MemberListRequest{_MemberListRequest'_unknownFields
                                           :: !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MemberListRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message MemberListRequest where
        messageName _ = Data.Text.pack "etcdserverpb.MemberListRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _MemberListRequest'_unknownFields
              (\ x__ y__ -> x__{_MemberListRequest'_unknownFields = y__})
        defMessage
          = MemberListRequest{_MemberListRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData MemberListRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_MemberListRequest'_unknownFields x__)
                (())
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' MemberListResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' MemberListResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.members' @:: Lens' MemberListResponse [Member]@
 -}
data MemberListResponse = MemberListResponse{_MemberListResponse'header
                                             :: !(Prelude.Maybe ResponseHeader),
                                             _MemberListResponse'members :: ![Member],
                                             _MemberListResponse'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MemberListResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' MemberListResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberListResponse'header
                 (\ x__ y__ -> x__{_MemberListResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' MemberListResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberListResponse'header
                 (\ x__ y__ -> x__{_MemberListResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' MemberListResponse "members"
           ([Member])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberListResponse'members
                 (\ x__ y__ -> x__{_MemberListResponse'members = y__}))
              Prelude.id
instance Data.ProtoLens.Message MemberListResponse where
        messageName _ = Data.Text.pack "etcdserverpb.MemberListResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor MemberListResponse
                members__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "members"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Member)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "members")))
                      :: Data.ProtoLens.FieldDescriptor MemberListResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, members__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _MemberListResponse'_unknownFields
              (\ x__ y__ -> x__{_MemberListResponse'_unknownFields = y__})
        defMessage
          = MemberListResponse{_MemberListResponse'header = Prelude.Nothing,
                               _MemberListResponse'members = [],
                               _MemberListResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData MemberListResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_MemberListResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_MemberListResponse'header x__)
                   (Control.DeepSeq.deepseq (_MemberListResponse'members x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.id' @:: Lens' MemberRemoveRequest Data.Word.Word64@
 -}
data MemberRemoveRequest = MemberRemoveRequest{_MemberRemoveRequest'id
                                               :: !Data.Word.Word64,
                                               _MemberRemoveRequest'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MemberRemoveRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' MemberRemoveRequest "id"
           (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberRemoveRequest'id
                 (\ x__ y__ -> x__{_MemberRemoveRequest'id = y__}))
              Prelude.id
instance Data.ProtoLens.Message MemberRemoveRequest where
        messageName _ = Data.Text.pack "etcdserverpb.MemberRemoveRequest"
        fieldsByTag
          = let id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor MemberRemoveRequest
              in Data.Map.fromList [(Data.ProtoLens.Tag 1, id__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _MemberRemoveRequest'_unknownFields
              (\ x__ y__ -> x__{_MemberRemoveRequest'_unknownFields = y__})
        defMessage
          = MemberRemoveRequest{_MemberRemoveRequest'id =
                                  Data.ProtoLens.fieldDefault,
                                _MemberRemoveRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData MemberRemoveRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_MemberRemoveRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_MemberRemoveRequest'id x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' MemberRemoveResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' MemberRemoveResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.members' @:: Lens' MemberRemoveResponse [Member]@
 -}
data MemberRemoveResponse = MemberRemoveResponse{_MemberRemoveResponse'header
                                                 :: !(Prelude.Maybe ResponseHeader),
                                                 _MemberRemoveResponse'members :: ![Member],
                                                 _MemberRemoveResponse'_unknownFields ::
                                                 !Data.ProtoLens.FieldSet}
                              deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MemberRemoveResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' MemberRemoveResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberRemoveResponse'header
                 (\ x__ y__ -> x__{_MemberRemoveResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' MemberRemoveResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberRemoveResponse'header
                 (\ x__ y__ -> x__{_MemberRemoveResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' MemberRemoveResponse "members"
           ([Member])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberRemoveResponse'members
                 (\ x__ y__ -> x__{_MemberRemoveResponse'members = y__}))
              Prelude.id
instance Data.ProtoLens.Message MemberRemoveResponse where
        messageName _ = Data.Text.pack "etcdserverpb.MemberRemoveResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor MemberRemoveResponse
                members__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "members"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Member)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "members")))
                      :: Data.ProtoLens.FieldDescriptor MemberRemoveResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, members__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _MemberRemoveResponse'_unknownFields
              (\ x__ y__ -> x__{_MemberRemoveResponse'_unknownFields = y__})
        defMessage
          = MemberRemoveResponse{_MemberRemoveResponse'header =
                                   Prelude.Nothing,
                                 _MemberRemoveResponse'members = [],
                                 _MemberRemoveResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData MemberRemoveResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_MemberRemoveResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_MemberRemoveResponse'header x__)
                   (Control.DeepSeq.deepseq (_MemberRemoveResponse'members x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.id' @:: Lens' MemberUpdateRequest Data.Word.Word64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.peerURLs' @:: Lens' MemberUpdateRequest [Data.Text.Text]@
 -}
data MemberUpdateRequest = MemberUpdateRequest{_MemberUpdateRequest'id
                                               :: !Data.Word.Word64,
                                               _MemberUpdateRequest'peerURLs :: ![Data.Text.Text],
                                               _MemberUpdateRequest'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MemberUpdateRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' MemberUpdateRequest "id"
           (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberUpdateRequest'id
                 (\ x__ y__ -> x__{_MemberUpdateRequest'id = y__}))
              Prelude.id
instance Lens.Labels.HasLens' MemberUpdateRequest "peerURLs"
           ([Data.Text.Text])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberUpdateRequest'peerURLs
                 (\ x__ y__ -> x__{_MemberUpdateRequest'peerURLs = y__}))
              Prelude.id
instance Data.ProtoLens.Message MemberUpdateRequest where
        messageName _ = Data.Text.pack "etcdserverpb.MemberUpdateRequest"
        fieldsByTag
          = let id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor MemberUpdateRequest
                peerURLs__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "peerURLs"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "peerURLs")))
                      :: Data.ProtoLens.FieldDescriptor MemberUpdateRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, id__field_descriptor),
                 (Data.ProtoLens.Tag 2, peerURLs__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _MemberUpdateRequest'_unknownFields
              (\ x__ y__ -> x__{_MemberUpdateRequest'_unknownFields = y__})
        defMessage
          = MemberUpdateRequest{_MemberUpdateRequest'id =
                                  Data.ProtoLens.fieldDefault,
                                _MemberUpdateRequest'peerURLs = [],
                                _MemberUpdateRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData MemberUpdateRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_MemberUpdateRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_MemberUpdateRequest'id x__)
                   (Control.DeepSeq.deepseq (_MemberUpdateRequest'peerURLs x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' MemberUpdateResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' MemberUpdateResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.members' @:: Lens' MemberUpdateResponse [Member]@
 -}
data MemberUpdateResponse = MemberUpdateResponse{_MemberUpdateResponse'header
                                                 :: !(Prelude.Maybe ResponseHeader),
                                                 _MemberUpdateResponse'members :: ![Member],
                                                 _MemberUpdateResponse'_unknownFields ::
                                                 !Data.ProtoLens.FieldSet}
                              deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MemberUpdateResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' MemberUpdateResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberUpdateResponse'header
                 (\ x__ y__ -> x__{_MemberUpdateResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' MemberUpdateResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberUpdateResponse'header
                 (\ x__ y__ -> x__{_MemberUpdateResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' MemberUpdateResponse "members"
           ([Member])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberUpdateResponse'members
                 (\ x__ y__ -> x__{_MemberUpdateResponse'members = y__}))
              Prelude.id
instance Data.ProtoLens.Message MemberUpdateResponse where
        messageName _ = Data.Text.pack "etcdserverpb.MemberUpdateResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor MemberUpdateResponse
                members__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "members"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Member)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "members")))
                      :: Data.ProtoLens.FieldDescriptor MemberUpdateResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, members__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _MemberUpdateResponse'_unknownFields
              (\ x__ y__ -> x__{_MemberUpdateResponse'_unknownFields = y__})
        defMessage
          = MemberUpdateResponse{_MemberUpdateResponse'header =
                                   Prelude.Nothing,
                                 _MemberUpdateResponse'members = [],
                                 _MemberUpdateResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData MemberUpdateResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_MemberUpdateResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_MemberUpdateResponse'header x__)
                   (Control.DeepSeq.deepseq (_MemberUpdateResponse'members x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.targetID' @:: Lens' MoveLeaderRequest Data.Word.Word64@
 -}
data MoveLeaderRequest = MoveLeaderRequest{_MoveLeaderRequest'targetID
                                           :: !Data.Word.Word64,
                                           _MoveLeaderRequest'_unknownFields ::
                                           !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MoveLeaderRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' MoveLeaderRequest "targetID"
           (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MoveLeaderRequest'targetID
                 (\ x__ y__ -> x__{_MoveLeaderRequest'targetID = y__}))
              Prelude.id
instance Data.ProtoLens.Message MoveLeaderRequest where
        messageName _ = Data.Text.pack "etcdserverpb.MoveLeaderRequest"
        fieldsByTag
          = let targetID__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "targetID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "targetID")))
                      :: Data.ProtoLens.FieldDescriptor MoveLeaderRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, targetID__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _MoveLeaderRequest'_unknownFields
              (\ x__ y__ -> x__{_MoveLeaderRequest'_unknownFields = y__})
        defMessage
          = MoveLeaderRequest{_MoveLeaderRequest'targetID =
                                Data.ProtoLens.fieldDefault,
                              _MoveLeaderRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData MoveLeaderRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_MoveLeaderRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_MoveLeaderRequest'targetID x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' MoveLeaderResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' MoveLeaderResponse (Prelude.Maybe ResponseHeader)@
 -}
data MoveLeaderResponse = MoveLeaderResponse{_MoveLeaderResponse'header
                                             :: !(Prelude.Maybe ResponseHeader),
                                             _MoveLeaderResponse'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MoveLeaderResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' MoveLeaderResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MoveLeaderResponse'header
                 (\ x__ y__ -> x__{_MoveLeaderResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' MoveLeaderResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MoveLeaderResponse'header
                 (\ x__ y__ -> x__{_MoveLeaderResponse'header = y__}))
              Prelude.id
instance Data.ProtoLens.Message MoveLeaderResponse where
        messageName _ = Data.Text.pack "etcdserverpb.MoveLeaderResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor MoveLeaderResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _MoveLeaderResponse'_unknownFields
              (\ x__ y__ -> x__{_MoveLeaderResponse'_unknownFields = y__})
        defMessage
          = MoveLeaderResponse{_MoveLeaderResponse'header = Prelude.Nothing,
                               _MoveLeaderResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData MoveLeaderResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_MoveLeaderResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_MoveLeaderResponse'header x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.key' @:: Lens' PutRequest Data.ByteString.ByteString@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.value' @:: Lens' PutRequest Data.ByteString.ByteString@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.lease' @:: Lens' PutRequest Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.prevKv' @:: Lens' PutRequest Prelude.Bool@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.ignoreValue' @:: Lens' PutRequest Prelude.Bool@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.ignoreLease' @:: Lens' PutRequest Prelude.Bool@
 -}
data PutRequest = PutRequest{_PutRequest'key ::
                             !Data.ByteString.ByteString,
                             _PutRequest'value :: !Data.ByteString.ByteString,
                             _PutRequest'lease :: !Data.Int.Int64,
                             _PutRequest'prevKv :: !Prelude.Bool,
                             _PutRequest'ignoreValue :: !Prelude.Bool,
                             _PutRequest'ignoreLease :: !Prelude.Bool,
                             _PutRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
                    deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PutRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' PutRequest "key"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PutRequest'key
                 (\ x__ y__ -> x__{_PutRequest'key = y__}))
              Prelude.id
instance Lens.Labels.HasLens' PutRequest "value"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PutRequest'value
                 (\ x__ y__ -> x__{_PutRequest'value = y__}))
              Prelude.id
instance Lens.Labels.HasLens' PutRequest "lease" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PutRequest'lease
                 (\ x__ y__ -> x__{_PutRequest'lease = y__}))
              Prelude.id
instance Lens.Labels.HasLens' PutRequest "prevKv" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PutRequest'prevKv
                 (\ x__ y__ -> x__{_PutRequest'prevKv = y__}))
              Prelude.id
instance Lens.Labels.HasLens' PutRequest "ignoreValue"
           (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PutRequest'ignoreValue
                 (\ x__ y__ -> x__{_PutRequest'ignoreValue = y__}))
              Prelude.id
instance Lens.Labels.HasLens' PutRequest "ignoreLease"
           (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PutRequest'ignoreLease
                 (\ x__ y__ -> x__{_PutRequest'ignoreLease = y__}))
              Prelude.id
instance Data.ProtoLens.Message PutRequest where
        messageName _ = Data.Text.pack "etcdserverpb.PutRequest"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor PutRequest
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor PutRequest
                lease__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "lease"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "lease")))
                      :: Data.ProtoLens.FieldDescriptor PutRequest
                prevKv__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "prev_kv"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "prevKv")))
                      :: Data.ProtoLens.FieldDescriptor PutRequest
                ignoreValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ignore_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "ignoreValue")))
                      :: Data.ProtoLens.FieldDescriptor PutRequest
                ignoreLease__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ignore_lease"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "ignoreLease")))
                      :: Data.ProtoLens.FieldDescriptor PutRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, value__field_descriptor),
                 (Data.ProtoLens.Tag 3, lease__field_descriptor),
                 (Data.ProtoLens.Tag 4, prevKv__field_descriptor),
                 (Data.ProtoLens.Tag 5, ignoreValue__field_descriptor),
                 (Data.ProtoLens.Tag 6, ignoreLease__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _PutRequest'_unknownFields
              (\ x__ y__ -> x__{_PutRequest'_unknownFields = y__})
        defMessage
          = PutRequest{_PutRequest'key = Data.ProtoLens.fieldDefault,
                       _PutRequest'value = Data.ProtoLens.fieldDefault,
                       _PutRequest'lease = Data.ProtoLens.fieldDefault,
                       _PutRequest'prevKv = Data.ProtoLens.fieldDefault,
                       _PutRequest'ignoreValue = Data.ProtoLens.fieldDefault,
                       _PutRequest'ignoreLease = Data.ProtoLens.fieldDefault,
                       _PutRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData PutRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_PutRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_PutRequest'key x__)
                   (Control.DeepSeq.deepseq (_PutRequest'value x__)
                      (Control.DeepSeq.deepseq (_PutRequest'lease x__)
                         (Control.DeepSeq.deepseq (_PutRequest'prevKv x__)
                            (Control.DeepSeq.deepseq (_PutRequest'ignoreValue x__)
                               (Control.DeepSeq.deepseq (_PutRequest'ignoreLease x__) (())))))))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' PutResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' PutResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.prevKv' @:: Lens' PutResponse Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'prevKv' @:: Lens' PutResponse
  (Prelude.Maybe Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue)@
 -}
data PutResponse = PutResponse{_PutResponse'header ::
                               !(Prelude.Maybe ResponseHeader),
                               _PutResponse'prevKv ::
                               !(Prelude.Maybe Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue),
                               _PutResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PutResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' PutResponse "header" (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PutResponse'header
                 (\ x__ y__ -> x__{_PutResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' PutResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PutResponse'header
                 (\ x__ y__ -> x__{_PutResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' PutResponse "prevKv"
           (Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PutResponse'prevKv
                 (\ x__ y__ -> x__{_PutResponse'prevKv = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' PutResponse "maybe'prevKv"
           (Prelude.Maybe Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PutResponse'prevKv
                 (\ x__ y__ -> x__{_PutResponse'prevKv = y__}))
              Prelude.id
instance Data.ProtoLens.Message PutResponse where
        messageName _ = Data.Text.pack "etcdserverpb.PutResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor PutResponse
                prevKv__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "prev_kv"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'prevKv")))
                      :: Data.ProtoLens.FieldDescriptor PutResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, prevKv__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _PutResponse'_unknownFields
              (\ x__ y__ -> x__{_PutResponse'_unknownFields = y__})
        defMessage
          = PutResponse{_PutResponse'header = Prelude.Nothing,
                        _PutResponse'prevKv = Prelude.Nothing,
                        _PutResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData PutResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_PutResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_PutResponse'header x__)
                   (Control.DeepSeq.deepseq (_PutResponse'prevKv x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.key' @:: Lens' RangeRequest Data.ByteString.ByteString@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.rangeEnd' @:: Lens' RangeRequest Data.ByteString.ByteString@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.limit' @:: Lens' RangeRequest Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.revision' @:: Lens' RangeRequest Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.sortOrder' @:: Lens' RangeRequest RangeRequest'SortOrder@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.sortTarget' @:: Lens' RangeRequest RangeRequest'SortTarget@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.serializable' @:: Lens' RangeRequest Prelude.Bool@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.keysOnly' @:: Lens' RangeRequest Prelude.Bool@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.countOnly' @:: Lens' RangeRequest Prelude.Bool@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.minModRevision' @:: Lens' RangeRequest Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maxModRevision' @:: Lens' RangeRequest Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.minCreateRevision' @:: Lens' RangeRequest Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maxCreateRevision' @:: Lens' RangeRequest Data.Int.Int64@
 -}
data RangeRequest = RangeRequest{_RangeRequest'key ::
                                 !Data.ByteString.ByteString,
                                 _RangeRequest'rangeEnd :: !Data.ByteString.ByteString,
                                 _RangeRequest'limit :: !Data.Int.Int64,
                                 _RangeRequest'revision :: !Data.Int.Int64,
                                 _RangeRequest'sortOrder :: !RangeRequest'SortOrder,
                                 _RangeRequest'sortTarget :: !RangeRequest'SortTarget,
                                 _RangeRequest'serializable :: !Prelude.Bool,
                                 _RangeRequest'keysOnly :: !Prelude.Bool,
                                 _RangeRequest'countOnly :: !Prelude.Bool,
                                 _RangeRequest'minModRevision :: !Data.Int.Int64,
                                 _RangeRequest'maxModRevision :: !Data.Int.Int64,
                                 _RangeRequest'minCreateRevision :: !Data.Int.Int64,
                                 _RangeRequest'maxCreateRevision :: !Data.Int.Int64,
                                 _RangeRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
                      deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RangeRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' RangeRequest "key"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'key
                 (\ x__ y__ -> x__{_RangeRequest'key = y__}))
              Prelude.id
instance Lens.Labels.HasLens' RangeRequest "rangeEnd"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'rangeEnd
                 (\ x__ y__ -> x__{_RangeRequest'rangeEnd = y__}))
              Prelude.id
instance Lens.Labels.HasLens' RangeRequest "limit" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'limit
                 (\ x__ y__ -> x__{_RangeRequest'limit = y__}))
              Prelude.id
instance Lens.Labels.HasLens' RangeRequest "revision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'revision
                 (\ x__ y__ -> x__{_RangeRequest'revision = y__}))
              Prelude.id
instance Lens.Labels.HasLens' RangeRequest "sortOrder"
           (RangeRequest'SortOrder)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'sortOrder
                 (\ x__ y__ -> x__{_RangeRequest'sortOrder = y__}))
              Prelude.id
instance Lens.Labels.HasLens' RangeRequest "sortTarget"
           (RangeRequest'SortTarget)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'sortTarget
                 (\ x__ y__ -> x__{_RangeRequest'sortTarget = y__}))
              Prelude.id
instance Lens.Labels.HasLens' RangeRequest "serializable"
           (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'serializable
                 (\ x__ y__ -> x__{_RangeRequest'serializable = y__}))
              Prelude.id
instance Lens.Labels.HasLens' RangeRequest "keysOnly"
           (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'keysOnly
                 (\ x__ y__ -> x__{_RangeRequest'keysOnly = y__}))
              Prelude.id
instance Lens.Labels.HasLens' RangeRequest "countOnly"
           (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'countOnly
                 (\ x__ y__ -> x__{_RangeRequest'countOnly = y__}))
              Prelude.id
instance Lens.Labels.HasLens' RangeRequest "minModRevision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'minModRevision
                 (\ x__ y__ -> x__{_RangeRequest'minModRevision = y__}))
              Prelude.id
instance Lens.Labels.HasLens' RangeRequest "maxModRevision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'maxModRevision
                 (\ x__ y__ -> x__{_RangeRequest'maxModRevision = y__}))
              Prelude.id
instance Lens.Labels.HasLens' RangeRequest "minCreateRevision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'minCreateRevision
                 (\ x__ y__ -> x__{_RangeRequest'minCreateRevision = y__}))
              Prelude.id
instance Lens.Labels.HasLens' RangeRequest "maxCreateRevision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'maxCreateRevision
                 (\ x__ y__ -> x__{_RangeRequest'maxCreateRevision = y__}))
              Prelude.id
instance Data.ProtoLens.Message RangeRequest where
        messageName _ = Data.Text.pack "etcdserverpb.RangeRequest"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                rangeEnd__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "range_end"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "rangeEnd")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                limit__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "limit"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "limit")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                revision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "revision")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                sortOrder__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "sort_order"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor RangeRequest'SortOrder)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "sortOrder")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                sortTarget__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "sort_target"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor RangeRequest'SortTarget)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "sortTarget")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                serializable__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "serializable"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "serializable")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                keysOnly__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "keys_only"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "keysOnly")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                countOnly__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "count_only"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "countOnly")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                minModRevision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "min_mod_revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "minModRevision")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                maxModRevision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "max_mod_revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maxModRevision")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                minCreateRevision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "min_create_revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "minCreateRevision")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                maxCreateRevision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "max_create_revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maxCreateRevision")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, rangeEnd__field_descriptor),
                 (Data.ProtoLens.Tag 3, limit__field_descriptor),
                 (Data.ProtoLens.Tag 4, revision__field_descriptor),
                 (Data.ProtoLens.Tag 5, sortOrder__field_descriptor),
                 (Data.ProtoLens.Tag 6, sortTarget__field_descriptor),
                 (Data.ProtoLens.Tag 7, serializable__field_descriptor),
                 (Data.ProtoLens.Tag 8, keysOnly__field_descriptor),
                 (Data.ProtoLens.Tag 9, countOnly__field_descriptor),
                 (Data.ProtoLens.Tag 10, minModRevision__field_descriptor),
                 (Data.ProtoLens.Tag 11, maxModRevision__field_descriptor),
                 (Data.ProtoLens.Tag 12, minCreateRevision__field_descriptor),
                 (Data.ProtoLens.Tag 13, maxCreateRevision__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _RangeRequest'_unknownFields
              (\ x__ y__ -> x__{_RangeRequest'_unknownFields = y__})
        defMessage
          = RangeRequest{_RangeRequest'key = Data.ProtoLens.fieldDefault,
                         _RangeRequest'rangeEnd = Data.ProtoLens.fieldDefault,
                         _RangeRequest'limit = Data.ProtoLens.fieldDefault,
                         _RangeRequest'revision = Data.ProtoLens.fieldDefault,
                         _RangeRequest'sortOrder = Data.ProtoLens.fieldDefault,
                         _RangeRequest'sortTarget = Data.ProtoLens.fieldDefault,
                         _RangeRequest'serializable = Data.ProtoLens.fieldDefault,
                         _RangeRequest'keysOnly = Data.ProtoLens.fieldDefault,
                         _RangeRequest'countOnly = Data.ProtoLens.fieldDefault,
                         _RangeRequest'minModRevision = Data.ProtoLens.fieldDefault,
                         _RangeRequest'maxModRevision = Data.ProtoLens.fieldDefault,
                         _RangeRequest'minCreateRevision = Data.ProtoLens.fieldDefault,
                         _RangeRequest'maxCreateRevision = Data.ProtoLens.fieldDefault,
                         _RangeRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData RangeRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_RangeRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_RangeRequest'key x__)
                   (Control.DeepSeq.deepseq (_RangeRequest'rangeEnd x__)
                      (Control.DeepSeq.deepseq (_RangeRequest'limit x__)
                         (Control.DeepSeq.deepseq (_RangeRequest'revision x__)
                            (Control.DeepSeq.deepseq (_RangeRequest'sortOrder x__)
                               (Control.DeepSeq.deepseq (_RangeRequest'sortTarget x__)
                                  (Control.DeepSeq.deepseq (_RangeRequest'serializable x__)
                                     (Control.DeepSeq.deepseq (_RangeRequest'keysOnly x__)
                                        (Control.DeepSeq.deepseq (_RangeRequest'countOnly x__)
                                           (Control.DeepSeq.deepseq
                                              (_RangeRequest'minModRevision x__)
                                              (Control.DeepSeq.deepseq
                                                 (_RangeRequest'maxModRevision x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_RangeRequest'minCreateRevision x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_RangeRequest'maxCreateRevision x__)
                                                       (()))))))))))))))
data RangeRequest'SortOrder = RangeRequest'NONE
                            | RangeRequest'ASCEND
                            | RangeRequest'DESCEND
                            | RangeRequest'SortOrder'Unrecognized !RangeRequest'SortOrder'UnrecognizedValue
                                deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
newtype RangeRequest'SortOrder'UnrecognizedValue = RangeRequest'SortOrder'UnrecognizedValue Data.Int.Int32
                                                     deriving (Prelude.Eq, Prelude.Ord,
                                                               Prelude.Show)
instance Data.ProtoLens.MessageEnum RangeRequest'SortOrder where
        maybeToEnum 0 = Prelude.Just RangeRequest'NONE
        maybeToEnum 1 = Prelude.Just RangeRequest'ASCEND
        maybeToEnum 2 = Prelude.Just RangeRequest'DESCEND
        maybeToEnum k
          = Prelude.Just
              (RangeRequest'SortOrder'Unrecognized
                 (RangeRequest'SortOrder'UnrecognizedValue
                    (Prelude.fromIntegral k)))
        showEnum RangeRequest'NONE = "NONE"
        showEnum RangeRequest'ASCEND = "ASCEND"
        showEnum RangeRequest'DESCEND = "DESCEND"
        showEnum
          (RangeRequest'SortOrder'Unrecognized
             (RangeRequest'SortOrder'UnrecognizedValue k))
          = Prelude.show k
        readEnum "NONE" = Prelude.Just RangeRequest'NONE
        readEnum "ASCEND" = Prelude.Just RangeRequest'ASCEND
        readEnum "DESCEND" = Prelude.Just RangeRequest'DESCEND
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded RangeRequest'SortOrder where
        minBound = RangeRequest'NONE
        maxBound = RangeRequest'DESCEND
instance Prelude.Enum RangeRequest'SortOrder where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum SortOrder: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum RangeRequest'NONE = 0
        fromEnum RangeRequest'ASCEND = 1
        fromEnum RangeRequest'DESCEND = 2
        fromEnum
          (RangeRequest'SortOrder'Unrecognized
             (RangeRequest'SortOrder'UnrecognizedValue k))
          = Prelude.fromIntegral k
        succ RangeRequest'DESCEND
          = Prelude.error
              "RangeRequest'SortOrder.succ: bad argument RangeRequest'DESCEND. This value would be out of bounds."
        succ RangeRequest'NONE = RangeRequest'ASCEND
        succ RangeRequest'ASCEND = RangeRequest'DESCEND
        succ _
          = Prelude.error
              "RangeRequest'SortOrder.succ: bad argument: unrecognized value"
        pred RangeRequest'NONE
          = Prelude.error
              "RangeRequest'SortOrder.pred: bad argument RangeRequest'NONE. This value would be out of bounds."
        pred RangeRequest'ASCEND = RangeRequest'NONE
        pred RangeRequest'DESCEND = RangeRequest'ASCEND
        pred _
          = Prelude.error
              "RangeRequest'SortOrder.pred: bad argument: unrecognized value"
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault RangeRequest'SortOrder where
        fieldDefault = RangeRequest'NONE
instance Control.DeepSeq.NFData RangeRequest'SortOrder where
        rnf x__ = Prelude.seq x__ (())
data RangeRequest'SortTarget = RangeRequest'KEY
                             | RangeRequest'VERSION
                             | RangeRequest'CREATE
                             | RangeRequest'MOD
                             | RangeRequest'VALUE
                             | RangeRequest'SortTarget'Unrecognized !RangeRequest'SortTarget'UnrecognizedValue
                                 deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
newtype RangeRequest'SortTarget'UnrecognizedValue = RangeRequest'SortTarget'UnrecognizedValue Data.Int.Int32
                                                      deriving (Prelude.Eq, Prelude.Ord,
                                                                Prelude.Show)
instance Data.ProtoLens.MessageEnum RangeRequest'SortTarget where
        maybeToEnum 0 = Prelude.Just RangeRequest'KEY
        maybeToEnum 1 = Prelude.Just RangeRequest'VERSION
        maybeToEnum 2 = Prelude.Just RangeRequest'CREATE
        maybeToEnum 3 = Prelude.Just RangeRequest'MOD
        maybeToEnum 4 = Prelude.Just RangeRequest'VALUE
        maybeToEnum k
          = Prelude.Just
              (RangeRequest'SortTarget'Unrecognized
                 (RangeRequest'SortTarget'UnrecognizedValue
                    (Prelude.fromIntegral k)))
        showEnum RangeRequest'KEY = "KEY"
        showEnum RangeRequest'VERSION = "VERSION"
        showEnum RangeRequest'CREATE = "CREATE"
        showEnum RangeRequest'MOD = "MOD"
        showEnum RangeRequest'VALUE = "VALUE"
        showEnum
          (RangeRequest'SortTarget'Unrecognized
             (RangeRequest'SortTarget'UnrecognizedValue k))
          = Prelude.show k
        readEnum "KEY" = Prelude.Just RangeRequest'KEY
        readEnum "VERSION" = Prelude.Just RangeRequest'VERSION
        readEnum "CREATE" = Prelude.Just RangeRequest'CREATE
        readEnum "MOD" = Prelude.Just RangeRequest'MOD
        readEnum "VALUE" = Prelude.Just RangeRequest'VALUE
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded RangeRequest'SortTarget where
        minBound = RangeRequest'KEY
        maxBound = RangeRequest'VALUE
instance Prelude.Enum RangeRequest'SortTarget where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum SortTarget: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum RangeRequest'KEY = 0
        fromEnum RangeRequest'VERSION = 1
        fromEnum RangeRequest'CREATE = 2
        fromEnum RangeRequest'MOD = 3
        fromEnum RangeRequest'VALUE = 4
        fromEnum
          (RangeRequest'SortTarget'Unrecognized
             (RangeRequest'SortTarget'UnrecognizedValue k))
          = Prelude.fromIntegral k
        succ RangeRequest'VALUE
          = Prelude.error
              "RangeRequest'SortTarget.succ: bad argument RangeRequest'VALUE. This value would be out of bounds."
        succ RangeRequest'KEY = RangeRequest'VERSION
        succ RangeRequest'VERSION = RangeRequest'CREATE
        succ RangeRequest'CREATE = RangeRequest'MOD
        succ RangeRequest'MOD = RangeRequest'VALUE
        succ _
          = Prelude.error
              "RangeRequest'SortTarget.succ: bad argument: unrecognized value"
        pred RangeRequest'KEY
          = Prelude.error
              "RangeRequest'SortTarget.pred: bad argument RangeRequest'KEY. This value would be out of bounds."
        pred RangeRequest'VERSION = RangeRequest'KEY
        pred RangeRequest'CREATE = RangeRequest'VERSION
        pred RangeRequest'MOD = RangeRequest'CREATE
        pred RangeRequest'VALUE = RangeRequest'MOD
        pred _
          = Prelude.error
              "RangeRequest'SortTarget.pred: bad argument: unrecognized value"
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault RangeRequest'SortTarget where
        fieldDefault = RangeRequest'KEY
instance Control.DeepSeq.NFData RangeRequest'SortTarget where
        rnf x__ = Prelude.seq x__ (())
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' RangeResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' RangeResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.kvs' @:: Lens' RangeResponse [Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue]@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.more' @:: Lens' RangeResponse Prelude.Bool@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.count' @:: Lens' RangeResponse Data.Int.Int64@
 -}
data RangeResponse = RangeResponse{_RangeResponse'header ::
                                   !(Prelude.Maybe ResponseHeader),
                                   _RangeResponse'kvs :: ![Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue],
                                   _RangeResponse'more :: !Prelude.Bool,
                                   _RangeResponse'count :: !Data.Int.Int64,
                                   _RangeResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
                       deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RangeResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' RangeResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeResponse'header
                 (\ x__ y__ -> x__{_RangeResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' RangeResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeResponse'header
                 (\ x__ y__ -> x__{_RangeResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' RangeResponse "kvs"
           ([Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeResponse'kvs
                 (\ x__ y__ -> x__{_RangeResponse'kvs = y__}))
              Prelude.id
instance Lens.Labels.HasLens' RangeResponse "more" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeResponse'more
                 (\ x__ y__ -> x__{_RangeResponse'more = y__}))
              Prelude.id
instance Lens.Labels.HasLens' RangeResponse "count"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeResponse'count
                 (\ x__ y__ -> x__{_RangeResponse'count = y__}))
              Prelude.id
instance Data.ProtoLens.Message RangeResponse where
        messageName _ = Data.Text.pack "etcdserverpb.RangeResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor RangeResponse
                kvs__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "kvs"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "kvs")))
                      :: Data.ProtoLens.FieldDescriptor RangeResponse
                more__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "more"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "more")))
                      :: Data.ProtoLens.FieldDescriptor RangeResponse
                count__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "count"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "count")))
                      :: Data.ProtoLens.FieldDescriptor RangeResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, kvs__field_descriptor),
                 (Data.ProtoLens.Tag 3, more__field_descriptor),
                 (Data.ProtoLens.Tag 4, count__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _RangeResponse'_unknownFields
              (\ x__ y__ -> x__{_RangeResponse'_unknownFields = y__})
        defMessage
          = RangeResponse{_RangeResponse'header = Prelude.Nothing,
                          _RangeResponse'kvs = [],
                          _RangeResponse'more = Data.ProtoLens.fieldDefault,
                          _RangeResponse'count = Data.ProtoLens.fieldDefault,
                          _RangeResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData RangeResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_RangeResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_RangeResponse'header x__)
                   (Control.DeepSeq.deepseq (_RangeResponse'kvs x__)
                      (Control.DeepSeq.deepseq (_RangeResponse'more x__)
                         (Control.DeepSeq.deepseq (_RangeResponse'count x__) (())))))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'request' @:: Lens' RequestOp (Prelude.Maybe RequestOp'Request)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'requestRange' @:: Lens' RequestOp (Prelude.Maybe RangeRequest)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.requestRange' @:: Lens' RequestOp RangeRequest@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'requestPut' @:: Lens' RequestOp (Prelude.Maybe PutRequest)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.requestPut' @:: Lens' RequestOp PutRequest@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'requestDeleteRange' @:: Lens' RequestOp (Prelude.Maybe DeleteRangeRequest)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.requestDeleteRange' @:: Lens' RequestOp DeleteRangeRequest@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'requestTxn' @:: Lens' RequestOp (Prelude.Maybe TxnRequest)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.requestTxn' @:: Lens' RequestOp TxnRequest@
 -}
data RequestOp = RequestOp{_RequestOp'request ::
                           !(Prelude.Maybe RequestOp'Request),
                           _RequestOp'_unknownFields :: !Data.ProtoLens.FieldSet}
                   deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RequestOp where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
data RequestOp'Request = RequestOp'RequestRange !RangeRequest
                       | RequestOp'RequestPut !PutRequest
                       | RequestOp'RequestDeleteRange !DeleteRangeRequest
                       | RequestOp'RequestTxn !TxnRequest
                           deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Lens.Labels.HasLens' RequestOp "maybe'request"
           (Prelude.Maybe RequestOp'Request)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestOp'request
                 (\ x__ y__ -> x__{_RequestOp'request = y__}))
              Prelude.id
instance Lens.Labels.HasLens' RequestOp "maybe'requestRange"
           (Prelude.Maybe RangeRequest)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestOp'request
                 (\ x__ y__ -> x__{_RequestOp'request = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (RequestOp'RequestRange x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap RequestOp'RequestRange y__))
instance Lens.Labels.HasLens' RequestOp "requestRange"
           (RangeRequest)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestOp'request
                 (\ x__ y__ -> x__{_RequestOp'request = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (RequestOp'RequestRange x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap RequestOp'RequestRange y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Lens.Labels.HasLens' RequestOp "maybe'requestPut"
           (Prelude.Maybe PutRequest)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestOp'request
                 (\ x__ y__ -> x__{_RequestOp'request = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (RequestOp'RequestPut x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap RequestOp'RequestPut y__))
instance Lens.Labels.HasLens' RequestOp "requestPut" (PutRequest)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestOp'request
                 (\ x__ y__ -> x__{_RequestOp'request = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (RequestOp'RequestPut x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap RequestOp'RequestPut y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Lens.Labels.HasLens' RequestOp "maybe'requestDeleteRange"
           (Prelude.Maybe DeleteRangeRequest)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestOp'request
                 (\ x__ y__ -> x__{_RequestOp'request = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (RequestOp'RequestDeleteRange x__val) -> Prelude.Just
                                                                                x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap RequestOp'RequestDeleteRange y__))
instance Lens.Labels.HasLens' RequestOp "requestDeleteRange"
           (DeleteRangeRequest)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestOp'request
                 (\ x__ y__ -> x__{_RequestOp'request = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (RequestOp'RequestDeleteRange x__val) -> Prelude.Just
                                                                                   x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap RequestOp'RequestDeleteRange y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Lens.Labels.HasLens' RequestOp "maybe'requestTxn"
           (Prelude.Maybe TxnRequest)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestOp'request
                 (\ x__ y__ -> x__{_RequestOp'request = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (RequestOp'RequestTxn x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap RequestOp'RequestTxn y__))
instance Lens.Labels.HasLens' RequestOp "requestTxn" (TxnRequest)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestOp'request
                 (\ x__ y__ -> x__{_RequestOp'request = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (RequestOp'RequestTxn x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap RequestOp'RequestTxn y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message RequestOp where
        messageName _ = Data.Text.pack "etcdserverpb.RequestOp"
        fieldsByTag
          = let requestRange__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "request_range"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor RangeRequest)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'requestRange")))
                      :: Data.ProtoLens.FieldDescriptor RequestOp
                requestPut__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "request_put"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor PutRequest)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'requestPut")))
                      :: Data.ProtoLens.FieldDescriptor RequestOp
                requestDeleteRange__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "request_delete_range"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor DeleteRangeRequest)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'requestDeleteRange")))
                      :: Data.ProtoLens.FieldDescriptor RequestOp
                requestTxn__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "request_txn"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor TxnRequest)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'requestTxn")))
                      :: Data.ProtoLens.FieldDescriptor RequestOp
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, requestRange__field_descriptor),
                 (Data.ProtoLens.Tag 2, requestPut__field_descriptor),
                 (Data.ProtoLens.Tag 3, requestDeleteRange__field_descriptor),
                 (Data.ProtoLens.Tag 4, requestTxn__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _RequestOp'_unknownFields
              (\ x__ y__ -> x__{_RequestOp'_unknownFields = y__})
        defMessage
          = RequestOp{_RequestOp'request = Prelude.Nothing,
                      _RequestOp'_unknownFields = ([])}
instance Control.DeepSeq.NFData RequestOp where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_RequestOp'_unknownFields x__)
                (Control.DeepSeq.deepseq (_RequestOp'request x__) (()))
instance Control.DeepSeq.NFData RequestOp'Request where
        rnf (RequestOp'RequestRange x__) = Control.DeepSeq.rnf x__
        rnf (RequestOp'RequestPut x__) = Control.DeepSeq.rnf x__
        rnf (RequestOp'RequestDeleteRange x__) = Control.DeepSeq.rnf x__
        rnf (RequestOp'RequestTxn x__) = Control.DeepSeq.rnf x__
_RequestOp'RequestRange ::
                        Lens.Labels.Prism.Prism' RequestOp'Request RangeRequest
_RequestOp'RequestRange
  = Lens.Labels.Prism.prism' RequestOp'RequestRange
      (\ p__ ->
         case p__ of
             RequestOp'RequestRange p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_RequestOp'RequestPut ::
                      Lens.Labels.Prism.Prism' RequestOp'Request PutRequest
_RequestOp'RequestPut
  = Lens.Labels.Prism.prism' RequestOp'RequestPut
      (\ p__ ->
         case p__ of
             RequestOp'RequestPut p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_RequestOp'RequestDeleteRange ::
                              Lens.Labels.Prism.Prism' RequestOp'Request DeleteRangeRequest
_RequestOp'RequestDeleteRange
  = Lens.Labels.Prism.prism' RequestOp'RequestDeleteRange
      (\ p__ ->
         case p__ of
             RequestOp'RequestDeleteRange p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_RequestOp'RequestTxn ::
                      Lens.Labels.Prism.Prism' RequestOp'Request TxnRequest
_RequestOp'RequestTxn
  = Lens.Labels.Prism.prism' RequestOp'RequestTxn
      (\ p__ ->
         case p__ of
             RequestOp'RequestTxn p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.clusterId' @:: Lens' ResponseHeader Data.Word.Word64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.memberId' @:: Lens' ResponseHeader Data.Word.Word64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.revision' @:: Lens' ResponseHeader Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.raftTerm' @:: Lens' ResponseHeader Data.Word.Word64@
 -}
data ResponseHeader = ResponseHeader{_ResponseHeader'clusterId ::
                                     !Data.Word.Word64,
                                     _ResponseHeader'memberId :: !Data.Word.Word64,
                                     _ResponseHeader'revision :: !Data.Int.Int64,
                                     _ResponseHeader'raftTerm :: !Data.Word.Word64,
                                     _ResponseHeader'_unknownFields :: !Data.ProtoLens.FieldSet}
                        deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseHeader where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ResponseHeader "clusterId"
           (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseHeader'clusterId
                 (\ x__ y__ -> x__{_ResponseHeader'clusterId = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ResponseHeader "memberId"
           (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseHeader'memberId
                 (\ x__ y__ -> x__{_ResponseHeader'memberId = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ResponseHeader "revision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseHeader'revision
                 (\ x__ y__ -> x__{_ResponseHeader'revision = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ResponseHeader "raftTerm"
           (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseHeader'raftTerm
                 (\ x__ y__ -> x__{_ResponseHeader'raftTerm = y__}))
              Prelude.id
instance Data.ProtoLens.Message ResponseHeader where
        messageName _ = Data.Text.pack "etcdserverpb.ResponseHeader"
        fieldsByTag
          = let clusterId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "cluster_id"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "clusterId")))
                      :: Data.ProtoLens.FieldDescriptor ResponseHeader
                memberId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "member_id"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "memberId")))
                      :: Data.ProtoLens.FieldDescriptor ResponseHeader
                revision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "revision")))
                      :: Data.ProtoLens.FieldDescriptor ResponseHeader
                raftTerm__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "raft_term"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "raftTerm")))
                      :: Data.ProtoLens.FieldDescriptor ResponseHeader
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, clusterId__field_descriptor),
                 (Data.ProtoLens.Tag 2, memberId__field_descriptor),
                 (Data.ProtoLens.Tag 3, revision__field_descriptor),
                 (Data.ProtoLens.Tag 4, raftTerm__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ResponseHeader'_unknownFields
              (\ x__ y__ -> x__{_ResponseHeader'_unknownFields = y__})
        defMessage
          = ResponseHeader{_ResponseHeader'clusterId =
                             Data.ProtoLens.fieldDefault,
                           _ResponseHeader'memberId = Data.ProtoLens.fieldDefault,
                           _ResponseHeader'revision = Data.ProtoLens.fieldDefault,
                           _ResponseHeader'raftTerm = Data.ProtoLens.fieldDefault,
                           _ResponseHeader'_unknownFields = ([])}
instance Control.DeepSeq.NFData ResponseHeader where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ResponseHeader'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ResponseHeader'clusterId x__)
                   (Control.DeepSeq.deepseq (_ResponseHeader'memberId x__)
                      (Control.DeepSeq.deepseq (_ResponseHeader'revision x__)
                         (Control.DeepSeq.deepseq (_ResponseHeader'raftTerm x__) (())))))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'response' @:: Lens' ResponseOp (Prelude.Maybe ResponseOp'Response)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'responseRange' @:: Lens' ResponseOp (Prelude.Maybe RangeResponse)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.responseRange' @:: Lens' ResponseOp RangeResponse@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'responsePut' @:: Lens' ResponseOp (Prelude.Maybe PutResponse)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.responsePut' @:: Lens' ResponseOp PutResponse@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'responseDeleteRange' @:: Lens' ResponseOp (Prelude.Maybe DeleteRangeResponse)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.responseDeleteRange' @:: Lens' ResponseOp DeleteRangeResponse@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'responseTxn' @:: Lens' ResponseOp (Prelude.Maybe TxnResponse)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.responseTxn' @:: Lens' ResponseOp TxnResponse@
 -}
data ResponseOp = ResponseOp{_ResponseOp'response ::
                             !(Prelude.Maybe ResponseOp'Response),
                             _ResponseOp'_unknownFields :: !Data.ProtoLens.FieldSet}
                    deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResponseOp where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
data ResponseOp'Response = ResponseOp'ResponseRange !RangeResponse
                         | ResponseOp'ResponsePut !PutResponse
                         | ResponseOp'ResponseDeleteRange !DeleteRangeResponse
                         | ResponseOp'ResponseTxn !TxnResponse
                             deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Lens.Labels.HasLens' ResponseOp "maybe'response"
           (Prelude.Maybe ResponseOp'Response)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseOp'response
                 (\ x__ y__ -> x__{_ResponseOp'response = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ResponseOp "maybe'responseRange"
           (Prelude.Maybe RangeResponse)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseOp'response
                 (\ x__ y__ -> x__{_ResponseOp'response = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (ResponseOp'ResponseRange x__val) -> Prelude.Just
                                                                            x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap ResponseOp'ResponseRange y__))
instance Lens.Labels.HasLens' ResponseOp "responseRange"
           (RangeResponse)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseOp'response
                 (\ x__ y__ -> x__{_ResponseOp'response = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (ResponseOp'ResponseRange x__val) -> Prelude.Just
                                                                               x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap ResponseOp'ResponseRange y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Lens.Labels.HasLens' ResponseOp "maybe'responsePut"
           (Prelude.Maybe PutResponse)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseOp'response
                 (\ x__ y__ -> x__{_ResponseOp'response = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (ResponseOp'ResponsePut x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap ResponseOp'ResponsePut y__))
instance Lens.Labels.HasLens' ResponseOp "responsePut"
           (PutResponse)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseOp'response
                 (\ x__ y__ -> x__{_ResponseOp'response = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (ResponseOp'ResponsePut x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap ResponseOp'ResponsePut y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Lens.Labels.HasLens' ResponseOp
           "maybe'responseDeleteRange"
           (Prelude.Maybe DeleteRangeResponse)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseOp'response
                 (\ x__ y__ -> x__{_ResponseOp'response = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just
                          (ResponseOp'ResponseDeleteRange x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap ResponseOp'ResponseDeleteRange y__))
instance Lens.Labels.HasLens' ResponseOp "responseDeleteRange"
           (DeleteRangeResponse)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseOp'response
                 (\ x__ y__ -> x__{_ResponseOp'response = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just
                             (ResponseOp'ResponseDeleteRange x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap ResponseOp'ResponseDeleteRange y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Lens.Labels.HasLens' ResponseOp "maybe'responseTxn"
           (Prelude.Maybe TxnResponse)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseOp'response
                 (\ x__ y__ -> x__{_ResponseOp'response = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (ResponseOp'ResponseTxn x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap ResponseOp'ResponseTxn y__))
instance Lens.Labels.HasLens' ResponseOp "responseTxn"
           (TxnResponse)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseOp'response
                 (\ x__ y__ -> x__{_ResponseOp'response = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (ResponseOp'ResponseTxn x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap ResponseOp'ResponseTxn y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ResponseOp where
        messageName _ = Data.Text.pack "etcdserverpb.ResponseOp"
        fieldsByTag
          = let responseRange__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "response_range"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor RangeResponse)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'responseRange")))
                      :: Data.ProtoLens.FieldDescriptor ResponseOp
                responsePut__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "response_put"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor PutResponse)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'responsePut")))
                      :: Data.ProtoLens.FieldDescriptor ResponseOp
                responseDeleteRange__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "response_delete_range"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor DeleteRangeResponse)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'responseDeleteRange")))
                      :: Data.ProtoLens.FieldDescriptor ResponseOp
                responseTxn__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "response_txn"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor TxnResponse)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'responseTxn")))
                      :: Data.ProtoLens.FieldDescriptor ResponseOp
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, responseRange__field_descriptor),
                 (Data.ProtoLens.Tag 2, responsePut__field_descriptor),
                 (Data.ProtoLens.Tag 3, responseDeleteRange__field_descriptor),
                 (Data.ProtoLens.Tag 4, responseTxn__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ResponseOp'_unknownFields
              (\ x__ y__ -> x__{_ResponseOp'_unknownFields = y__})
        defMessage
          = ResponseOp{_ResponseOp'response = Prelude.Nothing,
                       _ResponseOp'_unknownFields = ([])}
instance Control.DeepSeq.NFData ResponseOp where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ResponseOp'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ResponseOp'response x__) (()))
instance Control.DeepSeq.NFData ResponseOp'Response where
        rnf (ResponseOp'ResponseRange x__) = Control.DeepSeq.rnf x__
        rnf (ResponseOp'ResponsePut x__) = Control.DeepSeq.rnf x__
        rnf (ResponseOp'ResponseDeleteRange x__) = Control.DeepSeq.rnf x__
        rnf (ResponseOp'ResponseTxn x__) = Control.DeepSeq.rnf x__
_ResponseOp'ResponseRange ::
                          Lens.Labels.Prism.Prism' ResponseOp'Response RangeResponse
_ResponseOp'ResponseRange
  = Lens.Labels.Prism.prism' ResponseOp'ResponseRange
      (\ p__ ->
         case p__ of
             ResponseOp'ResponseRange p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_ResponseOp'ResponsePut ::
                        Lens.Labels.Prism.Prism' ResponseOp'Response PutResponse
_ResponseOp'ResponsePut
  = Lens.Labels.Prism.prism' ResponseOp'ResponsePut
      (\ p__ ->
         case p__ of
             ResponseOp'ResponsePut p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_ResponseOp'ResponseDeleteRange ::
                                Lens.Labels.Prism.Prism' ResponseOp'Response DeleteRangeResponse
_ResponseOp'ResponseDeleteRange
  = Lens.Labels.Prism.prism' ResponseOp'ResponseDeleteRange
      (\ p__ ->
         case p__ of
             ResponseOp'ResponseDeleteRange p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_ResponseOp'ResponseTxn ::
                        Lens.Labels.Prism.Prism' ResponseOp'Response TxnResponse
_ResponseOp'ResponseTxn
  = Lens.Labels.Prism.prism' ResponseOp'ResponseTxn
      (\ p__ ->
         case p__ of
             ResponseOp'ResponseTxn p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
{- | Fields :

 -}
data SnapshotRequest = SnapshotRequest{_SnapshotRequest'_unknownFields
                                       :: !Data.ProtoLens.FieldSet}
                         deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SnapshotRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message SnapshotRequest where
        messageName _ = Data.Text.pack "etcdserverpb.SnapshotRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _SnapshotRequest'_unknownFields
              (\ x__ y__ -> x__{_SnapshotRequest'_unknownFields = y__})
        defMessage
          = SnapshotRequest{_SnapshotRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData SnapshotRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_SnapshotRequest'_unknownFields x__) (())
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' SnapshotResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' SnapshotResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.remainingBytes' @:: Lens' SnapshotResponse Data.Word.Word64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.blob' @:: Lens' SnapshotResponse Data.ByteString.ByteString@
 -}
data SnapshotResponse = SnapshotResponse{_SnapshotResponse'header
                                         :: !(Prelude.Maybe ResponseHeader),
                                         _SnapshotResponse'remainingBytes :: !Data.Word.Word64,
                                         _SnapshotResponse'blob :: !Data.ByteString.ByteString,
                                         _SnapshotResponse'_unknownFields ::
                                         !Data.ProtoLens.FieldSet}
                          deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SnapshotResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' SnapshotResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _SnapshotResponse'header
                 (\ x__ y__ -> x__{_SnapshotResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' SnapshotResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _SnapshotResponse'header
                 (\ x__ y__ -> x__{_SnapshotResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' SnapshotResponse "remainingBytes"
           (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _SnapshotResponse'remainingBytes
                 (\ x__ y__ -> x__{_SnapshotResponse'remainingBytes = y__}))
              Prelude.id
instance Lens.Labels.HasLens' SnapshotResponse "blob"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _SnapshotResponse'blob
                 (\ x__ y__ -> x__{_SnapshotResponse'blob = y__}))
              Prelude.id
instance Data.ProtoLens.Message SnapshotResponse where
        messageName _ = Data.Text.pack "etcdserverpb.SnapshotResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor SnapshotResponse
                remainingBytes__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "remaining_bytes"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "remainingBytes")))
                      :: Data.ProtoLens.FieldDescriptor SnapshotResponse
                blob__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "blob"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "blob")))
                      :: Data.ProtoLens.FieldDescriptor SnapshotResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, remainingBytes__field_descriptor),
                 (Data.ProtoLens.Tag 3, blob__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _SnapshotResponse'_unknownFields
              (\ x__ y__ -> x__{_SnapshotResponse'_unknownFields = y__})
        defMessage
          = SnapshotResponse{_SnapshotResponse'header = Prelude.Nothing,
                             _SnapshotResponse'remainingBytes = Data.ProtoLens.fieldDefault,
                             _SnapshotResponse'blob = Data.ProtoLens.fieldDefault,
                             _SnapshotResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData SnapshotResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_SnapshotResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_SnapshotResponse'header x__)
                   (Control.DeepSeq.deepseq (_SnapshotResponse'remainingBytes x__)
                      (Control.DeepSeq.deepseq (_SnapshotResponse'blob x__) (()))))
{- | Fields :

 -}
data StatusRequest = StatusRequest{_StatusRequest'_unknownFields ::
                                   !Data.ProtoLens.FieldSet}
                       deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StatusRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message StatusRequest where
        messageName _ = Data.Text.pack "etcdserverpb.StatusRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _StatusRequest'_unknownFields
              (\ x__ y__ -> x__{_StatusRequest'_unknownFields = y__})
        defMessage = StatusRequest{_StatusRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData StatusRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_StatusRequest'_unknownFields x__) (())
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' StatusResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' StatusResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.version' @:: Lens' StatusResponse Data.Text.Text@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.dbSize' @:: Lens' StatusResponse Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.leader' @:: Lens' StatusResponse Data.Word.Word64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.raftIndex' @:: Lens' StatusResponse Data.Word.Word64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.raftTerm' @:: Lens' StatusResponse Data.Word.Word64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.raftAppliedIndex' @:: Lens' StatusResponse Data.Word.Word64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.errors' @:: Lens' StatusResponse [Data.Text.Text]@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.dbSizeInUse' @:: Lens' StatusResponse Data.Int.Int64@
 -}
data StatusResponse = StatusResponse{_StatusResponse'header ::
                                     !(Prelude.Maybe ResponseHeader),
                                     _StatusResponse'version :: !Data.Text.Text,
                                     _StatusResponse'dbSize :: !Data.Int.Int64,
                                     _StatusResponse'leader :: !Data.Word.Word64,
                                     _StatusResponse'raftIndex :: !Data.Word.Word64,
                                     _StatusResponse'raftTerm :: !Data.Word.Word64,
                                     _StatusResponse'raftAppliedIndex :: !Data.Word.Word64,
                                     _StatusResponse'errors :: ![Data.Text.Text],
                                     _StatusResponse'dbSizeInUse :: !Data.Int.Int64,
                                     _StatusResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
                        deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StatusResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' StatusResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _StatusResponse'header
                 (\ x__ y__ -> x__{_StatusResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' StatusResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _StatusResponse'header
                 (\ x__ y__ -> x__{_StatusResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' StatusResponse "version"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _StatusResponse'version
                 (\ x__ y__ -> x__{_StatusResponse'version = y__}))
              Prelude.id
instance Lens.Labels.HasLens' StatusResponse "dbSize"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _StatusResponse'dbSize
                 (\ x__ y__ -> x__{_StatusResponse'dbSize = y__}))
              Prelude.id
instance Lens.Labels.HasLens' StatusResponse "leader"
           (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _StatusResponse'leader
                 (\ x__ y__ -> x__{_StatusResponse'leader = y__}))
              Prelude.id
instance Lens.Labels.HasLens' StatusResponse "raftIndex"
           (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _StatusResponse'raftIndex
                 (\ x__ y__ -> x__{_StatusResponse'raftIndex = y__}))
              Prelude.id
instance Lens.Labels.HasLens' StatusResponse "raftTerm"
           (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _StatusResponse'raftTerm
                 (\ x__ y__ -> x__{_StatusResponse'raftTerm = y__}))
              Prelude.id
instance Lens.Labels.HasLens' StatusResponse "raftAppliedIndex"
           (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _StatusResponse'raftAppliedIndex
                 (\ x__ y__ -> x__{_StatusResponse'raftAppliedIndex = y__}))
              Prelude.id
instance Lens.Labels.HasLens' StatusResponse "errors"
           ([Data.Text.Text])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _StatusResponse'errors
                 (\ x__ y__ -> x__{_StatusResponse'errors = y__}))
              Prelude.id
instance Lens.Labels.HasLens' StatusResponse "dbSizeInUse"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _StatusResponse'dbSizeInUse
                 (\ x__ y__ -> x__{_StatusResponse'dbSizeInUse = y__}))
              Prelude.id
instance Data.ProtoLens.Message StatusResponse where
        messageName _ = Data.Text.pack "etcdserverpb.StatusResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor StatusResponse
                version__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "version"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "version")))
                      :: Data.ProtoLens.FieldDescriptor StatusResponse
                dbSize__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "dbSize"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "dbSize")))
                      :: Data.ProtoLens.FieldDescriptor StatusResponse
                leader__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "leader"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "leader")))
                      :: Data.ProtoLens.FieldDescriptor StatusResponse
                raftIndex__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "raftIndex"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "raftIndex")))
                      :: Data.ProtoLens.FieldDescriptor StatusResponse
                raftTerm__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "raftTerm"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "raftTerm")))
                      :: Data.ProtoLens.FieldDescriptor StatusResponse
                raftAppliedIndex__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "raftAppliedIndex"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "raftAppliedIndex")))
                      :: Data.ProtoLens.FieldDescriptor StatusResponse
                errors__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "errors"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "errors")))
                      :: Data.ProtoLens.FieldDescriptor StatusResponse
                dbSizeInUse__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "dbSizeInUse"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "dbSizeInUse")))
                      :: Data.ProtoLens.FieldDescriptor StatusResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, version__field_descriptor),
                 (Data.ProtoLens.Tag 3, dbSize__field_descriptor),
                 (Data.ProtoLens.Tag 4, leader__field_descriptor),
                 (Data.ProtoLens.Tag 5, raftIndex__field_descriptor),
                 (Data.ProtoLens.Tag 6, raftTerm__field_descriptor),
                 (Data.ProtoLens.Tag 7, raftAppliedIndex__field_descriptor),
                 (Data.ProtoLens.Tag 8, errors__field_descriptor),
                 (Data.ProtoLens.Tag 9, dbSizeInUse__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _StatusResponse'_unknownFields
              (\ x__ y__ -> x__{_StatusResponse'_unknownFields = y__})
        defMessage
          = StatusResponse{_StatusResponse'header = Prelude.Nothing,
                           _StatusResponse'version = Data.ProtoLens.fieldDefault,
                           _StatusResponse'dbSize = Data.ProtoLens.fieldDefault,
                           _StatusResponse'leader = Data.ProtoLens.fieldDefault,
                           _StatusResponse'raftIndex = Data.ProtoLens.fieldDefault,
                           _StatusResponse'raftTerm = Data.ProtoLens.fieldDefault,
                           _StatusResponse'raftAppliedIndex = Data.ProtoLens.fieldDefault,
                           _StatusResponse'errors = [],
                           _StatusResponse'dbSizeInUse = Data.ProtoLens.fieldDefault,
                           _StatusResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData StatusResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_StatusResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_StatusResponse'header x__)
                   (Control.DeepSeq.deepseq (_StatusResponse'version x__)
                      (Control.DeepSeq.deepseq (_StatusResponse'dbSize x__)
                         (Control.DeepSeq.deepseq (_StatusResponse'leader x__)
                            (Control.DeepSeq.deepseq (_StatusResponse'raftIndex x__)
                               (Control.DeepSeq.deepseq (_StatusResponse'raftTerm x__)
                                  (Control.DeepSeq.deepseq (_StatusResponse'raftAppliedIndex x__)
                                     (Control.DeepSeq.deepseq (_StatusResponse'errors x__)
                                        (Control.DeepSeq.deepseq (_StatusResponse'dbSizeInUse x__)
                                           (()))))))))))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.compare' @:: Lens' TxnRequest [Compare]@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.success' @:: Lens' TxnRequest [RequestOp]@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.failure' @:: Lens' TxnRequest [RequestOp]@
 -}
data TxnRequest = TxnRequest{_TxnRequest'compare :: ![Compare],
                             _TxnRequest'success :: ![RequestOp],
                             _TxnRequest'failure :: ![RequestOp],
                             _TxnRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
                    deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxnRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' TxnRequest "compare" ([Compare])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TxnRequest'compare
                 (\ x__ y__ -> x__{_TxnRequest'compare = y__}))
              Prelude.id
instance Lens.Labels.HasLens' TxnRequest "success" ([RequestOp])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TxnRequest'success
                 (\ x__ y__ -> x__{_TxnRequest'success = y__}))
              Prelude.id
instance Lens.Labels.HasLens' TxnRequest "failure" ([RequestOp])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TxnRequest'failure
                 (\ x__ y__ -> x__{_TxnRequest'failure = y__}))
              Prelude.id
instance Data.ProtoLens.Message TxnRequest where
        messageName _ = Data.Text.pack "etcdserverpb.TxnRequest"
        fieldsByTag
          = let compare__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "compare"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Compare)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "compare")))
                      :: Data.ProtoLens.FieldDescriptor TxnRequest
                success__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "success"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor RequestOp)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "success")))
                      :: Data.ProtoLens.FieldDescriptor TxnRequest
                failure__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "failure"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor RequestOp)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "failure")))
                      :: Data.ProtoLens.FieldDescriptor TxnRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, compare__field_descriptor),
                 (Data.ProtoLens.Tag 2, success__field_descriptor),
                 (Data.ProtoLens.Tag 3, failure__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _TxnRequest'_unknownFields
              (\ x__ y__ -> x__{_TxnRequest'_unknownFields = y__})
        defMessage
          = TxnRequest{_TxnRequest'compare = [], _TxnRequest'success = [],
                       _TxnRequest'failure = [], _TxnRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData TxnRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_TxnRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_TxnRequest'compare x__)
                   (Control.DeepSeq.deepseq (_TxnRequest'success x__)
                      (Control.DeepSeq.deepseq (_TxnRequest'failure x__) (()))))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' TxnResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' TxnResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.succeeded' @:: Lens' TxnResponse Prelude.Bool@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.responses' @:: Lens' TxnResponse [ResponseOp]@
 -}
data TxnResponse = TxnResponse{_TxnResponse'header ::
                               !(Prelude.Maybe ResponseHeader),
                               _TxnResponse'succeeded :: !Prelude.Bool,
                               _TxnResponse'responses :: ![ResponseOp],
                               _TxnResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxnResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' TxnResponse "header" (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TxnResponse'header
                 (\ x__ y__ -> x__{_TxnResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' TxnResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TxnResponse'header
                 (\ x__ y__ -> x__{_TxnResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' TxnResponse "succeeded"
           (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TxnResponse'succeeded
                 (\ x__ y__ -> x__{_TxnResponse'succeeded = y__}))
              Prelude.id
instance Lens.Labels.HasLens' TxnResponse "responses"
           ([ResponseOp])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TxnResponse'responses
                 (\ x__ y__ -> x__{_TxnResponse'responses = y__}))
              Prelude.id
instance Data.ProtoLens.Message TxnResponse where
        messageName _ = Data.Text.pack "etcdserverpb.TxnResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor TxnResponse
                succeeded__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "succeeded"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "succeeded")))
                      :: Data.ProtoLens.FieldDescriptor TxnResponse
                responses__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "responses"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseOp)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "responses")))
                      :: Data.ProtoLens.FieldDescriptor TxnResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, succeeded__field_descriptor),
                 (Data.ProtoLens.Tag 3, responses__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _TxnResponse'_unknownFields
              (\ x__ y__ -> x__{_TxnResponse'_unknownFields = y__})
        defMessage
          = TxnResponse{_TxnResponse'header = Prelude.Nothing,
                        _TxnResponse'succeeded = Data.ProtoLens.fieldDefault,
                        _TxnResponse'responses = [], _TxnResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData TxnResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_TxnResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_TxnResponse'header x__)
                   (Control.DeepSeq.deepseq (_TxnResponse'succeeded x__)
                      (Control.DeepSeq.deepseq (_TxnResponse'responses x__) (()))))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.watchId' @:: Lens' WatchCancelRequest Data.Int.Int64@
 -}
data WatchCancelRequest = WatchCancelRequest{_WatchCancelRequest'watchId
                                             :: !Data.Int.Int64,
                                             _WatchCancelRequest'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WatchCancelRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' WatchCancelRequest "watchId"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchCancelRequest'watchId
                 (\ x__ y__ -> x__{_WatchCancelRequest'watchId = y__}))
              Prelude.id
instance Data.ProtoLens.Message WatchCancelRequest where
        messageName _ = Data.Text.pack "etcdserverpb.WatchCancelRequest"
        fieldsByTag
          = let watchId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "watch_id"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "watchId")))
                      :: Data.ProtoLens.FieldDescriptor WatchCancelRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, watchId__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _WatchCancelRequest'_unknownFields
              (\ x__ y__ -> x__{_WatchCancelRequest'_unknownFields = y__})
        defMessage
          = WatchCancelRequest{_WatchCancelRequest'watchId =
                                 Data.ProtoLens.fieldDefault,
                               _WatchCancelRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData WatchCancelRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_WatchCancelRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_WatchCancelRequest'watchId x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.key' @:: Lens' WatchCreateRequest Data.ByteString.ByteString@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.rangeEnd' @:: Lens' WatchCreateRequest Data.ByteString.ByteString@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.startRevision' @:: Lens' WatchCreateRequest Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.progressNotify' @:: Lens' WatchCreateRequest Prelude.Bool@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.filters' @:: Lens' WatchCreateRequest [WatchCreateRequest'FilterType]@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.prevKv' @:: Lens' WatchCreateRequest Prelude.Bool@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.watchId' @:: Lens' WatchCreateRequest Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.fragment' @:: Lens' WatchCreateRequest Prelude.Bool@
 -}
data WatchCreateRequest = WatchCreateRequest{_WatchCreateRequest'key
                                             :: !Data.ByteString.ByteString,
                                             _WatchCreateRequest'rangeEnd ::
                                             !Data.ByteString.ByteString,
                                             _WatchCreateRequest'startRevision :: !Data.Int.Int64,
                                             _WatchCreateRequest'progressNotify :: !Prelude.Bool,
                                             _WatchCreateRequest'filters ::
                                             ![WatchCreateRequest'FilterType],
                                             _WatchCreateRequest'prevKv :: !Prelude.Bool,
                                             _WatchCreateRequest'watchId :: !Data.Int.Int64,
                                             _WatchCreateRequest'fragment :: !Prelude.Bool,
                                             _WatchCreateRequest'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WatchCreateRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' WatchCreateRequest "key"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchCreateRequest'key
                 (\ x__ y__ -> x__{_WatchCreateRequest'key = y__}))
              Prelude.id
instance Lens.Labels.HasLens' WatchCreateRequest "rangeEnd"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchCreateRequest'rangeEnd
                 (\ x__ y__ -> x__{_WatchCreateRequest'rangeEnd = y__}))
              Prelude.id
instance Lens.Labels.HasLens' WatchCreateRequest "startRevision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchCreateRequest'startRevision
                 (\ x__ y__ -> x__{_WatchCreateRequest'startRevision = y__}))
              Prelude.id
instance Lens.Labels.HasLens' WatchCreateRequest "progressNotify"
           (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchCreateRequest'progressNotify
                 (\ x__ y__ -> x__{_WatchCreateRequest'progressNotify = y__}))
              Prelude.id
instance Lens.Labels.HasLens' WatchCreateRequest "filters"
           ([WatchCreateRequest'FilterType])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchCreateRequest'filters
                 (\ x__ y__ -> x__{_WatchCreateRequest'filters = y__}))
              Prelude.id
instance Lens.Labels.HasLens' WatchCreateRequest "prevKv"
           (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchCreateRequest'prevKv
                 (\ x__ y__ -> x__{_WatchCreateRequest'prevKv = y__}))
              Prelude.id
instance Lens.Labels.HasLens' WatchCreateRequest "watchId"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchCreateRequest'watchId
                 (\ x__ y__ -> x__{_WatchCreateRequest'watchId = y__}))
              Prelude.id
instance Lens.Labels.HasLens' WatchCreateRequest "fragment"
           (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchCreateRequest'fragment
                 (\ x__ y__ -> x__{_WatchCreateRequest'fragment = y__}))
              Prelude.id
instance Data.ProtoLens.Message WatchCreateRequest where
        messageName _ = Data.Text.pack "etcdserverpb.WatchCreateRequest"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor WatchCreateRequest
                rangeEnd__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "range_end"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "rangeEnd")))
                      :: Data.ProtoLens.FieldDescriptor WatchCreateRequest
                startRevision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "start_revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "startRevision")))
                      :: Data.ProtoLens.FieldDescriptor WatchCreateRequest
                progressNotify__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "progress_notify"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "progressNotify")))
                      :: Data.ProtoLens.FieldDescriptor WatchCreateRequest
                filters__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "filters"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor WatchCreateRequest'FilterType)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "filters")))
                      :: Data.ProtoLens.FieldDescriptor WatchCreateRequest
                prevKv__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "prev_kv"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "prevKv")))
                      :: Data.ProtoLens.FieldDescriptor WatchCreateRequest
                watchId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "watch_id"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "watchId")))
                      :: Data.ProtoLens.FieldDescriptor WatchCreateRequest
                fragment__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "fragment"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fragment")))
                      :: Data.ProtoLens.FieldDescriptor WatchCreateRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, rangeEnd__field_descriptor),
                 (Data.ProtoLens.Tag 3, startRevision__field_descriptor),
                 (Data.ProtoLens.Tag 4, progressNotify__field_descriptor),
                 (Data.ProtoLens.Tag 5, filters__field_descriptor),
                 (Data.ProtoLens.Tag 6, prevKv__field_descriptor),
                 (Data.ProtoLens.Tag 7, watchId__field_descriptor),
                 (Data.ProtoLens.Tag 8, fragment__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _WatchCreateRequest'_unknownFields
              (\ x__ y__ -> x__{_WatchCreateRequest'_unknownFields = y__})
        defMessage
          = WatchCreateRequest{_WatchCreateRequest'key =
                                 Data.ProtoLens.fieldDefault,
                               _WatchCreateRequest'rangeEnd = Data.ProtoLens.fieldDefault,
                               _WatchCreateRequest'startRevision = Data.ProtoLens.fieldDefault,
                               _WatchCreateRequest'progressNotify = Data.ProtoLens.fieldDefault,
                               _WatchCreateRequest'filters = [],
                               _WatchCreateRequest'prevKv = Data.ProtoLens.fieldDefault,
                               _WatchCreateRequest'watchId = Data.ProtoLens.fieldDefault,
                               _WatchCreateRequest'fragment = Data.ProtoLens.fieldDefault,
                               _WatchCreateRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData WatchCreateRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_WatchCreateRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_WatchCreateRequest'key x__)
                   (Control.DeepSeq.deepseq (_WatchCreateRequest'rangeEnd x__)
                      (Control.DeepSeq.deepseq (_WatchCreateRequest'startRevision x__)
                         (Control.DeepSeq.deepseq (_WatchCreateRequest'progressNotify x__)
                            (Control.DeepSeq.deepseq (_WatchCreateRequest'filters x__)
                               (Control.DeepSeq.deepseq (_WatchCreateRequest'prevKv x__)
                                  (Control.DeepSeq.deepseq (_WatchCreateRequest'watchId x__)
                                     (Control.DeepSeq.deepseq (_WatchCreateRequest'fragment x__)
                                        (())))))))))
data WatchCreateRequest'FilterType = WatchCreateRequest'NOPUT
                                   | WatchCreateRequest'NODELETE
                                   | WatchCreateRequest'FilterType'Unrecognized !WatchCreateRequest'FilterType'UnrecognizedValue
                                       deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
newtype WatchCreateRequest'FilterType'UnrecognizedValue = WatchCreateRequest'FilterType'UnrecognizedValue Data.Int.Int32
                                                            deriving (Prelude.Eq, Prelude.Ord,
                                                                      Prelude.Show)
instance Data.ProtoLens.MessageEnum WatchCreateRequest'FilterType
         where
        maybeToEnum 0 = Prelude.Just WatchCreateRequest'NOPUT
        maybeToEnum 1 = Prelude.Just WatchCreateRequest'NODELETE
        maybeToEnum k
          = Prelude.Just
              (WatchCreateRequest'FilterType'Unrecognized
                 (WatchCreateRequest'FilterType'UnrecognizedValue
                    (Prelude.fromIntegral k)))
        showEnum WatchCreateRequest'NOPUT = "NOPUT"
        showEnum WatchCreateRequest'NODELETE = "NODELETE"
        showEnum
          (WatchCreateRequest'FilterType'Unrecognized
             (WatchCreateRequest'FilterType'UnrecognizedValue k))
          = Prelude.show k
        readEnum "NOPUT" = Prelude.Just WatchCreateRequest'NOPUT
        readEnum "NODELETE" = Prelude.Just WatchCreateRequest'NODELETE
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded WatchCreateRequest'FilterType where
        minBound = WatchCreateRequest'NOPUT
        maxBound = WatchCreateRequest'NODELETE
instance Prelude.Enum WatchCreateRequest'FilterType where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum FilterType: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum WatchCreateRequest'NOPUT = 0
        fromEnum WatchCreateRequest'NODELETE = 1
        fromEnum
          (WatchCreateRequest'FilterType'Unrecognized
             (WatchCreateRequest'FilterType'UnrecognizedValue k))
          = Prelude.fromIntegral k
        succ WatchCreateRequest'NODELETE
          = Prelude.error
              "WatchCreateRequest'FilterType.succ: bad argument WatchCreateRequest'NODELETE. This value would be out of bounds."
        succ WatchCreateRequest'NOPUT = WatchCreateRequest'NODELETE
        succ _
          = Prelude.error
              "WatchCreateRequest'FilterType.succ: bad argument: unrecognized value"
        pred WatchCreateRequest'NOPUT
          = Prelude.error
              "WatchCreateRequest'FilterType.pred: bad argument WatchCreateRequest'NOPUT. This value would be out of bounds."
        pred WatchCreateRequest'NODELETE = WatchCreateRequest'NOPUT
        pred _
          = Prelude.error
              "WatchCreateRequest'FilterType.pred: bad argument: unrecognized value"
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault WatchCreateRequest'FilterType
         where
        fieldDefault = WatchCreateRequest'NOPUT
instance Control.DeepSeq.NFData WatchCreateRequest'FilterType where
        rnf x__ = Prelude.seq x__ (())
{- | Fields :

 -}
data WatchProgressRequest = WatchProgressRequest{_WatchProgressRequest'_unknownFields
                                                 :: !Data.ProtoLens.FieldSet}
                              deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WatchProgressRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message WatchProgressRequest where
        messageName _ = Data.Text.pack "etcdserverpb.WatchProgressRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _WatchProgressRequest'_unknownFields
              (\ x__ y__ -> x__{_WatchProgressRequest'_unknownFields = y__})
        defMessage
          = WatchProgressRequest{_WatchProgressRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData WatchProgressRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_WatchProgressRequest'_unknownFields x__)
                (())
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'requestUnion' @:: Lens' WatchRequest (Prelude.Maybe WatchRequest'RequestUnion)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'createRequest' @:: Lens' WatchRequest (Prelude.Maybe WatchCreateRequest)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.createRequest' @:: Lens' WatchRequest WatchCreateRequest@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'cancelRequest' @:: Lens' WatchRequest (Prelude.Maybe WatchCancelRequest)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.cancelRequest' @:: Lens' WatchRequest WatchCancelRequest@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'progressRequest' @:: Lens' WatchRequest (Prelude.Maybe WatchProgressRequest)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.progressRequest' @:: Lens' WatchRequest WatchProgressRequest@
 -}
data WatchRequest = WatchRequest{_WatchRequest'requestUnion ::
                                 !(Prelude.Maybe WatchRequest'RequestUnion),
                                 _WatchRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
                      deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WatchRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
data WatchRequest'RequestUnion = WatchRequest'CreateRequest !WatchCreateRequest
                               | WatchRequest'CancelRequest !WatchCancelRequest
                               | WatchRequest'ProgressRequest !WatchProgressRequest
                                   deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Lens.Labels.HasLens' WatchRequest "maybe'requestUnion"
           (Prelude.Maybe WatchRequest'RequestUnion)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchRequest'requestUnion
                 (\ x__ y__ -> x__{_WatchRequest'requestUnion = y__}))
              Prelude.id
instance Lens.Labels.HasLens' WatchRequest "maybe'createRequest"
           (Prelude.Maybe WatchCreateRequest)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchRequest'requestUnion
                 (\ x__ y__ -> x__{_WatchRequest'requestUnion = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (WatchRequest'CreateRequest x__val) -> Prelude.Just
                                                                              x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap WatchRequest'CreateRequest y__))
instance Lens.Labels.HasLens' WatchRequest "createRequest"
           (WatchCreateRequest)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchRequest'requestUnion
                 (\ x__ y__ -> x__{_WatchRequest'requestUnion = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (WatchRequest'CreateRequest x__val) -> Prelude.Just
                                                                                 x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap WatchRequest'CreateRequest y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Lens.Labels.HasLens' WatchRequest "maybe'cancelRequest"
           (Prelude.Maybe WatchCancelRequest)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchRequest'requestUnion
                 (\ x__ y__ -> x__{_WatchRequest'requestUnion = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (WatchRequest'CancelRequest x__val) -> Prelude.Just
                                                                              x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap WatchRequest'CancelRequest y__))
instance Lens.Labels.HasLens' WatchRequest "cancelRequest"
           (WatchCancelRequest)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchRequest'requestUnion
                 (\ x__ y__ -> x__{_WatchRequest'requestUnion = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (WatchRequest'CancelRequest x__val) -> Prelude.Just
                                                                                 x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap WatchRequest'CancelRequest y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Lens.Labels.HasLens' WatchRequest "maybe'progressRequest"
           (Prelude.Maybe WatchProgressRequest)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchRequest'requestUnion
                 (\ x__ y__ -> x__{_WatchRequest'requestUnion = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (WatchRequest'ProgressRequest x__val) -> Prelude.Just
                                                                                x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap WatchRequest'ProgressRequest y__))
instance Lens.Labels.HasLens' WatchRequest "progressRequest"
           (WatchProgressRequest)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchRequest'requestUnion
                 (\ x__ y__ -> x__{_WatchRequest'requestUnion = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (WatchRequest'ProgressRequest x__val) -> Prelude.Just
                                                                                   x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap WatchRequest'ProgressRequest y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message WatchRequest where
        messageName _ = Data.Text.pack "etcdserverpb.WatchRequest"
        fieldsByTag
          = let createRequest__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "create_request"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor WatchCreateRequest)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'createRequest")))
                      :: Data.ProtoLens.FieldDescriptor WatchRequest
                cancelRequest__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "cancel_request"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor WatchCancelRequest)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'cancelRequest")))
                      :: Data.ProtoLens.FieldDescriptor WatchRequest
                progressRequest__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "progress_request"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor WatchProgressRequest)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'progressRequest")))
                      :: Data.ProtoLens.FieldDescriptor WatchRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, createRequest__field_descriptor),
                 (Data.ProtoLens.Tag 2, cancelRequest__field_descriptor),
                 (Data.ProtoLens.Tag 3, progressRequest__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _WatchRequest'_unknownFields
              (\ x__ y__ -> x__{_WatchRequest'_unknownFields = y__})
        defMessage
          = WatchRequest{_WatchRequest'requestUnion = Prelude.Nothing,
                         _WatchRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData WatchRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_WatchRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_WatchRequest'requestUnion x__) (()))
instance Control.DeepSeq.NFData WatchRequest'RequestUnion where
        rnf (WatchRequest'CreateRequest x__) = Control.DeepSeq.rnf x__
        rnf (WatchRequest'CancelRequest x__) = Control.DeepSeq.rnf x__
        rnf (WatchRequest'ProgressRequest x__) = Control.DeepSeq.rnf x__
_WatchRequest'CreateRequest ::
                            Lens.Labels.Prism.Prism' WatchRequest'RequestUnion
                              WatchCreateRequest
_WatchRequest'CreateRequest
  = Lens.Labels.Prism.prism' WatchRequest'CreateRequest
      (\ p__ ->
         case p__ of
             WatchRequest'CreateRequest p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_WatchRequest'CancelRequest ::
                            Lens.Labels.Prism.Prism' WatchRequest'RequestUnion
                              WatchCancelRequest
_WatchRequest'CancelRequest
  = Lens.Labels.Prism.prism' WatchRequest'CancelRequest
      (\ p__ ->
         case p__ of
             WatchRequest'CancelRequest p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_WatchRequest'ProgressRequest ::
                              Lens.Labels.Prism.Prism' WatchRequest'RequestUnion
                                WatchProgressRequest
_WatchRequest'ProgressRequest
  = Lens.Labels.Prism.prism' WatchRequest'ProgressRequest
      (\ p__ ->
         case p__ of
             WatchRequest'ProgressRequest p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' WatchResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' WatchResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.watchId' @:: Lens' WatchResponse Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.created' @:: Lens' WatchResponse Prelude.Bool@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.canceled' @:: Lens' WatchResponse Prelude.Bool@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.compactRevision' @:: Lens' WatchResponse Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.cancelReason' @:: Lens' WatchResponse Data.Text.Text@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.fragment' @:: Lens' WatchResponse Prelude.Bool@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.events' @:: Lens' WatchResponse [Proto.Etcd.Mvcc.Mvccpb.Kv.Event]@
 -}
data WatchResponse = WatchResponse{_WatchResponse'header ::
                                   !(Prelude.Maybe ResponseHeader),
                                   _WatchResponse'watchId :: !Data.Int.Int64,
                                   _WatchResponse'created :: !Prelude.Bool,
                                   _WatchResponse'canceled :: !Prelude.Bool,
                                   _WatchResponse'compactRevision :: !Data.Int.Int64,
                                   _WatchResponse'cancelReason :: !Data.Text.Text,
                                   _WatchResponse'fragment :: !Prelude.Bool,
                                   _WatchResponse'events :: ![Proto.Etcd.Mvcc.Mvccpb.Kv.Event],
                                   _WatchResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
                       deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show WatchResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' WatchResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchResponse'header
                 (\ x__ y__ -> x__{_WatchResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' WatchResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchResponse'header
                 (\ x__ y__ -> x__{_WatchResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' WatchResponse "watchId"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchResponse'watchId
                 (\ x__ y__ -> x__{_WatchResponse'watchId = y__}))
              Prelude.id
instance Lens.Labels.HasLens' WatchResponse "created"
           (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchResponse'created
                 (\ x__ y__ -> x__{_WatchResponse'created = y__}))
              Prelude.id
instance Lens.Labels.HasLens' WatchResponse "canceled"
           (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchResponse'canceled
                 (\ x__ y__ -> x__{_WatchResponse'canceled = y__}))
              Prelude.id
instance Lens.Labels.HasLens' WatchResponse "compactRevision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchResponse'compactRevision
                 (\ x__ y__ -> x__{_WatchResponse'compactRevision = y__}))
              Prelude.id
instance Lens.Labels.HasLens' WatchResponse "cancelReason"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchResponse'cancelReason
                 (\ x__ y__ -> x__{_WatchResponse'cancelReason = y__}))
              Prelude.id
instance Lens.Labels.HasLens' WatchResponse "fragment"
           (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchResponse'fragment
                 (\ x__ y__ -> x__{_WatchResponse'fragment = y__}))
              Prelude.id
instance Lens.Labels.HasLens' WatchResponse "events"
           ([Proto.Etcd.Mvcc.Mvccpb.Kv.Event])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchResponse'events
                 (\ x__ y__ -> x__{_WatchResponse'events = y__}))
              Prelude.id
instance Data.ProtoLens.Message WatchResponse where
        messageName _ = Data.Text.pack "etcdserverpb.WatchResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor WatchResponse
                watchId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "watch_id"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "watchId")))
                      :: Data.ProtoLens.FieldDescriptor WatchResponse
                created__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "created"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "created")))
                      :: Data.ProtoLens.FieldDescriptor WatchResponse
                canceled__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "canceled"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "canceled")))
                      :: Data.ProtoLens.FieldDescriptor WatchResponse
                compactRevision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "compact_revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "compactRevision")))
                      :: Data.ProtoLens.FieldDescriptor WatchResponse
                cancelReason__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "cancel_reason"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "cancelReason")))
                      :: Data.ProtoLens.FieldDescriptor WatchResponse
                fragment__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "fragment"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fragment")))
                      :: Data.ProtoLens.FieldDescriptor WatchResponse
                events__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "events"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Proto.Etcd.Mvcc.Mvccpb.Kv.Event)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "events")))
                      :: Data.ProtoLens.FieldDescriptor WatchResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, watchId__field_descriptor),
                 (Data.ProtoLens.Tag 3, created__field_descriptor),
                 (Data.ProtoLens.Tag 4, canceled__field_descriptor),
                 (Data.ProtoLens.Tag 5, compactRevision__field_descriptor),
                 (Data.ProtoLens.Tag 6, cancelReason__field_descriptor),
                 (Data.ProtoLens.Tag 7, fragment__field_descriptor),
                 (Data.ProtoLens.Tag 11, events__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _WatchResponse'_unknownFields
              (\ x__ y__ -> x__{_WatchResponse'_unknownFields = y__})
        defMessage
          = WatchResponse{_WatchResponse'header = Prelude.Nothing,
                          _WatchResponse'watchId = Data.ProtoLens.fieldDefault,
                          _WatchResponse'created = Data.ProtoLens.fieldDefault,
                          _WatchResponse'canceled = Data.ProtoLens.fieldDefault,
                          _WatchResponse'compactRevision = Data.ProtoLens.fieldDefault,
                          _WatchResponse'cancelReason = Data.ProtoLens.fieldDefault,
                          _WatchResponse'fragment = Data.ProtoLens.fieldDefault,
                          _WatchResponse'events = [], _WatchResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData WatchResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_WatchResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_WatchResponse'header x__)
                   (Control.DeepSeq.deepseq (_WatchResponse'watchId x__)
                      (Control.DeepSeq.deepseq (_WatchResponse'created x__)
                         (Control.DeepSeq.deepseq (_WatchResponse'canceled x__)
                            (Control.DeepSeq.deepseq (_WatchResponse'compactRevision x__)
                               (Control.DeepSeq.deepseq (_WatchResponse'cancelReason x__)
                                  (Control.DeepSeq.deepseq (_WatchResponse'fragment x__)
                                     (Control.DeepSeq.deepseq (_WatchResponse'events x__)
                                        (())))))))))
data KV = KV{}
            deriving ()
instance Data.ProtoLens.Service.Types.Service KV where
        type ServiceName KV = "KV"
        type ServicePackage KV = "etcdserverpb"
        type ServiceMethods KV =
             '["compact", "deleteRange", "put", "range", "txn"]
instance Data.ProtoLens.Service.Types.HasMethodImpl KV "range"
         where
        type MethodName KV "range" = "Range"
        type MethodInput KV "range" = RangeRequest
        type MethodOutput KV "range" = RangeResponse
        type MethodStreamingType KV "range" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl KV "put" where
        type MethodName KV "put" = "Put"
        type MethodInput KV "put" = PutRequest
        type MethodOutput KV "put" = PutResponse
        type MethodStreamingType KV "put" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl KV
           "deleteRange"
         where
        type MethodName KV "deleteRange" = "DeleteRange"
        type MethodInput KV "deleteRange" = DeleteRangeRequest
        type MethodOutput KV "deleteRange" = DeleteRangeResponse
        type MethodStreamingType KV "deleteRange" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl KV "txn" where
        type MethodName KV "txn" = "Txn"
        type MethodInput KV "txn" = TxnRequest
        type MethodOutput KV "txn" = TxnResponse
        type MethodStreamingType KV "txn" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl KV "compact"
         where
        type MethodName KV "compact" = "Compact"
        type MethodInput KV "compact" = CompactionRequest
        type MethodOutput KV "compact" = CompactionResponse
        type MethodStreamingType KV "compact" =
             'Data.ProtoLens.Service.Types.NonStreaming
data Watch = Watch{}
               deriving ()
instance Data.ProtoLens.Service.Types.Service Watch where
        type ServiceName Watch = "Watch"
        type ServicePackage Watch = "etcdserverpb"
        type ServiceMethods Watch = '["watch"]
instance Data.ProtoLens.Service.Types.HasMethodImpl Watch "watch"
         where
        type MethodName Watch "watch" = "Watch"
        type MethodInput Watch "watch" = WatchRequest
        type MethodOutput Watch "watch" = WatchResponse
        type MethodStreamingType Watch "watch" =
             'Data.ProtoLens.Service.Types.BiDiStreaming
data Lease = Lease{}
               deriving ()
instance Data.ProtoLens.Service.Types.Service Lease where
        type ServiceName Lease = "Lease"
        type ServicePackage Lease = "etcdserverpb"
        type ServiceMethods Lease =
             '["leaseGrant", "leaseKeepAlive", "leaseLeases", "leaseRevoke",
               "leaseTimeToLive"]
instance Data.ProtoLens.Service.Types.HasMethodImpl Lease
           "leaseGrant"
         where
        type MethodName Lease "leaseGrant" = "LeaseGrant"
        type MethodInput Lease "leaseGrant" = LeaseGrantRequest
        type MethodOutput Lease "leaseGrant" = LeaseGrantResponse
        type MethodStreamingType Lease "leaseGrant" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Lease
           "leaseRevoke"
         where
        type MethodName Lease "leaseRevoke" = "LeaseRevoke"
        type MethodInput Lease "leaseRevoke" = LeaseRevokeRequest
        type MethodOutput Lease "leaseRevoke" = LeaseRevokeResponse
        type MethodStreamingType Lease "leaseRevoke" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Lease
           "leaseKeepAlive"
         where
        type MethodName Lease "leaseKeepAlive" = "LeaseKeepAlive"
        type MethodInput Lease "leaseKeepAlive" = LeaseKeepAliveRequest
        type MethodOutput Lease "leaseKeepAlive" = LeaseKeepAliveResponse
        type MethodStreamingType Lease "leaseKeepAlive" =
             'Data.ProtoLens.Service.Types.BiDiStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Lease
           "leaseTimeToLive"
         where
        type MethodName Lease "leaseTimeToLive" = "LeaseTimeToLive"
        type MethodInput Lease "leaseTimeToLive" = LeaseTimeToLiveRequest
        type MethodOutput Lease "leaseTimeToLive" = LeaseTimeToLiveResponse
        type MethodStreamingType Lease "leaseTimeToLive" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Lease
           "leaseLeases"
         where
        type MethodName Lease "leaseLeases" = "LeaseLeases"
        type MethodInput Lease "leaseLeases" = LeaseLeasesRequest
        type MethodOutput Lease "leaseLeases" = LeaseLeasesResponse
        type MethodStreamingType Lease "leaseLeases" =
             'Data.ProtoLens.Service.Types.NonStreaming
data Cluster = Cluster{}
                 deriving ()
instance Data.ProtoLens.Service.Types.Service Cluster where
        type ServiceName Cluster = "Cluster"
        type ServicePackage Cluster = "etcdserverpb"
        type ServiceMethods Cluster =
             '["memberAdd", "memberList", "memberRemove", "memberUpdate"]
instance Data.ProtoLens.Service.Types.HasMethodImpl Cluster
           "memberAdd"
         where
        type MethodName Cluster "memberAdd" = "MemberAdd"
        type MethodInput Cluster "memberAdd" = MemberAddRequest
        type MethodOutput Cluster "memberAdd" = MemberAddResponse
        type MethodStreamingType Cluster "memberAdd" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Cluster
           "memberRemove"
         where
        type MethodName Cluster "memberRemove" = "MemberRemove"
        type MethodInput Cluster "memberRemove" = MemberRemoveRequest
        type MethodOutput Cluster "memberRemove" = MemberRemoveResponse
        type MethodStreamingType Cluster "memberRemove" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Cluster
           "memberUpdate"
         where
        type MethodName Cluster "memberUpdate" = "MemberUpdate"
        type MethodInput Cluster "memberUpdate" = MemberUpdateRequest
        type MethodOutput Cluster "memberUpdate" = MemberUpdateResponse
        type MethodStreamingType Cluster "memberUpdate" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Cluster
           "memberList"
         where
        type MethodName Cluster "memberList" = "MemberList"
        type MethodInput Cluster "memberList" = MemberListRequest
        type MethodOutput Cluster "memberList" = MemberListResponse
        type MethodStreamingType Cluster "memberList" =
             'Data.ProtoLens.Service.Types.NonStreaming
data Maintenance = Maintenance{}
                     deriving ()
instance Data.ProtoLens.Service.Types.Service Maintenance where
        type ServiceName Maintenance = "Maintenance"
        type ServicePackage Maintenance = "etcdserverpb"
        type ServiceMethods Maintenance =
             '["alarm", "defragment", "hash", "hashKV", "moveLeader",
               "snapshot", "status"]
instance Data.ProtoLens.Service.Types.HasMethodImpl Maintenance
           "alarm"
         where
        type MethodName Maintenance "alarm" = "Alarm"
        type MethodInput Maintenance "alarm" = AlarmRequest
        type MethodOutput Maintenance "alarm" = AlarmResponse
        type MethodStreamingType Maintenance "alarm" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Maintenance
           "status"
         where
        type MethodName Maintenance "status" = "Status"
        type MethodInput Maintenance "status" = StatusRequest
        type MethodOutput Maintenance "status" = StatusResponse
        type MethodStreamingType Maintenance "status" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Maintenance
           "defragment"
         where
        type MethodName Maintenance "defragment" = "Defragment"
        type MethodInput Maintenance "defragment" = DefragmentRequest
        type MethodOutput Maintenance "defragment" = DefragmentResponse
        type MethodStreamingType Maintenance "defragment" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Maintenance
           "hash"
         where
        type MethodName Maintenance "hash" = "Hash"
        type MethodInput Maintenance "hash" = HashRequest
        type MethodOutput Maintenance "hash" = HashResponse
        type MethodStreamingType Maintenance "hash" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Maintenance
           "hashKV"
         where
        type MethodName Maintenance "hashKV" = "HashKV"
        type MethodInput Maintenance "hashKV" = HashKVRequest
        type MethodOutput Maintenance "hashKV" = HashKVResponse
        type MethodStreamingType Maintenance "hashKV" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Maintenance
           "snapshot"
         where
        type MethodName Maintenance "snapshot" = "Snapshot"
        type MethodInput Maintenance "snapshot" = SnapshotRequest
        type MethodOutput Maintenance "snapshot" = SnapshotResponse
        type MethodStreamingType Maintenance "snapshot" =
             'Data.ProtoLens.Service.Types.ServerStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Maintenance
           "moveLeader"
         where
        type MethodName Maintenance "moveLeader" = "MoveLeader"
        type MethodInput Maintenance "moveLeader" = MoveLeaderRequest
        type MethodOutput Maintenance "moveLeader" = MoveLeaderResponse
        type MethodStreamingType Maintenance "moveLeader" =
             'Data.ProtoLens.Service.Types.NonStreaming
data Auth = Auth{}
              deriving ()
instance Data.ProtoLens.Service.Types.Service Auth where
        type ServiceName Auth = "Auth"
        type ServicePackage Auth = "etcdserverpb"
        type ServiceMethods Auth =
             '["authDisable", "authEnable", "authenticate", "roleAdd",
               "roleDelete", "roleGet", "roleGrantPermission", "roleList",
               "roleRevokePermission", "userAdd", "userChangePassword",
               "userDelete", "userGet", "userGrantRole", "userList",
               "userRevokeRole"]
instance Data.ProtoLens.Service.Types.HasMethodImpl Auth
           "authEnable"
         where
        type MethodName Auth "authEnable" = "AuthEnable"
        type MethodInput Auth "authEnable" = AuthEnableRequest
        type MethodOutput Auth "authEnable" = AuthEnableResponse
        type MethodStreamingType Auth "authEnable" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Auth
           "authDisable"
         where
        type MethodName Auth "authDisable" = "AuthDisable"
        type MethodInput Auth "authDisable" = AuthDisableRequest
        type MethodOutput Auth "authDisable" = AuthDisableResponse
        type MethodStreamingType Auth "authDisable" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Auth
           "authenticate"
         where
        type MethodName Auth "authenticate" = "Authenticate"
        type MethodInput Auth "authenticate" = AuthenticateRequest
        type MethodOutput Auth "authenticate" = AuthenticateResponse
        type MethodStreamingType Auth "authenticate" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Auth "userAdd"
         where
        type MethodName Auth "userAdd" = "UserAdd"
        type MethodInput Auth "userAdd" = AuthUserAddRequest
        type MethodOutput Auth "userAdd" = AuthUserAddResponse
        type MethodStreamingType Auth "userAdd" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Auth "userGet"
         where
        type MethodName Auth "userGet" = "UserGet"
        type MethodInput Auth "userGet" = AuthUserGetRequest
        type MethodOutput Auth "userGet" = AuthUserGetResponse
        type MethodStreamingType Auth "userGet" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Auth "userList"
         where
        type MethodName Auth "userList" = "UserList"
        type MethodInput Auth "userList" = AuthUserListRequest
        type MethodOutput Auth "userList" = AuthUserListResponse
        type MethodStreamingType Auth "userList" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Auth
           "userDelete"
         where
        type MethodName Auth "userDelete" = "UserDelete"
        type MethodInput Auth "userDelete" = AuthUserDeleteRequest
        type MethodOutput Auth "userDelete" = AuthUserDeleteResponse
        type MethodStreamingType Auth "userDelete" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Auth
           "userChangePassword"
         where
        type MethodName Auth "userChangePassword" = "UserChangePassword"
        type MethodInput Auth "userChangePassword" =
             AuthUserChangePasswordRequest
        type MethodOutput Auth "userChangePassword" =
             AuthUserChangePasswordResponse
        type MethodStreamingType Auth "userChangePassword" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Auth
           "userGrantRole"
         where
        type MethodName Auth "userGrantRole" = "UserGrantRole"
        type MethodInput Auth "userGrantRole" = AuthUserGrantRoleRequest
        type MethodOutput Auth "userGrantRole" = AuthUserGrantRoleResponse
        type MethodStreamingType Auth "userGrantRole" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Auth
           "userRevokeRole"
         where
        type MethodName Auth "userRevokeRole" = "UserRevokeRole"
        type MethodInput Auth "userRevokeRole" = AuthUserRevokeRoleRequest
        type MethodOutput Auth "userRevokeRole" =
             AuthUserRevokeRoleResponse
        type MethodStreamingType Auth "userRevokeRole" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Auth "roleAdd"
         where
        type MethodName Auth "roleAdd" = "RoleAdd"
        type MethodInput Auth "roleAdd" = AuthRoleAddRequest
        type MethodOutput Auth "roleAdd" = AuthRoleAddResponse
        type MethodStreamingType Auth "roleAdd" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Auth "roleGet"
         where
        type MethodName Auth "roleGet" = "RoleGet"
        type MethodInput Auth "roleGet" = AuthRoleGetRequest
        type MethodOutput Auth "roleGet" = AuthRoleGetResponse
        type MethodStreamingType Auth "roleGet" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Auth "roleList"
         where
        type MethodName Auth "roleList" = "RoleList"
        type MethodInput Auth "roleList" = AuthRoleListRequest
        type MethodOutput Auth "roleList" = AuthRoleListResponse
        type MethodStreamingType Auth "roleList" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Auth
           "roleDelete"
         where
        type MethodName Auth "roleDelete" = "RoleDelete"
        type MethodInput Auth "roleDelete" = AuthRoleDeleteRequest
        type MethodOutput Auth "roleDelete" = AuthRoleDeleteResponse
        type MethodStreamingType Auth "roleDelete" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Auth
           "roleGrantPermission"
         where
        type MethodName Auth "roleGrantPermission" = "RoleGrantPermission"
        type MethodInput Auth "roleGrantPermission" =
             AuthRoleGrantPermissionRequest
        type MethodOutput Auth "roleGrantPermission" =
             AuthRoleGrantPermissionResponse
        type MethodStreamingType Auth "roleGrantPermission" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Auth
           "roleRevokePermission"
         where
        type MethodName Auth "roleRevokePermission" =
             "RoleRevokePermission"
        type MethodInput Auth "roleRevokePermission" =
             AuthRoleRevokePermissionRequest
        type MethodOutput Auth "roleRevokePermission" =
             AuthRoleRevokePermissionResponse
        type MethodStreamingType Auth "roleRevokePermission" =
             'Data.ProtoLens.Service.Types.NonStreaming