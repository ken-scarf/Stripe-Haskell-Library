{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentIntentPaymentMethodOptionsAcssDebit
module StripeAPI.Types.PaymentIntentPaymentMethodOptionsAcssDebit where

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
import {-# SOURCE #-} StripeAPI.Types.PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebit
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_intent_payment_method_options_acss_debit@ in the specification.
data PaymentIntentPaymentMethodOptionsAcssDebit = PaymentIntentPaymentMethodOptionsAcssDebit
  { -- | mandate_options:
    paymentIntentPaymentMethodOptionsAcssDebitMandateOptions :: (GHC.Maybe.Maybe PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebit),
    -- | setup_future_usage: Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
    --
    -- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
    --
    -- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
    paymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage :: (GHC.Maybe.Maybe PaymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage'),
    -- | verification_method: Bank account verification method.
    paymentIntentPaymentMethodOptionsAcssDebitVerificationMethod :: (GHC.Maybe.Maybe PaymentIntentPaymentMethodOptionsAcssDebitVerificationMethod')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentPaymentMethodOptionsAcssDebit where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mandate_options" Data.Aeson.Types.ToJSON..=)) (paymentIntentPaymentMethodOptionsAcssDebitMandateOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (paymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (paymentIntentPaymentMethodOptionsAcssDebitVerificationMethod obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("mandate_options" Data.Aeson.Types.ToJSON..=)) (paymentIntentPaymentMethodOptionsAcssDebitMandateOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("setup_future_usage" Data.Aeson.Types.ToJSON..=)) (paymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("verification_method" Data.Aeson.Types.ToJSON..=)) (paymentIntentPaymentMethodOptionsAcssDebitVerificationMethod obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentPaymentMethodOptionsAcssDebit where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentPaymentMethodOptionsAcssDebit" (\obj -> ((GHC.Base.pure PaymentIntentPaymentMethodOptionsAcssDebit GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "mandate_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "setup_future_usage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "verification_method"))

-- | Create a new 'PaymentIntentPaymentMethodOptionsAcssDebit' with all required fields.
mkPaymentIntentPaymentMethodOptionsAcssDebit :: PaymentIntentPaymentMethodOptionsAcssDebit
mkPaymentIntentPaymentMethodOptionsAcssDebit =
  PaymentIntentPaymentMethodOptionsAcssDebit
    { paymentIntentPaymentMethodOptionsAcssDebitMandateOptions = GHC.Maybe.Nothing,
      paymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage = GHC.Maybe.Nothing,
      paymentIntentPaymentMethodOptionsAcssDebitVerificationMethod = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.payment_intent_payment_method_options_acss_debit.properties.setup_future_usage@ in the specification.
--
-- Indicates that you intend to make future payments with this PaymentIntent\'s payment method.
--
-- Providing this parameter will [attach the payment method](https:\/\/stripe.com\/docs\/payments\/save-during-payment) to the PaymentIntent\'s Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https:\/\/stripe.com\/docs\/api\/payment_methods\/attach) to a Customer after the transaction completes.
--
-- When processing card payments, Stripe also uses \`setup_future_usage\` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https:\/\/stripe.com\/docs\/strong-customer-authentication).
data PaymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"none"@
    PaymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage'EnumNone
  | -- | Represents the JSON value @"off_session"@
    PaymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage'EnumOffSession
  | -- | Represents the JSON value @"on_session"@
    PaymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage'EnumOnSession
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage' where
  toJSON (PaymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage'Other val) = val
  toJSON (PaymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage'EnumNone) = "none"
  toJSON (PaymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage'EnumOffSession) = "off_session"
  toJSON (PaymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage'EnumOnSession) = "on_session"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "none" -> PaymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage'EnumNone
          | val GHC.Classes.== "off_session" -> PaymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage'EnumOffSession
          | val GHC.Classes.== "on_session" -> PaymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage'EnumOnSession
          | GHC.Base.otherwise -> PaymentIntentPaymentMethodOptionsAcssDebitSetupFutureUsage'Other val
      )

-- | Defines the enum schema located at @components.schemas.payment_intent_payment_method_options_acss_debit.properties.verification_method@ in the specification.
--
-- Bank account verification method.
data PaymentIntentPaymentMethodOptionsAcssDebitVerificationMethod'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentIntentPaymentMethodOptionsAcssDebitVerificationMethod'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentIntentPaymentMethodOptionsAcssDebitVerificationMethod'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"automatic"@
    PaymentIntentPaymentMethodOptionsAcssDebitVerificationMethod'EnumAutomatic
  | -- | Represents the JSON value @"instant"@
    PaymentIntentPaymentMethodOptionsAcssDebitVerificationMethod'EnumInstant
  | -- | Represents the JSON value @"microdeposits"@
    PaymentIntentPaymentMethodOptionsAcssDebitVerificationMethod'EnumMicrodeposits
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentPaymentMethodOptionsAcssDebitVerificationMethod' where
  toJSON (PaymentIntentPaymentMethodOptionsAcssDebitVerificationMethod'Other val) = val
  toJSON (PaymentIntentPaymentMethodOptionsAcssDebitVerificationMethod'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentIntentPaymentMethodOptionsAcssDebitVerificationMethod'EnumAutomatic) = "automatic"
  toJSON (PaymentIntentPaymentMethodOptionsAcssDebitVerificationMethod'EnumInstant) = "instant"
  toJSON (PaymentIntentPaymentMethodOptionsAcssDebitVerificationMethod'EnumMicrodeposits) = "microdeposits"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentPaymentMethodOptionsAcssDebitVerificationMethod' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "automatic" -> PaymentIntentPaymentMethodOptionsAcssDebitVerificationMethod'EnumAutomatic
          | val GHC.Classes.== "instant" -> PaymentIntentPaymentMethodOptionsAcssDebitVerificationMethod'EnumInstant
          | val GHC.Classes.== "microdeposits" -> PaymentIntentPaymentMethodOptionsAcssDebitVerificationMethod'EnumMicrodeposits
          | GHC.Base.otherwise -> PaymentIntentPaymentMethodOptionsAcssDebitVerificationMethod'Other val
      )
