{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema ExternalAccount
module StripeAPI.Types.ExternalAccount where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
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
import {-# SOURCE #-} StripeAPI.Types.Account
import {-# SOURCE #-} StripeAPI.Types.BankAccount
import {-# SOURCE #-} StripeAPI.Types.Card
import {-# SOURCE #-} StripeAPI.Types.Customer
import {-# SOURCE #-} StripeAPI.Types.DeletedCustomer
import {-# SOURCE #-} StripeAPI.Types.Recipient
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.external_account.anyOf@ in the specification.
data ExternalAccount = ExternalAccount
  { -- | account: The ID of the account that the bank account is associated with.
    externalAccountAccount :: (GHC.Maybe.Maybe ExternalAccountAccount'Variants),
    -- | account_holder_name: The name of the person or business that owns the bank account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountAccountHolderName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | account_holder_type: The type of entity that holds the account. This can be either \`individual\` or \`company\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountAccountHolderType :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_city: City\/District\/Suburb\/Town\/Village.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountAddressCity :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_country: Billing address country, if provided when creating card.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountAddressCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_line1: Address line 1 (Street address\/PO Box\/Company name).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountAddressLine1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_line1_check: If \`address_line1\` was provided, results of the check: \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountAddressLine1Check :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_line2: Address line 2 (Apartment\/Suite\/Unit\/Building).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountAddressLine2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_state: State\/County\/Province\/Region.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountAddressState :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_zip: ZIP or postal code.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountAddressZip :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_zip_check: If \`address_zip\` was provided, results of the check: \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountAddressZipCheck :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | available_payout_methods: A set of available payout methods for this bank account. Only values from this set should be passed as the \`method\` when creating a payout.
    externalAccountAvailablePayoutMethods :: (GHC.Maybe.Maybe ([ExternalAccountAvailablePayoutMethods'])),
    -- | bank_name: Name of the bank associated with the routing number (e.g., \`WELLS FARGO\`).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountBankName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | brand: Card brand. Can be \`American Express\`, \`Diners Club\`, \`Discover\`, \`JCB\`, \`MasterCard\`, \`UnionPay\`, \`Visa\`, or \`Unknown\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountBrand :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | country: Two-letter ISO code representing the country the bank account is located in.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | currency: Three-letter [ISO code for the currency](https:\/\/stripe.com\/docs\/payouts) paid out to the bank account.
    externalAccountCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | customer: The ID of the customer that the bank account is associated with.
    externalAccountCustomer :: (GHC.Maybe.Maybe ExternalAccountCustomer'Variants),
    -- | cvc_check: If a CVC was provided, results of the check: \`pass\`, \`fail\`, \`unavailable\`, or \`unchecked\`. A result of unchecked indicates that CVC was provided but hasn\'t been checked yet. Checks are typically performed when attaching a card to a Customer object, or when creating a charge. For more details, see [Check if a card is valid without a charge](https:\/\/support.stripe.com\/questions\/check-if-a-card-is-valid-without-a-charge).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountCvcCheck :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | default_for_currency: Whether this bank account is the default external account for its currency.
    externalAccountDefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | dynamic_last4: (For tokenized numbers only.) The last four digits of the device account number.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountDynamicLast4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | exp_month: Two-digit number representing the card\'s expiration month.
    externalAccountExpMonth :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | exp_year: Four-digit number representing the card\'s expiration year.
    externalAccountExpYear :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | fingerprint: Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountFingerprint :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | funding: Card funding type. Can be \`credit\`, \`debit\`, \`prepaid\`, or \`unknown\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountFunding :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountId :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | last4: The last four digits of the bank account number.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountLast4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    externalAccountMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | name: Cardholder name.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | object: String representing the object\'s type. Objects of the same type share the same value.
    externalAccountObject :: (GHC.Maybe.Maybe ExternalAccountObject'),
    -- | recipient: The recipient that this card belongs to. This attribute will not be in the card object if the card belongs to a customer or account instead.
    externalAccountRecipient :: (GHC.Maybe.Maybe ExternalAccountRecipient'Variants),
    -- | routing_number: The routing transit number for the bank account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountRoutingNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | status: For bank accounts, possible values are \`new\`, \`validated\`, \`verified\`, \`verification_failed\`, or \`errored\`. A bank account that hasn\'t had any activity or validation performed is \`new\`. If Stripe can determine that the bank account exists, its status will be \`validated\`. Note that there often isn’t enough information to know (e.g., for smaller credit unions), and the validation is not always run. If customer bank account verification has succeeded, the bank account status will be \`verified\`. If the verification failed for any reason, such as microdeposit failure, the status will be \`verification_failed\`. If a transfer sent to this bank account fails, we\'ll set the status to \`errored\` and will not continue to send transfers until the bank details are updated.
    --
    -- For external accounts, possible values are \`new\` and \`errored\`. Validations aren\'t run against external accounts because they\'re only used for payouts. This means the other statuses don\'t apply. If a transfer fails, the status is set to \`errored\` and transfers are stopped until account details are updated.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountStatus :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | tokenization_method: If the card number is tokenized, this is the method that was used. Can be \`android_pay\` (includes Google Pay), \`apple_pay\`, \`masterpass\`, \`visa_checkout\`, or null.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    externalAccountTokenizationMethod :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON ExternalAccount where
  toJSON obj = Data.Aeson.Types.Internal.object ("account" Data.Aeson.Types.ToJSON..= externalAccountAccount obj : "account_holder_name" Data.Aeson.Types.ToJSON..= externalAccountAccountHolderName obj : "account_holder_type" Data.Aeson.Types.ToJSON..= externalAccountAccountHolderType obj : "address_city" Data.Aeson.Types.ToJSON..= externalAccountAddressCity obj : "address_country" Data.Aeson.Types.ToJSON..= externalAccountAddressCountry obj : "address_line1" Data.Aeson.Types.ToJSON..= externalAccountAddressLine1 obj : "address_line1_check" Data.Aeson.Types.ToJSON..= externalAccountAddressLine1Check obj : "address_line2" Data.Aeson.Types.ToJSON..= externalAccountAddressLine2 obj : "address_state" Data.Aeson.Types.ToJSON..= externalAccountAddressState obj : "address_zip" Data.Aeson.Types.ToJSON..= externalAccountAddressZip obj : "address_zip_check" Data.Aeson.Types.ToJSON..= externalAccountAddressZipCheck obj : "available_payout_methods" Data.Aeson.Types.ToJSON..= externalAccountAvailablePayoutMethods obj : "bank_name" Data.Aeson.Types.ToJSON..= externalAccountBankName obj : "brand" Data.Aeson.Types.ToJSON..= externalAccountBrand obj : "country" Data.Aeson.Types.ToJSON..= externalAccountCountry obj : "currency" Data.Aeson.Types.ToJSON..= externalAccountCurrency obj : "customer" Data.Aeson.Types.ToJSON..= externalAccountCustomer obj : "cvc_check" Data.Aeson.Types.ToJSON..= externalAccountCvcCheck obj : "default_for_currency" Data.Aeson.Types.ToJSON..= externalAccountDefaultForCurrency obj : "dynamic_last4" Data.Aeson.Types.ToJSON..= externalAccountDynamicLast4 obj : "exp_month" Data.Aeson.Types.ToJSON..= externalAccountExpMonth obj : "exp_year" Data.Aeson.Types.ToJSON..= externalAccountExpYear obj : "fingerprint" Data.Aeson.Types.ToJSON..= externalAccountFingerprint obj : "funding" Data.Aeson.Types.ToJSON..= externalAccountFunding obj : "id" Data.Aeson.Types.ToJSON..= externalAccountId obj : "last4" Data.Aeson.Types.ToJSON..= externalAccountLast4 obj : "metadata" Data.Aeson.Types.ToJSON..= externalAccountMetadata obj : "name" Data.Aeson.Types.ToJSON..= externalAccountName obj : "object" Data.Aeson.Types.ToJSON..= externalAccountObject obj : "recipient" Data.Aeson.Types.ToJSON..= externalAccountRecipient obj : "routing_number" Data.Aeson.Types.ToJSON..= externalAccountRoutingNumber obj : "status" Data.Aeson.Types.ToJSON..= externalAccountStatus obj : "tokenization_method" Data.Aeson.Types.ToJSON..= externalAccountTokenizationMethod obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("account" Data.Aeson.Types.ToJSON..= externalAccountAccount obj) GHC.Base.<> (("account_holder_name" Data.Aeson.Types.ToJSON..= externalAccountAccountHolderName obj) GHC.Base.<> (("account_holder_type" Data.Aeson.Types.ToJSON..= externalAccountAccountHolderType obj) GHC.Base.<> (("address_city" Data.Aeson.Types.ToJSON..= externalAccountAddressCity obj) GHC.Base.<> (("address_country" Data.Aeson.Types.ToJSON..= externalAccountAddressCountry obj) GHC.Base.<> (("address_line1" Data.Aeson.Types.ToJSON..= externalAccountAddressLine1 obj) GHC.Base.<> (("address_line1_check" Data.Aeson.Types.ToJSON..= externalAccountAddressLine1Check obj) GHC.Base.<> (("address_line2" Data.Aeson.Types.ToJSON..= externalAccountAddressLine2 obj) GHC.Base.<> (("address_state" Data.Aeson.Types.ToJSON..= externalAccountAddressState obj) GHC.Base.<> (("address_zip" Data.Aeson.Types.ToJSON..= externalAccountAddressZip obj) GHC.Base.<> (("address_zip_check" Data.Aeson.Types.ToJSON..= externalAccountAddressZipCheck obj) GHC.Base.<> (("available_payout_methods" Data.Aeson.Types.ToJSON..= externalAccountAvailablePayoutMethods obj) GHC.Base.<> (("bank_name" Data.Aeson.Types.ToJSON..= externalAccountBankName obj) GHC.Base.<> (("brand" Data.Aeson.Types.ToJSON..= externalAccountBrand obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= externalAccountCountry obj) GHC.Base.<> (("currency" Data.Aeson.Types.ToJSON..= externalAccountCurrency obj) GHC.Base.<> (("customer" Data.Aeson.Types.ToJSON..= externalAccountCustomer obj) GHC.Base.<> (("cvc_check" Data.Aeson.Types.ToJSON..= externalAccountCvcCheck obj) GHC.Base.<> (("default_for_currency" Data.Aeson.Types.ToJSON..= externalAccountDefaultForCurrency obj) GHC.Base.<> (("dynamic_last4" Data.Aeson.Types.ToJSON..= externalAccountDynamicLast4 obj) GHC.Base.<> (("exp_month" Data.Aeson.Types.ToJSON..= externalAccountExpMonth obj) GHC.Base.<> (("exp_year" Data.Aeson.Types.ToJSON..= externalAccountExpYear obj) GHC.Base.<> (("fingerprint" Data.Aeson.Types.ToJSON..= externalAccountFingerprint obj) GHC.Base.<> (("funding" Data.Aeson.Types.ToJSON..= externalAccountFunding obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= externalAccountId obj) GHC.Base.<> (("last4" Data.Aeson.Types.ToJSON..= externalAccountLast4 obj) GHC.Base.<> (("metadata" Data.Aeson.Types.ToJSON..= externalAccountMetadata obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= externalAccountName obj) GHC.Base.<> (("object" Data.Aeson.Types.ToJSON..= externalAccountObject obj) GHC.Base.<> (("recipient" Data.Aeson.Types.ToJSON..= externalAccountRecipient obj) GHC.Base.<> (("routing_number" Data.Aeson.Types.ToJSON..= externalAccountRoutingNumber obj) GHC.Base.<> (("status" Data.Aeson.Types.ToJSON..= externalAccountStatus obj) GHC.Base.<> ("tokenization_method" Data.Aeson.Types.ToJSON..= externalAccountTokenizationMethod obj)))))))))))))))))))))))))))))))))

instance Data.Aeson.Types.FromJSON.FromJSON ExternalAccount where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "ExternalAccount" (\obj -> ((((((((((((((((((((((((((((((((GHC.Base.pure ExternalAccount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address_zip_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "available_payout_methods")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "brand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "cvc_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dynamic_last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "funding")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "recipient")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "tokenization_method"))

-- | Create a new 'ExternalAccount' with all required fields.
mkExternalAccount :: ExternalAccount
mkExternalAccount =
  ExternalAccount
    { externalAccountAccount = GHC.Maybe.Nothing,
      externalAccountAccountHolderName = GHC.Maybe.Nothing,
      externalAccountAccountHolderType = GHC.Maybe.Nothing,
      externalAccountAddressCity = GHC.Maybe.Nothing,
      externalAccountAddressCountry = GHC.Maybe.Nothing,
      externalAccountAddressLine1 = GHC.Maybe.Nothing,
      externalAccountAddressLine1Check = GHC.Maybe.Nothing,
      externalAccountAddressLine2 = GHC.Maybe.Nothing,
      externalAccountAddressState = GHC.Maybe.Nothing,
      externalAccountAddressZip = GHC.Maybe.Nothing,
      externalAccountAddressZipCheck = GHC.Maybe.Nothing,
      externalAccountAvailablePayoutMethods = GHC.Maybe.Nothing,
      externalAccountBankName = GHC.Maybe.Nothing,
      externalAccountBrand = GHC.Maybe.Nothing,
      externalAccountCountry = GHC.Maybe.Nothing,
      externalAccountCurrency = GHC.Maybe.Nothing,
      externalAccountCustomer = GHC.Maybe.Nothing,
      externalAccountCvcCheck = GHC.Maybe.Nothing,
      externalAccountDefaultForCurrency = GHC.Maybe.Nothing,
      externalAccountDynamicLast4 = GHC.Maybe.Nothing,
      externalAccountExpMonth = GHC.Maybe.Nothing,
      externalAccountExpYear = GHC.Maybe.Nothing,
      externalAccountFingerprint = GHC.Maybe.Nothing,
      externalAccountFunding = GHC.Maybe.Nothing,
      externalAccountId = GHC.Maybe.Nothing,
      externalAccountLast4 = GHC.Maybe.Nothing,
      externalAccountMetadata = GHC.Maybe.Nothing,
      externalAccountName = GHC.Maybe.Nothing,
      externalAccountObject = GHC.Maybe.Nothing,
      externalAccountRecipient = GHC.Maybe.Nothing,
      externalAccountRoutingNumber = GHC.Maybe.Nothing,
      externalAccountStatus = GHC.Maybe.Nothing,
      externalAccountTokenizationMethod = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.external_account.anyOf.properties.account.anyOf@ in the specification.
--
-- The ID of the account that the bank account is associated with.
data ExternalAccountAccount'Variants
  = ExternalAccountAccount'Text Data.Text.Internal.Text
  | ExternalAccountAccount'Account Account
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON ExternalAccountAccount'Variants where
  toJSON (ExternalAccountAccount'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (ExternalAccountAccount'Account a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON ExternalAccountAccount'Variants where
  parseJSON val = case (ExternalAccountAccount'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((ExternalAccountAccount'Account Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @components.schemas.external_account.anyOf.properties.available_payout_methods.items@ in the specification.
data ExternalAccountAvailablePayoutMethods'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    ExternalAccountAvailablePayoutMethods'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    ExternalAccountAvailablePayoutMethods'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"instant"@
    ExternalAccountAvailablePayoutMethods'EnumInstant
  | -- | Represents the JSON value @"standard"@
    ExternalAccountAvailablePayoutMethods'EnumStandard
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON ExternalAccountAvailablePayoutMethods' where
  toJSON (ExternalAccountAvailablePayoutMethods'Other val) = val
  toJSON (ExternalAccountAvailablePayoutMethods'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (ExternalAccountAvailablePayoutMethods'EnumInstant) = "instant"
  toJSON (ExternalAccountAvailablePayoutMethods'EnumStandard) = "standard"

instance Data.Aeson.Types.FromJSON.FromJSON ExternalAccountAvailablePayoutMethods' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "instant" -> ExternalAccountAvailablePayoutMethods'EnumInstant
            | val GHC.Classes.== "standard" -> ExternalAccountAvailablePayoutMethods'EnumStandard
            | GHC.Base.otherwise -> ExternalAccountAvailablePayoutMethods'Other val
      )

-- | Defines the oneOf schema located at @components.schemas.external_account.anyOf.properties.customer.anyOf@ in the specification.
--
-- The ID of the customer that the bank account is associated with.
data ExternalAccountCustomer'Variants
  = ExternalAccountCustomer'Text Data.Text.Internal.Text
  | ExternalAccountCustomer'Customer Customer
  | ExternalAccountCustomer'DeletedCustomer DeletedCustomer
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON ExternalAccountCustomer'Variants where
  toJSON (ExternalAccountCustomer'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (ExternalAccountCustomer'Customer a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (ExternalAccountCustomer'DeletedCustomer a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON ExternalAccountCustomer'Variants where
  parseJSON val = case (ExternalAccountCustomer'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((ExternalAccountCustomer'Customer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((ExternalAccountCustomer'DeletedCustomer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched")) of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @components.schemas.external_account.anyOf.properties.object@ in the specification.
--
-- String representing the object\'s type. Objects of the same type share the same value.
data ExternalAccountObject'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    ExternalAccountObject'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    ExternalAccountObject'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"bank_account"@
    ExternalAccountObject'EnumBankAccount
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON ExternalAccountObject' where
  toJSON (ExternalAccountObject'Other val) = val
  toJSON (ExternalAccountObject'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (ExternalAccountObject'EnumBankAccount) = "bank_account"

instance Data.Aeson.Types.FromJSON.FromJSON ExternalAccountObject' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "bank_account" -> ExternalAccountObject'EnumBankAccount
            | GHC.Base.otherwise -> ExternalAccountObject'Other val
      )

-- | Defines the oneOf schema located at @components.schemas.external_account.anyOf.properties.recipient.anyOf@ in the specification.
--
-- The recipient that this card belongs to. This attribute will not be in the card object if the card belongs to a customer or account instead.
data ExternalAccountRecipient'Variants
  = ExternalAccountRecipient'Text Data.Text.Internal.Text
  | ExternalAccountRecipient'Recipient Recipient
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON ExternalAccountRecipient'Variants where
  toJSON (ExternalAccountRecipient'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (ExternalAccountRecipient'Recipient a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON ExternalAccountRecipient'Variants where
  parseJSON val = case (ExternalAccountRecipient'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((ExternalAccountRecipient'Recipient Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
