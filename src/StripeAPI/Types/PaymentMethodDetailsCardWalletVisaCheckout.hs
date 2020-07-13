{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema PaymentMethodDetailsCardWalletVisaCheckout
module StripeAPI.Types.PaymentMethodDetailsCardWalletVisaCheckout where

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
import {-# SOURCE #-} StripeAPI.Types.Address
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_method_details_card_wallet_visa_checkout@ in the specification.
data PaymentMethodDetailsCardWalletVisaCheckout
  = PaymentMethodDetailsCardWalletVisaCheckout
      { -- | billing_address: Owner\'s verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        paymentMethodDetailsCardWalletVisaCheckoutBillingAddress :: (GHC.Maybe.Maybe PaymentMethodDetailsCardWalletVisaCheckoutBillingAddress'),
        -- | email: Owner\'s verified email. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletVisaCheckoutEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | name: Owner\'s verified full name. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletVisaCheckoutName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | shipping_address: Owner\'s verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
        paymentMethodDetailsCardWalletVisaCheckoutShippingAddress :: (GHC.Maybe.Maybe PaymentMethodDetailsCardWalletVisaCheckoutShippingAddress')
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardWalletVisaCheckout where
  toJSON obj = Data.Aeson.Types.Internal.object ("billing_address" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutBillingAddress obj : "email" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutEmail obj : "name" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutName obj : "shipping_address" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutShippingAddress obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("billing_address" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutBillingAddress obj) GHC.Base.<> (("email" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutEmail obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutName obj) GHC.Base.<> ("shipping_address" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutShippingAddress obj))))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardWalletVisaCheckout where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCardWalletVisaCheckout" (\obj -> (((GHC.Base.pure PaymentMethodDetailsCardWalletVisaCheckout GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "billing_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "shipping_address"))

-- | Create a new 'PaymentMethodDetailsCardWalletVisaCheckout' with all required fields.
mkPaymentMethodDetailsCardWalletVisaCheckout :: PaymentMethodDetailsCardWalletVisaCheckout
mkPaymentMethodDetailsCardWalletVisaCheckout =
  PaymentMethodDetailsCardWalletVisaCheckout
    { paymentMethodDetailsCardWalletVisaCheckoutBillingAddress = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletVisaCheckoutEmail = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletVisaCheckoutName = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletVisaCheckoutShippingAddress = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.payment_method_details_card_wallet_visa_checkout.properties.billing_address.anyOf@ in the specification.
--
-- Owner\\\'s verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
data PaymentMethodDetailsCardWalletVisaCheckoutBillingAddress'
  = PaymentMethodDetailsCardWalletVisaCheckoutBillingAddress'
      { -- | city: City, district, suburb, town, or village.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | line1: Address line 1 (e.g., street, PO Box, or company name).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | postal_code: ZIP or postal code.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | state: State, county, province, or region.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardWalletVisaCheckoutBillingAddress' where
  toJSON obj = Data.Aeson.Types.Internal.object ("city" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'City obj : "country" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'Country obj : "line1" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'Line1 obj : "line2" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'Line2 obj : "postal_code" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'PostalCode obj : "state" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'State obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("city" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'City obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'Country obj) GHC.Base.<> (("line1" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'Line1 obj) GHC.Base.<> (("line2" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'Line2 obj) GHC.Base.<> (("postal_code" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'PostalCode obj) GHC.Base.<> ("state" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'State obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardWalletVisaCheckoutBillingAddress' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCardWalletVisaCheckoutBillingAddress'" (\obj -> (((((GHC.Base.pure PaymentMethodDetailsCardWalletVisaCheckoutBillingAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))

-- | Create a new 'PaymentMethodDetailsCardWalletVisaCheckoutBillingAddress'' with all required fields.
mkPaymentMethodDetailsCardWalletVisaCheckoutBillingAddress' :: PaymentMethodDetailsCardWalletVisaCheckoutBillingAddress'
mkPaymentMethodDetailsCardWalletVisaCheckoutBillingAddress' =
  PaymentMethodDetailsCardWalletVisaCheckoutBillingAddress'
    { paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'City = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'Country = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'Line1 = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'Line2 = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'PostalCode = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletVisaCheckoutBillingAddress'State = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.payment_method_details_card_wallet_visa_checkout.properties.shipping_address.anyOf@ in the specification.
--
-- Owner\\\'s verified shipping address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
data PaymentMethodDetailsCardWalletVisaCheckoutShippingAddress'
  = PaymentMethodDetailsCardWalletVisaCheckoutShippingAddress'
      { -- | city: City, district, suburb, town, or village.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | line1: Address line 1 (e.g., street, PO Box, or company name).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | postal_code: ZIP or postal code.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | state: State, county, province, or region.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardWalletVisaCheckoutShippingAddress' where
  toJSON obj = Data.Aeson.Types.Internal.object ("city" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'City obj : "country" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'Country obj : "line1" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'Line1 obj : "line2" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'Line2 obj : "postal_code" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'PostalCode obj : "state" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'State obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("city" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'City obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'Country obj) GHC.Base.<> (("line1" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'Line1 obj) GHC.Base.<> (("line2" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'Line2 obj) GHC.Base.<> (("postal_code" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'PostalCode obj) GHC.Base.<> ("state" Data.Aeson.Types.ToJSON..= paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'State obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardWalletVisaCheckoutShippingAddress' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCardWalletVisaCheckoutShippingAddress'" (\obj -> (((((GHC.Base.pure PaymentMethodDetailsCardWalletVisaCheckoutShippingAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))

-- | Create a new 'PaymentMethodDetailsCardWalletVisaCheckoutShippingAddress'' with all required fields.
mkPaymentMethodDetailsCardWalletVisaCheckoutShippingAddress' :: PaymentMethodDetailsCardWalletVisaCheckoutShippingAddress'
mkPaymentMethodDetailsCardWalletVisaCheckoutShippingAddress' =
  PaymentMethodDetailsCardWalletVisaCheckoutShippingAddress'
    { paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'City = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'Country = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'Line1 = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'Line2 = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'PostalCode = GHC.Maybe.Nothing,
      paymentMethodDetailsCardWalletVisaCheckoutShippingAddress'State = GHC.Maybe.Nothing
    }