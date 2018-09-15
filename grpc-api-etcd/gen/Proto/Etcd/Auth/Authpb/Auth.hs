{- This file was auto-generated from etcd/auth/authpb/auth.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Etcd.Auth.Authpb.Auth
       (Permission(), Permission'Type(..), Permission'Type(),
        Permission'Type'UnrecognizedValue, Role(), User())
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

    * 'Proto.Etcd.Auth.Authpb.Auth_Fields.permType' @:: Lens' Permission Permission'Type@
    * 'Proto.Etcd.Auth.Authpb.Auth_Fields.key' @:: Lens' Permission Data.ByteString.ByteString@
    * 'Proto.Etcd.Auth.Authpb.Auth_Fields.rangeEnd' @:: Lens' Permission Data.ByteString.ByteString@
 -}
data Permission = Permission{_Permission'permType ::
                             !Permission'Type,
                             _Permission'key :: !Data.ByteString.ByteString,
                             _Permission'rangeEnd :: !Data.ByteString.ByteString,
                             _Permission'_unknownFields :: !Data.ProtoLens.FieldSet}
                    deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Permission where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' Permission "permType"
           (Permission'Type)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Permission'permType
                 (\ x__ y__ -> x__{_Permission'permType = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Permission "key"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Permission'key
                 (\ x__ y__ -> x__{_Permission'key = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Permission "rangeEnd"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Permission'rangeEnd
                 (\ x__ y__ -> x__{_Permission'rangeEnd = y__}))
              Prelude.id
instance Data.ProtoLens.Message Permission where
        messageName _ = Data.Text.pack "authpb.Permission"
        fieldsByTag
          = let permType__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "permType"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor Permission'Type)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "permType")))
                      :: Data.ProtoLens.FieldDescriptor Permission
                key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "key")))
                      :: Data.ProtoLens.FieldDescriptor Permission
                rangeEnd__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "range_end"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "rangeEnd")))
                      :: Data.ProtoLens.FieldDescriptor Permission
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, permType__field_descriptor),
                 (Data.ProtoLens.Tag 2, key__field_descriptor),
                 (Data.ProtoLens.Tag 3, rangeEnd__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Permission'_unknownFields
              (\ x__ y__ -> x__{_Permission'_unknownFields = y__})
        defMessage
          = Permission{_Permission'permType = Data.ProtoLens.fieldDefault,
                       _Permission'key = Data.ProtoLens.fieldDefault,
                       _Permission'rangeEnd = Data.ProtoLens.fieldDefault,
                       _Permission'_unknownFields = ([])}
instance Control.DeepSeq.NFData Permission where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_Permission'_unknownFields x__)
                (Control.DeepSeq.deepseq (_Permission'permType x__)
                   (Control.DeepSeq.deepseq (_Permission'key x__)
                      (Control.DeepSeq.deepseq (_Permission'rangeEnd x__) (()))))
data Permission'Type = Permission'READ
                     | Permission'WRITE
                     | Permission'READWRITE
                     | Permission'Type'Unrecognized !Permission'Type'UnrecognizedValue
                         deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
newtype Permission'Type'UnrecognizedValue = Permission'Type'UnrecognizedValue Data.Int.Int32
                                              deriving (Prelude.Eq, Prelude.Ord, Prelude.Show)
instance Data.ProtoLens.MessageEnum Permission'Type where
        maybeToEnum 0 = Prelude.Just Permission'READ
        maybeToEnum 1 = Prelude.Just Permission'WRITE
        maybeToEnum 2 = Prelude.Just Permission'READWRITE
        maybeToEnum k
          = Prelude.Just
              (Permission'Type'Unrecognized
                 (Permission'Type'UnrecognizedValue (Prelude.fromIntegral k)))
        showEnum Permission'READ = "READ"
        showEnum Permission'WRITE = "WRITE"
        showEnum Permission'READWRITE = "READWRITE"
        showEnum
          (Permission'Type'Unrecognized
             (Permission'Type'UnrecognizedValue k))
          = Prelude.show k
        readEnum "READ" = Prelude.Just Permission'READ
        readEnum "WRITE" = Prelude.Just Permission'WRITE
        readEnum "READWRITE" = Prelude.Just Permission'READWRITE
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Permission'Type where
        minBound = Permission'READ
        maxBound = Permission'READWRITE
instance Prelude.Enum Permission'Type where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum Type: "
                    (Prelude.show k__)))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum Permission'READ = 0
        fromEnum Permission'WRITE = 1
        fromEnum Permission'READWRITE = 2
        fromEnum
          (Permission'Type'Unrecognized
             (Permission'Type'UnrecognizedValue k))
          = Prelude.fromIntegral k
        succ Permission'READWRITE
          = Prelude.error
              "Permission'Type.succ: bad argument Permission'READWRITE. This value would be out of bounds."
        succ Permission'READ = Permission'WRITE
        succ Permission'WRITE = Permission'READWRITE
        succ _
          = Prelude.error
              "Permission'Type.succ: bad argument: unrecognized value"
        pred Permission'READ
          = Prelude.error
              "Permission'Type.pred: bad argument Permission'READ. This value would be out of bounds."
        pred Permission'WRITE = Permission'READ
        pred Permission'READWRITE = Permission'WRITE
        pred _
          = Prelude.error
              "Permission'Type.pred: bad argument: unrecognized value"
        enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
        enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
        enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
        enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Permission'Type where
        fieldDefault = Permission'READ
instance Control.DeepSeq.NFData Permission'Type where
        rnf x__ = Prelude.seq x__ (())
{- | Fields :

    * 'Proto.Etcd.Auth.Authpb.Auth_Fields.name' @:: Lens' Role Data.ByteString.ByteString@
    * 'Proto.Etcd.Auth.Authpb.Auth_Fields.keyPermission' @:: Lens' Role [Permission]@
 -}
data Role = Role{_Role'name :: !Data.ByteString.ByteString,
                 _Role'keyPermission :: ![Permission],
                 _Role'_unknownFields :: !Data.ProtoLens.FieldSet}
              deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Role where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' Role "name"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Role'name
                 (\ x__ y__ -> x__{_Role'name = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Role "keyPermission" ([Permission])
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Role'keyPermission
                 (\ x__ y__ -> x__{_Role'keyPermission = y__}))
              Prelude.id
instance Data.ProtoLens.Message Role where
        messageName _ = Data.Text.pack "authpb.Role"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor Role
                keyPermission__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "keyPermission"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Permission)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "keyPermission")))
                      :: Data.ProtoLens.FieldDescriptor Role
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, name__field_descriptor),
                 (Data.ProtoLens.Tag 2, keyPermission__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Role'_unknownFields
              (\ x__ y__ -> x__{_Role'_unknownFields = y__})
        defMessage
          = Role{_Role'name = Data.ProtoLens.fieldDefault,
                 _Role'keyPermission = [], _Role'_unknownFields = ([])}
instance Control.DeepSeq.NFData Role where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_Role'_unknownFields x__)
                (Control.DeepSeq.deepseq (_Role'name x__)
                   (Control.DeepSeq.deepseq (_Role'keyPermission x__) (())))
{- | Fields :

    * 'Proto.Etcd.Auth.Authpb.Auth_Fields.name' @:: Lens' User Data.ByteString.ByteString@
    * 'Proto.Etcd.Auth.Authpb.Auth_Fields.password' @:: Lens' User Data.ByteString.ByteString@
    * 'Proto.Etcd.Auth.Authpb.Auth_Fields.roles' @:: Lens' User [Data.Text.Text]@
 -}
data User = User{_User'name :: !Data.ByteString.ByteString,
                 _User'password :: !Data.ByteString.ByteString,
                 _User'roles :: ![Data.Text.Text],
                 _User'_unknownFields :: !Data.ProtoLens.FieldSet}
              deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show User where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' User "name"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _User'name
                 (\ x__ y__ -> x__{_User'name = y__}))
              Prelude.id
instance Lens.Labels.HasLens' User "password"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _User'password
                 (\ x__ y__ -> x__{_User'password = y__}))
              Prelude.id
instance Lens.Labels.HasLens' User "roles" ([Data.Text.Text]) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _User'roles
                 (\ x__ y__ -> x__{_User'roles = y__}))
              Prelude.id
instance Data.ProtoLens.Message User where
        messageName _ = Data.Text.pack "authpb.User"
        fieldsByTag
          = let name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
                      :: Data.ProtoLens.FieldDescriptor User
                password__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "password"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "password")))
                      :: Data.ProtoLens.FieldDescriptor User
                roles__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "roles"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "roles")))
                      :: Data.ProtoLens.FieldDescriptor User
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, name__field_descriptor),
                 (Data.ProtoLens.Tag 2, password__field_descriptor),
                 (Data.ProtoLens.Tag 3, roles__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _User'_unknownFields
              (\ x__ y__ -> x__{_User'_unknownFields = y__})
        defMessage
          = User{_User'name = Data.ProtoLens.fieldDefault,
                 _User'password = Data.ProtoLens.fieldDefault, _User'roles = [],
                 _User'_unknownFields = ([])}
instance Control.DeepSeq.NFData User where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_User'_unknownFields x__)
                (Control.DeepSeq.deepseq (_User'name x__)
                   (Control.DeepSeq.deepseq (_User'password x__)
                      (Control.DeepSeq.deepseq (_User'roles x__) (()))))