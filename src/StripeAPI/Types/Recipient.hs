{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Recipient
module StripeAPI.Types.Recipient where

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
import {-# SOURCE #-} StripeAPI.Types.BankAccount
import {-# SOURCE #-} StripeAPI.Types.Card
import {-# SOURCE #-} StripeAPI.Types.Customer
import {-# SOURCE #-} StripeAPI.Types.DeletedCustomer
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.recipient@ in the specification.
--
-- With \`Recipient\` objects, you can transfer money from your Stripe account to a
-- third-party bank account or debit card. The API allows you to create, delete,
-- and update your recipients. You can retrieve individual recipients as well as
-- a list of all your recipients.
--
-- **\`Recipient\` objects have been deprecated in favor of
-- [Connect](https:\/\/stripe.com\/docs\/connect), specifically Connect\'s much more powerful
-- [Account objects](https:\/\/stripe.com\/docs\/api\#account). Stripe accounts that don\'t already use
-- recipients can no longer begin doing so. Please use \`Account\` objects
-- instead.**
data Recipient = Recipient
  { -- | active_account: Hash describing the current account on the recipient, if there is one.
    recipientActiveAccount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable RecipientActiveAccount'NonNullable)),
    -- | cards:
    recipientCards :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable RecipientCards'NonNullable)),
    -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    recipientCreated :: GHC.Types.Int,
    -- | default_card: The default card to use for creating transfers to this recipient.
    recipientDefaultCard :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable RecipientDefaultCard'NonNullableVariants)),
    -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    recipientDescription :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | email
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    recipientEmail :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    recipientId :: Data.Text.Internal.Text,
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    recipientLivemode :: GHC.Types.Bool,
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    recipientMetadata :: Data.Aeson.Types.Internal.Object,
    -- | migrated_to: The ID of the [Custom account](https:\/\/stripe.com\/docs\/connect\/custom-accounts) this recipient was migrated to. If set, the recipient can no longer be updated, nor can transfers be made to it: use the Custom account instead.
    recipientMigratedTo :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable RecipientMigratedTo'NonNullableVariants)),
    -- | name: Full, legal name of the recipient.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    recipientName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | rolled_back_from
    recipientRolledBackFrom :: (GHC.Maybe.Maybe RecipientRolledBackFrom'Variants),
    -- | type: Type of the recipient, one of \`individual\` or \`corporation\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    recipientType :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Recipient where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("active_account" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cards" Data.Aeson.Types.ToJSON..=)) (recipientCards obj) : ["created" Data.Aeson.Types.ToJSON..= recipientCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_card" Data.Aeson.Types.ToJSON..=)) (recipientDefaultCard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (recipientDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("email" Data.Aeson.Types.ToJSON..=)) (recipientEmail obj) : ["id" Data.Aeson.Types.ToJSON..= recipientId obj] : ["livemode" Data.Aeson.Types.ToJSON..= recipientLivemode obj] : ["metadata" Data.Aeson.Types.ToJSON..= recipientMetadata obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("migrated_to" Data.Aeson.Types.ToJSON..=)) (recipientMigratedTo obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (recipientName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("rolled_back_from" Data.Aeson.Types.ToJSON..=)) (recipientRolledBackFrom obj) : ["type" Data.Aeson.Types.ToJSON..= recipientType obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "recipient"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("active_account" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cards" Data.Aeson.Types.ToJSON..=)) (recipientCards obj) : ["created" Data.Aeson.Types.ToJSON..= recipientCreated obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_card" Data.Aeson.Types.ToJSON..=)) (recipientDefaultCard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (recipientDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("email" Data.Aeson.Types.ToJSON..=)) (recipientEmail obj) : ["id" Data.Aeson.Types.ToJSON..= recipientId obj] : ["livemode" Data.Aeson.Types.ToJSON..= recipientLivemode obj] : ["metadata" Data.Aeson.Types.ToJSON..= recipientMetadata obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("migrated_to" Data.Aeson.Types.ToJSON..=)) (recipientMigratedTo obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (recipientName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("rolled_back_from" Data.Aeson.Types.ToJSON..=)) (recipientRolledBackFrom obj) : ["type" Data.Aeson.Types.ToJSON..= recipientType obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "recipient"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Recipient where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Recipient" (\obj -> ((((((((((((GHC.Base.pure Recipient GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "active_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cards")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "default_card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "migrated_to")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "rolled_back_from")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))

-- | Create a new 'Recipient' with all required fields.
mkRecipient ::
  -- | 'recipientCreated'
  GHC.Types.Int ->
  -- | 'recipientId'
  Data.Text.Internal.Text ->
  -- | 'recipientLivemode'
  GHC.Types.Bool ->
  -- | 'recipientMetadata'
  Data.Aeson.Types.Internal.Object ->
  -- | 'recipientType'
  Data.Text.Internal.Text ->
  Recipient
mkRecipient recipientCreated recipientId recipientLivemode recipientMetadata recipientType =
  Recipient
    { recipientActiveAccount = GHC.Maybe.Nothing,
      recipientCards = GHC.Maybe.Nothing,
      recipientCreated = recipientCreated,
      recipientDefaultCard = GHC.Maybe.Nothing,
      recipientDescription = GHC.Maybe.Nothing,
      recipientEmail = GHC.Maybe.Nothing,
      recipientId = recipientId,
      recipientLivemode = recipientLivemode,
      recipientMetadata = recipientMetadata,
      recipientMigratedTo = GHC.Maybe.Nothing,
      recipientName = GHC.Maybe.Nothing,
      recipientRolledBackFrom = GHC.Maybe.Nothing,
      recipientType = recipientType
    }

-- | Defines the object schema located at @components.schemas.recipient.properties.active_account.anyOf@ in the specification.
--
-- Hash describing the current account on the recipient, if there is one.
data RecipientActiveAccount'NonNullable = RecipientActiveAccount'NonNullable
  { -- | account: The ID of the account that the bank account is associated with.
    recipientActiveAccount'NonNullableAccount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable RecipientActiveAccount'NonNullableAccount'NonNullableVariants)),
    -- | account_holder_name: The name of the person or business that owns the bank account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    recipientActiveAccount'NonNullableAccountHolderName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | account_holder_type: The type of entity that holds the account. This can be either \`individual\` or \`company\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    recipientActiveAccount'NonNullableAccountHolderType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | account_type: The bank account type. This can only be \`checking\` or \`savings\` in most countries. In Japan, this can only be \`futsu\` or \`toza\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    recipientActiveAccount'NonNullableAccountType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | available_payout_methods: A set of available payout methods for this bank account. Only values from this set should be passed as the \`method\` when creating a payout.
    recipientActiveAccount'NonNullableAvailablePayoutMethods :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([RecipientActiveAccount'NonNullableAvailablePayoutMethods'NonNullable]))),
    -- | bank_name: Name of the bank associated with the routing number (e.g., \`WELLS FARGO\`).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    recipientActiveAccount'NonNullableBankName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | country: Two-letter ISO code representing the country the bank account is located in.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    recipientActiveAccount'NonNullableCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | currency: Three-letter [ISO code for the currency](https:\/\/stripe.com\/docs\/payouts) paid out to the bank account.
    recipientActiveAccount'NonNullableCurrency :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | customer: The ID of the customer that the bank account is associated with.
    recipientActiveAccount'NonNullableCustomer :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable RecipientActiveAccount'NonNullableCustomer'NonNullableVariants)),
    -- | default_for_currency: Whether this bank account is the default external account for its currency.
    recipientActiveAccount'NonNullableDefaultForCurrency :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Bool)),
    -- | fingerprint: Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    recipientActiveAccount'NonNullableFingerprint :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    recipientActiveAccount'NonNullableId :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | last4: The last four digits of the bank account number.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    recipientActiveAccount'NonNullableLast4 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    recipientActiveAccount'NonNullableMetadata :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Aeson.Types.Internal.Object)),
    -- | object: String representing the object\'s type. Objects of the same type share the same value.
    recipientActiveAccount'NonNullableObject :: (GHC.Maybe.Maybe RecipientActiveAccount'NonNullableObject'),
    -- | routing_number: The routing transit number for the bank account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    recipientActiveAccount'NonNullableRoutingNumber :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | status: For bank accounts, possible values are \`new\`, \`validated\`, \`verified\`, \`verification_failed\`, or \`errored\`. A bank account that hasn\'t had any activity or validation performed is \`new\`. If Stripe can determine that the bank account exists, its status will be \`validated\`. Note that there often isn’t enough information to know (e.g., for smaller credit unions), and the validation is not always run. If customer bank account verification has succeeded, the bank account status will be \`verified\`. If the verification failed for any reason, such as microdeposit failure, the status will be \`verification_failed\`. If a transfer sent to this bank account fails, we\'ll set the status to \`errored\` and will not continue to send transfers until the bank details are updated.
    --
    -- For external accounts, possible values are \`new\` and \`errored\`. Validations aren\'t run against external accounts because they\'re only used for payouts. This means the other statuses don\'t apply. If a transfer fails, the status is set to \`errored\` and transfers are stopped until account details are updated.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    recipientActiveAccount'NonNullableStatus :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON RecipientActiveAccount'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_name" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableAccountHolderName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_type" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableAccountHolderType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableAccountType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("available_payout_methods" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableAvailablePayoutMethods obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_name" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableBankName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_for_currency" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableDefaultForCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last4" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableRoutingNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableStatus obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_name" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableAccountHolderName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_type" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableAccountHolderType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableAccountType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("available_payout_methods" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableAvailablePayoutMethods obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bank_name" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableBankName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("country" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("customer" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_for_currency" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableDefaultForCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fingerprint" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableFingerprint obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("last4" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableLast4 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("object" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableObject obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableRoutingNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status" Data.Aeson.Types.ToJSON..=)) (recipientActiveAccount'NonNullableStatus obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON RecipientActiveAccount'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "RecipientActiveAccount'NonNullable" (\obj -> ((((((((((((((((GHC.Base.pure RecipientActiveAccount'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "available_payout_methods")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bank_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "customer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "fingerprint")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "last4")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "routing_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "status"))

-- | Create a new 'RecipientActiveAccount'NonNullable' with all required fields.
mkRecipientActiveAccount'NonNullable :: RecipientActiveAccount'NonNullable
mkRecipientActiveAccount'NonNullable =
  RecipientActiveAccount'NonNullable
    { recipientActiveAccount'NonNullableAccount = GHC.Maybe.Nothing,
      recipientActiveAccount'NonNullableAccountHolderName = GHC.Maybe.Nothing,
      recipientActiveAccount'NonNullableAccountHolderType = GHC.Maybe.Nothing,
      recipientActiveAccount'NonNullableAccountType = GHC.Maybe.Nothing,
      recipientActiveAccount'NonNullableAvailablePayoutMethods = GHC.Maybe.Nothing,
      recipientActiveAccount'NonNullableBankName = GHC.Maybe.Nothing,
      recipientActiveAccount'NonNullableCountry = GHC.Maybe.Nothing,
      recipientActiveAccount'NonNullableCurrency = GHC.Maybe.Nothing,
      recipientActiveAccount'NonNullableCustomer = GHC.Maybe.Nothing,
      recipientActiveAccount'NonNullableDefaultForCurrency = GHC.Maybe.Nothing,
      recipientActiveAccount'NonNullableFingerprint = GHC.Maybe.Nothing,
      recipientActiveAccount'NonNullableId = GHC.Maybe.Nothing,
      recipientActiveAccount'NonNullableLast4 = GHC.Maybe.Nothing,
      recipientActiveAccount'NonNullableMetadata = GHC.Maybe.Nothing,
      recipientActiveAccount'NonNullableObject = GHC.Maybe.Nothing,
      recipientActiveAccount'NonNullableRoutingNumber = GHC.Maybe.Nothing,
      recipientActiveAccount'NonNullableStatus = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.recipient.properties.active_account.anyOf.properties.account.anyOf@ in the specification.
--
-- The ID of the account that the bank account is associated with.
data RecipientActiveAccount'NonNullableAccount'NonNullableVariants
  = RecipientActiveAccount'NonNullableAccount'NonNullableText Data.Text.Internal.Text
  | RecipientActiveAccount'NonNullableAccount'NonNullableAccount Account
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON RecipientActiveAccount'NonNullableAccount'NonNullableVariants where
  toJSON (RecipientActiveAccount'NonNullableAccount'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (RecipientActiveAccount'NonNullableAccount'NonNullableAccount a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON RecipientActiveAccount'NonNullableAccount'NonNullableVariants where
  parseJSON val = case (RecipientActiveAccount'NonNullableAccount'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((RecipientActiveAccount'NonNullableAccount'NonNullableAccount Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @components.schemas.recipient.properties.active_account.anyOf.properties.available_payout_methods.items@ in the specification.
data RecipientActiveAccount'NonNullableAvailablePayoutMethods'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    RecipientActiveAccount'NonNullableAvailablePayoutMethods'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    RecipientActiveAccount'NonNullableAvailablePayoutMethods'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"instant"@
    RecipientActiveAccount'NonNullableAvailablePayoutMethods'NonNullableEnumInstant
  | -- | Represents the JSON value @"standard"@
    RecipientActiveAccount'NonNullableAvailablePayoutMethods'NonNullableEnumStandard
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON RecipientActiveAccount'NonNullableAvailablePayoutMethods'NonNullable where
  toJSON (RecipientActiveAccount'NonNullableAvailablePayoutMethods'NonNullableOther val) = val
  toJSON (RecipientActiveAccount'NonNullableAvailablePayoutMethods'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (RecipientActiveAccount'NonNullableAvailablePayoutMethods'NonNullableEnumInstant) = "instant"
  toJSON (RecipientActiveAccount'NonNullableAvailablePayoutMethods'NonNullableEnumStandard) = "standard"

instance Data.Aeson.Types.FromJSON.FromJSON RecipientActiveAccount'NonNullableAvailablePayoutMethods'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "instant" -> RecipientActiveAccount'NonNullableAvailablePayoutMethods'NonNullableEnumInstant
          | val GHC.Classes.== "standard" -> RecipientActiveAccount'NonNullableAvailablePayoutMethods'NonNullableEnumStandard
          | GHC.Base.otherwise -> RecipientActiveAccount'NonNullableAvailablePayoutMethods'NonNullableOther val
      )

-- | Defines the oneOf schema located at @components.schemas.recipient.properties.active_account.anyOf.properties.customer.anyOf@ in the specification.
--
-- The ID of the customer that the bank account is associated with.
data RecipientActiveAccount'NonNullableCustomer'NonNullableVariants
  = RecipientActiveAccount'NonNullableCustomer'NonNullableText Data.Text.Internal.Text
  | RecipientActiveAccount'NonNullableCustomer'NonNullableCustomer Customer
  | RecipientActiveAccount'NonNullableCustomer'NonNullableDeletedCustomer DeletedCustomer
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON RecipientActiveAccount'NonNullableCustomer'NonNullableVariants where
  toJSON (RecipientActiveAccount'NonNullableCustomer'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (RecipientActiveAccount'NonNullableCustomer'NonNullableCustomer a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (RecipientActiveAccount'NonNullableCustomer'NonNullableDeletedCustomer a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON RecipientActiveAccount'NonNullableCustomer'NonNullableVariants where
  parseJSON val = case (RecipientActiveAccount'NonNullableCustomer'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((RecipientActiveAccount'NonNullableCustomer'NonNullableCustomer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((RecipientActiveAccount'NonNullableCustomer'NonNullableDeletedCustomer Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched")) of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @components.schemas.recipient.properties.active_account.anyOf.properties.object@ in the specification.
--
-- String representing the object\'s type. Objects of the same type share the same value.
data RecipientActiveAccount'NonNullableObject'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    RecipientActiveAccount'NonNullableObject'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    RecipientActiveAccount'NonNullableObject'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"bank_account"@
    RecipientActiveAccount'NonNullableObject'EnumBankAccount
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON RecipientActiveAccount'NonNullableObject' where
  toJSON (RecipientActiveAccount'NonNullableObject'Other val) = val
  toJSON (RecipientActiveAccount'NonNullableObject'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (RecipientActiveAccount'NonNullableObject'EnumBankAccount) = "bank_account"

instance Data.Aeson.Types.FromJSON.FromJSON RecipientActiveAccount'NonNullableObject' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "bank_account" -> RecipientActiveAccount'NonNullableObject'EnumBankAccount
          | GHC.Base.otherwise -> RecipientActiveAccount'NonNullableObject'Other val
      )

-- | Defines the object schema located at @components.schemas.recipient.properties.cards@ in the specification.
data RecipientCards'NonNullable = RecipientCards'NonNullable
  { -- | data
    recipientCards'NonNullableData :: ([Card]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    recipientCards'NonNullableHasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    recipientCards'NonNullableUrl :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON RecipientCards'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= recipientCards'NonNullableData obj] : ["has_more" Data.Aeson.Types.ToJSON..= recipientCards'NonNullableHasMore obj] : ["url" Data.Aeson.Types.ToJSON..= recipientCards'NonNullableUrl obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= recipientCards'NonNullableData obj] : ["has_more" Data.Aeson.Types.ToJSON..= recipientCards'NonNullableHasMore obj] : ["url" Data.Aeson.Types.ToJSON..= recipientCards'NonNullableUrl obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON RecipientCards'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "RecipientCards'NonNullable" (\obj -> ((GHC.Base.pure RecipientCards'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'RecipientCards'NonNullable' with all required fields.
mkRecipientCards'NonNullable ::
  -- | 'recipientCards'NonNullableData'
  [Card] ->
  -- | 'recipientCards'NonNullableHasMore'
  GHC.Types.Bool ->
  -- | 'recipientCards'NonNullableUrl'
  Data.Text.Internal.Text ->
  RecipientCards'NonNullable
mkRecipientCards'NonNullable recipientCards'NonNullableData recipientCards'NonNullableHasMore recipientCards'NonNullableUrl =
  RecipientCards'NonNullable
    { recipientCards'NonNullableData = recipientCards'NonNullableData,
      recipientCards'NonNullableHasMore = recipientCards'NonNullableHasMore,
      recipientCards'NonNullableUrl = recipientCards'NonNullableUrl
    }

-- | Defines the oneOf schema located at @components.schemas.recipient.properties.default_card.anyOf@ in the specification.
--
-- The default card to use for creating transfers to this recipient.
data RecipientDefaultCard'NonNullableVariants
  = RecipientDefaultCard'NonNullableText Data.Text.Internal.Text
  | RecipientDefaultCard'NonNullableCard Card
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON RecipientDefaultCard'NonNullableVariants where
  toJSON (RecipientDefaultCard'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (RecipientDefaultCard'NonNullableCard a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON RecipientDefaultCard'NonNullableVariants where
  parseJSON val = case (RecipientDefaultCard'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((RecipientDefaultCard'NonNullableCard Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.recipient.properties.migrated_to.anyOf@ in the specification.
--
-- The ID of the [Custom account](https:\/\/stripe.com\/docs\/connect\/custom-accounts) this recipient was migrated to. If set, the recipient can no longer be updated, nor can transfers be made to it: use the Custom account instead.
data RecipientMigratedTo'NonNullableVariants
  = RecipientMigratedTo'NonNullableText Data.Text.Internal.Text
  | RecipientMigratedTo'NonNullableAccount Account
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON RecipientMigratedTo'NonNullableVariants where
  toJSON (RecipientMigratedTo'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (RecipientMigratedTo'NonNullableAccount a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON RecipientMigratedTo'NonNullableVariants where
  parseJSON val = case (RecipientMigratedTo'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((RecipientMigratedTo'NonNullableAccount Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.recipient.properties.rolled_back_from.anyOf@ in the specification.
data RecipientRolledBackFrom'Variants
  = RecipientRolledBackFrom'Text Data.Text.Internal.Text
  | RecipientRolledBackFrom'Account Account
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON RecipientRolledBackFrom'Variants where
  toJSON (RecipientRolledBackFrom'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (RecipientRolledBackFrom'Account a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON RecipientRolledBackFrom'Variants where
  parseJSON val = case (RecipientRolledBackFrom'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((RecipientRolledBackFrom'Account Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
