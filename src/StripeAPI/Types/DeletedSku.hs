{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.DeletedSku where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Generics
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common

data DeletedSku
    = DeletedSku {deletedSkuDeleted :: DeletedSkuDeleted',
                  deletedSkuId :: GHC.Base.String,
                  deletedSkuObject :: DeletedSkuObject'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data DeletedSkuDeleted'
    = DeletedSkuDeleted'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedSkuDeleted'EnumTyped GHC.Types.Bool
    | DeletedSkuDeleted'EnumBoolTrue
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedSkuDeleted'
    where toJSON (DeletedSkuDeleted'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedSkuDeleted'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedSkuDeleted'EnumBoolTrue) = Data.Aeson.Types.Internal.Bool GHC.Types.True
instance Data.Aeson.FromJSON DeletedSkuDeleted'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== Data.Aeson.Types.Internal.Bool GHC.Types.True
                                          then DeletedSkuDeleted'EnumBoolTrue
                                          else DeletedSkuDeleted'EnumOther val)
data DeletedSkuObject'
    = DeletedSkuObject'EnumOther Data.Aeson.Types.Internal.Value
    | DeletedSkuObject'EnumTyped GHC.Base.String
    | DeletedSkuObject'EnumStringSku
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON DeletedSkuObject'
    where toJSON (DeletedSkuObject'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedSkuObject'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (DeletedSkuObject'EnumStringSku) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sku"
instance Data.Aeson.FromJSON DeletedSkuObject'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "sku")
                                          then DeletedSkuObject'EnumStringSku
                                          else DeletedSkuObject'EnumOther val)
instance Data.Aeson.ToJSON DeletedSku
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "deleted" (deletedSkuDeleted obj) : (Data.Aeson..=) "id" (deletedSkuId obj) : (Data.Aeson..=) "object" (deletedSkuObject obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "deleted" (deletedSkuDeleted obj) GHC.Base.<> ((Data.Aeson..=) "id" (deletedSkuId obj) GHC.Base.<> (Data.Aeson..=) "object" (deletedSkuObject obj)))
instance Data.Aeson.Types.FromJSON.FromJSON DeletedSku
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "DeletedSku" (\obj -> ((GHC.Base.pure DeletedSku GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "deleted")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object"))