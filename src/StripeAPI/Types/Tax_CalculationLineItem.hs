-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Tax_CalculationLineItem
module StripeAPI.Types.Tax_CalculationLineItem where

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

-- | Defines the object schema located at @components.schemas.tax.calculation_line_item@ in the specification.
-- 
-- 
data Tax'calculationLineItem = Tax'calculationLineItem {
  -- | amount: The line item amount in the [smallest currency unit](https:\/\/stripe.com\/docs\/currencies\#zero-decimal). If \`tax_behavior=inclusive\`, then this amount includes taxes. Otherwise, taxes were calculated on top of this amount.
  tax'calculationLineItemAmount :: GHC.Types.Int
  -- | amount_tax: The amount of tax calculated for this line item, in the [smallest currency unit](https:\/\/stripe.com\/docs\/currencies\#zero-decimal).
  , tax'calculationLineItemAmountTax :: GHC.Types.Int
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , tax'calculationLineItemId :: Data.Text.Internal.Text
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , tax'calculationLineItemLivemode :: GHC.Types.Bool
  -- | product: The ID of an existing [Product](https:\/\/stripe.com\/docs\/api\/products\/object).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , tax'calculationLineItemProduct :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | quantity: The number of units of the item being purchased. For reversals, this is the quantity reversed.
  , tax'calculationLineItemQuantity :: GHC.Types.Int
  -- | reference: A custom identifier for this line item.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , tax'calculationLineItemReference :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | tax_behavior: Specifies whether the \`amount\` includes taxes. If \`tax_behavior=inclusive\`, then the amount includes taxes.
  , tax'calculationLineItemTaxBehavior :: Tax'calculationLineItemTaxBehavior'
  -- | tax_breakdown: Detailed account of taxes relevant to this line item.
  , tax'calculationLineItemTaxBreakdown :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([TaxProductResourceLineItemTaxBreakdown])))
  -- | tax_code: The [tax code](https:\/\/stripe.com\/docs\/tax\/tax-categories) ID used for this resource.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , tax'calculationLineItemTaxCode :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Tax'calculationLineItem
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= tax'calculationLineItemAmount obj] : ["amount_tax" Data.Aeson.Types.ToJSON..= tax'calculationLineItemAmountTax obj] : ["id" Data.Aeson.Types.ToJSON..= tax'calculationLineItemId obj] : ["livemode" Data.Aeson.Types.ToJSON..= tax'calculationLineItemLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("product" Data.Aeson.Types.ToJSON..=)) (tax'calculationLineItemProduct obj) : ["quantity" Data.Aeson.Types.ToJSON..= tax'calculationLineItemQuantity obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reference" Data.Aeson.Types.ToJSON..=)) (tax'calculationLineItemReference obj) : ["tax_behavior" Data.Aeson.Types.ToJSON..= tax'calculationLineItemTaxBehavior obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_breakdown" Data.Aeson.Types.ToJSON..=)) (tax'calculationLineItemTaxBreakdown obj) : ["tax_code" Data.Aeson.Types.ToJSON..= tax'calculationLineItemTaxCode obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "tax.calculation_line_item"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= tax'calculationLineItemAmount obj] : ["amount_tax" Data.Aeson.Types.ToJSON..= tax'calculationLineItemAmountTax obj] : ["id" Data.Aeson.Types.ToJSON..= tax'calculationLineItemId obj] : ["livemode" Data.Aeson.Types.ToJSON..= tax'calculationLineItemLivemode obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("product" Data.Aeson.Types.ToJSON..=)) (tax'calculationLineItemProduct obj) : ["quantity" Data.Aeson.Types.ToJSON..= tax'calculationLineItemQuantity obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reference" Data.Aeson.Types.ToJSON..=)) (tax'calculationLineItemReference obj) : ["tax_behavior" Data.Aeson.Types.ToJSON..= tax'calculationLineItemTaxBehavior obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("tax_breakdown" Data.Aeson.Types.ToJSON..=)) (tax'calculationLineItemTaxBreakdown obj) : ["tax_code" Data.Aeson.Types.ToJSON..= tax'calculationLineItemTaxCode obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "tax.calculation_line_item"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON Tax'calculationLineItem
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "Tax'calculationLineItem" (\obj -> (((((((((GHC.Base.pure Tax'calculationLineItem GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_tax")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "product")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tax_behavior")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "tax_breakdown")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "tax_code"))}
-- | Create a new 'Tax'calculationLineItem' with all required fields.
mkTax'calculationLineItem :: GHC.Types.Int -- ^ 'tax'calculationLineItemAmount'
  -> GHC.Types.Int -- ^ 'tax'calculationLineItemAmountTax'
  -> Data.Text.Internal.Text -- ^ 'tax'calculationLineItemId'
  -> GHC.Types.Bool -- ^ 'tax'calculationLineItemLivemode'
  -> GHC.Types.Int -- ^ 'tax'calculationLineItemQuantity'
  -> Tax'calculationLineItemTaxBehavior' -- ^ 'tax'calculationLineItemTaxBehavior'
  -> Data.Text.Internal.Text -- ^ 'tax'calculationLineItemTaxCode'
  -> Tax'calculationLineItem
mkTax'calculationLineItem tax'calculationLineItemAmount tax'calculationLineItemAmountTax tax'calculationLineItemId tax'calculationLineItemLivemode tax'calculationLineItemQuantity tax'calculationLineItemTaxBehavior tax'calculationLineItemTaxCode = Tax'calculationLineItem{tax'calculationLineItemAmount = tax'calculationLineItemAmount,
                                                                                                                                                                                                                                                                               tax'calculationLineItemAmountTax = tax'calculationLineItemAmountTax,
                                                                                                                                                                                                                                                                               tax'calculationLineItemId = tax'calculationLineItemId,
                                                                                                                                                                                                                                                                               tax'calculationLineItemLivemode = tax'calculationLineItemLivemode,
                                                                                                                                                                                                                                                                               tax'calculationLineItemProduct = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                               tax'calculationLineItemQuantity = tax'calculationLineItemQuantity,
                                                                                                                                                                                                                                                                               tax'calculationLineItemReference = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                               tax'calculationLineItemTaxBehavior = tax'calculationLineItemTaxBehavior,
                                                                                                                                                                                                                                                                               tax'calculationLineItemTaxBreakdown = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                               tax'calculationLineItemTaxCode = tax'calculationLineItemTaxCode}
-- | Defines the enum schema located at @components.schemas.tax.calculation_line_item.properties.tax_behavior@ in the specification.
-- 
-- Specifies whether the \`amount\` includes taxes. If \`tax_behavior=inclusive\`, then the amount includes taxes.
data Tax'calculationLineItemTaxBehavior' =
   Tax'calculationLineItemTaxBehavior'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | Tax'calculationLineItemTaxBehavior'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | Tax'calculationLineItemTaxBehavior'EnumExclusive -- ^ Represents the JSON value @"exclusive"@
  | Tax'calculationLineItemTaxBehavior'EnumInclusive -- ^ Represents the JSON value @"inclusive"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Tax'calculationLineItemTaxBehavior'
    where {toJSON (Tax'calculationLineItemTaxBehavior'Other val) = val;
           toJSON (Tax'calculationLineItemTaxBehavior'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (Tax'calculationLineItemTaxBehavior'EnumExclusive) = "exclusive";
           toJSON (Tax'calculationLineItemTaxBehavior'EnumInclusive) = "inclusive"}
instance Data.Aeson.Types.FromJSON.FromJSON Tax'calculationLineItemTaxBehavior'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "exclusive" -> Tax'calculationLineItemTaxBehavior'EnumExclusive
                                             | val GHC.Classes.== "inclusive" -> Tax'calculationLineItemTaxBehavior'EnumInclusive
                                             | GHC.Base.otherwise -> Tax'calculationLineItemTaxBehavior'Other val)}