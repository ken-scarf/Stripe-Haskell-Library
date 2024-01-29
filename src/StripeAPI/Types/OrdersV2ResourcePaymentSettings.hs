{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema OrdersV2ResourcePaymentSettings
module StripeAPI.Types.OrdersV2ResourcePaymentSettings where

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
import {-# SOURCE #-} StripeAPI.Types.Account
import {-# SOURCE #-} StripeAPI.Types.OrdersPaymentMethodOptionsAfterpayClearpay
import {-# SOURCE #-} StripeAPI.Types.OrdersV2ResourceAutomaticPaymentMethods
import {-# SOURCE #-} StripeAPI.Types.OrdersV2ResourceCardPaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.OrdersV2ResourcePaymentMethodOptions
import {-# SOURCE #-} StripeAPI.Types.OrdersV2ResourceTransferData
import {-# SOURCE #-} StripeAPI.Types.PaymentIntentPaymentMethodOptionsAcssDebit
import {-# SOURCE #-} StripeAPI.Types.PaymentIntentPaymentMethodOptionsLink
import {-# SOURCE #-} StripeAPI.Types.PaymentIntentPaymentMethodOptionsSepaDebit
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodOptionsAlipay
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodOptionsBancontact
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodOptionsCustomerBalance
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodOptionsIdeal
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodOptionsKlarna
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodOptionsOxxo
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodOptionsP24
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodOptionsPaypal
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodOptionsSofort
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodOptionsWechatPay
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.orders_v2_resource_payment_settings@ in the specification.
data OrdersV2ResourcePaymentSettings = OrdersV2ResourcePaymentSettings
  { -- | application_fee_amount: The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner\'s Stripe account.
    ordersV2ResourcePaymentSettingsApplicationFeeAmount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | automatic_payment_methods: Indicates whether order has been opted into using [Stripe Dashboard](https:\/\/dashboard.stripe.com\/settings\/payment_methods) to manage payment method types.
    ordersV2ResourcePaymentSettingsAutomaticPaymentMethods :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable OrdersV2ResourcePaymentSettingsAutomaticPaymentMethods'NonNullable)),
    -- | payment_method_options: PaymentMethod-specific configuration to provide to the order\'s PaymentIntent.
    ordersV2ResourcePaymentSettingsPaymentMethodOptions :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable OrdersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullable)),
    -- | payment_method_types: The list of [payment method types](https:\/\/stripe.com\/docs\/payments\/payment-methods\/overview) to provide to the order\'s PaymentIntent. Do not include this attribute if you prefer to manage your payment methods from the [Stripe Dashboard](https:\/\/dashboard.stripe.com\/settings\/payment_methods).
    ordersV2ResourcePaymentSettingsPaymentMethodTypes :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullable]))),
    -- | return_url: The URL to redirect the customer to after they authenticate their payment.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    ordersV2ResourcePaymentSettingsReturnUrl :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | statement_descriptor: For non-card charges, you can use this value as the complete description that appears on your customers\' statements. Must contain at least one letter, maximum 22 characters.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    ordersV2ResourcePaymentSettingsStatementDescriptor :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | statement_descriptor_suffix: Provides information about a card payment that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    ordersV2ResourcePaymentSettingsStatementDescriptorSuffix :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | transfer_data: Provides configuration for completing a transfer for the order after it is paid.
    ordersV2ResourcePaymentSettingsTransferData :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable OrdersV2ResourcePaymentSettingsTransferData'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON OrdersV2ResourcePaymentSettings where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application_fee_amount" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsApplicationFeeAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("automatic_payment_methods" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsAutomaticPaymentMethods obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_method_options" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_method_types" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodTypes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("return_url" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsReturnUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsStatementDescriptor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor_suffix" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsStatementDescriptorSuffix obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transfer_data" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsTransferData obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application_fee_amount" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsApplicationFeeAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("automatic_payment_methods" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsAutomaticPaymentMethods obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_method_options" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_method_types" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodTypes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("return_url" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsReturnUrl obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsStatementDescriptor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor_suffix" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsStatementDescriptorSuffix obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transfer_data" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsTransferData obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON OrdersV2ResourcePaymentSettings where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "OrdersV2ResourcePaymentSettings" (\obj -> (((((((GHC.Base.pure OrdersV2ResourcePaymentSettings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "application_fee_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "automatic_payment_methods")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "payment_method_options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "payment_method_types")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "return_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor_suffix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transfer_data"))

-- | Create a new 'OrdersV2ResourcePaymentSettings' with all required fields.
mkOrdersV2ResourcePaymentSettings :: OrdersV2ResourcePaymentSettings
mkOrdersV2ResourcePaymentSettings =
  OrdersV2ResourcePaymentSettings
    { ordersV2ResourcePaymentSettingsApplicationFeeAmount = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsAutomaticPaymentMethods = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsPaymentMethodOptions = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsPaymentMethodTypes = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsReturnUrl = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsStatementDescriptor = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsStatementDescriptorSuffix = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsTransferData = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.orders_v2_resource_payment_settings.properties.automatic_payment_methods.anyOf@ in the specification.
--
-- Indicates whether order has been opted into using [Stripe Dashboard](https:\\\/\\\/dashboard.stripe.com\\\/settings\\\/payment_methods) to manage payment method types.
data OrdersV2ResourcePaymentSettingsAutomaticPaymentMethods'NonNullable = OrdersV2ResourcePaymentSettingsAutomaticPaymentMethods'NonNullable
  { -- | enabled: Whether this Order has been opted into managing payment method types via the [Stripe Dashboard](https:\/\/dashboard.stripe.com\/settings\/payment_methods).
    ordersV2ResourcePaymentSettingsAutomaticPaymentMethods'NonNullableEnabled :: (GHC.Maybe.Maybe GHC.Types.Bool)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON OrdersV2ResourcePaymentSettingsAutomaticPaymentMethods'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enabled" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsAutomaticPaymentMethods'NonNullableEnabled obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("enabled" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsAutomaticPaymentMethods'NonNullableEnabled obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON OrdersV2ResourcePaymentSettingsAutomaticPaymentMethods'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "OrdersV2ResourcePaymentSettingsAutomaticPaymentMethods'NonNullable" (\obj -> GHC.Base.pure OrdersV2ResourcePaymentSettingsAutomaticPaymentMethods'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "enabled"))

-- | Create a new 'OrdersV2ResourcePaymentSettingsAutomaticPaymentMethods'NonNullable' with all required fields.
mkOrdersV2ResourcePaymentSettingsAutomaticPaymentMethods'NonNullable :: OrdersV2ResourcePaymentSettingsAutomaticPaymentMethods'NonNullable
mkOrdersV2ResourcePaymentSettingsAutomaticPaymentMethods'NonNullable = OrdersV2ResourcePaymentSettingsAutomaticPaymentMethods'NonNullable {ordersV2ResourcePaymentSettingsAutomaticPaymentMethods'NonNullableEnabled = GHC.Maybe.Nothing}

-- | Defines the object schema located at @components.schemas.orders_v2_resource_payment_settings.properties.payment_method_options.anyOf@ in the specification.
--
-- PaymentMethod-specific configuration to provide to the order\\\'s PaymentIntent.
data OrdersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullable = OrdersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullable
  { -- | acss_debit:
    ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableAcssDebit :: (GHC.Maybe.Maybe PaymentIntentPaymentMethodOptionsAcssDebit),
    -- | afterpay_clearpay:
    ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableAfterpayClearpay :: (GHC.Maybe.Maybe OrdersPaymentMethodOptionsAfterpayClearpay),
    -- | alipay:
    ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableAlipay :: (GHC.Maybe.Maybe PaymentMethodOptionsAlipay),
    -- | bancontact:
    ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableBancontact :: (GHC.Maybe.Maybe PaymentMethodOptionsBancontact),
    -- | card:
    ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableCard :: (GHC.Maybe.Maybe OrdersV2ResourceCardPaymentMethodOptions),
    -- | customer_balance:
    ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableCustomerBalance :: (GHC.Maybe.Maybe PaymentMethodOptionsCustomerBalance),
    -- | ideal:
    ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableIdeal :: (GHC.Maybe.Maybe PaymentMethodOptionsIdeal),
    -- | klarna:
    ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableKlarna :: (GHC.Maybe.Maybe PaymentMethodOptionsKlarna),
    -- | link:
    ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableLink :: (GHC.Maybe.Maybe PaymentIntentPaymentMethodOptionsLink),
    -- | oxxo:
    ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableOxxo :: (GHC.Maybe.Maybe PaymentMethodOptionsOxxo),
    -- | p24:
    ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableP24 :: (GHC.Maybe.Maybe PaymentMethodOptionsP24),
    -- | paypal:
    ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullablePaypal :: (GHC.Maybe.Maybe PaymentMethodOptionsPaypal),
    -- | sepa_debit:
    ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableSepaDebit :: (GHC.Maybe.Maybe PaymentIntentPaymentMethodOptionsSepaDebit),
    -- | sofort:
    ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableSofort :: (GHC.Maybe.Maybe PaymentMethodOptionsSofort),
    -- | wechat_pay:
    ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableWechatPay :: (GHC.Maybe.Maybe PaymentMethodOptionsWechatPay)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON OrdersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("acss_debit" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableAcssDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("afterpay_clearpay" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableAfterpayClearpay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alipay" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableAlipay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bancontact" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableBancontact obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableCard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer_balance" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableCustomerBalance obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ideal" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableIdeal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("klarna" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableKlarna obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("link" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableLink obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("oxxo" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableOxxo obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("p24" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableP24 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("paypal" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullablePaypal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sepa_debit" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableSepaDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sofort" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableSofort obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("wechat_pay" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableWechatPay obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("acss_debit" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableAcssDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("afterpay_clearpay" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableAfterpayClearpay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("alipay" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableAlipay obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bancontact" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableBancontact obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableCard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer_balance" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableCustomerBalance obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ideal" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableIdeal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("klarna" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableKlarna obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("link" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableLink obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("oxxo" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableOxxo obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("p24" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableP24 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("paypal" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullablePaypal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sepa_debit" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableSepaDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sofort" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableSofort obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("wechat_pay" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableWechatPay obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON OrdersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "OrdersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullable" (\obj -> ((((((((((((((GHC.Base.pure OrdersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "acss_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "afterpay_clearpay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "alipay")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bancontact")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "customer_balance")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "ideal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "klarna")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "link")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "oxxo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "p24")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "paypal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sepa_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sofort")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "wechat_pay"))

-- | Create a new 'OrdersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullable' with all required fields.
mkOrdersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullable :: OrdersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullable
mkOrdersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullable =
  OrdersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullable
    { ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableAcssDebit = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableAfterpayClearpay = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableAlipay = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableBancontact = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableCard = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableCustomerBalance = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableIdeal = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableKlarna = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableLink = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableOxxo = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableP24 = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullablePaypal = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableSepaDebit = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableSofort = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsPaymentMethodOptions'NonNullableWechatPay = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.orders_v2_resource_payment_settings.properties.payment_method_types.items@ in the specification.
data OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"acss_debit"@
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumAcssDebit
  | -- | Represents the JSON value @"afterpay_clearpay"@
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumAfterpayClearpay
  | -- | Represents the JSON value @"alipay"@
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumAlipay
  | -- | Represents the JSON value @"au_becs_debit"@
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumAuBecsDebit
  | -- | Represents the JSON value @"bacs_debit"@
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumBacsDebit
  | -- | Represents the JSON value @"bancontact"@
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumBancontact
  | -- | Represents the JSON value @"card"@
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumCard
  | -- | Represents the JSON value @"customer_balance"@
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumCustomerBalance
  | -- | Represents the JSON value @"eps"@
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumEps
  | -- | Represents the JSON value @"fpx"@
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumFpx
  | -- | Represents the JSON value @"giropay"@
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumGiropay
  | -- | Represents the JSON value @"grabpay"@
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumGrabpay
  | -- | Represents the JSON value @"ideal"@
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumIdeal
  | -- | Represents the JSON value @"klarna"@
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumKlarna
  | -- | Represents the JSON value @"link"@
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumLink
  | -- | Represents the JSON value @"oxxo"@
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumOxxo
  | -- | Represents the JSON value @"p24"@
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumP24
  | -- | Represents the JSON value @"paypal"@
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumPaypal
  | -- | Represents the JSON value @"sepa_debit"@
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumSepaDebit
  | -- | Represents the JSON value @"sofort"@
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumSofort
  | -- | Represents the JSON value @"wechat_pay"@
    OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumWechatPay
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullable where
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableOther val) = val
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumAcssDebit) = "acss_debit"
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumAfterpayClearpay) = "afterpay_clearpay"
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumAlipay) = "alipay"
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumAuBecsDebit) = "au_becs_debit"
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumBacsDebit) = "bacs_debit"
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumBancontact) = "bancontact"
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumCard) = "card"
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumCustomerBalance) = "customer_balance"
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumEps) = "eps"
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumFpx) = "fpx"
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumGiropay) = "giropay"
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumGrabpay) = "grabpay"
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumIdeal) = "ideal"
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumKlarna) = "klarna"
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumLink) = "link"
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumOxxo) = "oxxo"
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumP24) = "p24"
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumPaypal) = "paypal"
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumSepaDebit) = "sepa_debit"
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumSofort) = "sofort"
  toJSON (OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumWechatPay) = "wechat_pay"

