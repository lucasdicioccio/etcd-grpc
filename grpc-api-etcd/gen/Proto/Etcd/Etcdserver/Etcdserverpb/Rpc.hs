{- This file was auto-generated from etcd/etcdserver/etcdserverpb/rpc.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Etcd.Etcdserver.Etcdserverpb.Rpc
       (KV(..), Watch(..), Lease(..), Cluster(..), Maintenance(..),
        Auth(..), AlarmMember(..), AlarmRequest(..),
        AlarmRequest'AlarmAction(..), AlarmRequest'AlarmAction(),
        AlarmRequest'AlarmAction'UnrecognizedValue, AlarmResponse(..),
        AlarmType(..), AlarmType(), AlarmType'UnrecognizedValue,
        AuthDisableRequest(..), AuthDisableResponse(..),
        AuthEnableRequest(..), AuthEnableResponse(..),
        AuthRoleAddRequest(..), AuthRoleAddResponse(..),
        AuthRoleDeleteRequest(..), AuthRoleDeleteResponse(..),
        AuthRoleGetRequest(..), AuthRoleGetResponse(..),
        AuthRoleGrantPermissionRequest(..),
        AuthRoleGrantPermissionResponse(..), AuthRoleListRequest(..),
        AuthRoleListResponse(..), AuthRoleRevokePermissionRequest(..),
        AuthRoleRevokePermissionResponse(..), AuthUserAddRequest(..),
        AuthUserAddResponse(..), AuthUserChangePasswordRequest(..),
        AuthUserChangePasswordResponse(..), AuthUserDeleteRequest(..),
        AuthUserDeleteResponse(..), AuthUserGetRequest(..),
        AuthUserGetResponse(..), AuthUserGrantRoleRequest(..),
        AuthUserGrantRoleResponse(..), AuthUserListRequest(..),
        AuthUserListResponse(..), AuthUserRevokeRoleRequest(..),
        AuthUserRevokeRoleResponse(..), AuthenticateRequest(..),
        AuthenticateResponse(..), CompactionRequest(..),
        CompactionResponse(..), Compare(..), Compare'TargetUnion(..),
        _Compare'Version, _Compare'CreateRevision, _Compare'ModRevision,
        _Compare'Value, _Compare'Lease, Compare'CompareResult(..),
        Compare'CompareResult(), Compare'CompareResult'UnrecognizedValue,
        Compare'CompareTarget(..), Compare'CompareTarget(),
        Compare'CompareTarget'UnrecognizedValue, DefragmentRequest(..),
        DefragmentResponse(..), DeleteRangeRequest(..),
        DeleteRangeResponse(..), HashKVRequest(..), HashKVResponse(..),
        HashRequest(..), HashResponse(..), LeaseCheckpoint(..),
        LeaseCheckpointRequest(..), LeaseCheckpointResponse(..),
        LeaseGrantRequest(..), LeaseGrantResponse(..),
        LeaseKeepAliveRequest(..), LeaseKeepAliveResponse(..),
        LeaseLeasesRequest(..), LeaseLeasesResponse(..),
        LeaseRevokeRequest(..), LeaseRevokeResponse(..), LeaseStatus(..),
        LeaseTimeToLiveRequest(..), LeaseTimeToLiveResponse(..),
        Member(..), MemberAddRequest(..), MemberAddResponse(..),
        MemberListRequest(..), MemberListResponse(..),
        MemberRemoveRequest(..), MemberRemoveResponse(..),
        MemberUpdateRequest(..), MemberUpdateResponse(..),
        MoveLeaderRequest(..), MoveLeaderResponse(..), PutRequest(..),
        PutResponse(..), RangeRequest(..), RangeRequest'SortOrder(..),
        RangeRequest'SortOrder(), RangeRequest'SortOrder'UnrecognizedValue,
        RangeRequest'SortTarget(..), RangeRequest'SortTarget(),
        RangeRequest'SortTarget'UnrecognizedValue, RangeResponse(..),
        RequestOp(..), RequestOp'Request(..), _RequestOp'RequestRange,
        _RequestOp'RequestPut, _RequestOp'RequestDeleteRange,
        _RequestOp'RequestTxn, ResponseHeader(..), ResponseOp(..),
        ResponseOp'Response(..), _ResponseOp'ResponseRange,
        _ResponseOp'ResponsePut, _ResponseOp'ResponseDeleteRange,
        _ResponseOp'ResponseTxn, SnapshotRequest(..), SnapshotResponse(..),
        StatusRequest(..), StatusResponse(..), TxnRequest(..),
        TxnResponse(..), WatchCancelRequest(..), WatchCreateRequest(..),
        WatchCreateRequest'FilterType(..), WatchCreateRequest'FilterType(),
        WatchCreateRequest'FilterType'UnrecognizedValue,
        WatchProgressRequest(..), WatchRequest(..),
        WatchRequest'RequestUnion(..), _WatchRequest'CreateRequest,
        _WatchRequest'CancelRequest, _WatchRequest'ProgressRequest,
        WatchResponse(..))
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
                     deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AlarmMember x a, a ~ b) =>
         Lens.Labels.HasLens f AlarmMember AlarmMember x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AlarmMember "memberID" (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AlarmMember'memberID
                 (\ x__ y__ -> x__{_AlarmMember'memberID = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AlarmMember "alarm" (AlarmType)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AlarmMember'alarm
                 (\ x__ y__ -> x__{_AlarmMember'alarm = y__}))
              Prelude.id
instance Data.Default.Class.Default AlarmMember where
        def
          = AlarmMember{_AlarmMember'memberID = Data.ProtoLens.fieldDefault,
                        _AlarmMember'alarm = Data.Default.Class.def,
                        _AlarmMember'_unknownFields = ([])}
instance Data.ProtoLens.Message AlarmMember where
        messageName _ = Data.Text.pack "etcdserverpb.AlarmMember"
        fieldsByTag
          = let memberID__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "memberID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "memberID")))
                      :: Data.ProtoLens.FieldDescriptor AlarmMember
                alarm__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "alarm"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor AlarmType)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "alarm")))
                      :: Data.ProtoLens.FieldDescriptor AlarmMember
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, memberID__field_descriptor),
                 (Data.ProtoLens.Tag 2, alarm__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AlarmMember'_unknownFields
              (\ x__ y__ -> x__{_AlarmMember'_unknownFields = y__})
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
                      deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AlarmRequest x a, a ~ b) =>
         Lens.Labels.HasLens f AlarmRequest AlarmRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AlarmRequest "action"
           (AlarmRequest'AlarmAction)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AlarmRequest'action
                 (\ x__ y__ -> x__{_AlarmRequest'action = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AlarmRequest "memberID" (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AlarmRequest'memberID
                 (\ x__ y__ -> x__{_AlarmRequest'memberID = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AlarmRequest "alarm" (AlarmType)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AlarmRequest'alarm
                 (\ x__ y__ -> x__{_AlarmRequest'alarm = y__}))
              Prelude.id
instance Data.Default.Class.Default AlarmRequest where
        def
          = AlarmRequest{_AlarmRequest'action = Data.Default.Class.def,
                         _AlarmRequest'memberID = Data.ProtoLens.fieldDefault,
                         _AlarmRequest'alarm = Data.Default.Class.def,
                         _AlarmRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message AlarmRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AlarmRequest"
        fieldsByTag
          = let action__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "action"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor AlarmRequest'AlarmAction)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "action")))
                      :: Data.ProtoLens.FieldDescriptor AlarmRequest
                memberID__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "memberID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "memberID")))
                      :: Data.ProtoLens.FieldDescriptor AlarmRequest
                alarm__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "alarm"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor AlarmType)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
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
instance Data.Default.Class.Default AlarmRequest'AlarmAction where
        def = AlarmRequest'GET
instance Data.ProtoLens.FieldDefault AlarmRequest'AlarmAction where
        fieldDefault = AlarmRequest'GET
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AlarmResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AlarmResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.alarms' @:: Lens' AlarmResponse [AlarmMember]@
 -}
data AlarmResponse = AlarmResponse{_AlarmResponse'header ::
                                   !(Prelude.Maybe ResponseHeader),
                                   _AlarmResponse'alarms :: ![AlarmMember],
                                   _AlarmResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
                       deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AlarmResponse x a, a ~ b) =>
         Lens.Labels.HasLens f AlarmResponse AlarmResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AlarmResponse "header" (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AlarmResponse'header
                 (\ x__ y__ -> x__{_AlarmResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AlarmResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AlarmResponse'header
                 (\ x__ y__ -> x__{_AlarmResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AlarmResponse "alarms" ([AlarmMember])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AlarmResponse'alarms
                 (\ x__ y__ -> x__{_AlarmResponse'alarms = y__}))
              Prelude.id
instance Data.Default.Class.Default AlarmResponse where
        def
          = AlarmResponse{_AlarmResponse'header = Prelude.Nothing,
                          _AlarmResponse'alarms = [], _AlarmResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message AlarmResponse where
        messageName _ = Data.Text.pack "etcdserverpb.AlarmResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AlarmResponse
                alarms__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "alarms"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor AlarmMember)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "alarms")))
                      :: Data.ProtoLens.FieldDescriptor AlarmResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, alarms__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AlarmResponse'_unknownFields
              (\ x__ y__ -> x__{_AlarmResponse'_unknownFields = y__})
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
instance Data.Default.Class.Default AlarmType where
        def = NONE
instance Data.ProtoLens.FieldDefault AlarmType where
        fieldDefault = NONE
{- | Fields :

 -}
data AuthDisableRequest = AuthDisableRequest{_AuthDisableRequest'_unknownFields
                                             :: !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthDisableRequest x a, a ~ b) =>
         Lens.Labels.HasLens f AuthDisableRequest AuthDisableRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Data.Default.Class.Default AuthDisableRequest where
        def = AuthDisableRequest{_AuthDisableRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthDisableRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthDisableRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthDisableRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthDisableRequest'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthDisableResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthDisableResponse (Prelude.Maybe ResponseHeader)@
 -}
data AuthDisableResponse = AuthDisableResponse{_AuthDisableResponse'header
                                               :: !(Prelude.Maybe ResponseHeader),
                                               _AuthDisableResponse'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthDisableResponse x a, a ~ b) =>
         Lens.Labels.HasLens f AuthDisableResponse AuthDisableResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthDisableResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthDisableResponse'header
                 (\ x__ y__ -> x__{_AuthDisableResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthDisableResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthDisableResponse'header
                 (\ x__ y__ -> x__{_AuthDisableResponse'header = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthDisableResponse where
        def
          = AuthDisableResponse{_AuthDisableResponse'header =
                                  Prelude.Nothing,
                                _AuthDisableResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthDisableResponse where
        messageName _ = Data.Text.pack "etcdserverpb.AuthDisableResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthDisableResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthDisableResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthDisableResponse'_unknownFields = y__})
{- | Fields :

 -}
data AuthEnableRequest = AuthEnableRequest{_AuthEnableRequest'_unknownFields
                                           :: !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthEnableRequest x a, a ~ b) =>
         Lens.Labels.HasLens f AuthEnableRequest AuthEnableRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Data.Default.Class.Default AuthEnableRequest where
        def = AuthEnableRequest{_AuthEnableRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthEnableRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthEnableRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthEnableRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthEnableRequest'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthEnableResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthEnableResponse (Prelude.Maybe ResponseHeader)@
 -}
data AuthEnableResponse = AuthEnableResponse{_AuthEnableResponse'header
                                             :: !(Prelude.Maybe ResponseHeader),
                                             _AuthEnableResponse'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthEnableResponse x a, a ~ b) =>
         Lens.Labels.HasLens f AuthEnableResponse AuthEnableResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthEnableResponse "header" (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthEnableResponse'header
                 (\ x__ y__ -> x__{_AuthEnableResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthEnableResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthEnableResponse'header
                 (\ x__ y__ -> x__{_AuthEnableResponse'header = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthEnableResponse where
        def
          = AuthEnableResponse{_AuthEnableResponse'header = Prelude.Nothing,
                               _AuthEnableResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthEnableResponse where
        messageName _ = Data.Text.pack "etcdserverpb.AuthEnableResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthEnableResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthEnableResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthEnableResponse'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.name' @:: Lens' AuthRoleAddRequest Data.Text.Text@
 -}
data AuthRoleAddRequest = AuthRoleAddRequest{_AuthRoleAddRequest'name
                                             :: !Data.Text.Text,
                                             _AuthRoleAddRequest'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthRoleAddRequest x a, a ~ b) =>
         Lens.Labels.HasLens f AuthRoleAddRequest AuthRoleAddRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleAddRequest "name" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleAddRequest'name
                 (\ x__ y__ -> x__{_AuthRoleAddRequest'name = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthRoleAddRequest where
        def
          = AuthRoleAddRequest{_AuthRoleAddRequest'name =
                                 Data.ProtoLens.fieldDefault,
                               _AuthRoleAddRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthRoleAddRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthRoleAddRequest"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleAddRequest
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, name__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthRoleAddRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthRoleAddRequest'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthRoleAddResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthRoleAddResponse (Prelude.Maybe ResponseHeader)@
 -}
data AuthRoleAddResponse = AuthRoleAddResponse{_AuthRoleAddResponse'header
                                               :: !(Prelude.Maybe ResponseHeader),
                                               _AuthRoleAddResponse'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthRoleAddResponse x a, a ~ b) =>
         Lens.Labels.HasLens f AuthRoleAddResponse AuthRoleAddResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleAddResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleAddResponse'header
                 (\ x__ y__ -> x__{_AuthRoleAddResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleAddResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleAddResponse'header
                 (\ x__ y__ -> x__{_AuthRoleAddResponse'header = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthRoleAddResponse where
        def
          = AuthRoleAddResponse{_AuthRoleAddResponse'header =
                                  Prelude.Nothing,
                                _AuthRoleAddResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthRoleAddResponse where
        messageName _ = Data.Text.pack "etcdserverpb.AuthRoleAddResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleAddResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthRoleAddResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthRoleAddResponse'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.role' @:: Lens' AuthRoleDeleteRequest Data.Text.Text@
 -}
data AuthRoleDeleteRequest = AuthRoleDeleteRequest{_AuthRoleDeleteRequest'role
                                                   :: !Data.Text.Text,
                                                   _AuthRoleDeleteRequest'_unknownFields ::
                                                   !Data.ProtoLens.FieldSet}
                               deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthRoleDeleteRequest x a,
          a ~ b) =>
         Lens.Labels.HasLens f AuthRoleDeleteRequest AuthRoleDeleteRequest x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleDeleteRequest "role"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleDeleteRequest'role
                 (\ x__ y__ -> x__{_AuthRoleDeleteRequest'role = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthRoleDeleteRequest where
        def
          = AuthRoleDeleteRequest{_AuthRoleDeleteRequest'role =
                                    Data.ProtoLens.fieldDefault,
                                  _AuthRoleDeleteRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthRoleDeleteRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthRoleDeleteRequest"
        fieldsByTag
          = let role__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "role"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "role")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleDeleteRequest
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, role__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthRoleDeleteRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthRoleDeleteRequest'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthRoleDeleteResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthRoleDeleteResponse (Prelude.Maybe ResponseHeader)@
 -}
data AuthRoleDeleteResponse = AuthRoleDeleteResponse{_AuthRoleDeleteResponse'header
                                                     :: !(Prelude.Maybe ResponseHeader),
                                                     _AuthRoleDeleteResponse'_unknownFields ::
                                                     !Data.ProtoLens.FieldSet}
                                deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthRoleDeleteResponse x a,
          a ~ b) =>
         Lens.Labels.HasLens f AuthRoleDeleteResponse AuthRoleDeleteResponse
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleDeleteResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleDeleteResponse'header
                 (\ x__ y__ -> x__{_AuthRoleDeleteResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleDeleteResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleDeleteResponse'header
                 (\ x__ y__ -> x__{_AuthRoleDeleteResponse'header = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthRoleDeleteResponse where
        def
          = AuthRoleDeleteResponse{_AuthRoleDeleteResponse'header =
                                     Prelude.Nothing,
                                   _AuthRoleDeleteResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthRoleDeleteResponse where
        messageName _
          = Data.Text.pack "etcdserverpb.AuthRoleDeleteResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleDeleteResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _AuthRoleDeleteResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthRoleDeleteResponse'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.role' @:: Lens' AuthRoleGetRequest Data.Text.Text@
 -}
data AuthRoleGetRequest = AuthRoleGetRequest{_AuthRoleGetRequest'role
                                             :: !Data.Text.Text,
                                             _AuthRoleGetRequest'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthRoleGetRequest x a, a ~ b) =>
         Lens.Labels.HasLens f AuthRoleGetRequest AuthRoleGetRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleGetRequest "role" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleGetRequest'role
                 (\ x__ y__ -> x__{_AuthRoleGetRequest'role = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthRoleGetRequest where
        def
          = AuthRoleGetRequest{_AuthRoleGetRequest'role =
                                 Data.ProtoLens.fieldDefault,
                               _AuthRoleGetRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthRoleGetRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthRoleGetRequest"
        fieldsByTag
          = let role__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "role"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "role")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleGetRequest
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, role__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthRoleGetRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthRoleGetRequest'_unknownFields = y__})
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
                             deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthRoleGetResponse x a, a ~ b) =>
         Lens.Labels.HasLens f AuthRoleGetResponse AuthRoleGetResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleGetResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleGetResponse'header
                 (\ x__ y__ -> x__{_AuthRoleGetResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleGetResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleGetResponse'header
                 (\ x__ y__ -> x__{_AuthRoleGetResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleGetResponse "perm"
           ([Proto.Etcd.Auth.Authpb.Auth.Permission])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleGetResponse'perm
                 (\ x__ y__ -> x__{_AuthRoleGetResponse'perm = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthRoleGetResponse where
        def
          = AuthRoleGetResponse{_AuthRoleGetResponse'header =
                                  Prelude.Nothing,
                                _AuthRoleGetResponse'perm = [],
                                _AuthRoleGetResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthRoleGetResponse where
        messageName _ = Data.Text.pack "etcdserverpb.AuthRoleGetResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleGetResponse
                perm__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "perm"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Etcd.Auth.Authpb.Auth.Permission)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "perm")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleGetResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, perm__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthRoleGetResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthRoleGetResponse'_unknownFields = y__})
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
                                        deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthRoleGrantPermissionRequest x
            a,
          a ~ b) =>
         Lens.Labels.HasLens f AuthRoleGrantPermissionRequest
           AuthRoleGrantPermissionRequest
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleGrantPermissionRequest "name"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleGrantPermissionRequest'name
                 (\ x__ y__ -> x__{_AuthRoleGrantPermissionRequest'name = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleGrantPermissionRequest "perm"
           (Proto.Etcd.Auth.Authpb.Auth.Permission)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleGrantPermissionRequest'perm
                 (\ x__ y__ -> x__{_AuthRoleGrantPermissionRequest'perm = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleGrantPermissionRequest "maybe'perm"
           (Prelude.Maybe Proto.Etcd.Auth.Authpb.Auth.Permission)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleGrantPermissionRequest'perm
                 (\ x__ y__ -> x__{_AuthRoleGrantPermissionRequest'perm = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthRoleGrantPermissionRequest
         where
        def
          = AuthRoleGrantPermissionRequest{_AuthRoleGrantPermissionRequest'name
                                             = Data.ProtoLens.fieldDefault,
                                           _AuthRoleGrantPermissionRequest'perm = Prelude.Nothing,
                                           _AuthRoleGrantPermissionRequest'_unknownFields = ([])}
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
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleGrantPermissionRequest
                perm__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "perm"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Etcd.Auth.Authpb.Auth.Permission)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
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
                                         deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthRoleGrantPermissionResponse x
            a,
          a ~ b) =>
         Lens.Labels.HasLens f AuthRoleGrantPermissionResponse
           AuthRoleGrantPermissionResponse
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleGrantPermissionResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _AuthRoleGrantPermissionResponse'header
                 (\ x__ y__ -> x__{_AuthRoleGrantPermissionResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleGrantPermissionResponse
           "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _AuthRoleGrantPermissionResponse'header
                 (\ x__ y__ -> x__{_AuthRoleGrantPermissionResponse'header = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthRoleGrantPermissionResponse
         where
        def
          = AuthRoleGrantPermissionResponse{_AuthRoleGrantPermissionResponse'header
                                              = Prelude.Nothing,
                                            _AuthRoleGrantPermissionResponse'_unknownFields = ([])}
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
                         (Lens.Labels.lensOf
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
{- | Fields :

 -}
data AuthRoleListRequest = AuthRoleListRequest{_AuthRoleListRequest'_unknownFields
                                               :: !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthRoleListRequest x a, a ~ b) =>
         Lens.Labels.HasLens f AuthRoleListRequest AuthRoleListRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Data.Default.Class.Default AuthRoleListRequest where
        def
          = AuthRoleListRequest{_AuthRoleListRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthRoleListRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthRoleListRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthRoleListRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthRoleListRequest'_unknownFields = y__})
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
                              deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthRoleListResponse x a,
          a ~ b) =>
         Lens.Labels.HasLens f AuthRoleListResponse AuthRoleListResponse x a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleListResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleListResponse'header
                 (\ x__ y__ -> x__{_AuthRoleListResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleListResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleListResponse'header
                 (\ x__ y__ -> x__{_AuthRoleListResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleListResponse "roles"
           ([Data.Text.Text])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleListResponse'roles
                 (\ x__ y__ -> x__{_AuthRoleListResponse'roles = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthRoleListResponse where
        def
          = AuthRoleListResponse{_AuthRoleListResponse'header =
                                   Prelude.Nothing,
                                 _AuthRoleListResponse'roles = [],
                                 _AuthRoleListResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthRoleListResponse where
        messageName _ = Data.Text.pack "etcdserverpb.AuthRoleListResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleListResponse
                roles__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "roles"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "roles")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleListResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, roles__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthRoleListResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthRoleListResponse'_unknownFields = y__})
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
                                         deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthRoleRevokePermissionRequest x
            a,
          a ~ b) =>
         Lens.Labels.HasLens f AuthRoleRevokePermissionRequest
           AuthRoleRevokePermissionRequest
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleRevokePermissionRequest "role"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleRevokePermissionRequest'role
                 (\ x__ y__ -> x__{_AuthRoleRevokePermissionRequest'role = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleRevokePermissionRequest "key"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthRoleRevokePermissionRequest'key
                 (\ x__ y__ -> x__{_AuthRoleRevokePermissionRequest'key = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleRevokePermissionRequest "rangeEnd"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _AuthRoleRevokePermissionRequest'rangeEnd
                 (\ x__ y__ ->
                    x__{_AuthRoleRevokePermissionRequest'rangeEnd = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthRoleRevokePermissionRequest
         where
        def
          = AuthRoleRevokePermissionRequest{_AuthRoleRevokePermissionRequest'role
                                              = Data.ProtoLens.fieldDefault,
                                            _AuthRoleRevokePermissionRequest'key =
                                              Data.ProtoLens.fieldDefault,
                                            _AuthRoleRevokePermissionRequest'rangeEnd =
                                              Data.ProtoLens.fieldDefault,
                                            _AuthRoleRevokePermissionRequest'_unknownFields = ([])}
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
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "role")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleRevokePermissionRequest
                key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor AuthRoleRevokePermissionRequest
                rangeEnd__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "range_end"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
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
                                          deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthRoleRevokePermissionResponse x
            a,
          a ~ b) =>
         Lens.Labels.HasLens f AuthRoleRevokePermissionResponse
           AuthRoleRevokePermissionResponse
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleRevokePermissionResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _AuthRoleRevokePermissionResponse'header
                 (\ x__ y__ -> x__{_AuthRoleRevokePermissionResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthRoleRevokePermissionResponse
           "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _AuthRoleRevokePermissionResponse'header
                 (\ x__ y__ -> x__{_AuthRoleRevokePermissionResponse'header = y__}))
              Prelude.id
instance Data.Default.Class.Default
           AuthRoleRevokePermissionResponse
         where
        def
          = AuthRoleRevokePermissionResponse{_AuthRoleRevokePermissionResponse'header
                                               = Prelude.Nothing,
                                             _AuthRoleRevokePermissionResponse'_unknownFields =
                                               ([])}
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
                         (Lens.Labels.lensOf
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
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.name' @:: Lens' AuthUserAddRequest Data.Text.Text@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.password' @:: Lens' AuthUserAddRequest Data.Text.Text@
 -}
data AuthUserAddRequest = AuthUserAddRequest{_AuthUserAddRequest'name
                                             :: !Data.Text.Text,
                                             _AuthUserAddRequest'password :: !Data.Text.Text,
                                             _AuthUserAddRequest'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthUserAddRequest x a, a ~ b) =>
         Lens.Labels.HasLens f AuthUserAddRequest AuthUserAddRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserAddRequest "name" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserAddRequest'name
                 (\ x__ y__ -> x__{_AuthUserAddRequest'name = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserAddRequest "password"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserAddRequest'password
                 (\ x__ y__ -> x__{_AuthUserAddRequest'password = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthUserAddRequest where
        def
          = AuthUserAddRequest{_AuthUserAddRequest'name =
                                 Data.ProtoLens.fieldDefault,
                               _AuthUserAddRequest'password = Data.ProtoLens.fieldDefault,
                               _AuthUserAddRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthUserAddRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthUserAddRequest"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserAddRequest
                password__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "password"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "password")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserAddRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, name__field_descriptor),
                 (Data.ProtoLens.Tag 2, password__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthUserAddRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthUserAddRequest'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthUserAddResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthUserAddResponse (Prelude.Maybe ResponseHeader)@
 -}
data AuthUserAddResponse = AuthUserAddResponse{_AuthUserAddResponse'header
                                               :: !(Prelude.Maybe ResponseHeader),
                                               _AuthUserAddResponse'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthUserAddResponse x a, a ~ b) =>
         Lens.Labels.HasLens f AuthUserAddResponse AuthUserAddResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserAddResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserAddResponse'header
                 (\ x__ y__ -> x__{_AuthUserAddResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserAddResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserAddResponse'header
                 (\ x__ y__ -> x__{_AuthUserAddResponse'header = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthUserAddResponse where
        def
          = AuthUserAddResponse{_AuthUserAddResponse'header =
                                  Prelude.Nothing,
                                _AuthUserAddResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthUserAddResponse where
        messageName _ = Data.Text.pack "etcdserverpb.AuthUserAddResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserAddResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthUserAddResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthUserAddResponse'_unknownFields = y__})
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
                                       deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthUserChangePasswordRequest x a,
          a ~ b) =>
         Lens.Labels.HasLens f AuthUserChangePasswordRequest
           AuthUserChangePasswordRequest
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserChangePasswordRequest "name"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserChangePasswordRequest'name
                 (\ x__ y__ -> x__{_AuthUserChangePasswordRequest'name = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserChangePasswordRequest "password"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens
                 _AuthUserChangePasswordRequest'password
                 (\ x__ y__ -> x__{_AuthUserChangePasswordRequest'password = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthUserChangePasswordRequest
         where
        def
          = AuthUserChangePasswordRequest{_AuthUserChangePasswordRequest'name
                                            = Data.ProtoLens.fieldDefault,
                                          _AuthUserChangePasswordRequest'password =
                                            Data.ProtoLens.fieldDefault,
                                          _AuthUserChangePasswordRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthUserChangePasswordRequest where
        messageName _
          = Data.Text.pack "etcdserverpb.AuthUserChangePasswordRequest"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserChangePasswordRequest
                password__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "password"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
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
                                        deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthUserChangePasswordResponse x
            a,
          a ~ b) =>
         Lens.Labels.HasLens f AuthUserChangePasswordResponse
           AuthUserChangePasswordResponse
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserChangePasswordResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserChangePasswordResponse'header
                 (\ x__ y__ -> x__{_AuthUserChangePasswordResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserChangePasswordResponse
           "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserChangePasswordResponse'header
                 (\ x__ y__ -> x__{_AuthUserChangePasswordResponse'header = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthUserChangePasswordResponse
         where
        def
          = AuthUserChangePasswordResponse{_AuthUserChangePasswordResponse'header
                                             = Prelude.Nothing,
                                           _AuthUserChangePasswordResponse'_unknownFields = ([])}
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
                         (Lens.Labels.lensOf
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
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.name' @:: Lens' AuthUserDeleteRequest Data.Text.Text@
 -}
data AuthUserDeleteRequest = AuthUserDeleteRequest{_AuthUserDeleteRequest'name
                                                   :: !Data.Text.Text,
                                                   _AuthUserDeleteRequest'_unknownFields ::
                                                   !Data.ProtoLens.FieldSet}
                               deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthUserDeleteRequest x a,
          a ~ b) =>
         Lens.Labels.HasLens f AuthUserDeleteRequest AuthUserDeleteRequest x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserDeleteRequest "name"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserDeleteRequest'name
                 (\ x__ y__ -> x__{_AuthUserDeleteRequest'name = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthUserDeleteRequest where
        def
          = AuthUserDeleteRequest{_AuthUserDeleteRequest'name =
                                    Data.ProtoLens.fieldDefault,
                                  _AuthUserDeleteRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthUserDeleteRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthUserDeleteRequest"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserDeleteRequest
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, name__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthUserDeleteRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthUserDeleteRequest'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthUserDeleteResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthUserDeleteResponse (Prelude.Maybe ResponseHeader)@
 -}
data AuthUserDeleteResponse = AuthUserDeleteResponse{_AuthUserDeleteResponse'header
                                                     :: !(Prelude.Maybe ResponseHeader),
                                                     _AuthUserDeleteResponse'_unknownFields ::
                                                     !Data.ProtoLens.FieldSet}
                                deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthUserDeleteResponse x a,
          a ~ b) =>
         Lens.Labels.HasLens f AuthUserDeleteResponse AuthUserDeleteResponse
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserDeleteResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserDeleteResponse'header
                 (\ x__ y__ -> x__{_AuthUserDeleteResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserDeleteResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserDeleteResponse'header
                 (\ x__ y__ -> x__{_AuthUserDeleteResponse'header = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthUserDeleteResponse where
        def
          = AuthUserDeleteResponse{_AuthUserDeleteResponse'header =
                                     Prelude.Nothing,
                                   _AuthUserDeleteResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthUserDeleteResponse where
        messageName _
          = Data.Text.pack "etcdserverpb.AuthUserDeleteResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserDeleteResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _AuthUserDeleteResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthUserDeleteResponse'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.name' @:: Lens' AuthUserGetRequest Data.Text.Text@
 -}
data AuthUserGetRequest = AuthUserGetRequest{_AuthUserGetRequest'name
                                             :: !Data.Text.Text,
                                             _AuthUserGetRequest'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthUserGetRequest x a, a ~ b) =>
         Lens.Labels.HasLens f AuthUserGetRequest AuthUserGetRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserGetRequest "name" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserGetRequest'name
                 (\ x__ y__ -> x__{_AuthUserGetRequest'name = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthUserGetRequest where
        def
          = AuthUserGetRequest{_AuthUserGetRequest'name =
                                 Data.ProtoLens.fieldDefault,
                               _AuthUserGetRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthUserGetRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthUserGetRequest"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserGetRequest
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, name__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthUserGetRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthUserGetRequest'_unknownFields = y__})
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
                             deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthUserGetResponse x a, a ~ b) =>
         Lens.Labels.HasLens f AuthUserGetResponse AuthUserGetResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserGetResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserGetResponse'header
                 (\ x__ y__ -> x__{_AuthUserGetResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserGetResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserGetResponse'header
                 (\ x__ y__ -> x__{_AuthUserGetResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserGetResponse "roles"
           ([Data.Text.Text])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserGetResponse'roles
                 (\ x__ y__ -> x__{_AuthUserGetResponse'roles = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthUserGetResponse where
        def
          = AuthUserGetResponse{_AuthUserGetResponse'header =
                                  Prelude.Nothing,
                                _AuthUserGetResponse'roles = [],
                                _AuthUserGetResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthUserGetResponse where
        messageName _ = Data.Text.pack "etcdserverpb.AuthUserGetResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserGetResponse
                roles__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "roles"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "roles")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserGetResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, roles__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthUserGetResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthUserGetResponse'_unknownFields = y__})
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
                                  deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthUserGrantRoleRequest x a,
          a ~ b) =>
         Lens.Labels.HasLens f AuthUserGrantRoleRequest
           AuthUserGrantRoleRequest
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserGrantRoleRequest "user"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserGrantRoleRequest'user
                 (\ x__ y__ -> x__{_AuthUserGrantRoleRequest'user = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserGrantRoleRequest "role"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserGrantRoleRequest'role
                 (\ x__ y__ -> x__{_AuthUserGrantRoleRequest'role = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthUserGrantRoleRequest where
        def
          = AuthUserGrantRoleRequest{_AuthUserGrantRoleRequest'user =
                                       Data.ProtoLens.fieldDefault,
                                     _AuthUserGrantRoleRequest'role = Data.ProtoLens.fieldDefault,
                                     _AuthUserGrantRoleRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthUserGrantRoleRequest where
        messageName _
          = Data.Text.pack "etcdserverpb.AuthUserGrantRoleRequest"
        fieldsByTag
          = let user__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "user"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "user")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserGrantRoleRequest
                role__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "role"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
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
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthUserGrantRoleResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthUserGrantRoleResponse (Prelude.Maybe ResponseHeader)@
 -}
data AuthUserGrantRoleResponse = AuthUserGrantRoleResponse{_AuthUserGrantRoleResponse'header
                                                           :: !(Prelude.Maybe ResponseHeader),
                                                           _AuthUserGrantRoleResponse'_unknownFields
                                                           :: !Data.ProtoLens.FieldSet}
                                   deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthUserGrantRoleResponse x a,
          a ~ b) =>
         Lens.Labels.HasLens f AuthUserGrantRoleResponse
           AuthUserGrantRoleResponse
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserGrantRoleResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserGrantRoleResponse'header
                 (\ x__ y__ -> x__{_AuthUserGrantRoleResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserGrantRoleResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserGrantRoleResponse'header
                 (\ x__ y__ -> x__{_AuthUserGrantRoleResponse'header = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthUserGrantRoleResponse where
        def
          = AuthUserGrantRoleResponse{_AuthUserGrantRoleResponse'header =
                                        Prelude.Nothing,
                                      _AuthUserGrantRoleResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthUserGrantRoleResponse where
        messageName _
          = Data.Text.pack "etcdserverpb.AuthUserGrantRoleResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserGrantRoleResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _AuthUserGrantRoleResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthUserGrantRoleResponse'_unknownFields = y__})
{- | Fields :

 -}
data AuthUserListRequest = AuthUserListRequest{_AuthUserListRequest'_unknownFields
                                               :: !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthUserListRequest x a, a ~ b) =>
         Lens.Labels.HasLens f AuthUserListRequest AuthUserListRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Data.Default.Class.Default AuthUserListRequest where
        def
          = AuthUserListRequest{_AuthUserListRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthUserListRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthUserListRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthUserListRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthUserListRequest'_unknownFields = y__})
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
                              deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthUserListResponse x a,
          a ~ b) =>
         Lens.Labels.HasLens f AuthUserListResponse AuthUserListResponse x a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserListResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserListResponse'header
                 (\ x__ y__ -> x__{_AuthUserListResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserListResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserListResponse'header
                 (\ x__ y__ -> x__{_AuthUserListResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserListResponse "users"
           ([Data.Text.Text])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserListResponse'users
                 (\ x__ y__ -> x__{_AuthUserListResponse'users = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthUserListResponse where
        def
          = AuthUserListResponse{_AuthUserListResponse'header =
                                   Prelude.Nothing,
                                 _AuthUserListResponse'users = [],
                                 _AuthUserListResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthUserListResponse where
        messageName _ = Data.Text.pack "etcdserverpb.AuthUserListResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserListResponse
                users__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "users"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "users")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserListResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, users__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthUserListResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthUserListResponse'_unknownFields = y__})
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
                                   deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthUserRevokeRoleRequest x a,
          a ~ b) =>
         Lens.Labels.HasLens f AuthUserRevokeRoleRequest
           AuthUserRevokeRoleRequest
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserRevokeRoleRequest "name"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserRevokeRoleRequest'name
                 (\ x__ y__ -> x__{_AuthUserRevokeRoleRequest'name = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserRevokeRoleRequest "role"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserRevokeRoleRequest'role
                 (\ x__ y__ -> x__{_AuthUserRevokeRoleRequest'role = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthUserRevokeRoleRequest where
        def
          = AuthUserRevokeRoleRequest{_AuthUserRevokeRoleRequest'name =
                                        Data.ProtoLens.fieldDefault,
                                      _AuthUserRevokeRoleRequest'role = Data.ProtoLens.fieldDefault,
                                      _AuthUserRevokeRoleRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthUserRevokeRoleRequest where
        messageName _
          = Data.Text.pack "etcdserverpb.AuthUserRevokeRoleRequest"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor AuthUserRevokeRoleRequest
                role__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "role"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
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
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' AuthUserRevokeRoleResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' AuthUserRevokeRoleResponse (Prelude.Maybe ResponseHeader)@
 -}
data AuthUserRevokeRoleResponse = AuthUserRevokeRoleResponse{_AuthUserRevokeRoleResponse'header
                                                             :: !(Prelude.Maybe ResponseHeader),
                                                             _AuthUserRevokeRoleResponse'_unknownFields
                                                             :: !Data.ProtoLens.FieldSet}
                                    deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthUserRevokeRoleResponse x a,
          a ~ b) =>
         Lens.Labels.HasLens f AuthUserRevokeRoleResponse
           AuthUserRevokeRoleResponse
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserRevokeRoleResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserRevokeRoleResponse'header
                 (\ x__ y__ -> x__{_AuthUserRevokeRoleResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthUserRevokeRoleResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthUserRevokeRoleResponse'header
                 (\ x__ y__ -> x__{_AuthUserRevokeRoleResponse'header = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthUserRevokeRoleResponse
         where
        def
          = AuthUserRevokeRoleResponse{_AuthUserRevokeRoleResponse'header =
                                         Prelude.Nothing,
                                       _AuthUserRevokeRoleResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthUserRevokeRoleResponse where
        messageName _
          = Data.Text.pack "etcdserverpb.AuthUserRevokeRoleResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
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
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.name' @:: Lens' AuthenticateRequest Data.Text.Text@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.password' @:: Lens' AuthenticateRequest Data.Text.Text@
 -}
data AuthenticateRequest = AuthenticateRequest{_AuthenticateRequest'name
                                               :: !Data.Text.Text,
                                               _AuthenticateRequest'password :: !Data.Text.Text,
                                               _AuthenticateRequest'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthenticateRequest x a, a ~ b) =>
         Lens.Labels.HasLens f AuthenticateRequest AuthenticateRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthenticateRequest "name" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthenticateRequest'name
                 (\ x__ y__ -> x__{_AuthenticateRequest'name = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthenticateRequest "password"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthenticateRequest'password
                 (\ x__ y__ -> x__{_AuthenticateRequest'password = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthenticateRequest where
        def
          = AuthenticateRequest{_AuthenticateRequest'name =
                                  Data.ProtoLens.fieldDefault,
                                _AuthenticateRequest'password = Data.ProtoLens.fieldDefault,
                                _AuthenticateRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthenticateRequest where
        messageName _ = Data.Text.pack "etcdserverpb.AuthenticateRequest"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor AuthenticateRequest
                password__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "password"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "password")))
                      :: Data.ProtoLens.FieldDescriptor AuthenticateRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, name__field_descriptor),
                 (Data.ProtoLens.Tag 2, password__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthenticateRequest'_unknownFields
              (\ x__ y__ -> x__{_AuthenticateRequest'_unknownFields = y__})
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
                              deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f AuthenticateResponse x a,
          a ~ b) =>
         Lens.Labels.HasLens f AuthenticateResponse AuthenticateResponse x a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthenticateResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthenticateResponse'header
                 (\ x__ y__ -> x__{_AuthenticateResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthenticateResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthenticateResponse'header
                 (\ x__ y__ -> x__{_AuthenticateResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f AuthenticateResponse "token"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _AuthenticateResponse'token
                 (\ x__ y__ -> x__{_AuthenticateResponse'token = y__}))
              Prelude.id
instance Data.Default.Class.Default AuthenticateResponse where
        def
          = AuthenticateResponse{_AuthenticateResponse'header =
                                   Prelude.Nothing,
                                 _AuthenticateResponse'token = Data.ProtoLens.fieldDefault,
                                 _AuthenticateResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message AuthenticateResponse where
        messageName _ = Data.Text.pack "etcdserverpb.AuthenticateResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor AuthenticateResponse
                token__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "token"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "token")))
                      :: Data.ProtoLens.FieldDescriptor AuthenticateResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, token__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AuthenticateResponse'_unknownFields
              (\ x__ y__ -> x__{_AuthenticateResponse'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.revision' @:: Lens' CompactionRequest Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.physical' @:: Lens' CompactionRequest Prelude.Bool@
 -}
data CompactionRequest = CompactionRequest{_CompactionRequest'revision
                                           :: !Data.Int.Int64,
                                           _CompactionRequest'physical :: !Prelude.Bool,
                                           _CompactionRequest'_unknownFields ::
                                           !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f CompactionRequest x a, a ~ b) =>
         Lens.Labels.HasLens f CompactionRequest CompactionRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f CompactionRequest "revision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CompactionRequest'revision
                 (\ x__ y__ -> x__{_CompactionRequest'revision = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f CompactionRequest "physical" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CompactionRequest'physical
                 (\ x__ y__ -> x__{_CompactionRequest'physical = y__}))
              Prelude.id
instance Data.Default.Class.Default CompactionRequest where
        def
          = CompactionRequest{_CompactionRequest'revision =
                                Data.ProtoLens.fieldDefault,
                              _CompactionRequest'physical = Data.ProtoLens.fieldDefault,
                              _CompactionRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message CompactionRequest where
        messageName _ = Data.Text.pack "etcdserverpb.CompactionRequest"
        fieldsByTag
          = let revision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "revision")))
                      :: Data.ProtoLens.FieldDescriptor CompactionRequest
                physical__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "physical"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "physical")))
                      :: Data.ProtoLens.FieldDescriptor CompactionRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, revision__field_descriptor),
                 (Data.ProtoLens.Tag 2, physical__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _CompactionRequest'_unknownFields
              (\ x__ y__ -> x__{_CompactionRequest'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' CompactionResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' CompactionResponse (Prelude.Maybe ResponseHeader)@
 -}
data CompactionResponse = CompactionResponse{_CompactionResponse'header
                                             :: !(Prelude.Maybe ResponseHeader),
                                             _CompactionResponse'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f CompactionResponse x a, a ~ b) =>
         Lens.Labels.HasLens f CompactionResponse CompactionResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f CompactionResponse "header" (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CompactionResponse'header
                 (\ x__ y__ -> x__{_CompactionResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f CompactionResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CompactionResponse'header
                 (\ x__ y__ -> x__{_CompactionResponse'header = y__}))
              Prelude.id
instance Data.Default.Class.Default CompactionResponse where
        def
          = CompactionResponse{_CompactionResponse'header = Prelude.Nothing,
                               _CompactionResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message CompactionResponse where
        messageName _ = Data.Text.pack "etcdserverpb.CompactionResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor CompactionResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _CompactionResponse'_unknownFields
              (\ x__ y__ -> x__{_CompactionResponse'_unknownFields = y__})
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
                 deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
data Compare'TargetUnion = Compare'Version !Data.Int.Int64
                         | Compare'CreateRevision !Data.Int.Int64
                         | Compare'ModRevision !Data.Int.Int64
                         | Compare'Value !Data.ByteString.ByteString
                         | Compare'Lease !Data.Int.Int64
                             deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f Compare x a, a ~ b) =>
         Lens.Labels.HasLens f Compare Compare x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f Compare "result" (Compare'CompareResult)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Compare'result
                 (\ x__ y__ -> x__{_Compare'result = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f Compare "target" (Compare'CompareTarget)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Compare'target
                 (\ x__ y__ -> x__{_Compare'target = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f Compare "key" (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Compare'key
                 (\ x__ y__ -> x__{_Compare'key = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f Compare "rangeEnd"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Compare'rangeEnd
                 (\ x__ y__ -> x__{_Compare'rangeEnd = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f Compare "maybe'targetUnion"
           (Prelude.Maybe Compare'TargetUnion)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Compare'targetUnion
                 (\ x__ y__ -> x__{_Compare'targetUnion = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f Compare "maybe'version"
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
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f Compare "version" (Data.Int.Int64)
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
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f Compare "maybe'createRevision"
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
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f Compare "createRevision" (Data.Int.Int64)
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
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f Compare "maybe'modRevision"
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
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f Compare "modRevision" (Data.Int.Int64)
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
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f Compare "maybe'value"
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
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f Compare "value" (Data.ByteString.ByteString)
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
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f Compare "maybe'lease"
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
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f Compare "lease" (Data.Int.Int64)
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
instance Data.Default.Class.Default Compare where
        def
          = Compare{_Compare'result = Data.Default.Class.def,
                    _Compare'target = Data.Default.Class.def,
                    _Compare'key = Data.ProtoLens.fieldDefault,
                    _Compare'rangeEnd = Data.ProtoLens.fieldDefault,
                    _Compare'targetUnion = Prelude.Nothing,
                    _Compare'_unknownFields = ([])}
instance Data.ProtoLens.Message Compare where
        messageName _ = Data.Text.pack "etcdserverpb.Compare"
        fieldsByTag
          = let result__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "result"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor Compare'CompareResult)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "result")))
                      :: Data.ProtoLens.FieldDescriptor Compare
                target__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "target"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor Compare'CompareTarget)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "target")))
                      :: Data.ProtoLens.FieldDescriptor Compare
                key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor Compare
                rangeEnd__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "range_end"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "rangeEnd")))
                      :: Data.ProtoLens.FieldDescriptor Compare
                version__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "version"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'version")))
                      :: Data.ProtoLens.FieldDescriptor Compare
                createRevision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "create_revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'createRevision")))
                      :: Data.ProtoLens.FieldDescriptor Compare
                modRevision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "mod_revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'modRevision")))
                      :: Data.ProtoLens.FieldDescriptor Compare
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'value")))
                      :: Data.ProtoLens.FieldDescriptor Compare
                lease__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "lease"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
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
instance Data.Default.Class.Default Compare'CompareResult where
        def = Compare'EQUAL
instance Data.ProtoLens.FieldDefault Compare'CompareResult where
        fieldDefault = Compare'EQUAL
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
instance Data.Default.Class.Default Compare'CompareTarget where
        def = Compare'VERSION
instance Data.ProtoLens.FieldDefault Compare'CompareTarget where
        fieldDefault = Compare'VERSION
{- | Fields :

 -}
data DefragmentRequest = DefragmentRequest{_DefragmentRequest'_unknownFields
                                           :: !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f DefragmentRequest x a, a ~ b) =>
         Lens.Labels.HasLens f DefragmentRequest DefragmentRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Data.Default.Class.Default DefragmentRequest where
        def = DefragmentRequest{_DefragmentRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message DefragmentRequest where
        messageName _ = Data.Text.pack "etcdserverpb.DefragmentRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _DefragmentRequest'_unknownFields
              (\ x__ y__ -> x__{_DefragmentRequest'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' DefragmentResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' DefragmentResponse (Prelude.Maybe ResponseHeader)@
 -}
data DefragmentResponse = DefragmentResponse{_DefragmentResponse'header
                                             :: !(Prelude.Maybe ResponseHeader),
                                             _DefragmentResponse'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f DefragmentResponse x a, a ~ b) =>
         Lens.Labels.HasLens f DefragmentResponse DefragmentResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f DefragmentResponse "header" (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DefragmentResponse'header
                 (\ x__ y__ -> x__{_DefragmentResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f DefragmentResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DefragmentResponse'header
                 (\ x__ y__ -> x__{_DefragmentResponse'header = y__}))
              Prelude.id
instance Data.Default.Class.Default DefragmentResponse where
        def
          = DefragmentResponse{_DefragmentResponse'header = Prelude.Nothing,
                               _DefragmentResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message DefragmentResponse where
        messageName _ = Data.Text.pack "etcdserverpb.DefragmentResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor DefragmentResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _DefragmentResponse'_unknownFields
              (\ x__ y__ -> x__{_DefragmentResponse'_unknownFields = y__})
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
                            deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f DeleteRangeRequest x a, a ~ b) =>
         Lens.Labels.HasLens f DeleteRangeRequest DeleteRangeRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f DeleteRangeRequest "key"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DeleteRangeRequest'key
                 (\ x__ y__ -> x__{_DeleteRangeRequest'key = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f DeleteRangeRequest "rangeEnd"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DeleteRangeRequest'rangeEnd
                 (\ x__ y__ -> x__{_DeleteRangeRequest'rangeEnd = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f DeleteRangeRequest "prevKv" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DeleteRangeRequest'prevKv
                 (\ x__ y__ -> x__{_DeleteRangeRequest'prevKv = y__}))
              Prelude.id
instance Data.Default.Class.Default DeleteRangeRequest where
        def
          = DeleteRangeRequest{_DeleteRangeRequest'key =
                                 Data.ProtoLens.fieldDefault,
                               _DeleteRangeRequest'rangeEnd = Data.ProtoLens.fieldDefault,
                               _DeleteRangeRequest'prevKv = Data.ProtoLens.fieldDefault,
                               _DeleteRangeRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message DeleteRangeRequest where
        messageName _ = Data.Text.pack "etcdserverpb.DeleteRangeRequest"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor DeleteRangeRequest
                rangeEnd__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "range_end"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "rangeEnd")))
                      :: Data.ProtoLens.FieldDescriptor DeleteRangeRequest
                prevKv__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "prev_kv"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
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
                             deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f DeleteRangeResponse x a, a ~ b) =>
         Lens.Labels.HasLens f DeleteRangeResponse DeleteRangeResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f DeleteRangeResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DeleteRangeResponse'header
                 (\ x__ y__ -> x__{_DeleteRangeResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f DeleteRangeResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DeleteRangeResponse'header
                 (\ x__ y__ -> x__{_DeleteRangeResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f DeleteRangeResponse "deleted"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DeleteRangeResponse'deleted
                 (\ x__ y__ -> x__{_DeleteRangeResponse'deleted = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f DeleteRangeResponse "prevKvs"
           ([Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _DeleteRangeResponse'prevKvs
                 (\ x__ y__ -> x__{_DeleteRangeResponse'prevKvs = y__}))
              Prelude.id
instance Data.Default.Class.Default DeleteRangeResponse where
        def
          = DeleteRangeResponse{_DeleteRangeResponse'header =
                                  Prelude.Nothing,
                                _DeleteRangeResponse'deleted = Data.ProtoLens.fieldDefault,
                                _DeleteRangeResponse'prevKvs = [],
                                _DeleteRangeResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message DeleteRangeResponse where
        messageName _ = Data.Text.pack "etcdserverpb.DeleteRangeResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor DeleteRangeResponse
                deleted__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "deleted"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "deleted")))
                      :: Data.ProtoLens.FieldDescriptor DeleteRangeResponse
                prevKvs__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "prev_kvs"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
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
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.revision' @:: Lens' HashKVRequest Data.Int.Int64@
 -}
data HashKVRequest = HashKVRequest{_HashKVRequest'revision ::
                                   !Data.Int.Int64,
                                   _HashKVRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
                       deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f HashKVRequest x a, a ~ b) =>
         Lens.Labels.HasLens f HashKVRequest HashKVRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HashKVRequest "revision" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HashKVRequest'revision
                 (\ x__ y__ -> x__{_HashKVRequest'revision = y__}))
              Prelude.id
instance Data.Default.Class.Default HashKVRequest where
        def
          = HashKVRequest{_HashKVRequest'revision =
                            Data.ProtoLens.fieldDefault,
                          _HashKVRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message HashKVRequest where
        messageName _ = Data.Text.pack "etcdserverpb.HashKVRequest"
        fieldsByTag
          = let revision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "revision")))
                      :: Data.ProtoLens.FieldDescriptor HashKVRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, revision__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _HashKVRequest'_unknownFields
              (\ x__ y__ -> x__{_HashKVRequest'_unknownFields = y__})
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
                        deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f HashKVResponse x a, a ~ b) =>
         Lens.Labels.HasLens f HashKVResponse HashKVResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HashKVResponse "header" (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HashKVResponse'header
                 (\ x__ y__ -> x__{_HashKVResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HashKVResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HashKVResponse'header
                 (\ x__ y__ -> x__{_HashKVResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HashKVResponse "hash" (Data.Word.Word32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HashKVResponse'hash
                 (\ x__ y__ -> x__{_HashKVResponse'hash = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HashKVResponse "compactRevision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HashKVResponse'compactRevision
                 (\ x__ y__ -> x__{_HashKVResponse'compactRevision = y__}))
              Prelude.id
instance Data.Default.Class.Default HashKVResponse where
        def
          = HashKVResponse{_HashKVResponse'header = Prelude.Nothing,
                           _HashKVResponse'hash = Data.ProtoLens.fieldDefault,
                           _HashKVResponse'compactRevision = Data.ProtoLens.fieldDefault,
                           _HashKVResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message HashKVResponse where
        messageName _ = Data.Text.pack "etcdserverpb.HashKVResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor HashKVResponse
                hash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "hash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "hash")))
                      :: Data.ProtoLens.FieldDescriptor HashKVResponse
                compactRevision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "compact_revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
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
{- | Fields :

 -}
data HashRequest = HashRequest{_HashRequest'_unknownFields ::
                               !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f HashRequest x a, a ~ b) =>
         Lens.Labels.HasLens f HashRequest HashRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Data.Default.Class.Default HashRequest where
        def = HashRequest{_HashRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message HashRequest where
        messageName _ = Data.Text.pack "etcdserverpb.HashRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _HashRequest'_unknownFields
              (\ x__ y__ -> x__{_HashRequest'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' HashResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' HashResponse (Prelude.Maybe ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.hash' @:: Lens' HashResponse Data.Word.Word32@
 -}
data HashResponse = HashResponse{_HashResponse'header ::
                                 !(Prelude.Maybe ResponseHeader),
                                 _HashResponse'hash :: !Data.Word.Word32,
                                 _HashResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
                      deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f HashResponse x a, a ~ b) =>
         Lens.Labels.HasLens f HashResponse HashResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HashResponse "header" (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HashResponse'header
                 (\ x__ y__ -> x__{_HashResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HashResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HashResponse'header
                 (\ x__ y__ -> x__{_HashResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f HashResponse "hash" (Data.Word.Word32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _HashResponse'hash
                 (\ x__ y__ -> x__{_HashResponse'hash = y__}))
              Prelude.id
instance Data.Default.Class.Default HashResponse where
        def
          = HashResponse{_HashResponse'header = Prelude.Nothing,
                         _HashResponse'hash = Data.ProtoLens.fieldDefault,
                         _HashResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message HashResponse where
        messageName _ = Data.Text.pack "etcdserverpb.HashResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor HashResponse
                hash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "hash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "hash")))
                      :: Data.ProtoLens.FieldDescriptor HashResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, hash__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _HashResponse'_unknownFields
              (\ x__ y__ -> x__{_HashResponse'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.id' @:: Lens' LeaseCheckpoint Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.remainingTTL' @:: Lens' LeaseCheckpoint Data.Int.Int64@
 -}
data LeaseCheckpoint = LeaseCheckpoint{_LeaseCheckpoint'id ::
                                       !Data.Int.Int64,
                                       _LeaseCheckpoint'remainingTTL :: !Data.Int.Int64,
                                       _LeaseCheckpoint'_unknownFields :: !Data.ProtoLens.FieldSet}
                         deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f LeaseCheckpoint x a, a ~ b) =>
         Lens.Labels.HasLens f LeaseCheckpoint LeaseCheckpoint x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseCheckpoint "id" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseCheckpoint'id
                 (\ x__ y__ -> x__{_LeaseCheckpoint'id = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseCheckpoint "remainingTTL"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseCheckpoint'remainingTTL
                 (\ x__ y__ -> x__{_LeaseCheckpoint'remainingTTL = y__}))
              Prelude.id
instance Data.Default.Class.Default LeaseCheckpoint where
        def
          = LeaseCheckpoint{_LeaseCheckpoint'id =
                              Data.ProtoLens.fieldDefault,
                            _LeaseCheckpoint'remainingTTL = Data.ProtoLens.fieldDefault,
                            _LeaseCheckpoint'_unknownFields = ([])}
instance Data.ProtoLens.Message LeaseCheckpoint where
        messageName _ = Data.Text.pack "etcdserverpb.LeaseCheckpoint"
        fieldsByTag
          = let id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor LeaseCheckpoint
                remainingTTL__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "remaining_TTL"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "remainingTTL")))
                      :: Data.ProtoLens.FieldDescriptor LeaseCheckpoint
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, id__field_descriptor),
                 (Data.ProtoLens.Tag 2, remainingTTL__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LeaseCheckpoint'_unknownFields
              (\ x__ y__ -> x__{_LeaseCheckpoint'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.checkpoints' @:: Lens' LeaseCheckpointRequest [LeaseCheckpoint]@
 -}
data LeaseCheckpointRequest = LeaseCheckpointRequest{_LeaseCheckpointRequest'checkpoints
                                                     :: ![LeaseCheckpoint],
                                                     _LeaseCheckpointRequest'_unknownFields ::
                                                     !Data.ProtoLens.FieldSet}
                                deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f LeaseCheckpointRequest x a,
          a ~ b) =>
         Lens.Labels.HasLens f LeaseCheckpointRequest LeaseCheckpointRequest
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseCheckpointRequest "checkpoints"
           ([LeaseCheckpoint])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseCheckpointRequest'checkpoints
                 (\ x__ y__ -> x__{_LeaseCheckpointRequest'checkpoints = y__}))
              Prelude.id
instance Data.Default.Class.Default LeaseCheckpointRequest where
        def
          = LeaseCheckpointRequest{_LeaseCheckpointRequest'checkpoints = [],
                                   _LeaseCheckpointRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message LeaseCheckpointRequest where
        messageName _
          = Data.Text.pack "etcdserverpb.LeaseCheckpointRequest"
        fieldsByTag
          = let checkpoints__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "checkpoints"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor LeaseCheckpoint)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "checkpoints")))
                      :: Data.ProtoLens.FieldDescriptor LeaseCheckpointRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, checkpoints__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _LeaseCheckpointRequest'_unknownFields
              (\ x__ y__ -> x__{_LeaseCheckpointRequest'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' LeaseCheckpointResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' LeaseCheckpointResponse (Prelude.Maybe ResponseHeader)@
 -}
data LeaseCheckpointResponse = LeaseCheckpointResponse{_LeaseCheckpointResponse'header
                                                       :: !(Prelude.Maybe ResponseHeader),
                                                       _LeaseCheckpointResponse'_unknownFields ::
                                                       !Data.ProtoLens.FieldSet}
                                 deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f LeaseCheckpointResponse x a,
          a ~ b) =>
         Lens.Labels.HasLens f LeaseCheckpointResponse
           LeaseCheckpointResponse
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseCheckpointResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseCheckpointResponse'header
                 (\ x__ y__ -> x__{_LeaseCheckpointResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseCheckpointResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseCheckpointResponse'header
                 (\ x__ y__ -> x__{_LeaseCheckpointResponse'header = y__}))
              Prelude.id
instance Data.Default.Class.Default LeaseCheckpointResponse where
        def
          = LeaseCheckpointResponse{_LeaseCheckpointResponse'header =
                                      Prelude.Nothing,
                                    _LeaseCheckpointResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message LeaseCheckpointResponse where
        messageName _
          = Data.Text.pack "etcdserverpb.LeaseCheckpointResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor LeaseCheckpointResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _LeaseCheckpointResponse'_unknownFields
              (\ x__ y__ -> x__{_LeaseCheckpointResponse'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.ttl' @:: Lens' LeaseGrantRequest Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.id' @:: Lens' LeaseGrantRequest Data.Int.Int64@
 -}
data LeaseGrantRequest = LeaseGrantRequest{_LeaseGrantRequest'ttl
                                           :: !Data.Int.Int64,
                                           _LeaseGrantRequest'id :: !Data.Int.Int64,
                                           _LeaseGrantRequest'_unknownFields ::
                                           !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f LeaseGrantRequest x a, a ~ b) =>
         Lens.Labels.HasLens f LeaseGrantRequest LeaseGrantRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseGrantRequest "ttl" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseGrantRequest'ttl
                 (\ x__ y__ -> x__{_LeaseGrantRequest'ttl = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseGrantRequest "id" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseGrantRequest'id
                 (\ x__ y__ -> x__{_LeaseGrantRequest'id = y__}))
              Prelude.id
instance Data.Default.Class.Default LeaseGrantRequest where
        def
          = LeaseGrantRequest{_LeaseGrantRequest'ttl =
                                Data.ProtoLens.fieldDefault,
                              _LeaseGrantRequest'id = Data.ProtoLens.fieldDefault,
                              _LeaseGrantRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message LeaseGrantRequest where
        messageName _ = Data.Text.pack "etcdserverpb.LeaseGrantRequest"
        fieldsByTag
          = let ttl__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "TTL"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "ttl")))
                      :: Data.ProtoLens.FieldDescriptor LeaseGrantRequest
                id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor LeaseGrantRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, ttl__field_descriptor),
                 (Data.ProtoLens.Tag 2, id__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LeaseGrantRequest'_unknownFields
              (\ x__ y__ -> x__{_LeaseGrantRequest'_unknownFields = y__})
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
                            deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f LeaseGrantResponse x a, a ~ b) =>
         Lens.Labels.HasLens f LeaseGrantResponse LeaseGrantResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseGrantResponse "header" (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseGrantResponse'header
                 (\ x__ y__ -> x__{_LeaseGrantResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseGrantResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseGrantResponse'header
                 (\ x__ y__ -> x__{_LeaseGrantResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseGrantResponse "id" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseGrantResponse'id
                 (\ x__ y__ -> x__{_LeaseGrantResponse'id = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseGrantResponse "ttl" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseGrantResponse'ttl
                 (\ x__ y__ -> x__{_LeaseGrantResponse'ttl = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseGrantResponse "error" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseGrantResponse'error
                 (\ x__ y__ -> x__{_LeaseGrantResponse'error = y__}))
              Prelude.id
instance Data.Default.Class.Default LeaseGrantResponse where
        def
          = LeaseGrantResponse{_LeaseGrantResponse'header = Prelude.Nothing,
                               _LeaseGrantResponse'id = Data.ProtoLens.fieldDefault,
                               _LeaseGrantResponse'ttl = Data.ProtoLens.fieldDefault,
                               _LeaseGrantResponse'error = Data.ProtoLens.fieldDefault,
                               _LeaseGrantResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message LeaseGrantResponse where
        messageName _ = Data.Text.pack "etcdserverpb.LeaseGrantResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor LeaseGrantResponse
                id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor LeaseGrantResponse
                ttl__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "TTL"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "ttl")))
                      :: Data.ProtoLens.FieldDescriptor LeaseGrantResponse
                error__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "error"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
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
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.id' @:: Lens' LeaseKeepAliveRequest Data.Int.Int64@
 -}
data LeaseKeepAliveRequest = LeaseKeepAliveRequest{_LeaseKeepAliveRequest'id
                                                   :: !Data.Int.Int64,
                                                   _LeaseKeepAliveRequest'_unknownFields ::
                                                   !Data.ProtoLens.FieldSet}
                               deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f LeaseKeepAliveRequest x a,
          a ~ b) =>
         Lens.Labels.HasLens f LeaseKeepAliveRequest LeaseKeepAliveRequest x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseKeepAliveRequest "id" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseKeepAliveRequest'id
                 (\ x__ y__ -> x__{_LeaseKeepAliveRequest'id = y__}))
              Prelude.id
instance Data.Default.Class.Default LeaseKeepAliveRequest where
        def
          = LeaseKeepAliveRequest{_LeaseKeepAliveRequest'id =
                                    Data.ProtoLens.fieldDefault,
                                  _LeaseKeepAliveRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message LeaseKeepAliveRequest where
        messageName _ = Data.Text.pack "etcdserverpb.LeaseKeepAliveRequest"
        fieldsByTag
          = let id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor LeaseKeepAliveRequest
              in Data.Map.fromList [(Data.ProtoLens.Tag 1, id__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LeaseKeepAliveRequest'_unknownFields
              (\ x__ y__ -> x__{_LeaseKeepAliveRequest'_unknownFields = y__})
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
                                deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f LeaseKeepAliveResponse x a,
          a ~ b) =>
         Lens.Labels.HasLens f LeaseKeepAliveResponse LeaseKeepAliveResponse
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseKeepAliveResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseKeepAliveResponse'header
                 (\ x__ y__ -> x__{_LeaseKeepAliveResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseKeepAliveResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseKeepAliveResponse'header
                 (\ x__ y__ -> x__{_LeaseKeepAliveResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseKeepAliveResponse "id" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseKeepAliveResponse'id
                 (\ x__ y__ -> x__{_LeaseKeepAliveResponse'id = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseKeepAliveResponse "ttl"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseKeepAliveResponse'ttl
                 (\ x__ y__ -> x__{_LeaseKeepAliveResponse'ttl = y__}))
              Prelude.id
instance Data.Default.Class.Default LeaseKeepAliveResponse where
        def
          = LeaseKeepAliveResponse{_LeaseKeepAliveResponse'header =
                                     Prelude.Nothing,
                                   _LeaseKeepAliveResponse'id = Data.ProtoLens.fieldDefault,
                                   _LeaseKeepAliveResponse'ttl = Data.ProtoLens.fieldDefault,
                                   _LeaseKeepAliveResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message LeaseKeepAliveResponse where
        messageName _
          = Data.Text.pack "etcdserverpb.LeaseKeepAliveResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor LeaseKeepAliveResponse
                id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor LeaseKeepAliveResponse
                ttl__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "TTL"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
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
{- | Fields :

 -}
data LeaseLeasesRequest = LeaseLeasesRequest{_LeaseLeasesRequest'_unknownFields
                                             :: !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f LeaseLeasesRequest x a, a ~ b) =>
         Lens.Labels.HasLens f LeaseLeasesRequest LeaseLeasesRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Data.Default.Class.Default LeaseLeasesRequest where
        def = LeaseLeasesRequest{_LeaseLeasesRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message LeaseLeasesRequest where
        messageName _ = Data.Text.pack "etcdserverpb.LeaseLeasesRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _LeaseLeasesRequest'_unknownFields
              (\ x__ y__ -> x__{_LeaseLeasesRequest'_unknownFields = y__})
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
                             deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f LeaseLeasesResponse x a, a ~ b) =>
         Lens.Labels.HasLens f LeaseLeasesResponse LeaseLeasesResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseLeasesResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseLeasesResponse'header
                 (\ x__ y__ -> x__{_LeaseLeasesResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseLeasesResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseLeasesResponse'header
                 (\ x__ y__ -> x__{_LeaseLeasesResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseLeasesResponse "leases" ([LeaseStatus])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseLeasesResponse'leases
                 (\ x__ y__ -> x__{_LeaseLeasesResponse'leases = y__}))
              Prelude.id
instance Data.Default.Class.Default LeaseLeasesResponse where
        def
          = LeaseLeasesResponse{_LeaseLeasesResponse'header =
                                  Prelude.Nothing,
                                _LeaseLeasesResponse'leases = [],
                                _LeaseLeasesResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message LeaseLeasesResponse where
        messageName _ = Data.Text.pack "etcdserverpb.LeaseLeasesResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor LeaseLeasesResponse
                leases__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "leases"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor LeaseStatus)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "leases")))
                      :: Data.ProtoLens.FieldDescriptor LeaseLeasesResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, leases__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LeaseLeasesResponse'_unknownFields
              (\ x__ y__ -> x__{_LeaseLeasesResponse'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.id' @:: Lens' LeaseRevokeRequest Data.Int.Int64@
 -}
data LeaseRevokeRequest = LeaseRevokeRequest{_LeaseRevokeRequest'id
                                             :: !Data.Int.Int64,
                                             _LeaseRevokeRequest'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f LeaseRevokeRequest x a, a ~ b) =>
         Lens.Labels.HasLens f LeaseRevokeRequest LeaseRevokeRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseRevokeRequest "id" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseRevokeRequest'id
                 (\ x__ y__ -> x__{_LeaseRevokeRequest'id = y__}))
              Prelude.id
instance Data.Default.Class.Default LeaseRevokeRequest where
        def
          = LeaseRevokeRequest{_LeaseRevokeRequest'id =
                                 Data.ProtoLens.fieldDefault,
                               _LeaseRevokeRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message LeaseRevokeRequest where
        messageName _ = Data.Text.pack "etcdserverpb.LeaseRevokeRequest"
        fieldsByTag
          = let id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor LeaseRevokeRequest
              in Data.Map.fromList [(Data.ProtoLens.Tag 1, id__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LeaseRevokeRequest'_unknownFields
              (\ x__ y__ -> x__{_LeaseRevokeRequest'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' LeaseRevokeResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' LeaseRevokeResponse (Prelude.Maybe ResponseHeader)@
 -}
data LeaseRevokeResponse = LeaseRevokeResponse{_LeaseRevokeResponse'header
                                               :: !(Prelude.Maybe ResponseHeader),
                                               _LeaseRevokeResponse'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f LeaseRevokeResponse x a, a ~ b) =>
         Lens.Labels.HasLens f LeaseRevokeResponse LeaseRevokeResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseRevokeResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseRevokeResponse'header
                 (\ x__ y__ -> x__{_LeaseRevokeResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseRevokeResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseRevokeResponse'header
                 (\ x__ y__ -> x__{_LeaseRevokeResponse'header = y__}))
              Prelude.id
instance Data.Default.Class.Default LeaseRevokeResponse where
        def
          = LeaseRevokeResponse{_LeaseRevokeResponse'header =
                                  Prelude.Nothing,
                                _LeaseRevokeResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message LeaseRevokeResponse where
        messageName _ = Data.Text.pack "etcdserverpb.LeaseRevokeResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor LeaseRevokeResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LeaseRevokeResponse'_unknownFields
              (\ x__ y__ -> x__{_LeaseRevokeResponse'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.id' @:: Lens' LeaseStatus Data.Int.Int64@
 -}
data LeaseStatus = LeaseStatus{_LeaseStatus'id :: !Data.Int.Int64,
                               _LeaseStatus'_unknownFields :: !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f LeaseStatus x a, a ~ b) =>
         Lens.Labels.HasLens f LeaseStatus LeaseStatus x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseStatus "id" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseStatus'id
                 (\ x__ y__ -> x__{_LeaseStatus'id = y__}))
              Prelude.id
instance Data.Default.Class.Default LeaseStatus where
        def
          = LeaseStatus{_LeaseStatus'id = Data.ProtoLens.fieldDefault,
                        _LeaseStatus'_unknownFields = ([])}
instance Data.ProtoLens.Message LeaseStatus where
        messageName _ = Data.Text.pack "etcdserverpb.LeaseStatus"
        fieldsByTag
          = let id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor LeaseStatus
              in Data.Map.fromList [(Data.ProtoLens.Tag 1, id__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LeaseStatus'_unknownFields
              (\ x__ y__ -> x__{_LeaseStatus'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.id' @:: Lens' LeaseTimeToLiveRequest Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.keys' @:: Lens' LeaseTimeToLiveRequest Prelude.Bool@
 -}
data LeaseTimeToLiveRequest = LeaseTimeToLiveRequest{_LeaseTimeToLiveRequest'id
                                                     :: !Data.Int.Int64,
                                                     _LeaseTimeToLiveRequest'keys :: !Prelude.Bool,
                                                     _LeaseTimeToLiveRequest'_unknownFields ::
                                                     !Data.ProtoLens.FieldSet}
                                deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f LeaseTimeToLiveRequest x a,
          a ~ b) =>
         Lens.Labels.HasLens f LeaseTimeToLiveRequest LeaseTimeToLiveRequest
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseTimeToLiveRequest "id" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseTimeToLiveRequest'id
                 (\ x__ y__ -> x__{_LeaseTimeToLiveRequest'id = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseTimeToLiveRequest "keys" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseTimeToLiveRequest'keys
                 (\ x__ y__ -> x__{_LeaseTimeToLiveRequest'keys = y__}))
              Prelude.id
instance Data.Default.Class.Default LeaseTimeToLiveRequest where
        def
          = LeaseTimeToLiveRequest{_LeaseTimeToLiveRequest'id =
                                     Data.ProtoLens.fieldDefault,
                                   _LeaseTimeToLiveRequest'keys = Data.ProtoLens.fieldDefault,
                                   _LeaseTimeToLiveRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message LeaseTimeToLiveRequest where
        messageName _
          = Data.Text.pack "etcdserverpb.LeaseTimeToLiveRequest"
        fieldsByTag
          = let id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor LeaseTimeToLiveRequest
                keys__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "keys"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
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
                                 deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f LeaseTimeToLiveResponse x a,
          a ~ b) =>
         Lens.Labels.HasLens f LeaseTimeToLiveResponse
           LeaseTimeToLiveResponse
           x
           a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseTimeToLiveResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseTimeToLiveResponse'header
                 (\ x__ y__ -> x__{_LeaseTimeToLiveResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseTimeToLiveResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseTimeToLiveResponse'header
                 (\ x__ y__ -> x__{_LeaseTimeToLiveResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseTimeToLiveResponse "id"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseTimeToLiveResponse'id
                 (\ x__ y__ -> x__{_LeaseTimeToLiveResponse'id = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseTimeToLiveResponse "ttl"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseTimeToLiveResponse'ttl
                 (\ x__ y__ -> x__{_LeaseTimeToLiveResponse'ttl = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseTimeToLiveResponse "grantedTTL"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseTimeToLiveResponse'grantedTTL
                 (\ x__ y__ -> x__{_LeaseTimeToLiveResponse'grantedTTL = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f LeaseTimeToLiveResponse "keys"
           ([Data.ByteString.ByteString])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaseTimeToLiveResponse'keys
                 (\ x__ y__ -> x__{_LeaseTimeToLiveResponse'keys = y__}))
              Prelude.id
instance Data.Default.Class.Default LeaseTimeToLiveResponse where
        def
          = LeaseTimeToLiveResponse{_LeaseTimeToLiveResponse'header =
                                      Prelude.Nothing,
                                    _LeaseTimeToLiveResponse'id = Data.ProtoLens.fieldDefault,
                                    _LeaseTimeToLiveResponse'ttl = Data.ProtoLens.fieldDefault,
                                    _LeaseTimeToLiveResponse'grantedTTL =
                                      Data.ProtoLens.fieldDefault,
                                    _LeaseTimeToLiveResponse'keys = [],
                                    _LeaseTimeToLiveResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message LeaseTimeToLiveResponse where
        messageName _
          = Data.Text.pack "etcdserverpb.LeaseTimeToLiveResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor LeaseTimeToLiveResponse
                id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor LeaseTimeToLiveResponse
                ttl__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "TTL"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "ttl")))
                      :: Data.ProtoLens.FieldDescriptor LeaseTimeToLiveResponse
                grantedTTL__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "grantedTTL"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "grantedTTL")))
                      :: Data.ProtoLens.FieldDescriptor LeaseTimeToLiveResponse
                keys__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "keys"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
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
                deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f Member x a, a ~ b) =>
         Lens.Labels.HasLens f Member Member x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f Member "id" (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Member'id
                 (\ x__ y__ -> x__{_Member'id = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f Member "name" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Member'name
                 (\ x__ y__ -> x__{_Member'name = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f Member "peerURLs" ([Data.Text.Text])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Member'peerURLs
                 (\ x__ y__ -> x__{_Member'peerURLs = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f Member "clientURLs" ([Data.Text.Text])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Member'clientURLs
                 (\ x__ y__ -> x__{_Member'clientURLs = y__}))
              Prelude.id
instance Data.Default.Class.Default Member where
        def
          = Member{_Member'id = Data.ProtoLens.fieldDefault,
                   _Member'name = Data.ProtoLens.fieldDefault, _Member'peerURLs = [],
                   _Member'clientURLs = [], _Member'_unknownFields = ([])}
instance Data.ProtoLens.Message Member where
        messageName _ = Data.Text.pack "etcdserverpb.Member"
        fieldsByTag
          = let id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor Member
                name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor Member
                peerURLs__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "peerURLs"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "peerURLs")))
                      :: Data.ProtoLens.FieldDescriptor Member
                clientURLs__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "clientURLs"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
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
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.peerURLs' @:: Lens' MemberAddRequest [Data.Text.Text]@
 -}
data MemberAddRequest = MemberAddRequest{_MemberAddRequest'peerURLs
                                         :: ![Data.Text.Text],
                                         _MemberAddRequest'_unknownFields ::
                                         !Data.ProtoLens.FieldSet}
                          deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f MemberAddRequest x a, a ~ b) =>
         Lens.Labels.HasLens f MemberAddRequest MemberAddRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MemberAddRequest "peerURLs"
           ([Data.Text.Text])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberAddRequest'peerURLs
                 (\ x__ y__ -> x__{_MemberAddRequest'peerURLs = y__}))
              Prelude.id
instance Data.Default.Class.Default MemberAddRequest where
        def
          = MemberAddRequest{_MemberAddRequest'peerURLs = [],
                             _MemberAddRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message MemberAddRequest where
        messageName _ = Data.Text.pack "etcdserverpb.MemberAddRequest"
        fieldsByTag
          = let peerURLs__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "peerURLs"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "peerURLs")))
                      :: Data.ProtoLens.FieldDescriptor MemberAddRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, peerURLs__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _MemberAddRequest'_unknownFields
              (\ x__ y__ -> x__{_MemberAddRequest'_unknownFields = y__})
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
                           deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f MemberAddResponse x a, a ~ b) =>
         Lens.Labels.HasLens f MemberAddResponse MemberAddResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MemberAddResponse "header" (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberAddResponse'header
                 (\ x__ y__ -> x__{_MemberAddResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MemberAddResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberAddResponse'header
                 (\ x__ y__ -> x__{_MemberAddResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MemberAddResponse "member" (Member)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberAddResponse'member
                 (\ x__ y__ -> x__{_MemberAddResponse'member = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MemberAddResponse "maybe'member"
           (Prelude.Maybe Member)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberAddResponse'member
                 (\ x__ y__ -> x__{_MemberAddResponse'member = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MemberAddResponse "members" ([Member])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberAddResponse'members
                 (\ x__ y__ -> x__{_MemberAddResponse'members = y__}))
              Prelude.id
instance Data.Default.Class.Default MemberAddResponse where
        def
          = MemberAddResponse{_MemberAddResponse'header = Prelude.Nothing,
                              _MemberAddResponse'member = Prelude.Nothing,
                              _MemberAddResponse'members = [],
                              _MemberAddResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message MemberAddResponse where
        messageName _ = Data.Text.pack "etcdserverpb.MemberAddResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor MemberAddResponse
                member__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "member"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Member)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'member")))
                      :: Data.ProtoLens.FieldDescriptor MemberAddResponse
                members__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "members"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Member)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
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
{- | Fields :

 -}
data MemberListRequest = MemberListRequest{_MemberListRequest'_unknownFields
                                           :: !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f MemberListRequest x a, a ~ b) =>
         Lens.Labels.HasLens f MemberListRequest MemberListRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Data.Default.Class.Default MemberListRequest where
        def = MemberListRequest{_MemberListRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message MemberListRequest where
        messageName _ = Data.Text.pack "etcdserverpb.MemberListRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _MemberListRequest'_unknownFields
              (\ x__ y__ -> x__{_MemberListRequest'_unknownFields = y__})
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
                            deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f MemberListResponse x a, a ~ b) =>
         Lens.Labels.HasLens f MemberListResponse MemberListResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MemberListResponse "header" (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberListResponse'header
                 (\ x__ y__ -> x__{_MemberListResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MemberListResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberListResponse'header
                 (\ x__ y__ -> x__{_MemberListResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MemberListResponse "members" ([Member])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberListResponse'members
                 (\ x__ y__ -> x__{_MemberListResponse'members = y__}))
              Prelude.id
instance Data.Default.Class.Default MemberListResponse where
        def
          = MemberListResponse{_MemberListResponse'header = Prelude.Nothing,
                               _MemberListResponse'members = [],
                               _MemberListResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message MemberListResponse where
        messageName _ = Data.Text.pack "etcdserverpb.MemberListResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor MemberListResponse
                members__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "members"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Member)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "members")))
                      :: Data.ProtoLens.FieldDescriptor MemberListResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, members__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _MemberListResponse'_unknownFields
              (\ x__ y__ -> x__{_MemberListResponse'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.id' @:: Lens' MemberRemoveRequest Data.Word.Word64@
 -}
data MemberRemoveRequest = MemberRemoveRequest{_MemberRemoveRequest'id
                                               :: !Data.Word.Word64,
                                               _MemberRemoveRequest'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f MemberRemoveRequest x a, a ~ b) =>
         Lens.Labels.HasLens f MemberRemoveRequest MemberRemoveRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MemberRemoveRequest "id" (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberRemoveRequest'id
                 (\ x__ y__ -> x__{_MemberRemoveRequest'id = y__}))
              Prelude.id
instance Data.Default.Class.Default MemberRemoveRequest where
        def
          = MemberRemoveRequest{_MemberRemoveRequest'id =
                                  Data.ProtoLens.fieldDefault,
                                _MemberRemoveRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message MemberRemoveRequest where
        messageName _ = Data.Text.pack "etcdserverpb.MemberRemoveRequest"
        fieldsByTag
          = let id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor MemberRemoveRequest
              in Data.Map.fromList [(Data.ProtoLens.Tag 1, id__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _MemberRemoveRequest'_unknownFields
              (\ x__ y__ -> x__{_MemberRemoveRequest'_unknownFields = y__})
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
                              deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f MemberRemoveResponse x a,
          a ~ b) =>
         Lens.Labels.HasLens f MemberRemoveResponse MemberRemoveResponse x a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MemberRemoveResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberRemoveResponse'header
                 (\ x__ y__ -> x__{_MemberRemoveResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MemberRemoveResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberRemoveResponse'header
                 (\ x__ y__ -> x__{_MemberRemoveResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MemberRemoveResponse "members" ([Member])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberRemoveResponse'members
                 (\ x__ y__ -> x__{_MemberRemoveResponse'members = y__}))
              Prelude.id
instance Data.Default.Class.Default MemberRemoveResponse where
        def
          = MemberRemoveResponse{_MemberRemoveResponse'header =
                                   Prelude.Nothing,
                                 _MemberRemoveResponse'members = [],
                                 _MemberRemoveResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message MemberRemoveResponse where
        messageName _ = Data.Text.pack "etcdserverpb.MemberRemoveResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor MemberRemoveResponse
                members__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "members"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Member)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "members")))
                      :: Data.ProtoLens.FieldDescriptor MemberRemoveResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, members__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _MemberRemoveResponse'_unknownFields
              (\ x__ y__ -> x__{_MemberRemoveResponse'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.id' @:: Lens' MemberUpdateRequest Data.Word.Word64@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.peerURLs' @:: Lens' MemberUpdateRequest [Data.Text.Text]@
 -}
data MemberUpdateRequest = MemberUpdateRequest{_MemberUpdateRequest'id
                                               :: !Data.Word.Word64,
                                               _MemberUpdateRequest'peerURLs :: ![Data.Text.Text],
                                               _MemberUpdateRequest'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f MemberUpdateRequest x a, a ~ b) =>
         Lens.Labels.HasLens f MemberUpdateRequest MemberUpdateRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MemberUpdateRequest "id" (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberUpdateRequest'id
                 (\ x__ y__ -> x__{_MemberUpdateRequest'id = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MemberUpdateRequest "peerURLs"
           ([Data.Text.Text])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberUpdateRequest'peerURLs
                 (\ x__ y__ -> x__{_MemberUpdateRequest'peerURLs = y__}))
              Prelude.id
instance Data.Default.Class.Default MemberUpdateRequest where
        def
          = MemberUpdateRequest{_MemberUpdateRequest'id =
                                  Data.ProtoLens.fieldDefault,
                                _MemberUpdateRequest'peerURLs = [],
                                _MemberUpdateRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message MemberUpdateRequest where
        messageName _ = Data.Text.pack "etcdserverpb.MemberUpdateRequest"
        fieldsByTag
          = let id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor MemberUpdateRequest
                peerURLs__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "peerURLs"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "peerURLs")))
                      :: Data.ProtoLens.FieldDescriptor MemberUpdateRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, id__field_descriptor),
                 (Data.ProtoLens.Tag 2, peerURLs__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _MemberUpdateRequest'_unknownFields
              (\ x__ y__ -> x__{_MemberUpdateRequest'_unknownFields = y__})
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
                              deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f MemberUpdateResponse x a,
          a ~ b) =>
         Lens.Labels.HasLens f MemberUpdateResponse MemberUpdateResponse x a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MemberUpdateResponse "header"
           (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberUpdateResponse'header
                 (\ x__ y__ -> x__{_MemberUpdateResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MemberUpdateResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberUpdateResponse'header
                 (\ x__ y__ -> x__{_MemberUpdateResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MemberUpdateResponse "members" ([Member])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MemberUpdateResponse'members
                 (\ x__ y__ -> x__{_MemberUpdateResponse'members = y__}))
              Prelude.id
instance Data.Default.Class.Default MemberUpdateResponse where
        def
          = MemberUpdateResponse{_MemberUpdateResponse'header =
                                   Prelude.Nothing,
                                 _MemberUpdateResponse'members = [],
                                 _MemberUpdateResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message MemberUpdateResponse where
        messageName _ = Data.Text.pack "etcdserverpb.MemberUpdateResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor MemberUpdateResponse
                members__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "members"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Member)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "members")))
                      :: Data.ProtoLens.FieldDescriptor MemberUpdateResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, members__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _MemberUpdateResponse'_unknownFields
              (\ x__ y__ -> x__{_MemberUpdateResponse'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.targetID' @:: Lens' MoveLeaderRequest Data.Word.Word64@
 -}
data MoveLeaderRequest = MoveLeaderRequest{_MoveLeaderRequest'targetID
                                           :: !Data.Word.Word64,
                                           _MoveLeaderRequest'_unknownFields ::
                                           !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f MoveLeaderRequest x a, a ~ b) =>
         Lens.Labels.HasLens f MoveLeaderRequest MoveLeaderRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MoveLeaderRequest "targetID"
           (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MoveLeaderRequest'targetID
                 (\ x__ y__ -> x__{_MoveLeaderRequest'targetID = y__}))
              Prelude.id
instance Data.Default.Class.Default MoveLeaderRequest where
        def
          = MoveLeaderRequest{_MoveLeaderRequest'targetID =
                                Data.ProtoLens.fieldDefault,
                              _MoveLeaderRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message MoveLeaderRequest where
        messageName _ = Data.Text.pack "etcdserverpb.MoveLeaderRequest"
        fieldsByTag
          = let targetID__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "targetID"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "targetID")))
                      :: Data.ProtoLens.FieldDescriptor MoveLeaderRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, targetID__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _MoveLeaderRequest'_unknownFields
              (\ x__ y__ -> x__{_MoveLeaderRequest'_unknownFields = y__})
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.header' @:: Lens' MoveLeaderResponse ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.maybe'header' @:: Lens' MoveLeaderResponse (Prelude.Maybe ResponseHeader)@
 -}
data MoveLeaderResponse = MoveLeaderResponse{_MoveLeaderResponse'header
                                             :: !(Prelude.Maybe ResponseHeader),
                                             _MoveLeaderResponse'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f MoveLeaderResponse x a, a ~ b) =>
         Lens.Labels.HasLens f MoveLeaderResponse MoveLeaderResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MoveLeaderResponse "header" (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MoveLeaderResponse'header
                 (\ x__ y__ -> x__{_MoveLeaderResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f MoveLeaderResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _MoveLeaderResponse'header
                 (\ x__ y__ -> x__{_MoveLeaderResponse'header = y__}))
              Prelude.id
instance Data.Default.Class.Default MoveLeaderResponse where
        def
          = MoveLeaderResponse{_MoveLeaderResponse'header = Prelude.Nothing,
                               _MoveLeaderResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message MoveLeaderResponse where
        messageName _ = Data.Text.pack "etcdserverpb.MoveLeaderResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor MoveLeaderResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _MoveLeaderResponse'_unknownFields
              (\ x__ y__ -> x__{_MoveLeaderResponse'_unknownFields = y__})
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
                    deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f PutRequest x a, a ~ b) =>
         Lens.Labels.HasLens f PutRequest PutRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f PutRequest "key"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PutRequest'key
                 (\ x__ y__ -> x__{_PutRequest'key = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f PutRequest "value"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PutRequest'value
                 (\ x__ y__ -> x__{_PutRequest'value = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f PutRequest "lease" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PutRequest'lease
                 (\ x__ y__ -> x__{_PutRequest'lease = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f PutRequest "prevKv" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PutRequest'prevKv
                 (\ x__ y__ -> x__{_PutRequest'prevKv = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f PutRequest "ignoreValue" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PutRequest'ignoreValue
                 (\ x__ y__ -> x__{_PutRequest'ignoreValue = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f PutRequest "ignoreLease" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PutRequest'ignoreLease
                 (\ x__ y__ -> x__{_PutRequest'ignoreLease = y__}))
              Prelude.id
instance Data.Default.Class.Default PutRequest where
        def
          = PutRequest{_PutRequest'key = Data.ProtoLens.fieldDefault,
                       _PutRequest'value = Data.ProtoLens.fieldDefault,
                       _PutRequest'lease = Data.ProtoLens.fieldDefault,
                       _PutRequest'prevKv = Data.ProtoLens.fieldDefault,
                       _PutRequest'ignoreValue = Data.ProtoLens.fieldDefault,
                       _PutRequest'ignoreLease = Data.ProtoLens.fieldDefault,
                       _PutRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message PutRequest where
        messageName _ = Data.Text.pack "etcdserverpb.PutRequest"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor PutRequest
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor PutRequest
                lease__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "lease"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "lease")))
                      :: Data.ProtoLens.FieldDescriptor PutRequest
                prevKv__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "prev_kv"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "prevKv")))
                      :: Data.ProtoLens.FieldDescriptor PutRequest
                ignoreValue__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ignore_value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "ignoreValue")))
                      :: Data.ProtoLens.FieldDescriptor PutRequest
                ignoreLease__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ignore_lease"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
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
                     deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f PutResponse x a, a ~ b) =>
         Lens.Labels.HasLens f PutResponse PutResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f PutResponse "header" (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PutResponse'header
                 (\ x__ y__ -> x__{_PutResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f PutResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PutResponse'header
                 (\ x__ y__ -> x__{_PutResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f PutResponse "prevKv"
           (Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PutResponse'prevKv
                 (\ x__ y__ -> x__{_PutResponse'prevKv = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f PutResponse "maybe'prevKv"
           (Prelude.Maybe Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _PutResponse'prevKv
                 (\ x__ y__ -> x__{_PutResponse'prevKv = y__}))
              Prelude.id
instance Data.Default.Class.Default PutResponse where
        def
          = PutResponse{_PutResponse'header = Prelude.Nothing,
                        _PutResponse'prevKv = Prelude.Nothing,
                        _PutResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message PutResponse where
        messageName _ = Data.Text.pack "etcdserverpb.PutResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor PutResponse
                prevKv__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "prev_kv"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'prevKv")))
                      :: Data.ProtoLens.FieldDescriptor PutResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, prevKv__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _PutResponse'_unknownFields
              (\ x__ y__ -> x__{_PutResponse'_unknownFields = y__})
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
                      deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f RangeRequest x a, a ~ b) =>
         Lens.Labels.HasLens f RangeRequest RangeRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RangeRequest "key"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'key
                 (\ x__ y__ -> x__{_RangeRequest'key = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RangeRequest "rangeEnd"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'rangeEnd
                 (\ x__ y__ -> x__{_RangeRequest'rangeEnd = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RangeRequest "limit" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'limit
                 (\ x__ y__ -> x__{_RangeRequest'limit = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RangeRequest "revision" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'revision
                 (\ x__ y__ -> x__{_RangeRequest'revision = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RangeRequest "sortOrder"
           (RangeRequest'SortOrder)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'sortOrder
                 (\ x__ y__ -> x__{_RangeRequest'sortOrder = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RangeRequest "sortTarget"
           (RangeRequest'SortTarget)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'sortTarget
                 (\ x__ y__ -> x__{_RangeRequest'sortTarget = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RangeRequest "serializable" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'serializable
                 (\ x__ y__ -> x__{_RangeRequest'serializable = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RangeRequest "keysOnly" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'keysOnly
                 (\ x__ y__ -> x__{_RangeRequest'keysOnly = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RangeRequest "countOnly" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'countOnly
                 (\ x__ y__ -> x__{_RangeRequest'countOnly = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RangeRequest "minModRevision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'minModRevision
                 (\ x__ y__ -> x__{_RangeRequest'minModRevision = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RangeRequest "maxModRevision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'maxModRevision
                 (\ x__ y__ -> x__{_RangeRequest'maxModRevision = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RangeRequest "minCreateRevision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'minCreateRevision
                 (\ x__ y__ -> x__{_RangeRequest'minCreateRevision = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RangeRequest "maxCreateRevision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeRequest'maxCreateRevision
                 (\ x__ y__ -> x__{_RangeRequest'maxCreateRevision = y__}))
              Prelude.id
instance Data.Default.Class.Default RangeRequest where
        def
          = RangeRequest{_RangeRequest'key = Data.ProtoLens.fieldDefault,
                         _RangeRequest'rangeEnd = Data.ProtoLens.fieldDefault,
                         _RangeRequest'limit = Data.ProtoLens.fieldDefault,
                         _RangeRequest'revision = Data.ProtoLens.fieldDefault,
                         _RangeRequest'sortOrder = Data.Default.Class.def,
                         _RangeRequest'sortTarget = Data.Default.Class.def,
                         _RangeRequest'serializable = Data.ProtoLens.fieldDefault,
                         _RangeRequest'keysOnly = Data.ProtoLens.fieldDefault,
                         _RangeRequest'countOnly = Data.ProtoLens.fieldDefault,
                         _RangeRequest'minModRevision = Data.ProtoLens.fieldDefault,
                         _RangeRequest'maxModRevision = Data.ProtoLens.fieldDefault,
                         _RangeRequest'minCreateRevision = Data.ProtoLens.fieldDefault,
                         _RangeRequest'maxCreateRevision = Data.ProtoLens.fieldDefault,
                         _RangeRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message RangeRequest where
        messageName _ = Data.Text.pack "etcdserverpb.RangeRequest"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                rangeEnd__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "range_end"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "rangeEnd")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                limit__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "limit"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "limit")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                revision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "revision")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                sortOrder__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "sort_order"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor RangeRequest'SortOrder)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "sortOrder")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                sortTarget__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "sort_target"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor RangeRequest'SortTarget)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "sortTarget")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                serializable__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "serializable"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "serializable")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                keysOnly__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "keys_only"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "keysOnly")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                countOnly__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "count_only"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "countOnly")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                minModRevision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "min_mod_revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "minModRevision")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                maxModRevision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "max_mod_revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maxModRevision")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                minCreateRevision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "min_create_revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "minCreateRevision")))
                      :: Data.ProtoLens.FieldDescriptor RangeRequest
                maxCreateRevision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "max_create_revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
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
instance Data.Default.Class.Default RangeRequest'SortOrder where
        def = RangeRequest'NONE
instance Data.ProtoLens.FieldDefault RangeRequest'SortOrder where
        fieldDefault = RangeRequest'NONE
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
instance Data.Default.Class.Default RangeRequest'SortTarget where
        def = RangeRequest'KEY
instance Data.ProtoLens.FieldDefault RangeRequest'SortTarget where
        fieldDefault = RangeRequest'KEY
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
                       deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f RangeResponse x a, a ~ b) =>
         Lens.Labels.HasLens f RangeResponse RangeResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RangeResponse "header" (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeResponse'header
                 (\ x__ y__ -> x__{_RangeResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RangeResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeResponse'header
                 (\ x__ y__ -> x__{_RangeResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RangeResponse "kvs"
           ([Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeResponse'kvs
                 (\ x__ y__ -> x__{_RangeResponse'kvs = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RangeResponse "more" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeResponse'more
                 (\ x__ y__ -> x__{_RangeResponse'more = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RangeResponse "count" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RangeResponse'count
                 (\ x__ y__ -> x__{_RangeResponse'count = y__}))
              Prelude.id
instance Data.Default.Class.Default RangeResponse where
        def
          = RangeResponse{_RangeResponse'header = Prelude.Nothing,
                          _RangeResponse'kvs = [],
                          _RangeResponse'more = Data.ProtoLens.fieldDefault,
                          _RangeResponse'count = Data.ProtoLens.fieldDefault,
                          _RangeResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message RangeResponse where
        messageName _ = Data.Text.pack "etcdserverpb.RangeResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor RangeResponse
                kvs__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "kvs"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "kvs")))
                      :: Data.ProtoLens.FieldDescriptor RangeResponse
                more__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "more"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "more")))
                      :: Data.ProtoLens.FieldDescriptor RangeResponse
                count__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "count"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
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
                   deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
data RequestOp'Request = RequestOp'RequestRange !RangeRequest
                       | RequestOp'RequestPut !PutRequest
                       | RequestOp'RequestDeleteRange !DeleteRangeRequest
                       | RequestOp'RequestTxn !TxnRequest
                           deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f RequestOp x a, a ~ b) =>
         Lens.Labels.HasLens f RequestOp RequestOp x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RequestOp "maybe'request"
           (Prelude.Maybe RequestOp'Request)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _RequestOp'request
                 (\ x__ y__ -> x__{_RequestOp'request = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RequestOp "maybe'requestRange"
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
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RequestOp "requestRange" (RangeRequest)
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
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RequestOp "maybe'requestPut"
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
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RequestOp "requestPut" (PutRequest)
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
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RequestOp "maybe'requestDeleteRange"
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
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RequestOp "requestDeleteRange"
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
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RequestOp "maybe'requestTxn"
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
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f RequestOp "requestTxn" (TxnRequest)
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
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))
instance Data.Default.Class.Default RequestOp where
        def
          = RequestOp{_RequestOp'request = Prelude.Nothing,
                      _RequestOp'_unknownFields = ([])}
instance Data.ProtoLens.Message RequestOp where
        messageName _ = Data.Text.pack "etcdserverpb.RequestOp"
        fieldsByTag
          = let requestRange__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "request_range"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor RangeRequest)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'requestRange")))
                      :: Data.ProtoLens.FieldDescriptor RequestOp
                requestPut__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "request_put"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor PutRequest)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'requestPut")))
                      :: Data.ProtoLens.FieldDescriptor RequestOp
                requestDeleteRange__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "request_delete_range"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor DeleteRangeRequest)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'requestDeleteRange")))
                      :: Data.ProtoLens.FieldDescriptor RequestOp
                requestTxn__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "request_txn"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor TxnRequest)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
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
                        deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f ResponseHeader x a, a ~ b) =>
         Lens.Labels.HasLens f ResponseHeader ResponseHeader x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f ResponseHeader "clusterId"
           (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseHeader'clusterId
                 (\ x__ y__ -> x__{_ResponseHeader'clusterId = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f ResponseHeader "memberId" (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseHeader'memberId
                 (\ x__ y__ -> x__{_ResponseHeader'memberId = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f ResponseHeader "revision" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseHeader'revision
                 (\ x__ y__ -> x__{_ResponseHeader'revision = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f ResponseHeader "raftTerm" (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseHeader'raftTerm
                 (\ x__ y__ -> x__{_ResponseHeader'raftTerm = y__}))
              Prelude.id
instance Data.Default.Class.Default ResponseHeader where
        def
          = ResponseHeader{_ResponseHeader'clusterId =
                             Data.ProtoLens.fieldDefault,
                           _ResponseHeader'memberId = Data.ProtoLens.fieldDefault,
                           _ResponseHeader'revision = Data.ProtoLens.fieldDefault,
                           _ResponseHeader'raftTerm = Data.ProtoLens.fieldDefault,
                           _ResponseHeader'_unknownFields = ([])}
instance Data.ProtoLens.Message ResponseHeader where
        messageName _ = Data.Text.pack "etcdserverpb.ResponseHeader"
        fieldsByTag
          = let clusterId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "cluster_id"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "clusterId")))
                      :: Data.ProtoLens.FieldDescriptor ResponseHeader
                memberId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "member_id"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "memberId")))
                      :: Data.ProtoLens.FieldDescriptor ResponseHeader
                revision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "revision")))
                      :: Data.ProtoLens.FieldDescriptor ResponseHeader
                raftTerm__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "raft_term"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
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
                    deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
data ResponseOp'Response = ResponseOp'ResponseRange !RangeResponse
                         | ResponseOp'ResponsePut !PutResponse
                         | ResponseOp'ResponseDeleteRange !DeleteRangeResponse
                         | ResponseOp'ResponseTxn !TxnResponse
                             deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f ResponseOp x a, a ~ b) =>
         Lens.Labels.HasLens f ResponseOp ResponseOp x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f ResponseOp "maybe'response"
           (Prelude.Maybe ResponseOp'Response)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResponseOp'response
                 (\ x__ y__ -> x__{_ResponseOp'response = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f ResponseOp "maybe'responseRange"
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
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f ResponseOp "responseRange" (RangeResponse)
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
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f ResponseOp "maybe'responsePut"
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
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f ResponseOp "responsePut" (PutResponse)
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
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f ResponseOp "maybe'responseDeleteRange"
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
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f ResponseOp "responseDeleteRange"
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
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f ResponseOp "maybe'responseTxn"
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
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f ResponseOp "responseTxn" (TxnResponse)
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
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))
instance Data.Default.Class.Default ResponseOp where
        def
          = ResponseOp{_ResponseOp'response = Prelude.Nothing,
                       _ResponseOp'_unknownFields = ([])}
instance Data.ProtoLens.Message ResponseOp where
        messageName _ = Data.Text.pack "etcdserverpb.ResponseOp"
        fieldsByTag
          = let responseRange__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "response_range"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor RangeResponse)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'responseRange")))
                      :: Data.ProtoLens.FieldDescriptor ResponseOp
                responsePut__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "response_put"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor PutResponse)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'responsePut")))
                      :: Data.ProtoLens.FieldDescriptor ResponseOp
                responseDeleteRange__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "response_delete_range"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor DeleteRangeResponse)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'responseDeleteRange")))
                      :: Data.ProtoLens.FieldDescriptor ResponseOp
                responseTxn__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "response_txn"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor TxnResponse)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
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
                         deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f SnapshotRequest x a, a ~ b) =>
         Lens.Labels.HasLens f SnapshotRequest SnapshotRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Data.Default.Class.Default SnapshotRequest where
        def = SnapshotRequest{_SnapshotRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message SnapshotRequest where
        messageName _ = Data.Text.pack "etcdserverpb.SnapshotRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _SnapshotRequest'_unknownFields
              (\ x__ y__ -> x__{_SnapshotRequest'_unknownFields = y__})
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
                          deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f SnapshotResponse x a, a ~ b) =>
         Lens.Labels.HasLens f SnapshotResponse SnapshotResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f SnapshotResponse "header" (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _SnapshotResponse'header
                 (\ x__ y__ -> x__{_SnapshotResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f SnapshotResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _SnapshotResponse'header
                 (\ x__ y__ -> x__{_SnapshotResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f SnapshotResponse "remainingBytes"
           (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _SnapshotResponse'remainingBytes
                 (\ x__ y__ -> x__{_SnapshotResponse'remainingBytes = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f SnapshotResponse "blob"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _SnapshotResponse'blob
                 (\ x__ y__ -> x__{_SnapshotResponse'blob = y__}))
              Prelude.id
instance Data.Default.Class.Default SnapshotResponse where
        def
          = SnapshotResponse{_SnapshotResponse'header = Prelude.Nothing,
                             _SnapshotResponse'remainingBytes = Data.ProtoLens.fieldDefault,
                             _SnapshotResponse'blob = Data.ProtoLens.fieldDefault,
                             _SnapshotResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message SnapshotResponse where
        messageName _ = Data.Text.pack "etcdserverpb.SnapshotResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor SnapshotResponse
                remainingBytes__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "remaining_bytes"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "remainingBytes")))
                      :: Data.ProtoLens.FieldDescriptor SnapshotResponse
                blob__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "blob"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
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
{- | Fields :

 -}
data StatusRequest = StatusRequest{_StatusRequest'_unknownFields ::
                                   !Data.ProtoLens.FieldSet}
                       deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f StatusRequest x a, a ~ b) =>
         Lens.Labels.HasLens f StatusRequest StatusRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Data.Default.Class.Default StatusRequest where
        def = StatusRequest{_StatusRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message StatusRequest where
        messageName _ = Data.Text.pack "etcdserverpb.StatusRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _StatusRequest'_unknownFields
              (\ x__ y__ -> x__{_StatusRequest'_unknownFields = y__})
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
                        deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f StatusResponse x a, a ~ b) =>
         Lens.Labels.HasLens f StatusResponse StatusResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f StatusResponse "header" (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _StatusResponse'header
                 (\ x__ y__ -> x__{_StatusResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f StatusResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _StatusResponse'header
                 (\ x__ y__ -> x__{_StatusResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f StatusResponse "version" (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _StatusResponse'version
                 (\ x__ y__ -> x__{_StatusResponse'version = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f StatusResponse "dbSize" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _StatusResponse'dbSize
                 (\ x__ y__ -> x__{_StatusResponse'dbSize = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f StatusResponse "leader" (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _StatusResponse'leader
                 (\ x__ y__ -> x__{_StatusResponse'leader = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f StatusResponse "raftIndex"
           (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _StatusResponse'raftIndex
                 (\ x__ y__ -> x__{_StatusResponse'raftIndex = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f StatusResponse "raftTerm" (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _StatusResponse'raftTerm
                 (\ x__ y__ -> x__{_StatusResponse'raftTerm = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f StatusResponse "raftAppliedIndex"
           (Data.Word.Word64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _StatusResponse'raftAppliedIndex
                 (\ x__ y__ -> x__{_StatusResponse'raftAppliedIndex = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f StatusResponse "errors" ([Data.Text.Text])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _StatusResponse'errors
                 (\ x__ y__ -> x__{_StatusResponse'errors = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f StatusResponse "dbSizeInUse"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _StatusResponse'dbSizeInUse
                 (\ x__ y__ -> x__{_StatusResponse'dbSizeInUse = y__}))
              Prelude.id
instance Data.Default.Class.Default StatusResponse where
        def
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
instance Data.ProtoLens.Message StatusResponse where
        messageName _ = Data.Text.pack "etcdserverpb.StatusResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor StatusResponse
                version__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "version"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "version")))
                      :: Data.ProtoLens.FieldDescriptor StatusResponse
                dbSize__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "dbSize"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "dbSize")))
                      :: Data.ProtoLens.FieldDescriptor StatusResponse
                leader__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "leader"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "leader")))
                      :: Data.ProtoLens.FieldDescriptor StatusResponse
                raftIndex__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "raftIndex"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "raftIndex")))
                      :: Data.ProtoLens.FieldDescriptor StatusResponse
                raftTerm__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "raftTerm"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "raftTerm")))
                      :: Data.ProtoLens.FieldDescriptor StatusResponse
                raftAppliedIndex__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "raftAppliedIndex"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "raftAppliedIndex")))
                      :: Data.ProtoLens.FieldDescriptor StatusResponse
                errors__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "errors"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "errors")))
                      :: Data.ProtoLens.FieldDescriptor StatusResponse
                dbSizeInUse__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "dbSizeInUse"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
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
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.compare' @:: Lens' TxnRequest [Compare]@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.success' @:: Lens' TxnRequest [RequestOp]@
    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.failure' @:: Lens' TxnRequest [RequestOp]@
 -}
data TxnRequest = TxnRequest{_TxnRequest'compare :: ![Compare],
                             _TxnRequest'success :: ![RequestOp],
                             _TxnRequest'failure :: ![RequestOp],
                             _TxnRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
                    deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f TxnRequest x a, a ~ b) =>
         Lens.Labels.HasLens f TxnRequest TxnRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TxnRequest "compare" ([Compare])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TxnRequest'compare
                 (\ x__ y__ -> x__{_TxnRequest'compare = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TxnRequest "success" ([RequestOp])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TxnRequest'success
                 (\ x__ y__ -> x__{_TxnRequest'success = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TxnRequest "failure" ([RequestOp])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TxnRequest'failure
                 (\ x__ y__ -> x__{_TxnRequest'failure = y__}))
              Prelude.id
instance Data.Default.Class.Default TxnRequest where
        def
          = TxnRequest{_TxnRequest'compare = [], _TxnRequest'success = [],
                       _TxnRequest'failure = [], _TxnRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message TxnRequest where
        messageName _ = Data.Text.pack "etcdserverpb.TxnRequest"
        fieldsByTag
          = let compare__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "compare"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Compare)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "compare")))
                      :: Data.ProtoLens.FieldDescriptor TxnRequest
                success__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "success"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor RequestOp)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "success")))
                      :: Data.ProtoLens.FieldDescriptor TxnRequest
                failure__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "failure"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor RequestOp)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
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
                     deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f TxnResponse x a, a ~ b) =>
         Lens.Labels.HasLens f TxnResponse TxnResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TxnResponse "header" (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TxnResponse'header
                 (\ x__ y__ -> x__{_TxnResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TxnResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TxnResponse'header
                 (\ x__ y__ -> x__{_TxnResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TxnResponse "succeeded" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TxnResponse'succeeded
                 (\ x__ y__ -> x__{_TxnResponse'succeeded = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f TxnResponse "responses" ([ResponseOp])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _TxnResponse'responses
                 (\ x__ y__ -> x__{_TxnResponse'responses = y__}))
              Prelude.id
instance Data.Default.Class.Default TxnResponse where
        def
          = TxnResponse{_TxnResponse'header = Prelude.Nothing,
                        _TxnResponse'succeeded = Data.ProtoLens.fieldDefault,
                        _TxnResponse'responses = [], _TxnResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message TxnResponse where
        messageName _ = Data.Text.pack "etcdserverpb.TxnResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor TxnResponse
                succeeded__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "succeeded"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "succeeded")))
                      :: Data.ProtoLens.FieldDescriptor TxnResponse
                responses__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "responses"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseOp)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
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
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Etcdserverpb.Rpc_Fields.watchId' @:: Lens' WatchCancelRequest Data.Int.Int64@
 -}
data WatchCancelRequest = WatchCancelRequest{_WatchCancelRequest'watchId
                                             :: !Data.Int.Int64,
                                             _WatchCancelRequest'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f WatchCancelRequest x a, a ~ b) =>
         Lens.Labels.HasLens f WatchCancelRequest WatchCancelRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchCancelRequest "watchId"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchCancelRequest'watchId
                 (\ x__ y__ -> x__{_WatchCancelRequest'watchId = y__}))
              Prelude.id
instance Data.Default.Class.Default WatchCancelRequest where
        def
          = WatchCancelRequest{_WatchCancelRequest'watchId =
                                 Data.ProtoLens.fieldDefault,
                               _WatchCancelRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message WatchCancelRequest where
        messageName _ = Data.Text.pack "etcdserverpb.WatchCancelRequest"
        fieldsByTag
          = let watchId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "watch_id"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "watchId")))
                      :: Data.ProtoLens.FieldDescriptor WatchCancelRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, watchId__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _WatchCancelRequest'_unknownFields
              (\ x__ y__ -> x__{_WatchCancelRequest'_unknownFields = y__})
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
                            deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f WatchCreateRequest x a, a ~ b) =>
         Lens.Labels.HasLens f WatchCreateRequest WatchCreateRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchCreateRequest "key"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchCreateRequest'key
                 (\ x__ y__ -> x__{_WatchCreateRequest'key = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchCreateRequest "rangeEnd"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchCreateRequest'rangeEnd
                 (\ x__ y__ -> x__{_WatchCreateRequest'rangeEnd = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchCreateRequest "startRevision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchCreateRequest'startRevision
                 (\ x__ y__ -> x__{_WatchCreateRequest'startRevision = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchCreateRequest "progressNotify"
           (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchCreateRequest'progressNotify
                 (\ x__ y__ -> x__{_WatchCreateRequest'progressNotify = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchCreateRequest "filters"
           ([WatchCreateRequest'FilterType])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchCreateRequest'filters
                 (\ x__ y__ -> x__{_WatchCreateRequest'filters = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchCreateRequest "prevKv" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchCreateRequest'prevKv
                 (\ x__ y__ -> x__{_WatchCreateRequest'prevKv = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchCreateRequest "watchId"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchCreateRequest'watchId
                 (\ x__ y__ -> x__{_WatchCreateRequest'watchId = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchCreateRequest "fragment" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchCreateRequest'fragment
                 (\ x__ y__ -> x__{_WatchCreateRequest'fragment = y__}))
              Prelude.id
instance Data.Default.Class.Default WatchCreateRequest where
        def
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
instance Data.ProtoLens.Message WatchCreateRequest where
        messageName _ = Data.Text.pack "etcdserverpb.WatchCreateRequest"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor WatchCreateRequest
                rangeEnd__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "range_end"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "rangeEnd")))
                      :: Data.ProtoLens.FieldDescriptor WatchCreateRequest
                startRevision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "start_revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "startRevision")))
                      :: Data.ProtoLens.FieldDescriptor WatchCreateRequest
                progressNotify__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "progress_notify"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "progressNotify")))
                      :: Data.ProtoLens.FieldDescriptor WatchCreateRequest
                filters__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "filters"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor WatchCreateRequest'FilterType)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "filters")))
                      :: Data.ProtoLens.FieldDescriptor WatchCreateRequest
                prevKv__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "prev_kv"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "prevKv")))
                      :: Data.ProtoLens.FieldDescriptor WatchCreateRequest
                watchId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "watch_id"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "watchId")))
                      :: Data.ProtoLens.FieldDescriptor WatchCreateRequest
                fragment__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "fragment"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
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
instance Data.Default.Class.Default WatchCreateRequest'FilterType
         where
        def = WatchCreateRequest'NOPUT
instance Data.ProtoLens.FieldDefault WatchCreateRequest'FilterType
         where
        fieldDefault = WatchCreateRequest'NOPUT
{- | Fields :

 -}
data WatchProgressRequest = WatchProgressRequest{_WatchProgressRequest'_unknownFields
                                                 :: !Data.ProtoLens.FieldSet}
                              deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f WatchProgressRequest x a,
          a ~ b) =>
         Lens.Labels.HasLens f WatchProgressRequest WatchProgressRequest x a
           b
         where
        lensOf = Lens.Labels.lensOf'
instance Data.Default.Class.Default WatchProgressRequest where
        def
          = WatchProgressRequest{_WatchProgressRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message WatchProgressRequest where
        messageName _ = Data.Text.pack "etcdserverpb.WatchProgressRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _WatchProgressRequest'_unknownFields
              (\ x__ y__ -> x__{_WatchProgressRequest'_unknownFields = y__})
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
                      deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
data WatchRequest'RequestUnion = WatchRequest'CreateRequest !WatchCreateRequest
                               | WatchRequest'CancelRequest !WatchCancelRequest
                               | WatchRequest'ProgressRequest !WatchProgressRequest
                                   deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f WatchRequest x a, a ~ b) =>
         Lens.Labels.HasLens f WatchRequest WatchRequest x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchRequest "maybe'requestUnion"
           (Prelude.Maybe WatchRequest'RequestUnion)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchRequest'requestUnion
                 (\ x__ y__ -> x__{_WatchRequest'requestUnion = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchRequest "maybe'createRequest"
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
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchRequest "createRequest"
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
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchRequest "maybe'cancelRequest"
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
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchRequest "cancelRequest"
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
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchRequest "maybe'progressRequest"
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
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchRequest "progressRequest"
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
                 (Data.ProtoLens.maybeLens Data.Default.Class.def))
instance Data.Default.Class.Default WatchRequest where
        def
          = WatchRequest{_WatchRequest'requestUnion = Prelude.Nothing,
                         _WatchRequest'_unknownFields = ([])}
instance Data.ProtoLens.Message WatchRequest where
        messageName _ = Data.Text.pack "etcdserverpb.WatchRequest"
        fieldsByTag
          = let createRequest__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "create_request"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor WatchCreateRequest)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'createRequest")))
                      :: Data.ProtoLens.FieldDescriptor WatchRequest
                cancelRequest__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "cancel_request"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor WatchCancelRequest)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) ::
                               (Lens.Labels.Proxy#) "maybe'cancelRequest")))
                      :: Data.ProtoLens.FieldDescriptor WatchRequest
                progressRequest__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "progress_request"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor WatchProgressRequest)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
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
                       deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance (Lens.Labels.HasLens' f WatchResponse x a, a ~ b) =>
         Lens.Labels.HasLens f WatchResponse WatchResponse x a b
         where
        lensOf = Lens.Labels.lensOf'
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchResponse "header" (ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchResponse'header
                 (\ x__ y__ -> x__{_WatchResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.Default.Class.def)
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchResponse "maybe'header"
           (Prelude.Maybe ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchResponse'header
                 (\ x__ y__ -> x__{_WatchResponse'header = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchResponse "watchId" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchResponse'watchId
                 (\ x__ y__ -> x__{_WatchResponse'watchId = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchResponse "created" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchResponse'created
                 (\ x__ y__ -> x__{_WatchResponse'created = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchResponse "canceled" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchResponse'canceled
                 (\ x__ y__ -> x__{_WatchResponse'canceled = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchResponse "compactRevision"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchResponse'compactRevision
                 (\ x__ y__ -> x__{_WatchResponse'compactRevision = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchResponse "cancelReason"
           (Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchResponse'cancelReason
                 (\ x__ y__ -> x__{_WatchResponse'cancelReason = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchResponse "fragment" (Prelude.Bool)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchResponse'fragment
                 (\ x__ y__ -> x__{_WatchResponse'fragment = y__}))
              Prelude.id
instance Prelude.Functor f =>
         Lens.Labels.HasLens' f WatchResponse "events"
           ([Proto.Etcd.Mvcc.Mvccpb.Kv.Event])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _WatchResponse'events
                 (\ x__ y__ -> x__{_WatchResponse'events = y__}))
              Prelude.id
instance Data.Default.Class.Default WatchResponse where
        def
          = WatchResponse{_WatchResponse'header = Prelude.Nothing,
                          _WatchResponse'watchId = Data.ProtoLens.fieldDefault,
                          _WatchResponse'created = Data.ProtoLens.fieldDefault,
                          _WatchResponse'canceled = Data.ProtoLens.fieldDefault,
                          _WatchResponse'compactRevision = Data.ProtoLens.fieldDefault,
                          _WatchResponse'cancelReason = Data.ProtoLens.fieldDefault,
                          _WatchResponse'fragment = Data.ProtoLens.fieldDefault,
                          _WatchResponse'events = [], _WatchResponse'_unknownFields = ([])}
instance Data.ProtoLens.Message WatchResponse where
        messageName _ = Data.Text.pack "etcdserverpb.WatchResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor WatchResponse
                watchId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "watch_id"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "watchId")))
                      :: Data.ProtoLens.FieldDescriptor WatchResponse
                created__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "created"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "created")))
                      :: Data.ProtoLens.FieldDescriptor WatchResponse
                canceled__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "canceled"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "canceled")))
                      :: Data.ProtoLens.FieldDescriptor WatchResponse
                compactRevision__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "compact_revision"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "compactRevision")))
                      :: Data.ProtoLens.FieldDescriptor WatchResponse
                cancelReason__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "cancel_reason"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "cancelReason")))
                      :: Data.ProtoLens.FieldDescriptor WatchResponse
                fragment__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "fragment"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "fragment")))
                      :: Data.ProtoLens.FieldDescriptor WatchResponse
                events__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "events"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Proto.Etcd.Mvcc.Mvccpb.Kv.Event)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf
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