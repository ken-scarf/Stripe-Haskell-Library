{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Treasury_TransactionEntry
module StripeAPI.Types.Treasury_TransactionEntry where

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
import {-# SOURCE #-} StripeAPI.Types.Issuing_Authorization
import {-# SOURCE #-} StripeAPI.Types.TreasuryTransactionsResourceBalanceImpact
import {-# SOURCE #-} StripeAPI.Types.TreasuryTransactionsResourceFlowDetails
import {-# SOURCE #-} StripeAPI.Types.Treasury_CreditReversal
import {-# SOURCE #-} StripeAPI.Types.Treasury_DebitReversal
import {-# SOURCE #-} StripeAPI.Types.Treasury_InboundTransfer
import {-# SOURCE #-} StripeAPI.Types.Treasury_OutboundPayment
import {-# SOURCE #-} StripeAPI.Types.Treasury_OutboundTransfer
import {-# SOURCE #-} StripeAPI.Types.Treasury_ReceivedCredit
import {-# SOURCE #-} StripeAPI.Types.Treasury_ReceivedDebit
import {-# SOURCE #-} StripeAPI.Types.Treasury_Transaction
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.treasury.transaction_entry@ in the specification.
--
-- TransactionEntries represent individual units of money movements within a single [Transaction](https:\/\/stripe.com\/docs\/api\#transactions).
data Treasury'transactionEntry = Treasury'transactionEntry
  { -- | balance_impact: Change to a FinancialAccount\'s balance
    treasury'transactionEntryBalanceImpact :: TreasuryTransactionsResourceBalanceImpact,
    -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    treasury'transactionEntryCreated :: GHC.Types.Int,
    -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    treasury'transactionEntryCurrency :: Data.Text.Internal.Text,
    -- | effective_at: When the TransactionEntry will impact the FinancialAccount\'s balance.
    treasury'transactionEntryEffectiveAt :: GHC.Types.Int,
    -- | financial_account: The FinancialAccount associated with this object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    treasury'transactionEntryFinancialAccount :: Data.Text.Internal.Text,
    -- | flow: Token of the flow associated with the TransactionEntry.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    treasury'transactionEntryFlow :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | flow_details: Details of the flow associated with the TransactionEntry.
    treasury'transactionEntryFlowDetails :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Treasury'transactionEntryFlowDetails'NonNullable)),
    -- | flow_type: Type of the flow associated with the TransactionEntry.
    treasury'transactionEntryFlowType :: Treasury'transactionEntryFlowType',
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    treasury'transactionEntryId :: Data.Text.Internal.Text,
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    treasury'transactionEntryLivemode :: GHC.Types.Bool,
    -- | transaction: The Transaction associated with this object.
    treasury'transactionEntryTransaction :: Treasury'transactionEntryTransaction'Variants,
    -- | type: The specific money movement that generated the TransactionEntry.
    treasury'transactionEntryType :: Treasury'transactionEntryType'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Treasury'transactionEntry where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["balance_impact" Data.Aeson.Types.ToJSON..= treasury'transactionEntryBalanceImpact obj] : ["created" Data.Aeson.Types.ToJSON..= treasury'transactionEntryCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= treasury'transactionEntryCurrency obj] : ["effective_at" Data.Aeson.Types.ToJSON..= treasury'transactionEntryEffectiveAt obj] : ["financial_account" Data.Aeson.Types.ToJSON..= treasury'transactionEntryFinancialAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_details" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlowDetails obj) : ["flow_type" Data.Aeson.Types.ToJSON..= treasury'transactionEntryFlowType obj] : ["id" Data.Aeson.Types.ToJSON..= treasury'transactionEntryId obj] : ["livemode" Data.Aeson.Types.ToJSON..= treasury'transactionEntryLivemode obj] : ["transaction" Data.Aeson.Types.ToJSON..= treasury'transactionEntryTransaction obj] : ["type" Data.Aeson.Types.ToJSON..= treasury'transactionEntryType obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "treasury.transaction_entry"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["balance_impact" Data.Aeson.Types.ToJSON..= treasury'transactionEntryBalanceImpact obj] : ["created" Data.Aeson.Types.ToJSON..= treasury'transactionEntryCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= treasury'transactionEntryCurrency obj] : ["effective_at" Data.Aeson.Types.ToJSON..= treasury'transactionEntryEffectiveAt obj] : ["financial_account" Data.Aeson.Types.ToJSON..= treasury'transactionEntryFinancialAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("flow_details" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlowDetails obj) : ["flow_type" Data.Aeson.Types.ToJSON..= treasury'transactionEntryFlowType obj] : ["id" Data.Aeson.Types.ToJSON..= treasury'transactionEntryId obj] : ["livemode" Data.Aeson.Types.ToJSON..= treasury'transactionEntryLivemode obj] : ["transaction" Data.Aeson.Types.ToJSON..= treasury'transactionEntryTransaction obj] : ["type" Data.Aeson.Types.ToJSON..= treasury'transactionEntryType obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "treasury.transaction_entry"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Treasury'transactionEntry where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Treasury'transactionEntry" (\obj -> (((((((((((GHC.Base.pure Treasury'transactionEntry GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "balance_impact")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "effective_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "financial_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "flow_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "flow_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "transaction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))

-- | Create a new 'Treasury'transactionEntry' with all required fields.
mkTreasury'transactionEntry ::
  -- | 'treasury'transactionEntryBalanceImpact'
  TreasuryTransactionsResourceBalanceImpact ->
  -- | 'treasury'transactionEntryCreated'
  GHC.Types.Int ->
  -- | 'treasury'transactionEntryCurrency'
  Data.Text.Internal.Text ->
  -- | 'treasury'transactionEntryEffectiveAt'
  GHC.Types.Int ->
  -- | 'treasury'transactionEntryFinancialAccount'
  Data.Text.Internal.Text ->
  -- | 'treasury'transactionEntryFlowType'
  Treasury'transactionEntryFlowType' ->
  -- | 'treasury'transactionEntryId'
  Data.Text.Internal.Text ->
  -- | 'treasury'transactionEntryLivemode'
  GHC.Types.Bool ->
  -- | 'treasury'transactionEntryTransaction'
  Treasury'transactionEntryTransaction'Variants ->
  -- | 'treasury'transactionEntryType'
  Treasury'transactionEntryType' ->
  Treasury'transactionEntry
mkTreasury'transactionEntry treasury'transactionEntryBalanceImpact treasury'transactionEntryCreated treasury'transactionEntryCurrency treasury'transactionEntryEffectiveAt treasury'transactionEntryFinancialAccount treasury'transactionEntryFlowType treasury'transactionEntryId treasury'transactionEntryLivemode treasury'transactionEntryTransaction treasury'transactionEntryType =
  Treasury'transactionEntry
    { treasury'transactionEntryBalanceImpact = treasury'transactionEntryBalanceImpact,
      treasury'transactionEntryCreated = treasury'transactionEntryCreated,
      treasury'transactionEntryCurrency = treasury'transactionEntryCurrency,
      treasury'transactionEntryEffectiveAt = treasury'transactionEntryEffectiveAt,
      treasury'transactionEntryFinancialAccount = treasury'transactionEntryFinancialAccount,
      treasury'transactionEntryFlow = GHC.Maybe.Nothing,
      treasury'transactionEntryFlowDetails = GHC.Maybe.Nothing,
      treasury'transactionEntryFlowType = treasury'transactionEntryFlowType,
      treasury'transactionEntryId = treasury'transactionEntryId,
      treasury'transactionEntryLivemode = treasury'transactionEntryLivemode,
      treasury'transactionEntryTransaction = treasury'transactionEntryTransaction,
      treasury'transactionEntryType = treasury'transactionEntryType
    }

-- | Defines the object schema located at @components.schemas.treasury.transaction_entry.properties.flow_details.anyOf@ in the specification.
--
-- Details of the flow associated with the TransactionEntry.
data Treasury'transactionEntryFlowDetails'NonNullable = Treasury'transactionEntryFlowDetails'NonNullable
  { -- | credit_reversal: You can reverse some [ReceivedCredits](https:\/\/stripe.com\/docs\/api\#received_credits) depending on their network and source flow. Reversing a ReceivedCredit leads to the creation of a new object known as a CreditReversal.
    treasury'transactionEntryFlowDetails'NonNullableCreditReversal :: (GHC.Maybe.Maybe Treasury'creditReversal),
    -- | debit_reversal: You can reverse some [ReceivedDebits](https:\/\/stripe.com\/docs\/api\#received_debits) depending on their network and source flow. Reversing a ReceivedDebit leads to the creation of a new object known as a DebitReversal.
    treasury'transactionEntryFlowDetails'NonNullableDebitReversal :: (GHC.Maybe.Maybe Treasury'debitReversal),
    -- | inbound_transfer: Use [InboundTransfers](https:\/\/stripe.com\/docs\/treasury\/moving-money\/financial-accounts\/into\/inbound-transfers) to add funds to your [FinancialAccount](https:\/\/stripe.com\/docs\/api\#financial_accounts) via a PaymentMethod that is owned by you. The funds will be transferred via an ACH debit.
    treasury'transactionEntryFlowDetails'NonNullableInboundTransfer :: (GHC.Maybe.Maybe Treasury'inboundTransfer),
    -- | issuing_authorization: When an [issued card](https:\/\/stripe.com\/docs\/issuing) is used to make a purchase, an Issuing \`Authorization\`
    -- object is created. [Authorizations](https:\/\/stripe.com\/docs\/issuing\/purchases\/authorizations) must be approved for the
    -- purchase to be completed successfully.
    --
    -- Related guide: [Issued Card Authorizations](https:\/\/stripe.com\/docs\/issuing\/purchases\/authorizations).
    treasury'transactionEntryFlowDetails'NonNullableIssuingAuthorization :: (GHC.Maybe.Maybe Issuing'authorization),
    -- | outbound_payment: Use OutboundPayments to send funds to another party\'s external bank account or [FinancialAccount](https:\/\/stripe.com\/docs\/api\#financial_accounts). To send money to an account belonging to the same user, use an [OutboundTransfer](https:\/\/stripe.com\/docs\/api\#outbound_transfers).
    --
    -- Simulate OutboundPayment state changes with the \`\/v1\/test_helpers\/treasury\/outbound_payments\` endpoints. These methods can only be called on test mode objects.
    treasury'transactionEntryFlowDetails'NonNullableOutboundPayment :: (GHC.Maybe.Maybe Treasury'outboundPayment),
    -- | outbound_transfer: Use OutboundTransfers to transfer funds from a [FinancialAccount](https:\/\/stripe.com\/docs\/api\#financial_accounts) to a PaymentMethod belonging to the same entity. To send funds to a different party, use [OutboundPayments](https:\/\/stripe.com\/docs\/api\#outbound_payments) instead. You can send funds over ACH rails or through a domestic wire transfer to a user\'s own external bank account.
    --
    -- Simulate OutboundTransfer state changes with the \`\/v1\/test_helpers\/treasury\/outbound_transfers\` endpoints. These methods can only be called on test mode objects.
    treasury'transactionEntryFlowDetails'NonNullableOutboundTransfer :: (GHC.Maybe.Maybe Treasury'outboundTransfer),
    -- | received_credit: ReceivedCredits represent funds sent to a [FinancialAccount](https:\/\/stripe.com\/docs\/api\#financial_accounts) (for example, via ACH or wire). These money movements are not initiated from the FinancialAccount.
    treasury'transactionEntryFlowDetails'NonNullableReceivedCredit :: (GHC.Maybe.Maybe Treasury'receivedCredit),
    -- | received_debit: ReceivedDebits represent funds pulled from a [FinancialAccount](https:\/\/stripe.com\/docs\/api\#financial_accounts). These are not initiated from the FinancialAccount.
    treasury'transactionEntryFlowDetails'NonNullableReceivedDebit :: (GHC.Maybe.Maybe Treasury'receivedDebit),
    -- | type: Type of the flow that created the Transaction. Set to the same value as \`flow_type\`.
    treasury'transactionEntryFlowDetails'NonNullableType :: (GHC.Maybe.Maybe Treasury'transactionEntryFlowDetails'NonNullableType')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Treasury'transactionEntryFlowDetails'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("credit_reversal" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlowDetails'NonNullableCreditReversal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("debit_reversal" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlowDetails'NonNullableDebitReversal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("inbound_transfer" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlowDetails'NonNullableInboundTransfer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("issuing_authorization" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlowDetails'NonNullableIssuingAuthorization obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("outbound_payment" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlowDetails'NonNullableOutboundPayment obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("outbound_transfer" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlowDetails'NonNullableOutboundTransfer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("received_credit" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlowDetails'NonNullableReceivedCredit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("received_debit" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlowDetails'NonNullableReceivedDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlowDetails'NonNullableType obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("credit_reversal" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlowDetails'NonNullableCreditReversal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("debit_reversal" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlowDetails'NonNullableDebitReversal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("inbound_transfer" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlowDetails'NonNullableInboundTransfer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("issuing_authorization" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlowDetails'NonNullableIssuingAuthorization obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("outbound_payment" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlowDetails'NonNullableOutboundPayment obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("outbound_transfer" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlowDetails'NonNullableOutboundTransfer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("received_credit" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlowDetails'NonNullableReceivedCredit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("received_debit" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlowDetails'NonNullableReceivedDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (treasury'transactionEntryFlowDetails'NonNullableType obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Treasury'transactionEntryFlowDetails'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Treasury'transactionEntryFlowDetails'NonNullable" (\obj -> ((((((((GHC.Base.pure Treasury'transactionEntryFlowDetails'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "credit_reversal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "debit_reversal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "inbound_transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "issuing_authorization")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "outbound_payment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "outbound_transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "received_credit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "received_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))

-- | Create a new 'Treasury'transactionEntryFlowDetails'NonNullable' with all required fields.
mkTreasury'transactionEntryFlowDetails'NonNullable :: Treasury'transactionEntryFlowDetails'NonNullable
mkTreasury'transactionEntryFlowDetails'NonNullable =
  Treasury'transactionEntryFlowDetails'NonNullable
    { treasury'transactionEntryFlowDetails'NonNullableCreditReversal = GHC.Maybe.Nothing,
      treasury'transactionEntryFlowDetails'NonNullableDebitReversal = GHC.Maybe.Nothing,
      treasury'transactionEntryFlowDetails'NonNullableInboundTransfer = GHC.Maybe.Nothing,
      treasury'transactionEntryFlowDetails'NonNullableIssuingAuthorization = GHC.Maybe.Nothing,
      treasury'transactionEntryFlowDetails'NonNullableOutboundPayment = GHC.Maybe.Nothing,
      treasury'transactionEntryFlowDetails'NonNullableOutboundTransfer = GHC.Maybe.Nothing,
      treasury'transactionEntryFlowDetails'NonNullableReceivedCredit = GHC.Maybe.Nothing,
      treasury'transactionEntryFlowDetails'NonNullableReceivedDebit = GHC.Maybe.Nothing,
      treasury'transactionEntryFlowDetails'NonNullableType = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.treasury.transaction_entry.properties.flow_details.anyOf.properties.type@ in the specification.
--
-- Type of the flow that created the Transaction. Set to the same value as \`flow_type\`.
data Treasury'transactionEntryFlowDetails'NonNullableType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    Treasury'transactionEntryFlowDetails'NonNullableType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    Treasury'transactionEntryFlowDetails'NonNullableType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"credit_reversal"@
    Treasury'transactionEntryFlowDetails'NonNullableType'EnumCreditReversal
  | -- | Represents the JSON value @"debit_reversal"@
    Treasury'transactionEntryFlowDetails'NonNullableType'EnumDebitReversal
  | -- | Represents the JSON value @"inbound_transfer"@
    Treasury'transactionEntryFlowDetails'NonNullableType'EnumInboundTransfer
  | -- | Represents the JSON value @"issuing_authorization"@
    Treasury'transactionEntryFlowDetails'NonNullableType'EnumIssuingAuthorization
  | -- | Represents the JSON value @"other"@
    Treasury'transactionEntryFlowDetails'NonNullableType'EnumOther
  | -- | Represents the JSON value @"outbound_payment"@
    Treasury'transactionEntryFlowDetails'NonNullableType'EnumOutboundPayment
  | -- | Represents the JSON value @"outbound_transfer"@
    Treasury'transactionEntryFlowDetails'NonNullableType'EnumOutboundTransfer
  | -- | Represents the JSON value @"received_credit"@
    Treasury'transactionEntryFlowDetails'NonNullableType'EnumReceivedCredit
  | -- | Represents the JSON value @"received_debit"@
    Treasury'transactionEntryFlowDetails'NonNullableType'EnumReceivedDebit
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON Treasury'transactionEntryFlowDetails'NonNullableType' where
  toJSON (Treasury'transactionEntryFlowDetails'NonNullableType'Other val) = val
  toJSON (Treasury'transactionEntryFlowDetails'NonNullableType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (Treasury'transactionEntryFlowDetails'NonNullableType'EnumCreditReversal) = "credit_reversal"
  toJSON (Treasury'transactionEntryFlowDetails'NonNullableType'EnumDebitReversal) = "debit_reversal"
  toJSON (Treasury'transactionEntryFlowDetails'NonNullableType'EnumInboundTransfer) = "inbound_transfer"
  toJSON (Treasury'transactionEntryFlowDetails'NonNullableType'EnumIssuingAuthorization) = "issuing_authorization"
  toJSON (Treasury'transactionEntryFlowDetails'NonNullableType'EnumOther) = "other"
  toJSON (Treasury'transactionEntryFlowDetails'NonNullableType'EnumOutboundPayment) = "outbound_payment"
  toJSON (Treasury'transactionEntryFlowDetails'NonNullableType'EnumOutboundTransfer) = "outbound_transfer"
  toJSON (Treasury'transactionEntryFlowDetails'NonNullableType'EnumReceivedCredit) = "received_credit"
  toJSON (Treasury'transactionEntryFlowDetails'NonNullableType'EnumReceivedDebit) = "received_debit"

instance Data.Aeson.Types.FromJSON.FromJSON Treasury'transactionEntryFlowDetails'NonNullableType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "credit_reversal" -> Treasury'transactionEntryFlowDetails'NonNullableType'EnumCreditReversal
            | val GHC.Classes.== "debit_reversal" -> Treasury'transactionEntryFlowDetails'NonNullableType'EnumDebitReversal
            | val GHC.Classes.== "inbound_transfer" -> Treasury'transactionEntryFlowDetails'NonNullableType'EnumInboundTransfer
            | val GHC.Classes.== "issuing_authorization" -> Treasury'transactionEntryFlowDetails'NonNullableType'EnumIssuingAuthorization
            | val GHC.Classes.== "other" -> Treasury'transactionEntryFlowDetails'NonNullableType'EnumOther
            | val GHC.Classes.== "outbound_payment" -> Treasury'transactionEntryFlowDetails'NonNullableType'EnumOutboundPayment
            | val GHC.Classes.== "outbound_transfer" -> Treasury'transactionEntryFlowDetails'NonNullableType'EnumOutboundTransfer
            | val GHC.Classes.== "received_credit" -> Treasury'transactionEntryFlowDetails'NonNullableType'EnumReceivedCredit
            | val GHC.Classes.== "received_debit" -> Treasury'transactionEntryFlowDetails'NonNullableType'EnumReceivedDebit
            | GHC.Base.otherwise -> Treasury'transactionEntryFlowDetails'NonNullableType'Other val
      )

-- | Defines the enum schema located at @components.schemas.treasury.transaction_entry.properties.flow_type@ in the specification.
--
-- Type of the flow associated with the TransactionEntry.
data Treasury'transactionEntryFlowType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    Treasury'transactionEntryFlowType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    Treasury'transactionEntryFlowType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"credit_reversal"@
    Treasury'transactionEntryFlowType'EnumCreditReversal
  | -- | Represents the JSON value @"debit_reversal"@
    Treasury'transactionEntryFlowType'EnumDebitReversal
  | -- | Represents the JSON value @"inbound_transfer"@
    Treasury'transactionEntryFlowType'EnumInboundTransfer
  | -- | Represents the JSON value @"issuing_authorization"@
    Treasury'transactionEntryFlowType'EnumIssuingAuthorization
  | -- | Represents the JSON value @"other"@
    Treasury'transactionEntryFlowType'EnumOther
  | -- | Represents the JSON value @"outbound_payment"@
    Treasury'transactionEntryFlowType'EnumOutboundPayment
  | -- | Represents the JSON value @"outbound_transfer"@
    Treasury'transactionEntryFlowType'EnumOutboundTransfer
  | -- | Represents the JSON value @"received_credit"@
    Treasury'transactionEntryFlowType'EnumReceivedCredit
  | -- | Represents the JSON value @"received_debit"@
    Treasury'transactionEntryFlowType'EnumReceivedDebit
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON Treasury'transactionEntryFlowType' where
  toJSON (Treasury'transactionEntryFlowType'Other val) = val
  toJSON (Treasury'transactionEntryFlowType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (Treasury'transactionEntryFlowType'EnumCreditReversal) = "credit_reversal"
  toJSON (Treasury'transactionEntryFlowType'EnumDebitReversal) = "debit_reversal"
  toJSON (Treasury'transactionEntryFlowType'EnumInboundTransfer) = "inbound_transfer"
  toJSON (Treasury'transactionEntryFlowType'EnumIssuingAuthorization) = "issuing_authorization"
  toJSON (Treasury'transactionEntryFlowType'EnumOther) = "other"
  toJSON (Treasury'transactionEntryFlowType'EnumOutboundPayment) = "outbound_payment"
  toJSON (Treasury'transactionEntryFlowType'EnumOutboundTransfer) = "outbound_transfer"
  toJSON (Treasury'transactionEntryFlowType'EnumReceivedCredit) = "received_credit"
  toJSON (Treasury'transactionEntryFlowType'EnumReceivedDebit) = "received_debit"

instance Data.Aeson.Types.FromJSON.FromJSON Treasury'transactionEntryFlowType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "credit_reversal" -> Treasury'transactionEntryFlowType'EnumCreditReversal
            | val GHC.Classes.== "debit_reversal" -> Treasury'transactionEntryFlowType'EnumDebitReversal
            | val GHC.Classes.== "inbound_transfer" -> Treasury'transactionEntryFlowType'EnumInboundTransfer
            | val GHC.Classes.== "issuing_authorization" -> Treasury'transactionEntryFlowType'EnumIssuingAuthorization
            | val GHC.Classes.== "other" -> Treasury'transactionEntryFlowType'EnumOther
            | val GHC.Classes.== "outbound_payment" -> Treasury'transactionEntryFlowType'EnumOutboundPayment
            | val GHC.Classes.== "outbound_transfer" -> Treasury'transactionEntryFlowType'EnumOutboundTransfer
            | val GHC.Classes.== "received_credit" -> Treasury'transactionEntryFlowType'EnumReceivedCredit
            | val GHC.Classes.== "received_debit" -> Treasury'transactionEntryFlowType'EnumReceivedDebit
            | GHC.Base.otherwise -> Treasury'transactionEntryFlowType'Other val
      )

-- | Defines the oneOf schema located at @components.schemas.treasury.transaction_entry.properties.transaction.anyOf@ in the specification.
--
-- The Transaction associated with this object.
data Treasury'transactionEntryTransaction'Variants
  = Treasury'transactionEntryTransaction'Text Data.Text.Internal.Text
  | Treasury'transactionEntryTransaction'Treasury'transaction Treasury'transaction
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON Treasury'transactionEntryTransaction'Variants where
  toJSON (Treasury'transactionEntryTransaction'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (Treasury'transactionEntryTransaction'Treasury'transaction a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON Treasury'transactionEntryTransaction'Variants where
  parseJSON val = case (Treasury'transactionEntryTransaction'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((Treasury'transactionEntryTransaction'Treasury'transaction Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @components.schemas.treasury.transaction_entry.properties.type@ in the specification.
--
-- The specific money movement that generated the TransactionEntry.
data Treasury'transactionEntryType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    Treasury'transactionEntryType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    Treasury'transactionEntryType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"credit_reversal"@
    Treasury'transactionEntryType'EnumCreditReversal
  | -- | Represents the JSON value @"credit_reversal_posting"@
    Treasury'transactionEntryType'EnumCreditReversalPosting
  | -- | Represents the JSON value @"debit_reversal"@
    Treasury'transactionEntryType'EnumDebitReversal
  | -- | Represents the JSON value @"inbound_transfer"@
    Treasury'transactionEntryType'EnumInboundTransfer
  | -- | Represents the JSON value @"inbound_transfer_return"@
    Treasury'transactionEntryType'EnumInboundTransferReturn
  | -- | Represents the JSON value @"issuing_authorization_hold"@
    Treasury'transactionEntryType'EnumIssuingAuthorizationHold
  | -- | Represents the JSON value @"issuing_authorization_release"@
    Treasury'transactionEntryType'EnumIssuingAuthorizationRelease
  | -- | Represents the JSON value @"other"@
    Treasury'transactionEntryType'EnumOther
  | -- | Represents the JSON value @"outbound_payment"@
    Treasury'transactionEntryType'EnumOutboundPayment
  | -- | Represents the JSON value @"outbound_payment_cancellation"@
    Treasury'transactionEntryType'EnumOutboundPaymentCancellation
  | -- | Represents the JSON value @"outbound_payment_failure"@
    Treasury'transactionEntryType'EnumOutboundPaymentFailure
  | -- | Represents the JSON value @"outbound_payment_posting"@
    Treasury'transactionEntryType'EnumOutboundPaymentPosting
  | -- | Represents the JSON value @"outbound_payment_return"@
    Treasury'transactionEntryType'EnumOutboundPaymentReturn
  | -- | Represents the JSON value @"outbound_transfer"@
    Treasury'transactionEntryType'EnumOutboundTransfer
  | -- | Represents the JSON value @"outbound_transfer_cancellation"@
    Treasury'transactionEntryType'EnumOutboundTransferCancellation
  | -- | Represents the JSON value @"outbound_transfer_failure"@
    Treasury'transactionEntryType'EnumOutboundTransferFailure
  | -- | Represents the JSON value @"outbound_transfer_posting"@
    Treasury'transactionEntryType'EnumOutboundTransferPosting
  | -- | Represents the JSON value @"outbound_transfer_return"@
    Treasury'transactionEntryType'EnumOutboundTransferReturn
  | -- | Represents the JSON value @"received_credit"@
    Treasury'transactionEntryType'EnumReceivedCredit
  | -- | Represents the JSON value @"received_debit"@
    Treasury'transactionEntryType'EnumReceivedDebit
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON Treasury'transactionEntryType' where
  toJSON (Treasury'transactionEntryType'Other val) = val
  toJSON (Treasury'transactionEntryType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (Treasury'transactionEntryType'EnumCreditReversal) = "credit_reversal"
  toJSON (Treasury'transactionEntryType'EnumCreditReversalPosting) = "credit_reversal_posting"
  toJSON (Treasury'transactionEntryType'EnumDebitReversal) = "debit_reversal"
  toJSON (Treasury'transactionEntryType'EnumInboundTransfer) = "inbound_transfer"
  toJSON (Treasury'transactionEntryType'EnumInboundTransferReturn) = "inbound_transfer_return"
  toJSON (Treasury'transactionEntryType'EnumIssuingAuthorizationHold) = "issuing_authorization_hold"
  toJSON (Treasury'transactionEntryType'EnumIssuingAuthorizationRelease) = "issuing_authorization_release"
  toJSON (Treasury'transactionEntryType'EnumOther) = "other"
  toJSON (Treasury'transactionEntryType'EnumOutboundPayment) = "outbound_payment"
  toJSON (Treasury'transactionEntryType'EnumOutboundPaymentCancellation) = "outbound_payment_cancellation"
  toJSON (Treasury'transactionEntryType'EnumOutboundPaymentFailure) = "outbound_payment_failure"
  toJSON (Treasury'transactionEntryType'EnumOutboundPaymentPosting) = "outbound_payment_posting"
  toJSON (Treasury'transactionEntryType'EnumOutboundPaymentReturn) = "outbound_payment_return"
  toJSON (Treasury'transactionEntryType'EnumOutboundTransfer) = "outbound_transfer"
  toJSON (Treasury'transactionEntryType'EnumOutboundTransferCancellation) = "outbound_transfer_cancellation"
  toJSON (Treasury'transactionEntryType'EnumOutboundTransferFailure) = "outbound_transfer_failure"
  toJSON (Treasury'transactionEntryType'EnumOutboundTransferPosting) = "outbound_transfer_posting"
  toJSON (Treasury'transactionEntryType'EnumOutboundTransferReturn) = "outbound_transfer_return"
  toJSON (Treasury'transactionEntryType'EnumReceivedCredit) = "received_credit"
  toJSON (Treasury'transactionEntryType'EnumReceivedDebit) = "received_debit"

instance Data.Aeson.Types.FromJSON.FromJSON Treasury'transactionEntryType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "credit_reversal" -> Treasury'transactionEntryType'EnumCreditReversal
            | val GHC.Classes.== "credit_reversal_posting" -> Treasury'transactionEntryType'EnumCreditReversalPosting
            | val GHC.Classes.== "debit_reversal" -> Treasury'transactionEntryType'EnumDebitReversal
            | val GHC.Classes.== "inbound_transfer" -> Treasury'transactionEntryType'EnumInboundTransfer
            | val GHC.Classes.== "inbound_transfer_return" -> Treasury'transactionEntryType'EnumInboundTransferReturn
            | val GHC.Classes.== "issuing_authorization_hold" -> Treasury'transactionEntryType'EnumIssuingAuthorizationHold
            | val GHC.Classes.== "issuing_authorization_release" -> Treasury'transactionEntryType'EnumIssuingAuthorizationRelease
            | val GHC.Classes.== "other" -> Treasury'transactionEntryType'EnumOther
            | val GHC.Classes.== "outbound_payment" -> Treasury'transactionEntryType'EnumOutboundPayment
            | val GHC.Classes.== "outbound_payment_cancellation" -> Treasury'transactionEntryType'EnumOutboundPaymentCancellation
            | val GHC.Classes.== "outbound_payment_failure" -> Treasury'transactionEntryType'EnumOutboundPaymentFailure
            | val GHC.Classes.== "outbound_payment_posting" -> Treasury'transactionEntryType'EnumOutboundPaymentPosting
            | val GHC.Classes.== "outbound_payment_return" -> Treasury'transactionEntryType'EnumOutboundPaymentReturn
            | val GHC.Classes.== "outbound_transfer" -> Treasury'transactionEntryType'EnumOutboundTransfer
            | val GHC.Classes.== "outbound_transfer_cancellation" -> Treasury'transactionEntryType'EnumOutboundTransferCancellation
            | val GHC.Classes.== "outbound_transfer_failure" -> Treasury'transactionEntryType'EnumOutboundTransferFailure
            | val GHC.Classes.== "outbound_transfer_posting" -> Treasury'transactionEntryType'EnumOutboundTransferPosting
            | val GHC.Classes.== "outbound_transfer_return" -> Treasury'transactionEntryType'EnumOutboundTransferReturn
            | val GHC.Classes.== "received_credit" -> Treasury'transactionEntryType'EnumReceivedCredit
            | val GHC.Classes.== "received_debit" -> Treasury'transactionEntryType'EnumReceivedDebit
            | GHC.Base.otherwise -> Treasury'transactionEntryType'Other val
      )