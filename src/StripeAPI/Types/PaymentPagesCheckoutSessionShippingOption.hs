{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentPagesCheckoutSessionShippingOption
module StripeAPI.Types.PaymentPagesCheckoutSessionShippingOption where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
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
import {-# SOURCE #-} StripeAPI.Types.ShippingRate
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_pages_checkout_session_shipping_option@ in the specification.
data PaymentPagesCheckoutSessionShippingOption = PaymentPagesCheckoutSessionShippingOption
  { -- | shipping_amount: A non-negative integer in cents representing how much to charge.
    paymentPagesCheckoutSessionShippingOptionShippingAmount :: GHC.Types.Int,
    -- | shipping_rate: The shipping rate.
    paymentPagesCheckoutSessionShippingOptionShippingRate :: PaymentPagesCheckoutSessionShippingOptionShippingRate'Variants
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionShippingOption where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["shipping_amount" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionShippingOptionShippingAmount obj] : ["shipping_rate" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionShippingOptionShippingRate obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["shipping_amount" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionShippingOptionShippingAmount obj] : ["shipping_rate" Data.Aeson.Types.ToJSON..= paymentPagesCheckoutSessionShippingOptionShippingRate obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionShippingOption where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentPagesCheckoutSessionShippingOption" (\obj -> (GHC.Base.pure PaymentPagesCheckoutSessionShippingOption GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "shipping_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "shipping_rate"))

-- | Create a new 'PaymentPagesCheckoutSessionShippingOption' with all required fields.
mkPaymentPagesCheckoutSessionShippingOption ::
  -- | 'paymentPagesCheckoutSessionShippingOptionShippingAmount'
  GHC.Types.Int ->
  -- | 'paymentPagesCheckoutSessionShippingOptionShippingRate'
  PaymentPagesCheckoutSessionShippingOptionShippingRate'Variants ->
  PaymentPagesCheckoutSessionShippingOption
mkPaymentPagesCheckoutSessionShippingOption paymentPagesCheckoutSessionShippingOptionShippingAmount paymentPagesCheckoutSessionShippingOptionShippingRate =
  PaymentPagesCheckoutSessionShippingOption
    { paymentPagesCheckoutSessionShippingOptionShippingAmount = paymentPagesCheckoutSessionShippingOptionShippingAmount,
      paymentPagesCheckoutSessionShippingOptionShippingRate = paymentPagesCheckoutSessionShippingOptionShippingRate
    }

-- | Defines the oneOf schema located at @components.schemas.payment_pages_checkout_session_shipping_option.properties.shipping_rate.anyOf@ in the specification.
--
-- The shipping rate.
data PaymentPagesCheckoutSessionShippingOptionShippingRate'Variants
  = PaymentPagesCheckoutSessionShippingOptionShippingRate'Text Data.Text.Internal.Text
  | PaymentPagesCheckoutSessionShippingOptionShippingRate'ShippingRate ShippingRate
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentPagesCheckoutSessionShippingOptionShippingRate'Variants where
  toJSON (PaymentPagesCheckoutSessionShippingOptionShippingRate'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PaymentPagesCheckoutSessionShippingOptionShippingRate'ShippingRate a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON PaymentPagesCheckoutSessionShippingOptionShippingRate'Variants where
  parseJSON val = case (PaymentPagesCheckoutSessionShippingOptionShippingRate'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PaymentPagesCheckoutSessionShippingOptionShippingRate'ShippingRate Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a