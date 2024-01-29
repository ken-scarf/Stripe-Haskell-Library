-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema CreditNoteTaxAmount
module StripeAPI.Types.CreditNoteTaxAmount where

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
import {-# SOURCE #-} StripeAPI.Types.TaxRate

-- | Defines the object schema located at @components.schemas.credit_note_tax_amount@ in the specification.
-- 
-- 
data CreditNoteTaxAmount = CreditNoteTaxAmount {
  -- | amount: The amount, in cents (or local equivalent), of the tax.
  creditNoteTaxAmountAmount :: GHC.Types.Int
  -- | inclusive: Whether this tax amount is inclusive or exclusive.
  , creditNoteTaxAmountInclusive :: GHC.Types.Bool
  -- | tax_rate: The tax rate that was applied to get this tax amount.
  , creditNoteTaxAmountTaxRate :: CreditNoteTaxAmountTaxRate'Variants
  -- | taxability_reason: The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
  , creditNoteTaxAmountTaxabilityReason :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable CreditNoteTaxAmountTaxabilityReason'NonNullable))
  -- | taxable_amount: The amount on which tax is calculated, in cents (or local equivalent).
  , creditNoteTaxAmountTaxableAmount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreditNoteTaxAmount
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= creditNoteTaxAmountAmount obj] : ["inclusive" Data.Aeson.Types.ToJSON..= creditNoteTaxAmountInclusive obj] : ["tax_rate" Data.Aeson.Types.ToJSON..= creditNoteTaxAmountTaxRate obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("taxability_reason" Data.Aeson.Types.ToJSON..=)) (creditNoteTaxAmountTaxabilityReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("taxable_amount" Data.Aeson.Types.ToJSON..=)) (creditNoteTaxAmountTaxableAmount obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= creditNoteTaxAmountAmount obj] : ["inclusive" Data.Aeson.Types.ToJSON..= creditNoteTaxAmountInclusive obj] : ["tax_rate" Data.Aeson.Types.ToJSON..= creditNoteTaxAmountTaxRate obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("taxability_reason" Data.Aeson.Types.ToJSON..=)) (creditNoteTaxAmountTaxabilityReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("taxable_amount" Data.Aeson.Types.ToJSON..=)) (creditNoteTaxAmountTaxableAmount obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON CreditNoteTaxAmount
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "CreditNoteTaxAmount" (\obj -> ((((GHC.Base.pure CreditNoteTaxAmount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "inclusive")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tax_rate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "taxability_reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "taxable_amount"))}
-- | Create a new 'CreditNoteTaxAmount' with all required fields.
mkCreditNoteTaxAmount :: GHC.Types.Int -- ^ 'creditNoteTaxAmountAmount'
  -> GHC.Types.Bool -- ^ 'creditNoteTaxAmountInclusive'
  -> CreditNoteTaxAmountTaxRate'Variants -- ^ 'creditNoteTaxAmountTaxRate'
  -> CreditNoteTaxAmount
mkCreditNoteTaxAmount creditNoteTaxAmountAmount creditNoteTaxAmountInclusive creditNoteTaxAmountTaxRate = CreditNoteTaxAmount{creditNoteTaxAmountAmount = creditNoteTaxAmountAmount,
                                                                                                                              creditNoteTaxAmountInclusive = creditNoteTaxAmountInclusive,
                                                                                                                              creditNoteTaxAmountTaxRate = creditNoteTaxAmountTaxRate,
                                                                                                                              creditNoteTaxAmountTaxabilityReason = GHC.Maybe.Nothing,
                                                                                                                              creditNoteTaxAmountTaxableAmount = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @components.schemas.credit_note_tax_amount.properties.tax_rate.anyOf@ in the specification.
-- 
-- The tax rate that was applied to get this tax amount.
data CreditNoteTaxAmountTaxRate'Variants =
   CreditNoteTaxAmountTaxRate'Text Data.Text.Internal.Text
  | CreditNoteTaxAmountTaxRate'TaxRate TaxRate
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreditNoteTaxAmountTaxRate'Variants
    where {toJSON (CreditNoteTaxAmountTaxRate'Text a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (CreditNoteTaxAmountTaxRate'TaxRate a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON CreditNoteTaxAmountTaxRate'Variants
    where {parseJSON val = case (CreditNoteTaxAmountTaxRate'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((CreditNoteTaxAmountTaxRate'TaxRate Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the enum schema located at @components.schemas.credit_note_tax_amount.properties.taxability_reason@ in the specification.
-- 
-- The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
data CreditNoteTaxAmountTaxabilityReason'NonNullable =
   CreditNoteTaxAmountTaxabilityReason'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | CreditNoteTaxAmountTaxabilityReason'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | CreditNoteTaxAmountTaxabilityReason'NonNullableEnumCustomerExempt -- ^ Represents the JSON value @"customer_exempt"@
  | CreditNoteTaxAmountTaxabilityReason'NonNullableEnumNotCollecting -- ^ Represents the JSON value @"not_collecting"@
  | CreditNoteTaxAmountTaxabilityReason'NonNullableEnumNotSubjectToTax -- ^ Represents the JSON value @"not_subject_to_tax"@
  | CreditNoteTaxAmountTaxabilityReason'NonNullableEnumNotSupported -- ^ Represents the JSON value @"not_supported"@
  | CreditNoteTaxAmountTaxabilityReason'NonNullableEnumPortionProductExempt -- ^ Represents the JSON value @"portion_product_exempt"@
  | CreditNoteTaxAmountTaxabilityReason'NonNullableEnumPortionReducedRated -- ^ Represents the JSON value @"portion_reduced_rated"@
  | CreditNoteTaxAmountTaxabilityReason'NonNullableEnumPortionStandardRated -- ^ Represents the JSON value @"portion_standard_rated"@
  | CreditNoteTaxAmountTaxabilityReason'NonNullableEnumProductExempt -- ^ Represents the JSON value @"product_exempt"@
  | CreditNoteTaxAmountTaxabilityReason'NonNullableEnumProductExemptHoliday -- ^ Represents the JSON value @"product_exempt_holiday"@
  | CreditNoteTaxAmountTaxabilityReason'NonNullableEnumProportionallyRated -- ^ Represents the JSON value @"proportionally_rated"@
  | CreditNoteTaxAmountTaxabilityReason'NonNullableEnumReducedRated -- ^ Represents the JSON value @"reduced_rated"@
  | CreditNoteTaxAmountTaxabilityReason'NonNullableEnumReverseCharge -- ^ Represents the JSON value @"reverse_charge"@
  | CreditNoteTaxAmountTaxabilityReason'NonNullableEnumStandardRated -- ^ Represents the JSON value @"standard_rated"@
  | CreditNoteTaxAmountTaxabilityReason'NonNullableEnumTaxableBasisReduced -- ^ Represents the JSON value @"taxable_basis_reduced"@
  | CreditNoteTaxAmountTaxabilityReason'NonNullableEnumZeroRated -- ^ Represents the JSON value @"zero_rated"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CreditNoteTaxAmountTaxabilityReason'NonNullable
    where {toJSON (CreditNoteTaxAmountTaxabilityReason'NonNullableOther val) = val;
           toJSON (CreditNoteTaxAmountTaxabilityReason'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (CreditNoteTaxAmountTaxabilityReason'NonNullableEnumCustomerExempt) = "customer_exempt";
           toJSON (CreditNoteTaxAmountTaxabilityReason'NonNullableEnumNotCollecting) = "not_collecting";
           toJSON (CreditNoteTaxAmountTaxabilityReason'NonNullableEnumNotSubjectToTax) = "not_subject_to_tax";
           toJSON (CreditNoteTaxAmountTaxabilityReason'NonNullableEnumNotSupported) = "not_supported";
           toJSON (CreditNoteTaxAmountTaxabilityReason'NonNullableEnumPortionProductExempt) = "portion_product_exempt";
           toJSON (CreditNoteTaxAmountTaxabilityReason'NonNullableEnumPortionReducedRated) = "portion_reduced_rated";
           toJSON (CreditNoteTaxAmountTaxabilityReason'NonNullableEnumPortionStandardRated) = "portion_standard_rated";
           toJSON (CreditNoteTaxAmountTaxabilityReason'NonNullableEnumProductExempt) = "product_exempt";
           toJSON (CreditNoteTaxAmountTaxabilityReason'NonNullableEnumProductExemptHoliday) = "product_exempt_holiday";
           toJSON (CreditNoteTaxAmountTaxabilityReason'NonNullableEnumProportionallyRated) = "proportionally_rated";
           toJSON (CreditNoteTaxAmountTaxabilityReason'NonNullableEnumReducedRated) = "reduced_rated";
           toJSON (CreditNoteTaxAmountTaxabilityReason'NonNullableEnumReverseCharge) = "reverse_charge";
           toJSON (CreditNoteTaxAmountTaxabilityReason'NonNullableEnumStandardRated) = "standard_rated";
           toJSON (CreditNoteTaxAmountTaxabilityReason'NonNullableEnumTaxableBasisReduced) = "taxable_basis_reduced";
           toJSON (CreditNoteTaxAmountTaxabilityReason'NonNullableEnumZeroRated) = "zero_rated"}
instance Data.Aeson.Types.FromJSON.FromJSON CreditNoteTaxAmountTaxabilityReason'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "customer_exempt" -> CreditNoteTaxAmountTaxabilityReason'NonNullableEnumCustomerExempt
                                             | val GHC.Classes.== "not_collecting" -> CreditNoteTaxAmountTaxabilityReason'NonNullableEnumNotCollecting
                                             | val GHC.Classes.== "not_subject_to_tax" -> CreditNoteTaxAmountTaxabilityReason'NonNullableEnumNotSubjectToTax
                                             | val GHC.Classes.== "not_supported" -> CreditNoteTaxAmountTaxabilityReason'NonNullableEnumNotSupported
                                             | val GHC.Classes.== "portion_product_exempt" -> CreditNoteTaxAmountTaxabilityReason'NonNullableEnumPortionProductExempt
                                             | val GHC.Classes.== "portion_reduced_rated" -> CreditNoteTaxAmountTaxabilityReason'NonNullableEnumPortionReducedRated
                                             | val GHC.Classes.== "portion_standard_rated" -> CreditNoteTaxAmountTaxabilityReason'NonNullableEnumPortionStandardRated
                                             | val GHC.Classes.== "product_exempt" -> CreditNoteTaxAmountTaxabilityReason'NonNullableEnumProductExempt
                                             | val GHC.Classes.== "product_exempt_holiday" -> CreditNoteTaxAmountTaxabilityReason'NonNullableEnumProductExemptHoliday
                                             | val GHC.Classes.== "proportionally_rated" -> CreditNoteTaxAmountTaxabilityReason'NonNullableEnumProportionallyRated
                                             | val GHC.Classes.== "reduced_rated" -> CreditNoteTaxAmountTaxabilityReason'NonNullableEnumReducedRated
                                             | val GHC.Classes.== "reverse_charge" -> CreditNoteTaxAmountTaxabilityReason'NonNullableEnumReverseCharge
                                             | val GHC.Classes.== "standard_rated" -> CreditNoteTaxAmountTaxabilityReason'NonNullableEnumStandardRated
                                             | val GHC.Classes.== "taxable_basis_reduced" -> CreditNoteTaxAmountTaxabilityReason'NonNullableEnumTaxableBasisReduced
                                             | val GHC.Classes.== "zero_rated" -> CreditNoteTaxAmountTaxabilityReason'NonNullableEnumZeroRated
                                             | GHC.Base.otherwise -> CreditNoteTaxAmountTaxabilityReason'NonNullableOther val)}
