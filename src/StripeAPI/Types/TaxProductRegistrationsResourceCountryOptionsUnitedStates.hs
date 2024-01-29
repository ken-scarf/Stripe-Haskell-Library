-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TaxProductRegistrationsResourceCountryOptionsUnitedStates
module StripeAPI.Types.TaxProductRegistrationsResourceCountryOptionsUnitedStates where

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
import {-# SOURCE #-} StripeAPI.Types.TaxProductRegistrationsResourceCountryOptionsUsLocalAmusementTax
import {-# SOURCE #-} StripeAPI.Types.TaxProductRegistrationsResourceCountryOptionsUsLocalLeaseTax

-- | Defines the object schema located at @components.schemas.tax_product_registrations_resource_country_options_united_states@ in the specification.
-- 
-- 
data TaxProductRegistrationsResourceCountryOptionsUnitedStates = TaxProductRegistrationsResourceCountryOptionsUnitedStates {
  -- | local_amusement_tax: 
  taxProductRegistrationsResourceCountryOptionsUnitedStatesLocalAmusementTax :: (GHC.Maybe.Maybe TaxProductRegistrationsResourceCountryOptionsUsLocalAmusementTax)
  -- | local_lease_tax: 
  , taxProductRegistrationsResourceCountryOptionsUnitedStatesLocalLeaseTax :: (GHC.Maybe.Maybe TaxProductRegistrationsResourceCountryOptionsUsLocalLeaseTax)
  -- | state: Two-letter US state code ([ISO 3166-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-2)).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxProductRegistrationsResourceCountryOptionsUnitedStatesState :: Data.Text.Internal.Text
  -- | type: Type of registration in the US.
  , taxProductRegistrationsResourceCountryOptionsUnitedStatesType :: TaxProductRegistrationsResourceCountryOptionsUnitedStatesType'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxProductRegistrationsResourceCountryOptionsUnitedStates
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("local_amusement_tax" Data.Aeson.Types.ToJSON..=)) (taxProductRegistrationsResourceCountryOptionsUnitedStatesLocalAmusementTax obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("local_lease_tax" Data.Aeson.Types.ToJSON..=)) (taxProductRegistrationsResourceCountryOptionsUnitedStatesLocalLeaseTax obj) : ["state" Data.Aeson.Types.ToJSON..= taxProductRegistrationsResourceCountryOptionsUnitedStatesState obj] : ["type" Data.Aeson.Types.ToJSON..= taxProductRegistrationsResourceCountryOptionsUnitedStatesType obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("local_amusement_tax" Data.Aeson.Types.ToJSON..=)) (taxProductRegistrationsResourceCountryOptionsUnitedStatesLocalAmusementTax obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("local_lease_tax" Data.Aeson.Types.ToJSON..=)) (taxProductRegistrationsResourceCountryOptionsUnitedStatesLocalLeaseTax obj) : ["state" Data.Aeson.Types.ToJSON..= taxProductRegistrationsResourceCountryOptionsUnitedStatesState obj] : ["type" Data.Aeson.Types.ToJSON..= taxProductRegistrationsResourceCountryOptionsUnitedStatesType obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON TaxProductRegistrationsResourceCountryOptionsUnitedStates
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxProductRegistrationsResourceCountryOptionsUnitedStates" (\obj -> (((GHC.Base.pure TaxProductRegistrationsResourceCountryOptionsUnitedStates GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "local_amusement_tax")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "local_lease_tax")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))}
-- | Create a new 'TaxProductRegistrationsResourceCountryOptionsUnitedStates' with all required fields.
mkTaxProductRegistrationsResourceCountryOptionsUnitedStates :: Data.Text.Internal.Text -- ^ 'taxProductRegistrationsResourceCountryOptionsUnitedStatesState'
  -> TaxProductRegistrationsResourceCountryOptionsUnitedStatesType' -- ^ 'taxProductRegistrationsResourceCountryOptionsUnitedStatesType'
  -> TaxProductRegistrationsResourceCountryOptionsUnitedStates
mkTaxProductRegistrationsResourceCountryOptionsUnitedStates taxProductRegistrationsResourceCountryOptionsUnitedStatesState taxProductRegistrationsResourceCountryOptionsUnitedStatesType = TaxProductRegistrationsResourceCountryOptionsUnitedStates{taxProductRegistrationsResourceCountryOptionsUnitedStatesLocalAmusementTax = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                     taxProductRegistrationsResourceCountryOptionsUnitedStatesLocalLeaseTax = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                     taxProductRegistrationsResourceCountryOptionsUnitedStatesState = taxProductRegistrationsResourceCountryOptionsUnitedStatesState,
                                                                                                                                                                                                                                                     taxProductRegistrationsResourceCountryOptionsUnitedStatesType = taxProductRegistrationsResourceCountryOptionsUnitedStatesType}
-- | Defines the enum schema located at @components.schemas.tax_product_registrations_resource_country_options_united_states.properties.type@ in the specification.
-- 
-- Type of registration in the US.
data TaxProductRegistrationsResourceCountryOptionsUnitedStatesType' =
   TaxProductRegistrationsResourceCountryOptionsUnitedStatesType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | TaxProductRegistrationsResourceCountryOptionsUnitedStatesType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | TaxProductRegistrationsResourceCountryOptionsUnitedStatesType'EnumLocalAmusementTax -- ^ Represents the JSON value @"local_amusement_tax"@
  | TaxProductRegistrationsResourceCountryOptionsUnitedStatesType'EnumLocalLeaseTax -- ^ Represents the JSON value @"local_lease_tax"@
  | TaxProductRegistrationsResourceCountryOptionsUnitedStatesType'EnumStateCommunicationsTax -- ^ Represents the JSON value @"state_communications_tax"@
  | TaxProductRegistrationsResourceCountryOptionsUnitedStatesType'EnumStateSalesTax -- ^ Represents the JSON value @"state_sales_tax"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxProductRegistrationsResourceCountryOptionsUnitedStatesType'
    where {toJSON (TaxProductRegistrationsResourceCountryOptionsUnitedStatesType'Other val) = val;
           toJSON (TaxProductRegistrationsResourceCountryOptionsUnitedStatesType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (TaxProductRegistrationsResourceCountryOptionsUnitedStatesType'EnumLocalAmusementTax) = "local_amusement_tax";
           toJSON (TaxProductRegistrationsResourceCountryOptionsUnitedStatesType'EnumLocalLeaseTax) = "local_lease_tax";
           toJSON (TaxProductRegistrationsResourceCountryOptionsUnitedStatesType'EnumStateCommunicationsTax) = "state_communications_tax";
           toJSON (TaxProductRegistrationsResourceCountryOptionsUnitedStatesType'EnumStateSalesTax) = "state_sales_tax"}
instance Data.Aeson.Types.FromJSON.FromJSON TaxProductRegistrationsResourceCountryOptionsUnitedStatesType'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "local_amusement_tax" -> TaxProductRegistrationsResourceCountryOptionsUnitedStatesType'EnumLocalAmusementTax
                                             | val GHC.Classes.== "local_lease_tax" -> TaxProductRegistrationsResourceCountryOptionsUnitedStatesType'EnumLocalLeaseTax
                                             | val GHC.Classes.== "state_communications_tax" -> TaxProductRegistrationsResourceCountryOptionsUnitedStatesType'EnumStateCommunicationsTax
                                             | val GHC.Classes.== "state_sales_tax" -> TaxProductRegistrationsResourceCountryOptionsUnitedStatesType'EnumStateSalesTax
                                             | GHC.Base.otherwise -> TaxProductRegistrationsResourceCountryOptionsUnitedStatesType'Other val)}
