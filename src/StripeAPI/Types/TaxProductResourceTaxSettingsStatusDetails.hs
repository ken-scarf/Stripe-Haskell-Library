-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TaxProductResourceTaxSettingsStatusDetails
module StripeAPI.Types.TaxProductResourceTaxSettingsStatusDetails where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import {-# SOURCE #-} StripeAPI.Types.TaxProductResourceTaxSettingsStatusDetailsResourcePending

-- | Defines the object schema located at @components.schemas.tax_product_resource_tax_settings_status_details@ in the specification.
-- 
-- 
data TaxProductResourceTaxSettingsStatusDetails = TaxProductResourceTaxSettingsStatusDetails {
  -- | active: 
  taxProductResourceTaxSettingsStatusDetailsActive :: (GHC.Maybe.Maybe TaxProductResourceTaxSettingsStatusDetailsResourceActive)
  -- | pending: 
  , taxProductResourceTaxSettingsStatusDetailsPending :: (GHC.Maybe.Maybe TaxProductResourceTaxSettingsStatusDetailsResourcePending)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxProductResourceTaxSettingsStatusDetails
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("active" Data.Aeson.Types.ToJSON..=)) (taxProductResourceTaxSettingsStatusDetailsActive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pending" Data.Aeson.Types.ToJSON..=)) (taxProductResourceTaxSettingsStatusDetailsPending obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("active" Data.Aeson.Types.ToJSON..=)) (taxProductResourceTaxSettingsStatusDetailsActive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("pending" Data.Aeson.Types.ToJSON..=)) (taxProductResourceTaxSettingsStatusDetailsPending obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON TaxProductResourceTaxSettingsStatusDetails
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxProductResourceTaxSettingsStatusDetails" (\obj -> (GHC.Base.pure TaxProductResourceTaxSettingsStatusDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "pending"))}
-- | Create a new 'TaxProductResourceTaxSettingsStatusDetails' with all required fields.
mkTaxProductResourceTaxSettingsStatusDetails :: TaxProductResourceTaxSettingsStatusDetails
mkTaxProductResourceTaxSettingsStatusDetails = TaxProductResourceTaxSettingsStatusDetails{taxProductResourceTaxSettingsStatusDetailsActive = GHC.Maybe.Nothing,
                                                                                          taxProductResourceTaxSettingsStatusDetailsPending = GHC.Maybe.Nothing}