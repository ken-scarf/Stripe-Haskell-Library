-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TaxProductResourceTaxSettingsStatusDetailsResourcePending
module StripeAPI.Types.TaxProductResourceTaxSettingsStatusDetailsResourcePending where

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

-- | Defines the object schema located at @components.schemas.tax_product_resource_tax_settings_status_details_resource_pending@ in the specification.
-- 
-- 
data TaxProductResourceTaxSettingsStatusDetailsResourcePending = TaxProductResourceTaxSettingsStatusDetailsResourcePending {
  -- | missing_fields: The list of missing fields that are required to perform calculations. It includes the entry \`head_office\` when the status is \`pending\`. It is recommended to set the optional values even if they aren\'t listed as required for calculating taxes. Calculations can fail if missing fields aren\'t explicitly provided on every call.
  taxProductResourceTaxSettingsStatusDetailsResourcePendingMissingFields :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([Data.Text.Internal.Text])))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxProductResourceTaxSettingsStatusDetailsResourcePending
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("missing_fields" Data.Aeson.Types.ToJSON..=)) (taxProductResourceTaxSettingsStatusDetailsResourcePendingMissingFields obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("missing_fields" Data.Aeson.Types.ToJSON..=)) (taxProductResourceTaxSettingsStatusDetailsResourcePendingMissingFields obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON TaxProductResourceTaxSettingsStatusDetailsResourcePending
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxProductResourceTaxSettingsStatusDetailsResourcePending" (\obj -> GHC.Base.pure TaxProductResourceTaxSettingsStatusDetailsResourcePending GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "missing_fields"))}
-- | Create a new 'TaxProductResourceTaxSettingsStatusDetailsResourcePending' with all required fields.
mkTaxProductResourceTaxSettingsStatusDetailsResourcePending :: TaxProductResourceTaxSettingsStatusDetailsResourcePending
mkTaxProductResourceTaxSettingsStatusDetailsResourcePending = TaxProductResourceTaxSettingsStatusDetailsResourcePending{taxProductResourceTaxSettingsStatusDetailsResourcePendingMissingFields = GHC.Maybe.Nothing}