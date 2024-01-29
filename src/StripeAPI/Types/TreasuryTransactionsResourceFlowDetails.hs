-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TreasuryTransactionsResourceFlowDetails
module StripeAPI.Types.TreasuryTransactionsResourceFlowDetails where

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
import {-# SOURCE #-} StripeAPI.Types.Issuing_Authorization
import {-# SOURCE #-} StripeAPI.Types.Treasury_CreditReversal
import {-# SOURCE #-} StripeAPI.Types.Treasury_DebitReversal
import {-# SOURCE #-} StripeAPI.Types.Treasury_InboundTransfer
import {-# SOURCE #-} StripeAPI.Types.Treasury_OutboundPayment
import {-# SOURCE #-} StripeAPI.Types.Treasury_OutboundTransfer
import {-# SOURCE #-} StripeAPI.Types.Treasury_ReceivedCredit
import {-# SOURCE #-} StripeAPI.Types.Treasury_ReceivedDebit

-- | Defines the object schema located at @components.schemas.treasury_transactions_resource_flow_details@ in the specification.
-- 
-- 
data TreasuryTransactionsResourceFlowDetails = TreasuryTransactionsResourceFlowDetails {
  -- | credit_reversal: You can reverse some [ReceivedCredits](https:\/\/stripe.com\/docs\/api\#received_credits) depending on their network and source flow. Reversing a ReceivedCredit leads to the creation of a new object known as a CreditReversal.
  treasuryTransactionsResourceFlowDetailsCreditReversal :: (GHC.Maybe.Maybe Treasury'creditReversal)
  -- | debit_reversal: You can reverse some [ReceivedDebits](https:\/\/stripe.com\/docs\/api\#received_debits) depending on their network and source flow. Reversing a ReceivedDebit leads to the creation of a new object known as a DebitReversal.
  , treasuryTransactionsResourceFlowDetailsDebitReversal :: (GHC.Maybe.Maybe Treasury'debitReversal)
  -- | inbound_transfer: Use [InboundTransfers](https:\/\/stripe.com\/docs\/treasury\/moving-money\/financial-accounts\/into\/inbound-transfers) to add funds to your [FinancialAccount](https:\/\/stripe.com\/docs\/api\#financial_accounts) via a PaymentMethod that is owned by you. The funds will be transferred via an ACH debit.
  , treasuryTransactionsResourceFlowDetailsInboundTransfer :: (GHC.Maybe.Maybe Treasury'inboundTransfer)
  -- | issuing_authorization: When an [issued card](https:\/\/stripe.com\/docs\/issuing) is used to make a purchase, an Issuing \`Authorization\`
  -- object is created. [Authorizations](https:\/\/stripe.com\/docs\/issuing\/purchases\/authorizations) must be approved for the
  -- purchase to be completed successfully.
  -- 
  -- Related guide: [Issued card authorizations](https:\/\/stripe.com\/docs\/issuing\/purchases\/authorizations)
  , treasuryTransactionsResourceFlowDetailsIssuingAuthorization :: (GHC.Maybe.Maybe Issuing'authorization)
  -- | outbound_payment: Use OutboundPayments to send funds to another party\'s external bank account or [FinancialAccount](https:\/\/stripe.com\/docs\/api\#financial_accounts). To send money to an account belonging to the same user, use an [OutboundTransfer](https:\/\/stripe.com\/docs\/api\#outbound_transfers).
  -- 
  -- Simulate OutboundPayment state changes with the \`\/v1\/test_helpers\/treasury\/outbound_payments\` endpoints. These methods can only be called on test mode objects.
  , treasuryTransactionsResourceFlowDetailsOutboundPayment :: (GHC.Maybe.Maybe Treasury'outboundPayment)
  -- | outbound_transfer: Use OutboundTransfers to transfer funds from a [FinancialAccount](https:\/\/stripe.com\/docs\/api\#financial_accounts) to a PaymentMethod belonging to the same entity. To send funds to a different party, use [OutboundPayments](https:\/\/stripe.com\/docs\/api\#outbound_payments) instead. You can send funds over ACH rails or through a domestic wire transfer to a user\'s own external bank account.
  -- 
  -- Simulate OutboundTransfer state changes with the \`\/v1\/test_helpers\/treasury\/outbound_transfers\` endpoints. These methods can only be called on test mode objects.
  , treasuryTransactionsResourceFlowDetailsOutboundTransfer :: (GHC.Maybe.Maybe Treasury'outboundTransfer)
  -- | received_credit: ReceivedCredits represent funds sent to a [FinancialAccount](https:\/\/stripe.com\/docs\/api\#financial_accounts) (for example, via ACH or wire). These money movements are not initiated from the FinancialAccount.
  , treasuryTransactionsResourceFlowDetailsReceivedCredit :: (GHC.Maybe.Maybe Treasury'receivedCredit)
  -- | received_debit: ReceivedDebits represent funds pulled from a [FinancialAccount](https:\/\/stripe.com\/docs\/api\#financial_accounts). These are not initiated from the FinancialAccount.
  , treasuryTransactionsResourceFlowDetailsReceivedDebit :: (GHC.Maybe.Maybe Treasury'receivedDebit)
  -- | type: Type of the flow that created the Transaction. Set to the same value as \`flow_type\`.
  , treasuryTransactionsResourceFlowDetailsType :: TreasuryTransactionsResourceFlowDetailsType'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TreasuryTransactionsResourceFlowDetails
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("credit_reversal" Data.Aeson.Types.ToJSON..=)) (treasuryTransactionsResourceFlowDetailsCreditReversal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("debit_reversal" Data.Aeson.Types.ToJSON..=)) (treasuryTransactionsResourceFlowDetailsDebitReversal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("inbound_transfer" Data.Aeson.Types.ToJSON..=)) (treasuryTransactionsResourceFlowDetailsInboundTransfer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("issuing_authorization" Data.Aeson.Types.ToJSON..=)) (treasuryTransactionsResourceFlowDetailsIssuingAuthorization obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("outbound_payment" Data.Aeson.Types.ToJSON..=)) (treasuryTransactionsResourceFlowDetailsOutboundPayment obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("outbound_transfer" Data.Aeson.Types.ToJSON..=)) (treasuryTransactionsResourceFlowDetailsOutboundTransfer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("received_credit" Data.Aeson.Types.ToJSON..=)) (treasuryTransactionsResourceFlowDetailsReceivedCredit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("received_debit" Data.Aeson.Types.ToJSON..=)) (treasuryTransactionsResourceFlowDetailsReceivedDebit obj) : ["type" Data.Aeson.Types.ToJSON..= treasuryTransactionsResourceFlowDetailsType obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("credit_reversal" Data.Aeson.Types.ToJSON..=)) (treasuryTransactionsResourceFlowDetailsCreditReversal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("debit_reversal" Data.Aeson.Types.ToJSON..=)) (treasuryTransactionsResourceFlowDetailsDebitReversal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("inbound_transfer" Data.Aeson.Types.ToJSON..=)) (treasuryTransactionsResourceFlowDetailsInboundTransfer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("issuing_authorization" Data.Aeson.Types.ToJSON..=)) (treasuryTransactionsResourceFlowDetailsIssuingAuthorization obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("outbound_payment" Data.Aeson.Types.ToJSON..=)) (treasuryTransactionsResourceFlowDetailsOutboundPayment obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("outbound_transfer" Data.Aeson.Types.ToJSON..=)) (treasuryTransactionsResourceFlowDetailsOutboundTransfer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("received_credit" Data.Aeson.Types.ToJSON..=)) (treasuryTransactionsResourceFlowDetailsReceivedCredit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("received_debit" Data.Aeson.Types.ToJSON..=)) (treasuryTransactionsResourceFlowDetailsReceivedDebit obj) : ["type" Data.Aeson.Types.ToJSON..= treasuryTransactionsResourceFlowDetailsType obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON TreasuryTransactionsResourceFlowDetails
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "TreasuryTransactionsResourceFlowDetails" (\obj -> ((((((((GHC.Base.pure TreasuryTransactionsResourceFlowDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "credit_reversal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "debit_reversal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "inbound_transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "issuing_authorization")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "outbound_payment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "outbound_transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "received_credit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "received_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))}
-- | Create a new 'TreasuryTransactionsResourceFlowDetails' with all required fields.
mkTreasuryTransactionsResourceFlowDetails :: TreasuryTransactionsResourceFlowDetailsType' -- ^ 'treasuryTransactionsResourceFlowDetailsType'
  -> TreasuryTransactionsResourceFlowDetails
mkTreasuryTransactionsResourceFlowDetails treasuryTransactionsResourceFlowDetailsType = TreasuryTransactionsResourceFlowDetails{treasuryTransactionsResourceFlowDetailsCreditReversal = GHC.Maybe.Nothing,
                                                                                                                                treasuryTransactionsResourceFlowDetailsDebitReversal = GHC.Maybe.Nothing,
                                                                                                                                treasuryTransactionsResourceFlowDetailsInboundTransfer = GHC.Maybe.Nothing,
                                                                                                                                treasuryTransactionsResourceFlowDetailsIssuingAuthorization = GHC.Maybe.Nothing,
                                                                                                                                treasuryTransactionsResourceFlowDetailsOutboundPayment = GHC.Maybe.Nothing,
                                                                                                                                treasuryTransactionsResourceFlowDetailsOutboundTransfer = GHC.Maybe.Nothing,
                                                                                                                                treasuryTransactionsResourceFlowDetailsReceivedCredit = GHC.Maybe.Nothing,
                                                                                                                                treasuryTransactionsResourceFlowDetailsReceivedDebit = GHC.Maybe.Nothing,
                                                                                                                                treasuryTransactionsResourceFlowDetailsType = treasuryTransactionsResourceFlowDetailsType}
-- | Defines the enum schema located at @components.schemas.treasury_transactions_resource_flow_details.properties.type@ in the specification.
-- 
-- Type of the flow that created the Transaction. Set to the same value as \`flow_type\`.
data TreasuryTransactionsResourceFlowDetailsType' =
   TreasuryTransactionsResourceFlowDetailsType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | TreasuryTransactionsResourceFlowDetailsType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | TreasuryTransactionsResourceFlowDetailsType'EnumCreditReversal -- ^ Represents the JSON value @"credit_reversal"@
  | TreasuryTransactionsResourceFlowDetailsType'EnumDebitReversal -- ^ Represents the JSON value @"debit_reversal"@
  | TreasuryTransactionsResourceFlowDetailsType'EnumInboundTransfer -- ^ Represents the JSON value @"inbound_transfer"@
  | TreasuryTransactionsResourceFlowDetailsType'EnumIssuingAuthorization -- ^ Represents the JSON value @"issuing_authorization"@
  | TreasuryTransactionsResourceFlowDetailsType'EnumOther -- ^ Represents the JSON value @"other"@
  | TreasuryTransactionsResourceFlowDetailsType'EnumOutboundPayment -- ^ Represents the JSON value @"outbound_payment"@
  | TreasuryTransactionsResourceFlowDetailsType'EnumOutboundTransfer -- ^ Represents the JSON value @"outbound_transfer"@
  | TreasuryTransactionsResourceFlowDetailsType'EnumReceivedCredit -- ^ Represents the JSON value @"received_credit"@
  | TreasuryTransactionsResourceFlowDetailsType'EnumReceivedDebit -- ^ Represents the JSON value @"received_debit"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TreasuryTransactionsResourceFlowDetailsType'
    where {toJSON (TreasuryTransactionsResourceFlowDetailsType'Other val) = val;
           toJSON (TreasuryTransactionsResourceFlowDetailsType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (TreasuryTransactionsResourceFlowDetailsType'EnumCreditReversal) = "credit_reversal";
           toJSON (TreasuryTransactionsResourceFlowDetailsType'EnumDebitReversal) = "debit_reversal";
           toJSON (TreasuryTransactionsResourceFlowDetailsType'EnumInboundTransfer) = "inbound_transfer";
           toJSON (TreasuryTransactionsResourceFlowDetailsType'EnumIssuingAuthorization) = "issuing_authorization";
           toJSON (TreasuryTransactionsResourceFlowDetailsType'EnumOther) = "other";
           toJSON (TreasuryTransactionsResourceFlowDetailsType'EnumOutboundPayment) = "outbound_payment";
           toJSON (TreasuryTransactionsResourceFlowDetailsType'EnumOutboundTransfer) = "outbound_transfer";
           toJSON (TreasuryTransactionsResourceFlowDetailsType'EnumReceivedCredit) = "received_credit";
           toJSON (TreasuryTransactionsResourceFlowDetailsType'EnumReceivedDebit) = "received_debit"}
instance Data.Aeson.Types.FromJSON.FromJSON TreasuryTransactionsResourceFlowDetailsType'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "credit_reversal" -> TreasuryTransactionsResourceFlowDetailsType'EnumCreditReversal
                                             | val GHC.Classes.== "debit_reversal" -> TreasuryTransactionsResourceFlowDetailsType'EnumDebitReversal
                                             | val GHC.Classes.== "inbound_transfer" -> TreasuryTransactionsResourceFlowDetailsType'EnumInboundTransfer
                                             | val GHC.Classes.== "issuing_authorization" -> TreasuryTransactionsResourceFlowDetailsType'EnumIssuingAuthorization
                                             | val GHC.Classes.== "other" -> TreasuryTransactionsResourceFlowDetailsType'EnumOther
                                             | val GHC.Classes.== "outbound_payment" -> TreasuryTransactionsResourceFlowDetailsType'EnumOutboundPayment
                                             | val GHC.Classes.== "outbound_transfer" -> TreasuryTransactionsResourceFlowDetailsType'EnumOutboundTransfer
                                             | val GHC.Classes.== "received_credit" -> TreasuryTransactionsResourceFlowDetailsType'EnumReceivedCredit
                                             | val GHC.Classes.== "received_debit" -> TreasuryTransactionsResourceFlowDetailsType'EnumReceivedDebit
                                             | GHC.Base.otherwise -> TreasuryTransactionsResourceFlowDetailsType'Other val)}