instance Data.Aeson.Types.FromJSON.FromJSON OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "acss_debit" -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumAcssDebit
          | val GHC.Classes.== "afterpay_clearpay" -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumAfterpayClearpay
          | val GHC.Classes.== "alipay" -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumAlipay
          | val GHC.Classes.== "au_becs_debit" -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumAuBecsDebit
          | val GHC.Classes.== "bacs_debit" -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumBacsDebit
          | val GHC.Classes.== "bancontact" -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumBancontact
          | val GHC.Classes.== "card" -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumCard
          | val GHC.Classes.== "customer_balance" -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumCustomerBalance
          | val GHC.Classes.== "eps" -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumEps
          | val GHC.Classes.== "fpx" -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumFpx
          | val GHC.Classes.== "giropay" -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumGiropay
          | val GHC.Classes.== "grabpay" -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumGrabpay
          | val GHC.Classes.== "ideal" -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumIdeal
          | val GHC.Classes.== "klarna" -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumKlarna
          | val GHC.Classes.== "link" -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumLink
          | val GHC.Classes.== "oxxo" -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumOxxo
          | val GHC.Classes.== "p24" -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumP24
          | val GHC.Classes.== "paypal" -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumPaypal
          | val GHC.Classes.== "sepa_debit" -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumSepaDebit
          | val GHC.Classes.== "sofort" -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumSofort
          | val GHC.Classes.== "wechat_pay" -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableEnumWechatPay
          | GHC.Base.otherwise -> OrdersV2ResourcePaymentSettingsPaymentMethodTypes'NonNullableOther val
      )

