-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TaxProductResourceCustomerDetails
module StripeAPI.Types.TaxProductResourceCustomerDetails where

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
import {-# SOURCE #-} StripeAPI.Types.TaxProductResourceCustomerDetailsResourceTaxId
import {-# SOURCE #-} StripeAPI.Types.TaxProductResourcePostalAddress

-- | Defines the object schema located at @components.schemas.tax_product_resource_customer_details@ in the specification.
-- 
-- 
data TaxProductResourceCustomerDetails = TaxProductResourceCustomerDetails {
  -- | address: The customer\'s postal address (for example, home or business location).
  taxProductResourceCustomerDetailsAddress :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable TaxProductResourceCustomerDetailsAddress'NonNullable))
  -- | address_source: The type of customer address provided.
  , taxProductResourceCustomerDetailsAddressSource :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable TaxProductResourceCustomerDetailsAddressSource'NonNullable))
  -- | ip_address: The customer\'s IP address (IPv4 or IPv6).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxProductResourceCustomerDetailsIpAddress :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | tax_ids: The customer\'s tax IDs (for example, EU VAT numbers).
  , taxProductResourceCustomerDetailsTaxIds :: ([TaxProductResourceCustomerDetailsResourceTaxId])
  -- | taxability_override: The taxability override used for taxation.
  , taxProductResourceCustomerDetailsTaxabilityOverride :: TaxProductResourceCustomerDetailsTaxabilityOverride'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxProductResourceCustomerDetails
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address" Data.Aeson.Types.ToJSON..=)) (taxProductResourceCustomerDetailsAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_source" Data.Aeson.Types.ToJSON..=)) (taxProductResourceCustomerDetailsAddressSource obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ip_address" Data.Aeson.Types.ToJSON..=)) (taxProductResourceCustomerDetailsIpAddress obj) : ["tax_ids" Data.Aeson.Types.ToJSON..= taxProductResourceCustomerDetailsTaxIds obj] : ["taxability_override" Data.Aeson.Types.ToJSON..= taxProductResourceCustomerDetailsTaxabilityOverride obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address" Data.Aeson.Types.ToJSON..=)) (taxProductResourceCustomerDetailsAddress obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_source" Data.Aeson.Types.ToJSON..=)) (taxProductResourceCustomerDetailsAddressSource obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ip_address" Data.Aeson.Types.ToJSON..=)) (taxProductResourceCustomerDetailsIpAddress obj) : ["tax_ids" Data.Aeson.Types.ToJSON..= taxProductResourceCustomerDetailsTaxIds obj] : ["taxability_override" Data.Aeson.Types.ToJSON..= taxProductResourceCustomerDetailsTaxabilityOverride obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON TaxProductResourceCustomerDetails
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxProductResourceCustomerDetails" (\obj -> ((((GHC.Base.pure TaxProductResourceCustomerDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "ip_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tax_ids")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "taxability_override"))}
-- | Create a new 'TaxProductResourceCustomerDetails' with all required fields.
mkTaxProductResourceCustomerDetails :: [TaxProductResourceCustomerDetailsResourceTaxId] -- ^ 'taxProductResourceCustomerDetailsTaxIds'
  -> TaxProductResourceCustomerDetailsTaxabilityOverride' -- ^ 'taxProductResourceCustomerDetailsTaxabilityOverride'
  -> TaxProductResourceCustomerDetails
mkTaxProductResourceCustomerDetails taxProductResourceCustomerDetailsTaxIds taxProductResourceCustomerDetailsTaxabilityOverride = TaxProductResourceCustomerDetails{taxProductResourceCustomerDetailsAddress = GHC.Maybe.Nothing,
                                                                                                                                                                    taxProductResourceCustomerDetailsAddressSource = GHC.Maybe.Nothing,
                                                                                                                                                                    taxProductResourceCustomerDetailsIpAddress = GHC.Maybe.Nothing,
                                                                                                                                                                    taxProductResourceCustomerDetailsTaxIds = taxProductResourceCustomerDetailsTaxIds,
                                                                                                                                                                    taxProductResourceCustomerDetailsTaxabilityOverride = taxProductResourceCustomerDetailsTaxabilityOverride}
-- | Defines the object schema located at @components.schemas.tax_product_resource_customer_details.properties.address.anyOf@ in the specification.
-- 
-- The customer\\\'s postal address (for example, home or business location).
data TaxProductResourceCustomerDetailsAddress'NonNullable = TaxProductResourceCustomerDetailsAddress'NonNullable {
  -- | city: City, district, suburb, town, or village.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  taxProductResourceCustomerDetailsAddress'NonNullableCity :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxProductResourceCustomerDetailsAddress'NonNullableCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line1: Address line 1 (e.g., street, PO Box, or company name).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxProductResourceCustomerDetailsAddress'NonNullableLine1 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxProductResourceCustomerDetailsAddress'NonNullableLine2 :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | postal_code: ZIP or postal code.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxProductResourceCustomerDetailsAddress'NonNullablePostalCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | state: State\/province as an [ISO 3166-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-2) subdivision code, without country prefix. Example: \"NY\" or \"TX\".
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxProductResourceCustomerDetailsAddress'NonNullableState :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxProductResourceCustomerDetailsAddress'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (taxProductResourceCustomerDetailsAddress'NonNullableCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (taxProductResourceCustomerDetailsAddress'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (taxProductResourceCustomerDetailsAddress'NonNullableLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (taxProductResourceCustomerDetailsAddress'NonNullableLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (taxProductResourceCustomerDetailsAddress'NonNullablePostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (taxProductResourceCustomerDetailsAddress'NonNullableState obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (taxProductResourceCustomerDetailsAddress'NonNullableCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (taxProductResourceCustomerDetailsAddress'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (taxProductResourceCustomerDetailsAddress'NonNullableLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (taxProductResourceCustomerDetailsAddress'NonNullableLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (taxProductResourceCustomerDetailsAddress'NonNullablePostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (taxProductResourceCustomerDetailsAddress'NonNullableState obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON TaxProductResourceCustomerDetailsAddress'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxProductResourceCustomerDetailsAddress'NonNullable" (\obj -> (((((GHC.Base.pure TaxProductResourceCustomerDetailsAddress'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "state"))}
-- | Create a new 'TaxProductResourceCustomerDetailsAddress'NonNullable' with all required fields.
mkTaxProductResourceCustomerDetailsAddress'NonNullable :: TaxProductResourceCustomerDetailsAddress'NonNullable
mkTaxProductResourceCustomerDetailsAddress'NonNullable = TaxProductResourceCustomerDetailsAddress'NonNullable{taxProductResourceCustomerDetailsAddress'NonNullableCity = GHC.Maybe.Nothing,
                                                                                                              taxProductResourceCustomerDetailsAddress'NonNullableCountry = GHC.Maybe.Nothing,
                                                                                                              taxProductResourceCustomerDetailsAddress'NonNullableLine1 = GHC.Maybe.Nothing,
                                                                                                              taxProductResourceCustomerDetailsAddress'NonNullableLine2 = GHC.Maybe.Nothing,
                                                                                                              taxProductResourceCustomerDetailsAddress'NonNullablePostalCode = GHC.Maybe.Nothing,
                                                                                                              taxProductResourceCustomerDetailsAddress'NonNullableState = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.tax_product_resource_customer_details.properties.address_source@ in the specification.
-- 
-- The type of customer address provided.
data TaxProductResourceCustomerDetailsAddressSource'NonNullable =
   TaxProductResourceCustomerDetailsAddressSource'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | TaxProductResourceCustomerDetailsAddressSource'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | TaxProductResourceCustomerDetailsAddressSource'NonNullableEnumBilling -- ^ Represents the JSON value @"billing"@
  | TaxProductResourceCustomerDetailsAddressSource'NonNullableEnumShipping -- ^ Represents the JSON value @"shipping"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxProductResourceCustomerDetailsAddressSource'NonNullable
    where {toJSON (TaxProductResourceCustomerDetailsAddressSource'NonNullableOther val) = val;
           toJSON (TaxProductResourceCustomerDetailsAddressSource'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (TaxProductResourceCustomerDetailsAddressSource'NonNullableEnumBilling) = "billing";
           toJSON (TaxProductResourceCustomerDetailsAddressSource'NonNullableEnumShipping) = "shipping"}
instance Data.Aeson.Types.FromJSON.FromJSON TaxProductResourceCustomerDetailsAddressSource'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "billing" -> TaxProductResourceCustomerDetailsAddressSource'NonNullableEnumBilling
                                             | val GHC.Classes.== "shipping" -> TaxProductResourceCustomerDetailsAddressSource'NonNullableEnumShipping
                                             | GHC.Base.otherwise -> TaxProductResourceCustomerDetailsAddressSource'NonNullableOther val)}
-- | Defines the enum schema located at @components.schemas.tax_product_resource_customer_details.properties.taxability_override@ in the specification.
-- 
-- The taxability override used for taxation.
data TaxProductResourceCustomerDetailsTaxabilityOverride' =
   TaxProductResourceCustomerDetailsTaxabilityOverride'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | TaxProductResourceCustomerDetailsTaxabilityOverride'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | TaxProductResourceCustomerDetailsTaxabilityOverride'EnumCustomerExempt -- ^ Represents the JSON value @"customer_exempt"@
  | TaxProductResourceCustomerDetailsTaxabilityOverride'EnumNone -- ^ Represents the JSON value @"none"@
  | TaxProductResourceCustomerDetailsTaxabilityOverride'EnumReverseCharge -- ^ Represents the JSON value @"reverse_charge"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxProductResourceCustomerDetailsTaxabilityOverride'
    where {toJSON (TaxProductResourceCustomerDetailsTaxabilityOverride'Other val) = val;
           toJSON (TaxProductResourceCustomerDetailsTaxabilityOverride'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (TaxProductResourceCustomerDetailsTaxabilityOverride'EnumCustomerExempt) = "customer_exempt";
           toJSON (TaxProductResourceCustomerDetailsTaxabilityOverride'EnumNone) = "none";
           toJSON (TaxProductResourceCustomerDetailsTaxabilityOverride'EnumReverseCharge) = "reverse_charge"}
instance Data.Aeson.Types.FromJSON.FromJSON TaxProductResourceCustomerDetailsTaxabilityOverride'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "customer_exempt" -> TaxProductResourceCustomerDetailsTaxabilityOverride'EnumCustomerExempt
                                             | val GHC.Classes.== "none" -> TaxProductResourceCustomerDetailsTaxabilityOverride'EnumNone
                                             | val GHC.Classes.== "reverse_charge" -> TaxProductResourceCustomerDetailsTaxabilityOverride'EnumReverseCharge
                                             | GHC.Base.otherwise -> TaxProductResourceCustomerDetailsTaxabilityOverride'Other val)}
