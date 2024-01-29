-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema CheckoutCustomerBalanceBankTransferPaymentMethodOptions
module StripeAPI.Types.CheckoutCustomerBalanceBankTransferPaymentMethodOptions where

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
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodOptionsCustomerBalanceEuBankAccount

-- | Defines the object schema located at @components.schemas.checkout_customer_balance_bank_transfer_payment_method_options@ in the specification.
-- 
-- 
data CheckoutCustomerBalanceBankTransferPaymentMethodOptions = CheckoutCustomerBalanceBankTransferPaymentMethodOptions {
  -- | eu_bank_transfer: 
  checkoutCustomerBalanceBankTransferPaymentMethodOptionsEuBankTransfer :: (GHC.Maybe.Maybe PaymentMethodOptionsCustomerBalanceEuBankAccount)
  -- | requested_address_types: List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
  -- 
  -- Permitted values include: \`sort_code\`, \`zengin\`, \`iban\`, or \`spei\`.
  , checkoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes :: (GHC.Maybe.Maybe ([CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes']))
  -- | type: The bank transfer type that this PaymentIntent is allowed to use for funding Permitted values include: \`eu_bank_transfer\`, \`gb_bank_transfer\`, \`jp_bank_transfer\`, \`mx_bank_transfer\`, or \`us_bank_transfer\`.
  , checkoutCustomerBalanceBankTransferPaymentMethodOptionsType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CheckoutCustomerBalanceBankTransferPaymentMethodOptions
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("eu_bank_transfer" Data.Aeson.Types.ToJSON..=)) (checkoutCustomerBalanceBankTransferPaymentMethodOptionsEuBankTransfer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("requested_address_types" Data.Aeson.Types.ToJSON..=)) (checkoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (checkoutCustomerBalanceBankTransferPaymentMethodOptionsType obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("eu_bank_transfer" Data.Aeson.Types.ToJSON..=)) (checkoutCustomerBalanceBankTransferPaymentMethodOptionsEuBankTransfer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("requested_address_types" Data.Aeson.Types.ToJSON..=)) (checkoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (checkoutCustomerBalanceBankTransferPaymentMethodOptionsType obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON CheckoutCustomerBalanceBankTransferPaymentMethodOptions
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "CheckoutCustomerBalanceBankTransferPaymentMethodOptions" (\obj -> ((GHC.Base.pure CheckoutCustomerBalanceBankTransferPaymentMethodOptions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "eu_bank_transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "requested_address_types")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))}
-- | Create a new 'CheckoutCustomerBalanceBankTransferPaymentMethodOptions' with all required fields.
mkCheckoutCustomerBalanceBankTransferPaymentMethodOptions :: CheckoutCustomerBalanceBankTransferPaymentMethodOptions
mkCheckoutCustomerBalanceBankTransferPaymentMethodOptions = CheckoutCustomerBalanceBankTransferPaymentMethodOptions{checkoutCustomerBalanceBankTransferPaymentMethodOptionsEuBankTransfer = GHC.Maybe.Nothing,
                                                                                                                    checkoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes = GHC.Maybe.Nothing,
                                                                                                                    checkoutCustomerBalanceBankTransferPaymentMethodOptionsType = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.checkout_customer_balance_bank_transfer_payment_method_options.properties.requested_address_types.items@ in the specification.
-- 
-- 
data CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes' =
   CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'EnumAba -- ^ Represents the JSON value @"aba"@
  | CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'EnumIban -- ^ Represents the JSON value @"iban"@
  | CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'EnumSepa -- ^ Represents the JSON value @"sepa"@
  | CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'EnumSortCode -- ^ Represents the JSON value @"sort_code"@
  | CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'EnumSpei -- ^ Represents the JSON value @"spei"@
  | CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'EnumSwift -- ^ Represents the JSON value @"swift"@
  | CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'EnumZengin -- ^ Represents the JSON value @"zengin"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'
    where {toJSON (CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'Other val) = val;
           toJSON (CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'EnumAba) = "aba";
           toJSON (CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'EnumIban) = "iban";
           toJSON (CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'EnumSepa) = "sepa";
           toJSON (CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'EnumSortCode) = "sort_code";
           toJSON (CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'EnumSpei) = "spei";
           toJSON (CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'EnumSwift) = "swift";
           toJSON (CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'EnumZengin) = "zengin"}
instance Data.Aeson.Types.FromJSON.FromJSON CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "aba" -> CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'EnumAba
                                             | val GHC.Classes.== "iban" -> CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'EnumIban
                                             | val GHC.Classes.== "sepa" -> CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'EnumSepa
                                             | val GHC.Classes.== "sort_code" -> CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'EnumSortCode
                                             | val GHC.Classes.== "spei" -> CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'EnumSpei
                                             | val GHC.Classes.== "swift" -> CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'EnumSwift
                                             | val GHC.Classes.== "zengin" -> CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'EnumZengin
                                             | GHC.Base.otherwise -> CheckoutCustomerBalanceBankTransferPaymentMethodOptionsRequestedAddressTypes'Other val)}
-- | Defines the enum schema located at @components.schemas.checkout_customer_balance_bank_transfer_payment_method_options.properties.type@ in the specification.
-- 
-- The bank transfer type that this PaymentIntent is allowed to use for funding Permitted values include: \`eu_bank_transfer\`, \`gb_bank_transfer\`, \`jp_bank_transfer\`, \`mx_bank_transfer\`, or \`us_bank_transfer\`.
data CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullable =
   CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullableEnumEuBankTransfer -- ^ Represents the JSON value @"eu_bank_transfer"@
  | CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullableEnumGbBankTransfer -- ^ Represents the JSON value @"gb_bank_transfer"@
  | CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullableEnumJpBankTransfer -- ^ Represents the JSON value @"jp_bank_transfer"@
  | CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullableEnumMxBankTransfer -- ^ Represents the JSON value @"mx_bank_transfer"@
  | CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullableEnumUsBankTransfer -- ^ Represents the JSON value @"us_bank_transfer"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullable
    where {toJSON (CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullableOther val) = val;
           toJSON (CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullableEnumEuBankTransfer) = "eu_bank_transfer";
           toJSON (CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullableEnumGbBankTransfer) = "gb_bank_transfer";
           toJSON (CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullableEnumJpBankTransfer) = "jp_bank_transfer";
           toJSON (CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullableEnumMxBankTransfer) = "mx_bank_transfer";
           toJSON (CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullableEnumUsBankTransfer) = "us_bank_transfer"}
instance Data.Aeson.Types.FromJSON.FromJSON CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "eu_bank_transfer" -> CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullableEnumEuBankTransfer
                                             | val GHC.Classes.== "gb_bank_transfer" -> CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullableEnumGbBankTransfer
                                             | val GHC.Classes.== "jp_bank_transfer" -> CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullableEnumJpBankTransfer
                                             | val GHC.Classes.== "mx_bank_transfer" -> CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullableEnumMxBankTransfer
                                             | val GHC.Classes.== "us_bank_transfer" -> CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullableEnumUsBankTransfer
                                             | GHC.Base.otherwise -> CheckoutCustomerBalanceBankTransferPaymentMethodOptionsType'NonNullableOther val)}