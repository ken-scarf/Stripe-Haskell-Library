-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema CheckoutLinkPaymentMethodOptions
module StripeAPI.Types.CheckoutLinkPaymentMethodOptions where

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

-- | Defines the object schema located at @components.schemas.checkout_link_payment_method_options@ in the specification.
-- 
-- 
data CheckoutLinkPaymentMethodOptions = CheckoutLinkPaymentMethodOptions {
  -- | setup_future_usage: Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
  -- 
  -- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
  -- 
  -- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
  checkoutLinkPaymentMethodOptionsSetupFutureUsage :: (GHC.Maybe.Maybe CheckoutLinkPaymentMethodOptionsSetupFutureUsage')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CheckoutLinkPaymentMethodOptions
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (checkoutLinkPaymentMethodOptionsSetupFutureUsage obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (checkoutLinkPaymentMethodOptionsSetupFutureUsage obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON CheckoutLinkPaymentMethodOptions
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "CheckoutLinkPaymentMethodOptions" (\obj -> GHC.Base.pure CheckoutLinkPaymentMethodOptions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "setup_future_usage"))}
-- | Create a new 'CheckoutLinkPaymentMethodOptions' with all required fields.
mkCheckoutLinkPaymentMethodOptions :: CheckoutLinkPaymentMethodOptions
mkCheckoutLinkPaymentMethodOptions = CheckoutLinkPaymentMethodOptions{checkoutLinkPaymentMethodOptionsSetupFutureUsage = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.checkout_link_payment_method_options.properties.setup_future_usage@ in the specification.
-- 
-- Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
-- 
-- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
-- 
-- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
data CheckoutLinkPaymentMethodOptionsSetupFutureUsage' =
   CheckoutLinkPaymentMethodOptionsSetupFutureUsage'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | CheckoutLinkPaymentMethodOptionsSetupFutureUsage'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | CheckoutLinkPaymentMethodOptionsSetupFutureUsage'EnumNone -- ^ Represents the JSON value @"none"@
  | CheckoutLinkPaymentMethodOptionsSetupFutureUsage'EnumOffSession -- ^ Represents the JSON value @"off_session"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CheckoutLinkPaymentMethodOptionsSetupFutureUsage'
    where {toJSON (CheckoutLinkPaymentMethodOptionsSetupFutureUsage'Other val) = val;
           toJSON (CheckoutLinkPaymentMethodOptionsSetupFutureUsage'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (CheckoutLinkPaymentMethodOptionsSetupFutureUsage'EnumNone) = "none";
           toJSON (CheckoutLinkPaymentMethodOptionsSetupFutureUsage'EnumOffSession) = "off_session"}
instance Data.Aeson.Types.FromJSON.FromJSON CheckoutLinkPaymentMethodOptionsSetupFutureUsage'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "none" -> CheckoutLinkPaymentMethodOptionsSetupFutureUsage'EnumNone
                                             | val GHC.Classes.== "off_session" -> CheckoutLinkPaymentMethodOptionsSetupFutureUsage'EnumOffSession
                                             | GHC.Base.otherwise -> CheckoutLinkPaymentMethodOptionsSetupFutureUsage'Other val)}