-- | Defines the object schema located at @components.schemas.orders_v2_resource_payment_settings.properties.transfer_data.anyOf@ in the specification.
--
-- Provides configuration for completing a transfer for the order after it is paid.
data OrdersV2ResourcePaymentSettingsTransferData'NonNullable = OrdersV2ResourcePaymentSettingsTransferData'NonNullable
  { -- | amount: The amount that will be transferred automatically when the order is paid. If no amount is set, the full amount is transferred. There cannot be any line items with recurring prices when using this field.
    ordersV2ResourcePaymentSettingsTransferData'NonNullableAmount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | destination: ID of the Connected account receiving the transfer.
    ordersV2ResourcePaymentSettingsTransferData'NonNullableDestination :: (GHC.Maybe.Maybe OrdersV2ResourcePaymentSettingsTransferData'NonNullableDestination'Variants)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON OrdersV2ResourcePaymentSettingsTransferData'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsTransferData'NonNullableAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("destination" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsTransferData'NonNullableDestination obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsTransferData'NonNullableAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("destination" Data.Aeson.Types.ToJSON..=)) (ordersV2ResourcePaymentSettingsTransferData'NonNullableDestination obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON OrdersV2ResourcePaymentSettingsTransferData'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "OrdersV2ResourcePaymentSettingsTransferData'NonNullable" (\obj -> (GHC.Base.pure OrdersV2ResourcePaymentSettingsTransferData'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "destination"))

-- | Create a new 'OrdersV2ResourcePaymentSettingsTransferData'NonNullable' with all required fields.
mkOrdersV2ResourcePaymentSettingsTransferData'NonNullable :: OrdersV2ResourcePaymentSettingsTransferData'NonNullable
mkOrdersV2ResourcePaymentSettingsTransferData'NonNullable =
  OrdersV2ResourcePaymentSettingsTransferData'NonNullable
    { ordersV2ResourcePaymentSettingsTransferData'NonNullableAmount = GHC.Maybe.Nothing,
      ordersV2ResourcePaymentSettingsTransferData'NonNullableDestination = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.orders_v2_resource_payment_settings.properties.transfer_data.anyOf.properties.destination.anyOf@ in the specification.
--
-- ID of the Connected account receiving the transfer.
data OrdersV2ResourcePaymentSettingsTransferData'NonNullableDestination'Variants
  = OrdersV2ResourcePaymentSettingsTransferData'NonNullableDestination'Text Data.Text.Internal.Text
  | OrdersV2ResourcePaymentSettingsTransferData'NonNullableDestination'Account Account
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON OrdersV2ResourcePaymentSettingsTransferData'NonNullableDestination'Variants where
  toJSON (OrdersV2ResourcePaymentSettingsTransferData'NonNullableDestination'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (OrdersV2ResourcePaymentSettingsTransferData'NonNullableDestination'Account a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON OrdersV2ResourcePaymentSettingsTransferData'NonNullableDestination'Variants where
  parseJSON val = case (OrdersV2ResourcePaymentSettingsTransferData'NonNullableDestination'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((OrdersV2ResourcePaymentSettingsTransferData'NonNullableDestination'Account Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
