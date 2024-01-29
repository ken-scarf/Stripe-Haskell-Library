-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TaxProductResourceTaxCalculationShippingCost
module StripeAPI.Types.TaxProductResourceTaxCalculationShippingCost where

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
import {-# SOURCE #-} StripeAPI.Types.TaxProductResourceLineItemTaxBreakdown

-- | Defines the object schema located at @components.schemas.tax_product_resource_tax_calculation_shipping_cost@ in the specification.
-- 
-- 
data TaxProductResourceTaxCalculationShippingCost = TaxProductResourceTaxCalculationShippingCost {
  -- | amount: The shipping amount in the [smallest currency unit](https:\/\/stripe.com\/docs\/currencies\#zero-decimal). If \`tax_behavior=inclusive\`, then this amount includes taxes. Otherwise, taxes were calculated on top of this amount.
  taxProductResourceTaxCalculationShippingCostAmount :: GHC.Types.Int
  -- | amount_tax: The amount of tax calculated for shipping, in the [smallest currency unit](https:\/\/stripe.com\/docs\/currencies\#zero-decimal).
  , taxProductResourceTaxCalculationShippingCostAmountTax :: GHC.Types.Int
  -- | shipping_rate: The ID of an existing [ShippingRate](https:\/\/stripe.com\/docs\/api\/shipping_rates\/object).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxProductResourceTaxCalculationShippingCostShippingRate :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | tax_behavior: Specifies whether the \`amount\` includes taxes. If \`tax_behavior=inclusive\`, then the amount includes taxes.
  , taxProductResourceTaxCalculationShippingCostTaxBehavior :: TaxProductResourceTaxCalculationShippingCostTaxBehavior'
  -- | tax_breakdown: Detailed account of taxes relevant to shipping cost.
  , taxProductResourceTaxCalculationShippingCostTaxBreakdown :: (GHC.Maybe.Maybe ([TaxProductResourceLineItemTaxBreakdown]))
  -- | tax_code: The [tax code](https:\/\/stripe.com\/docs\/tax\/tax-categories) ID used for shipping.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , taxProductResourceTaxCalculationShippingCostTaxCode :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxProductResourceTaxCalculationShippingCost
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= taxProductResourceTaxCalculationShippingCostAmount obj] : ["amount_tax" Data.Aeson.Types.ToJSON..= taxProductResourceTaxCalculationShippingCostAmountTax obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_rate" Data.Aeson.Types.ToJSON..=)) (taxProductResourceTaxCalculationShippingCostShippingRate obj) : ["tax_behavior" Data.Aeson.Types.ToJSON..= taxProductResourceTaxCalculationShippingCostTaxBehavior obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_breakdown" Data.Aeson.Types.ToJSON..=)) (taxProductResourceTaxCalculationShippingCostTaxBreakdown obj) : ["tax_code" Data.Aeson.Types.ToJSON..= taxProductResourceTaxCalculationShippingCostTaxCode obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= taxProductResourceTaxCalculationShippingCostAmount obj] : ["amount_tax" Data.Aeson.Types.ToJSON..= taxProductResourceTaxCalculationShippingCostAmountTax obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("shipping_rate" Data.Aeson.Types.ToJSON..=)) (taxProductResourceTaxCalculationShippingCostShippingRate obj) : ["tax_behavior" Data.Aeson.Types.ToJSON..= taxProductResourceTaxCalculationShippingCostTaxBehavior obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_breakdown" Data.Aeson.Types.ToJSON..=)) (taxProductResourceTaxCalculationShippingCostTaxBreakdown obj) : ["tax_code" Data.Aeson.Types.ToJSON..= taxProductResourceTaxCalculationShippingCostTaxCode obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON TaxProductResourceTaxCalculationShippingCost
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "TaxProductResourceTaxCalculationShippingCost" (\obj -> (((((GHC.Base.pure TaxProductResourceTaxCalculationShippingCost GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_tax")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "shipping_rate")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tax_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tax_breakdown")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tax_code"))}
-- | Create a new 'TaxProductResourceTaxCalculationShippingCost' with all required fields.
mkTaxProductResourceTaxCalculationShippingCost :: GHC.Types.Int -- ^ 'taxProductResourceTaxCalculationShippingCostAmount'
  -> GHC.Types.Int -- ^ 'taxProductResourceTaxCalculationShippingCostAmountTax'
  -> TaxProductResourceTaxCalculationShippingCostTaxBehavior' -- ^ 'taxProductResourceTaxCalculationShippingCostTaxBehavior'
  -> Data.Text.Internal.Text -- ^ 'taxProductResourceTaxCalculationShippingCostTaxCode'
  -> TaxProductResourceTaxCalculationShippingCost
mkTaxProductResourceTaxCalculationShippingCost taxProductResourceTaxCalculationShippingCostAmount taxProductResourceTaxCalculationShippingCostAmountTax taxProductResourceTaxCalculationShippingCostTaxBehavior taxProductResourceTaxCalculationShippingCostTaxCode = TaxProductResourceTaxCalculationShippingCost{taxProductResourceTaxCalculationShippingCostAmount = taxProductResourceTaxCalculationShippingCostAmount,
                                                                                                                                                                                                                                                                                                                   taxProductResourceTaxCalculationShippingCostAmountTax = taxProductResourceTaxCalculationShippingCostAmountTax,
                                                                                                                                                                                                                                                                                                                   taxProductResourceTaxCalculationShippingCostShippingRate = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                   taxProductResourceTaxCalculationShippingCostTaxBehavior = taxProductResourceTaxCalculationShippingCostTaxBehavior,
                                                                                                                                                                                                                                                                                                                   taxProductResourceTaxCalculationShippingCostTaxBreakdown = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                   taxProductResourceTaxCalculationShippingCostTaxCode = taxProductResourceTaxCalculationShippingCostTaxCode}
-- | Defines the enum schema located at @components.schemas.tax_product_resource_tax_calculation_shipping_cost.properties.tax_behavior@ in the specification.
-- 
-- Specifies whether the \`amount\` includes taxes. If \`tax_behavior=inclusive\`, then the amount includes taxes.
data TaxProductResourceTaxCalculationShippingCostTaxBehavior' =
   TaxProductResourceTaxCalculationShippingCostTaxBehavior'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | TaxProductResourceTaxCalculationShippingCostTaxBehavior'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | TaxProductResourceTaxCalculationShippingCostTaxBehavior'EnumExclusive -- ^ Represents the JSON value @"exclusive"@
  | TaxProductResourceTaxCalculationShippingCostTaxBehavior'EnumInclusive -- ^ Represents the JSON value @"inclusive"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TaxProductResourceTaxCalculationShippingCostTaxBehavior'
    where {toJSON (TaxProductResourceTaxCalculationShippingCostTaxBehavior'Other val) = val;
           toJSON (TaxProductResourceTaxCalculationShippingCostTaxBehavior'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (TaxProductResourceTaxCalculationShippingCostTaxBehavior'EnumExclusive) = "exclusive";
           toJSON (TaxProductResourceTaxCalculationShippingCostTaxBehavior'EnumInclusive) = "inclusive"}
instance Data.Aeson.Types.FromJSON.FromJSON TaxProductResourceTaxCalculationShippingCostTaxBehavior'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "exclusive" -> TaxProductResourceTaxCalculationShippingCostTaxBehavior'EnumExclusive
                                             | val GHC.Classes.== "inclusive" -> TaxProductResourceTaxCalculationShippingCostTaxBehavior'EnumInclusive
                                             | GHC.Base.otherwise -> TaxProductResourceTaxCalculationShippingCostTaxBehavior'Other val)}
