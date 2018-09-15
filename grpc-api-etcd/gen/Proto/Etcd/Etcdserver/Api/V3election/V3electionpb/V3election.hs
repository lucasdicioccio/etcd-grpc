{- This file was auto-generated from etcd/etcdserver/api/v3election/v3electionpb/v3election.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election
       (Election(..), CampaignRequest(), CampaignResponse(), LeaderKey(),
        LeaderRequest(), LeaderResponse(), ProclaimRequest(),
        ProclaimResponse(), ResignRequest(), ResignResponse())
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
import qualified Proto.Etcd.Mvcc.Mvccpb.Kv
import qualified Proto.Gogoproto.Gogo
import qualified Proto.Google.Api.Annotations

{- | Fields :

    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.name' @:: Lens' CampaignRequest Data.ByteString.ByteString@
    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.lease' @:: Lens' CampaignRequest Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.value' @:: Lens' CampaignRequest Data.ByteString.ByteString@
 -}
data CampaignRequest = CampaignRequest{_CampaignRequest'name ::
                                       !Data.ByteString.ByteString,
                                       _CampaignRequest'lease :: !Data.Int.Int64,
                                       _CampaignRequest'value :: !Data.ByteString.ByteString,
                                       _CampaignRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
                         deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CampaignRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' CampaignRequest "name"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CampaignRequest'name
                 (\ x__ y__ -> x__{_CampaignRequest'name = y__}))
              Prelude.id
instance Lens.Labels.HasLens' CampaignRequest "lease"
           (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CampaignRequest'lease
                 (\ x__ y__ -> x__{_CampaignRequest'lease = y__}))
              Prelude.id
instance Lens.Labels.HasLens' CampaignRequest "value"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CampaignRequest'value
                 (\ x__ y__ -> x__{_CampaignRequest'value = y__}))
              Prelude.id
instance Data.ProtoLens.Message CampaignRequest where
        messageName _ = Data.Text.pack "v3electionpb.CampaignRequest"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor CampaignRequest
                lease__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "lease"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "lease")))
                      :: Data.ProtoLens.FieldDescriptor CampaignRequest
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor CampaignRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, name__field_descriptor),
                 (Data.ProtoLens.Tag 2, lease__field_descriptor),
                 (Data.ProtoLens.Tag 3, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _CampaignRequest'_unknownFields
              (\ x__ y__ -> x__{_CampaignRequest'_unknownFields = y__})
        defMessage
          = CampaignRequest{_CampaignRequest'name =
                              Data.ProtoLens.fieldDefault,
                            _CampaignRequest'lease = Data.ProtoLens.fieldDefault,
                            _CampaignRequest'value = Data.ProtoLens.fieldDefault,
                            _CampaignRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData CampaignRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_CampaignRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_CampaignRequest'name x__)
                   (Control.DeepSeq.deepseq (_CampaignRequest'lease x__)
                      (Control.DeepSeq.deepseq (_CampaignRequest'value x__) (()))))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.header' @:: Lens' CampaignResponse
  Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.maybe'header' @:: Lens' CampaignResponse
  (Prelude.Maybe
     Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.leader' @:: Lens' CampaignResponse LeaderKey@
    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.maybe'leader' @:: Lens' CampaignResponse (Prelude.Maybe LeaderKey)@
 -}
data CampaignResponse = CampaignResponse{_CampaignResponse'header
                                         ::
                                         !(Prelude.Maybe
                                             Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader),
                                         _CampaignResponse'leader :: !(Prelude.Maybe LeaderKey),
                                         _CampaignResponse'_unknownFields ::
                                         !Data.ProtoLens.FieldSet}
                          deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CampaignResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' CampaignResponse "header"
           (Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CampaignResponse'header
                 (\ x__ y__ -> x__{_CampaignResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' CampaignResponse "maybe'header"
           (Prelude.Maybe
              Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CampaignResponse'header
                 (\ x__ y__ -> x__{_CampaignResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' CampaignResponse "leader" (LeaderKey)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CampaignResponse'leader
                 (\ x__ y__ -> x__{_CampaignResponse'leader = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' CampaignResponse "maybe'leader"
           (Prelude.Maybe LeaderKey)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _CampaignResponse'leader
                 (\ x__ y__ -> x__{_CampaignResponse'leader = y__}))
              Prelude.id
instance Data.ProtoLens.Message CampaignResponse where
        messageName _ = Data.Text.pack "v3electionpb.CampaignResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor CampaignResponse
                leader__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "leader"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor LeaderKey)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'leader")))
                      :: Data.ProtoLens.FieldDescriptor CampaignResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, leader__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _CampaignResponse'_unknownFields
              (\ x__ y__ -> x__{_CampaignResponse'_unknownFields = y__})
        defMessage
          = CampaignResponse{_CampaignResponse'header = Prelude.Nothing,
                             _CampaignResponse'leader = Prelude.Nothing,
                             _CampaignResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData CampaignResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_CampaignResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_CampaignResponse'header x__)
                   (Control.DeepSeq.deepseq (_CampaignResponse'leader x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.name' @:: Lens' LeaderKey Data.ByteString.ByteString@
    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.key' @:: Lens' LeaderKey Data.ByteString.ByteString@
    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.rev' @:: Lens' LeaderKey Data.Int.Int64@
    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.lease' @:: Lens' LeaderKey Data.Int.Int64@
 -}
data LeaderKey = LeaderKey{_LeaderKey'name ::
                           !Data.ByteString.ByteString,
                           _LeaderKey'key :: !Data.ByteString.ByteString,
                           _LeaderKey'rev :: !Data.Int.Int64,
                           _LeaderKey'lease :: !Data.Int.Int64,
                           _LeaderKey'_unknownFields :: !Data.ProtoLens.FieldSet}
                   deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LeaderKey where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' LeaderKey "name"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaderKey'name
                 (\ x__ y__ -> x__{_LeaderKey'name = y__}))
              Prelude.id
instance Lens.Labels.HasLens' LeaderKey "key"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaderKey'key
                 (\ x__ y__ -> x__{_LeaderKey'key = y__}))
              Prelude.id
instance Lens.Labels.HasLens' LeaderKey "rev" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaderKey'rev
                 (\ x__ y__ -> x__{_LeaderKey'rev = y__}))
              Prelude.id
instance Lens.Labels.HasLens' LeaderKey "lease" (Data.Int.Int64)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaderKey'lease
                 (\ x__ y__ -> x__{_LeaderKey'lease = y__}))
              Prelude.id
instance Data.ProtoLens.Message LeaderKey where
        messageName _ = Data.Text.pack "v3electionpb.LeaderKey"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor LeaderKey
                key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor LeaderKey
                rev__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "rev"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "rev")))
                      :: Data.ProtoLens.FieldDescriptor LeaderKey
                lease__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "lease"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "lease")))
                      :: Data.ProtoLens.FieldDescriptor LeaderKey
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, name__field_descriptor),
                 (Data.ProtoLens.Tag 2, key__field_descriptor),
                 (Data.ProtoLens.Tag 3, rev__field_descriptor),
                 (Data.ProtoLens.Tag 4, lease__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LeaderKey'_unknownFields
              (\ x__ y__ -> x__{_LeaderKey'_unknownFields = y__})
        defMessage
          = LeaderKey{_LeaderKey'name = Data.ProtoLens.fieldDefault,
                      _LeaderKey'key = Data.ProtoLens.fieldDefault,
                      _LeaderKey'rev = Data.ProtoLens.fieldDefault,
                      _LeaderKey'lease = Data.ProtoLens.fieldDefault,
                      _LeaderKey'_unknownFields = ([])}
instance Control.DeepSeq.NFData LeaderKey where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_LeaderKey'_unknownFields x__)
                (Control.DeepSeq.deepseq (_LeaderKey'name x__)
                   (Control.DeepSeq.deepseq (_LeaderKey'key x__)
                      (Control.DeepSeq.deepseq (_LeaderKey'rev x__)
                         (Control.DeepSeq.deepseq (_LeaderKey'lease x__) (())))))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.name' @:: Lens' LeaderRequest Data.ByteString.ByteString@
 -}
data LeaderRequest = LeaderRequest{_LeaderRequest'name ::
                                   !Data.ByteString.ByteString,
                                   _LeaderRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
                       deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LeaderRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' LeaderRequest "name"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaderRequest'name
                 (\ x__ y__ -> x__{_LeaderRequest'name = y__}))
              Prelude.id
instance Data.ProtoLens.Message LeaderRequest where
        messageName _ = Data.Text.pack "v3electionpb.LeaderRequest"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor LeaderRequest
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, name__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LeaderRequest'_unknownFields
              (\ x__ y__ -> x__{_LeaderRequest'_unknownFields = y__})
        defMessage
          = LeaderRequest{_LeaderRequest'name = Data.ProtoLens.fieldDefault,
                          _LeaderRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData LeaderRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_LeaderRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_LeaderRequest'name x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.header' @:: Lens' LeaderResponse
  Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.maybe'header' @:: Lens' LeaderResponse
  (Prelude.Maybe
     Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)@
    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.kv' @:: Lens' LeaderResponse Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue@
    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.maybe'kv' @:: Lens' LeaderResponse
  (Prelude.Maybe Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue)@
 -}
data LeaderResponse = LeaderResponse{_LeaderResponse'header ::
                                     !(Prelude.Maybe
                                         Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader),
                                     _LeaderResponse'kv ::
                                     !(Prelude.Maybe Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue),
                                     _LeaderResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
                        deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LeaderResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' LeaderResponse "header"
           (Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaderResponse'header
                 (\ x__ y__ -> x__{_LeaderResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' LeaderResponse "maybe'header"
           (Prelude.Maybe
              Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaderResponse'header
                 (\ x__ y__ -> x__{_LeaderResponse'header = y__}))
              Prelude.id
instance Lens.Labels.HasLens' LeaderResponse "kv"
           (Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaderResponse'kv
                 (\ x__ y__ -> x__{_LeaderResponse'kv = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' LeaderResponse "maybe'kv"
           (Prelude.Maybe Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _LeaderResponse'kv
                 (\ x__ y__ -> x__{_LeaderResponse'kv = y__}))
              Prelude.id
instance Data.ProtoLens.Message LeaderResponse where
        messageName _ = Data.Text.pack "v3electionpb.LeaderResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor LeaderResponse
                kv__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "kv"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Etcd.Mvcc.Mvccpb.Kv.KeyValue)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'kv")))
                      :: Data.ProtoLens.FieldDescriptor LeaderResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor),
                 (Data.ProtoLens.Tag 2, kv__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _LeaderResponse'_unknownFields
              (\ x__ y__ -> x__{_LeaderResponse'_unknownFields = y__})
        defMessage
          = LeaderResponse{_LeaderResponse'header = Prelude.Nothing,
                           _LeaderResponse'kv = Prelude.Nothing,
                           _LeaderResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData LeaderResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_LeaderResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_LeaderResponse'header x__)
                   (Control.DeepSeq.deepseq (_LeaderResponse'kv x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.leader' @:: Lens' ProclaimRequest LeaderKey@
    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.maybe'leader' @:: Lens' ProclaimRequest (Prelude.Maybe LeaderKey)@
    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.value' @:: Lens' ProclaimRequest Data.ByteString.ByteString@
 -}
data ProclaimRequest = ProclaimRequest{_ProclaimRequest'leader ::
                                       !(Prelude.Maybe LeaderKey),
                                       _ProclaimRequest'value :: !Data.ByteString.ByteString,
                                       _ProclaimRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
                         deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProclaimRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ProclaimRequest "leader" (LeaderKey)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ProclaimRequest'leader
                 (\ x__ y__ -> x__{_ProclaimRequest'leader = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ProclaimRequest "maybe'leader"
           (Prelude.Maybe LeaderKey)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ProclaimRequest'leader
                 (\ x__ y__ -> x__{_ProclaimRequest'leader = y__}))
              Prelude.id
instance Lens.Labels.HasLens' ProclaimRequest "value"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ProclaimRequest'value
                 (\ x__ y__ -> x__{_ProclaimRequest'value = y__}))
              Prelude.id
instance Data.ProtoLens.Message ProclaimRequest where
        messageName _ = Data.Text.pack "v3electionpb.ProclaimRequest"
        fieldsByTag
          = let leader__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "leader"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor LeaderKey)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'leader")))
                      :: Data.ProtoLens.FieldDescriptor ProclaimRequest
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "value")))
                      :: Data.ProtoLens.FieldDescriptor ProclaimRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, leader__field_descriptor),
                 (Data.ProtoLens.Tag 2, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ProclaimRequest'_unknownFields
              (\ x__ y__ -> x__{_ProclaimRequest'_unknownFields = y__})
        defMessage
          = ProclaimRequest{_ProclaimRequest'leader = Prelude.Nothing,
                            _ProclaimRequest'value = Data.ProtoLens.fieldDefault,
                            _ProclaimRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData ProclaimRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ProclaimRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ProclaimRequest'leader x__)
                   (Control.DeepSeq.deepseq (_ProclaimRequest'value x__) (())))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.header' @:: Lens' ProclaimResponse
  Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.maybe'header' @:: Lens' ProclaimResponse
  (Prelude.Maybe
     Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)@
 -}
data ProclaimResponse = ProclaimResponse{_ProclaimResponse'header
                                         ::
                                         !(Prelude.Maybe
                                             Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader),
                                         _ProclaimResponse'_unknownFields ::
                                         !Data.ProtoLens.FieldSet}
                          deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProclaimResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ProclaimResponse "header"
           (Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ProclaimResponse'header
                 (\ x__ y__ -> x__{_ProclaimResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ProclaimResponse "maybe'header"
           (Prelude.Maybe
              Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ProclaimResponse'header
                 (\ x__ y__ -> x__{_ProclaimResponse'header = y__}))
              Prelude.id
instance Data.ProtoLens.Message ProclaimResponse where
        messageName _ = Data.Text.pack "v3electionpb.ProclaimResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor ProclaimResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ProclaimResponse'_unknownFields
              (\ x__ y__ -> x__{_ProclaimResponse'_unknownFields = y__})
        defMessage
          = ProclaimResponse{_ProclaimResponse'header = Prelude.Nothing,
                             _ProclaimResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData ProclaimResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ProclaimResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ProclaimResponse'header x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.leader' @:: Lens' ResignRequest LeaderKey@
    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.maybe'leader' @:: Lens' ResignRequest (Prelude.Maybe LeaderKey)@
 -}
data ResignRequest = ResignRequest{_ResignRequest'leader ::
                                   !(Prelude.Maybe LeaderKey),
                                   _ResignRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
                       deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResignRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ResignRequest "leader" (LeaderKey)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResignRequest'leader
                 (\ x__ y__ -> x__{_ResignRequest'leader = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ResignRequest "maybe'leader"
           (Prelude.Maybe LeaderKey)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResignRequest'leader
                 (\ x__ y__ -> x__{_ResignRequest'leader = y__}))
              Prelude.id
instance Data.ProtoLens.Message ResignRequest where
        messageName _ = Data.Text.pack "v3electionpb.ResignRequest"
        fieldsByTag
          = let leader__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "leader"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor LeaderKey)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'leader")))
                      :: Data.ProtoLens.FieldDescriptor ResignRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, leader__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ResignRequest'_unknownFields
              (\ x__ y__ -> x__{_ResignRequest'_unknownFields = y__})
        defMessage
          = ResignRequest{_ResignRequest'leader = Prelude.Nothing,
                          _ResignRequest'_unknownFields = ([])}
instance Control.DeepSeq.NFData ResignRequest where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ResignRequest'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ResignRequest'leader x__) (()))
{- | Fields :

    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.header' @:: Lens' ResignResponse
  Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader@
    * 'Proto.Etcd.Etcdserver.Api.V3election.V3electionpb.V3election_Fields.maybe'header' @:: Lens' ResignResponse
  (Prelude.Maybe
     Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)@
 -}
data ResignResponse = ResignResponse{_ResignResponse'header ::
                                     !(Prelude.Maybe
                                         Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader),
                                     _ResignResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
                        deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ResignResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' ResignResponse "header"
           (Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResignResponse'header
                 (\ x__ y__ -> x__{_ResignResponse'header = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' ResignResponse "maybe'header"
           (Prelude.Maybe
              Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _ResignResponse'header
                 (\ x__ y__ -> x__{_ResignResponse'header = y__}))
              Prelude.id
instance Data.ProtoLens.Message ResignResponse where
        messageName _ = Data.Text.pack "v3electionpb.ResignResponse"
        fieldsByTag
          = let header__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "header"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           Proto.Etcd.Etcdserver.Etcdserverpb.Rpc.ResponseHeader)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'header")))
                      :: Data.ProtoLens.FieldDescriptor ResignResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, header__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ResignResponse'_unknownFields
              (\ x__ y__ -> x__{_ResignResponse'_unknownFields = y__})
        defMessage
          = ResignResponse{_ResignResponse'header = Prelude.Nothing,
                           _ResignResponse'_unknownFields = ([])}
instance Control.DeepSeq.NFData ResignResponse where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_ResignResponse'_unknownFields x__)
                (Control.DeepSeq.deepseq (_ResignResponse'header x__) (()))
data Election = Election{}
                  deriving ()
instance Data.ProtoLens.Service.Types.Service Election where
        type ServiceName Election = "Election"
        type ServicePackage Election = "v3electionpb"
        type ServiceMethods Election =
             '["campaign", "leader", "observe", "proclaim", "resign"]
instance Data.ProtoLens.Service.Types.HasMethodImpl Election
           "campaign"
         where
        type MethodName Election "campaign" = "Campaign"
        type MethodInput Election "campaign" = CampaignRequest
        type MethodOutput Election "campaign" = CampaignResponse
        type MethodStreamingType Election "campaign" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Election
           "proclaim"
         where
        type MethodName Election "proclaim" = "Proclaim"
        type MethodInput Election "proclaim" = ProclaimRequest
        type MethodOutput Election "proclaim" = ProclaimResponse
        type MethodStreamingType Election "proclaim" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Election
           "leader"
         where
        type MethodName Election "leader" = "Leader"
        type MethodInput Election "leader" = LeaderRequest
        type MethodOutput Election "leader" = LeaderResponse
        type MethodStreamingType Election "leader" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Election
           "observe"
         where
        type MethodName Election "observe" = "Observe"
        type MethodInput Election "observe" = LeaderRequest
        type MethodOutput Election "observe" = LeaderResponse
        type MethodStreamingType Election "observe" =
             'Data.ProtoLens.Service.Types.ServerStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Election
           "resign"
         where
        type MethodName Election "resign" = "Resign"
        type MethodInput Election "resign" = ResignRequest
        type MethodOutput Election "resign" = ResignResponse
        type MethodStreamingType Election "resign" =
             'Data.ProtoLens.Service.Types.NonStreaming