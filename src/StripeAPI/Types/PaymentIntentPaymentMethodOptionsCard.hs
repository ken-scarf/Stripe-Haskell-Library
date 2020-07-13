{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema PaymentIntentPaymentMethodOptionsCard
module StripeAPI.Types.PaymentIntentPaymentMethodOptionsCard where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
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
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodDetailsCardInstallmentsPlan
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodOptionsCardInstallments
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_intent_payment_method_options_card@ in the specification.
data PaymentIntentPaymentMethodOptionsCard
  = PaymentIntentPaymentMethodOptionsCard
      { -- | installments: Installment details for this payment (Mexico only).
        --
        -- For more information, see the [installments integration guide](https:\/\/stripe.com\/docs\/payments\/installments).
        paymentIntentPaymentMethodOptionsCardInstallments :: (GHC.Maybe.Maybe PaymentIntentPaymentMethodOptionsCardInstallments'),
        -- | request_three_d_secure: We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https:\/\/stripe.com\/docs\/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Permitted values include: \`automatic\` or \`any\`. If not provided, defaults to \`automatic\`. Read our guide on [manually requesting 3D Secure](https:\/\/stripe.com\/docs\/payments\/3d-secure\#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
        paymentIntentPaymentMethodOptionsCardRequestThreeDSecure :: (GHC.Maybe.Maybe PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure')
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentPaymentMethodOptionsCard where
  toJSON obj = Data.Aeson.Types.Internal.object ("installments" Data.Aeson.Types.ToJSON..= paymentIntentPaymentMethodOptionsCardInstallments obj : "request_three_d_secure" Data.Aeson.Types.ToJSON..= paymentIntentPaymentMethodOptionsCardRequestThreeDSecure obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("installments" Data.Aeson.Types.ToJSON..= paymentIntentPaymentMethodOptionsCardInstallments obj) GHC.Base.<> ("request_three_d_secure" Data.Aeson.Types.ToJSON..= paymentIntentPaymentMethodOptionsCardRequestThreeDSecure obj))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentPaymentMethodOptionsCard where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentPaymentMethodOptionsCard" (\obj -> (GHC.Base.pure PaymentIntentPaymentMethodOptionsCard GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "installments")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "request_three_d_secure"))

-- | Create a new 'PaymentIntentPaymentMethodOptionsCard' with all required fields.
mkPaymentIntentPaymentMethodOptionsCard :: PaymentIntentPaymentMethodOptionsCard
mkPaymentIntentPaymentMethodOptionsCard =
  PaymentIntentPaymentMethodOptionsCard
    { paymentIntentPaymentMethodOptionsCardInstallments = GHC.Maybe.Nothing,
      paymentIntentPaymentMethodOptionsCardRequestThreeDSecure = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.payment_intent_payment_method_options_card.properties.installments.anyOf@ in the specification.
--
-- Installment details for this payment (Mexico only).
--
-- For more information, see the [installments integration guide](https:\\\/\\\/stripe.com\\\/docs\\\/payments\\\/installments).
data PaymentIntentPaymentMethodOptionsCardInstallments'
  = PaymentIntentPaymentMethodOptionsCardInstallments'
      { -- | available_plans: Installment plans that may be selected for this PaymentIntent.
        paymentIntentPaymentMethodOptionsCardInstallments'AvailablePlans :: (GHC.Maybe.Maybe ([PaymentMethodDetailsCardInstallmentsPlan])),
        -- | enabled: Whether Installments are enabled for this PaymentIntent.
        paymentIntentPaymentMethodOptionsCardInstallments'Enabled :: (GHC.Maybe.Maybe GHC.Types.Bool),
        -- | plan: Installment plan selected for this PaymentIntent.
        paymentIntentPaymentMethodOptionsCardInstallments'Plan :: (GHC.Maybe.Maybe PaymentIntentPaymentMethodOptionsCardInstallments'Plan')
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentPaymentMethodOptionsCardInstallments' where
  toJSON obj = Data.Aeson.Types.Internal.object ("available_plans" Data.Aeson.Types.ToJSON..= paymentIntentPaymentMethodOptionsCardInstallments'AvailablePlans obj : "enabled" Data.Aeson.Types.ToJSON..= paymentIntentPaymentMethodOptionsCardInstallments'Enabled obj : "plan" Data.Aeson.Types.ToJSON..= paymentIntentPaymentMethodOptionsCardInstallments'Plan obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("available_plans" Data.Aeson.Types.ToJSON..= paymentIntentPaymentMethodOptionsCardInstallments'AvailablePlans obj) GHC.Base.<> (("enabled" Data.Aeson.Types.ToJSON..= paymentIntentPaymentMethodOptionsCardInstallments'Enabled obj) GHC.Base.<> ("plan" Data.Aeson.Types.ToJSON..= paymentIntentPaymentMethodOptionsCardInstallments'Plan obj)))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentPaymentMethodOptionsCardInstallments' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentPaymentMethodOptionsCardInstallments'" (\obj -> ((GHC.Base.pure PaymentIntentPaymentMethodOptionsCardInstallments' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "available_plans")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "plan"))

-- | Create a new 'PaymentIntentPaymentMethodOptionsCardInstallments'' with all required fields.
mkPaymentIntentPaymentMethodOptionsCardInstallments' :: PaymentIntentPaymentMethodOptionsCardInstallments'
mkPaymentIntentPaymentMethodOptionsCardInstallments' =
  PaymentIntentPaymentMethodOptionsCardInstallments'
    { paymentIntentPaymentMethodOptionsCardInstallments'AvailablePlans = GHC.Maybe.Nothing,
      paymentIntentPaymentMethodOptionsCardInstallments'Enabled = GHC.Maybe.Nothing,
      paymentIntentPaymentMethodOptionsCardInstallments'Plan = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.payment_intent_payment_method_options_card.properties.installments.anyOf.properties.plan.anyOf@ in the specification.
--
-- Installment plan selected for this PaymentIntent.
data PaymentIntentPaymentMethodOptionsCardInstallments'Plan'
  = PaymentIntentPaymentMethodOptionsCardInstallments'Plan'
      { -- | count: For \`fixed_count\` installment plans, this is the number of installment payments your customer will make to their credit card.
        paymentIntentPaymentMethodOptionsCardInstallments'Plan'Count :: (GHC.Maybe.Maybe GHC.Types.Int)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentPaymentMethodOptionsCardInstallments'Plan' where
  toJSON obj = Data.Aeson.Types.Internal.object ("count" Data.Aeson.Types.ToJSON..= paymentIntentPaymentMethodOptionsCardInstallments'Plan'Count obj : "interval" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "month" : "type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "fixed_count" : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("count" Data.Aeson.Types.ToJSON..= paymentIntentPaymentMethodOptionsCardInstallments'Plan'Count obj) GHC.Base.<> (("interval" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "month") GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "fixed_count")))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentPaymentMethodOptionsCardInstallments'Plan' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentIntentPaymentMethodOptionsCardInstallments'Plan'" (\obj -> GHC.Base.pure PaymentIntentPaymentMethodOptionsCardInstallments'Plan' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "count"))

-- | Create a new 'PaymentIntentPaymentMethodOptionsCardInstallments'Plan'' with all required fields.
mkPaymentIntentPaymentMethodOptionsCardInstallments'Plan' :: PaymentIntentPaymentMethodOptionsCardInstallments'Plan'
mkPaymentIntentPaymentMethodOptionsCardInstallments'Plan' = PaymentIntentPaymentMethodOptionsCardInstallments'Plan' {paymentIntentPaymentMethodOptionsCardInstallments'Plan'Count = GHC.Maybe.Nothing}

-- | Defines the enum schema located at @components.schemas.payment_intent_payment_method_options_card.properties.request_three_d_secure@ in the specification.
--
-- We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https:\/\/stripe.com\/docs\/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. Permitted values include: \`automatic\` or \`any\`. If not provided, defaults to \`automatic\`. Read our guide on [manually requesting 3D Secure](https:\/\/stripe.com\/docs\/payments\/3d-secure\#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
data PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"any"@
    PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumAny
  | -- | Represents the JSON value @"automatic"@
    PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumAutomatic
  | -- | Represents the JSON value @"challenge_only"@
    PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumChallengeOnly
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure' where
  toJSON (PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure'Other val) = val
  toJSON (PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumAny) = "any"
  toJSON (PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumAutomatic) = "automatic"
  toJSON (PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumChallengeOnly) = "challenge_only"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure' where
  parseJSON val =
    GHC.Base.pure
      ( if  | val GHC.Classes.== "any" -> PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumAny
            | val GHC.Classes.== "automatic" -> PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumAutomatic
            | val GHC.Classes.== "challenge_only" -> PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure'EnumChallengeOnly
            | GHC.Base.otherwise -> PaymentIntentPaymentMethodOptionsCardRequestThreeDSecure'Other val
      )