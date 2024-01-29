-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TaxProductRegistrationsResourceCountryOptionsEuStandard
module StripeAPI.Types.TaxProductRegistrationsResourceCountryOptionsEuStandard where

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

-- | Defines the object schema located at @components.schemas.tax_product_registrations_resource_country_options_eu_standard@ in the specification.
-- 
-- 
data TaxProductRegistrationsResourceCountryOptionsEuStandard = TaxProductRegistrationsResourceCountryOptionsEuStandard {
  -- | place_of_supply_scheme: Place of supply scheme used in an EU standard registration.
  taxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme :: TaxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxProductRegistrationsResourceCountryOptionsEuStandard
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["place_of_supply_scheme" Data.Aeson.Types.ToJSON..= taxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["place_of_supply_scheme" Data.Aeson.Types.ToJSON..= taxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON TaxProductRegistrationsResourceCountryOptionsEuStandard
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxProductRegistrationsResourceCountryOptionsEuStandard" (\obj -> GHC.Base.pure TaxProductRegistrationsResourceCountryOptionsEuStandard GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "place_of_supply_scheme"))}
-- | Create a new 'TaxProductRegistrationsResourceCountryOptionsEuStandard' with all required fields.
mkTaxProductRegistrationsResourceCountryOptionsEuStandard :: TaxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme' -- ^ 'taxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme'
  -> TaxProductRegistrationsResourceCountryOptionsEuStandard
mkTaxProductRegistrationsResourceCountryOptionsEuStandard taxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme = TaxProductRegistrationsResourceCountryOptionsEuStandard{taxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme = taxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme}
-- | Defines the enum schema located at @components.schemas.tax_product_registrations_resource_country_options_eu_standard.properties.place_of_supply_scheme@ in the specification.
-- 
-- Place of supply scheme used in an EU standard registration.
data TaxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme' =
   TaxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | TaxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | TaxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme'EnumSmallSeller -- ^ Represents the JSON value @"small_seller"@
  | TaxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme'EnumStandard -- ^ Represents the JSON value @"standard"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme'
    where {toJSON (TaxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme'Other val) = val;
           toJSON (TaxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (TaxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme'EnumSmallSeller) = "small_seller";
           toJSON (TaxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme'EnumStandard) = "standard"}
instance Data.Aeson.Types.FromJSON.FromJSON TaxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "small_seller" -> TaxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme'EnumSmallSeller
                                             | val GHC.Classes.== "standard" -> TaxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme'EnumStandard
                                             | GHC.Base.otherwise -> TaxProductRegistrationsResourceCountryOptionsEuStandardPlaceOfSupplyScheme'Other val)}