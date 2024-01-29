-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema LineItemsDiscountAmount
module StripeAPI.Types.LineItemsDiscountAmount where

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
import {-# SOURCE #-} StripeAPI.Types.Discount

-- | Defines the object schema located at @components.schemas.line_items_discount_amount@ in the specification.
-- 
-- 
data LineItemsDiscountAmount = LineItemsDiscountAmount {
  -- | amount: The amount discounted.
  lineItemsDiscountAmountAmount :: GHC.Types.Int
  -- | discount: A discount represents the actual application of a [coupon](https:\/\/stripe.com\/docs\/api\#coupons) or [promotion code](https:\/\/stripe.com\/docs\/api\#promotion_codes).
  -- It contains information about when the discount began, when it will end, and what it is applied to.
  -- 
  -- Related guide: [Applying discounts to subscriptions](https:\/\/stripe.com\/docs\/billing\/subscriptions\/discounts)
  , lineItemsDiscountAmountDiscount :: Discount
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON LineItemsDiscountAmount
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= lineItemsDiscountAmountAmount obj] : ["discount" Data.Aeson.Types.ToJSON..= lineItemsDiscountAmountDiscount obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= lineItemsDiscountAmountAmount obj] : ["discount" Data.Aeson.Types.ToJSON..= lineItemsDiscountAmountDiscount obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON LineItemsDiscountAmount
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "LineItemsDiscountAmount" (\obj -> (GHC.Base.pure LineItemsDiscountAmount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "discount"))}
-- | Create a new 'LineItemsDiscountAmount' with all required fields.
mkLineItemsDiscountAmount :: GHC.Types.Int -- ^ 'lineItemsDiscountAmountAmount'
  -> Discount -- ^ 'lineItemsDiscountAmountDiscount'
  -> LineItemsDiscountAmount
mkLineItemsDiscountAmount lineItemsDiscountAmountAmount lineItemsDiscountAmountDiscount = LineItemsDiscountAmount{lineItemsDiscountAmountAmount = lineItemsDiscountAmountAmount,
                                                                                                                  lineItemsDiscountAmountDiscount = lineItemsDiscountAmountDiscount}
