-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema CheckoutPaypalPaymentMethodOptions
module StripeAPI.Types.CheckoutPaypalPaymentMethodOptions where

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

-- | Defines the object schema located at @components.schemas.checkout_paypal_payment_method_options@ in the specification.
-- 
-- 
data CheckoutPaypalPaymentMethodOptions = CheckoutPaypalPaymentMethodOptions {
  -- | capture_method: Controls when the funds will be captured from the customer\'s account.
  checkoutPaypalPaymentMethodOptionsCaptureMethod :: (GHC.Maybe.Maybe CheckoutPaypalPaymentMethodOptionsCaptureMethod')
  -- | preferred_locale: Preferred locale of the PayPal checkout page that the customer is redirected to.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , checkoutPaypalPaymentMethodOptionsPreferredLocale :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | reference: A reference of the PayPal transaction visible to customer which is mapped to PayPal\'s invoice ID. This must be a globally unique ID if you have configured in your PayPal settings to block multiple payments per invoice ID.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , checkoutPaypalPaymentMethodOptionsReference :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | setup_future_usage: Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
  -- 
  -- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
  -- 
  -- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
  , checkoutPaypalPaymentMethodOptionsSetupFutureUsage :: (GHC.Maybe.Maybe CheckoutPaypalPaymentMethodOptionsSetupFutureUsage')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CheckoutPaypalPaymentMethodOptions
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("capture_method" Data.Aeson.Types.ToJSON..=)) (checkoutPaypalPaymentMethodOptionsCaptureMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_locale" Data.Aeson.Types.ToJSON..=)) (checkoutPaypalPaymentMethodOptionsPreferredLocale obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reference" Data.Aeson.Types.ToJSON..=)) (checkoutPaypalPaymentMethodOptionsReference obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (checkoutPaypalPaymentMethodOptionsSetupFutureUsage obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("capture_method" Data.Aeson.Types.ToJSON..=)) (checkoutPaypalPaymentMethodOptionsCaptureMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("preferred_locale" Data.Aeson.Types.ToJSON..=)) (checkoutPaypalPaymentMethodOptionsPreferredLocale obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reference" Data.Aeson.Types.ToJSON..=)) (checkoutPaypalPaymentMethodOptionsReference obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (checkoutPaypalPaymentMethodOptionsSetupFutureUsage obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON CheckoutPaypalPaymentMethodOptions
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "CheckoutPaypalPaymentMethodOptions" (\obj -> (((GHC.Base.pure CheckoutPaypalPaymentMethodOptions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "capture_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "preferred_locale")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "setup_future_usage"))}
-- | Create a new 'CheckoutPaypalPaymentMethodOptions' with all required fields.
mkCheckoutPaypalPaymentMethodOptions :: CheckoutPaypalPaymentMethodOptions
mkCheckoutPaypalPaymentMethodOptions = CheckoutPaypalPaymentMethodOptions{checkoutPaypalPaymentMethodOptionsCaptureMethod = GHC.Maybe.Nothing,
                                                                          checkoutPaypalPaymentMethodOptionsPreferredLocale = GHC.Maybe.Nothing,
                                                                          checkoutPaypalPaymentMethodOptionsReference = GHC.Maybe.Nothing,
                                                                          checkoutPaypalPaymentMethodOptionsSetupFutureUsage = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.checkout_paypal_payment_method_options.properties.capture_method@ in the specification.
-- 
-- Controls when the funds will be captured from the customer\'s account.
data CheckoutPaypalPaymentMethodOptionsCaptureMethod' =
   CheckoutPaypalPaymentMethodOptionsCaptureMethod'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | CheckoutPaypalPaymentMethodOptionsCaptureMethod'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | CheckoutPaypalPaymentMethodOptionsCaptureMethod'EnumManual -- ^ Represents the JSON value @"manual"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CheckoutPaypalPaymentMethodOptionsCaptureMethod'
    where {toJSON (CheckoutPaypalPaymentMethodOptionsCaptureMethod'Other val) = val;
           toJSON (CheckoutPaypalPaymentMethodOptionsCaptureMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (CheckoutPaypalPaymentMethodOptionsCaptureMethod'EnumManual) = "manual"}
instance Data.Aeson.Types.FromJSON.FromJSON CheckoutPaypalPaymentMethodOptionsCaptureMethod'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "manual" -> CheckoutPaypalPaymentMethodOptionsCaptureMethod'EnumManual
                                             | GHC.Base.otherwise -> CheckoutPaypalPaymentMethodOptionsCaptureMethod'Other val)}
-- | Defines the enum schema located at @components.schemas.checkout_paypal_payment_method_options.properties.setup_future_usage@ in the specification.
-- 
-- Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
-- 
-- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
-- 
-- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
data CheckoutPaypalPaymentMethodOptionsSetupFutureUsage' =
   CheckoutPaypalPaymentMethodOptionsSetupFutureUsage'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | CheckoutPaypalPaymentMethodOptionsSetupFutureUsage'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | CheckoutPaypalPaymentMethodOptionsSetupFutureUsage'EnumNone -- ^ Represents the JSON value @"none"@
  | CheckoutPaypalPaymentMethodOptionsSetupFutureUsage'EnumOffSession -- ^ Represents the JSON value @"off_session"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CheckoutPaypalPaymentMethodOptionsSetupFutureUsage'
    where {toJSON (CheckoutPaypalPaymentMethodOptionsSetupFutureUsage'Other val) = val;
           toJSON (CheckoutPaypalPaymentMethodOptionsSetupFutureUsage'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (CheckoutPaypalPaymentMethodOptionsSetupFutureUsage'EnumNone) = "none";
           toJSON (CheckoutPaypalPaymentMethodOptionsSetupFutureUsage'EnumOffSession) = "off_session"}
instance Data.Aeson.Types.FromJSON.FromJSON CheckoutPaypalPaymentMethodOptionsSetupFutureUsage'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "none" -> CheckoutPaypalPaymentMethodOptionsSetupFutureUsage'EnumNone
                                             | val GHC.Classes.== "off_session" -> CheckoutPaypalPaymentMethodOptionsSetupFutureUsage'EnumOffSession
                                             | GHC.Base.otherwise -> CheckoutPaypalPaymentMethodOptionsSetupFutureUsage'Other val)}