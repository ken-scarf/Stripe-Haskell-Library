-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TreasuryReceivedCreditsResourceLinkedFlows
module StripeAPI.Types.TreasuryReceivedCreditsResourceLinkedFlows where

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
import {-# SOURCE #-} StripeAPI.Types.Payout
import {-# SOURCE #-} StripeAPI.Types.TreasuryReceivedCreditsResourceSourceFlowsDetails
import {-# SOURCE #-} StripeAPI.Types.Treasury_CreditReversal
import {-# SOURCE #-} StripeAPI.Types.Treasury_OutboundPayment

-- | Defines the object schema located at @components.schemas.treasury_received_credits_resource_linked_flows@ in the specification.
-- 
-- 
data TreasuryReceivedCreditsResourceLinkedFlows = TreasuryReceivedCreditsResourceLinkedFlows {
  -- | credit_reversal: The CreditReversal created as a result of this ReceivedCredit being reversed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  treasuryReceivedCreditsResourceLinkedFlowsCreditReversal :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | issuing_authorization: Set if the ReceivedCredit was created due to an [Issuing Authorization](https:\/\/stripe.com\/docs\/api\#issuing_authorizations) object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , treasuryReceivedCreditsResourceLinkedFlowsIssuingAuthorization :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | issuing_transaction: Set if the ReceivedCredit is also viewable as an [Issuing transaction](https:\/\/stripe.com\/docs\/api\#issuing_transactions) object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , treasuryReceivedCreditsResourceLinkedFlowsIssuingTransaction :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | source_flow: ID of the source flow. Set if \`network\` is \`stripe\` and the source flow is visible to the user. Examples of source flows include OutboundPayments, payouts, or CreditReversals.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , treasuryReceivedCreditsResourceLinkedFlowsSourceFlow :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | source_flow_details: The expandable object of the source flow.
  , treasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullable))
  -- | source_flow_type: The type of flow that originated the ReceivedCredit (for example, \`outbound_payment\`).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , treasuryReceivedCreditsResourceLinkedFlowsSourceFlowType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TreasuryReceivedCreditsResourceLinkedFlows
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("credit_reversal" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedCreditsResourceLinkedFlowsCreditReversal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("issuing_authorization" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedCreditsResourceLinkedFlowsIssuingAuthorization obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("issuing_transaction" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedCreditsResourceLinkedFlowsIssuingTransaction obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("source_flow" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedCreditsResourceLinkedFlowsSourceFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("source_flow_details" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("source_flow_type" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedCreditsResourceLinkedFlowsSourceFlowType obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("credit_reversal" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedCreditsResourceLinkedFlowsCreditReversal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("issuing_authorization" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedCreditsResourceLinkedFlowsIssuingAuthorization obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("issuing_transaction" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedCreditsResourceLinkedFlowsIssuingTransaction obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("source_flow" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedCreditsResourceLinkedFlowsSourceFlow obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("source_flow_details" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("source_flow_type" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedCreditsResourceLinkedFlowsSourceFlowType obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON TreasuryReceivedCreditsResourceLinkedFlows
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "TreasuryReceivedCreditsResourceLinkedFlows" (\obj -> (((((GHC.Base.pure TreasuryReceivedCreditsResourceLinkedFlows GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "credit_reversal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "issuing_authorization")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "issuing_transaction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "source_flow")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "source_flow_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "source_flow_type"))}
-- | Create a new 'TreasuryReceivedCreditsResourceLinkedFlows' with all required fields.
mkTreasuryReceivedCreditsResourceLinkedFlows :: TreasuryReceivedCreditsResourceLinkedFlows
mkTreasuryReceivedCreditsResourceLinkedFlows = TreasuryReceivedCreditsResourceLinkedFlows{treasuryReceivedCreditsResourceLinkedFlowsCreditReversal = GHC.Maybe.Nothing,
                                                                                          treasuryReceivedCreditsResourceLinkedFlowsIssuingAuthorization = GHC.Maybe.Nothing,
                                                                                          treasuryReceivedCreditsResourceLinkedFlowsIssuingTransaction = GHC.Maybe.Nothing,
                                                                                          treasuryReceivedCreditsResourceLinkedFlowsSourceFlow = GHC.Maybe.Nothing,
                                                                                          treasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails = GHC.Maybe.Nothing,
                                                                                          treasuryReceivedCreditsResourceLinkedFlowsSourceFlowType = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.treasury_received_credits_resource_linked_flows.properties.source_flow_details.anyOf@ in the specification.
-- 
-- The expandable object of the source flow.
data TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullable = TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullable {
  -- | credit_reversal: You can reverse some [ReceivedCredits](https:\/\/stripe.com\/docs\/api\#received_credits) depending on their network and source flow. Reversing a ReceivedCredit leads to the creation of a new object known as a CreditReversal.
  treasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableCreditReversal :: (GHC.Maybe.Maybe Treasury'creditReversal)
  -- | outbound_payment: Use OutboundPayments to send funds to another party\'s external bank account or [FinancialAccount](https:\/\/stripe.com\/docs\/api\#financial_accounts). To send money to an account belonging to the same user, use an [OutboundTransfer](https:\/\/stripe.com\/docs\/api\#outbound_transfers).
  -- 
  -- Simulate OutboundPayment state changes with the \`\/v1\/test_helpers\/treasury\/outbound_payments\` endpoints. These methods can only be called on test mode objects.
  , treasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableOutboundPayment :: (GHC.Maybe.Maybe Treasury'outboundPayment)
  -- | payout: A \`Payout\` object is created when you receive funds from Stripe, or when you
  -- initiate a payout to either a bank account or debit card of a [connected
  -- Stripe account](\/docs\/connect\/bank-debit-card-payouts). You can retrieve individual payouts,
  -- and list all payouts. Payouts are made on [varying
  -- schedules](\/docs\/connect\/manage-payout-schedule), depending on your country and
  -- industry.
  -- 
  -- Related guide: [Receiving payouts](https:\/\/stripe.com\/docs\/payouts)
  , treasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullablePayout :: (GHC.Maybe.Maybe Payout)
  -- | type: The type of the source flow that originated the ReceivedCredit.
  , treasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType :: (GHC.Maybe.Maybe TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("credit_reversal" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableCreditReversal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("outbound_payment" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableOutboundPayment obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payout" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullablePayout obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("credit_reversal" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableCreditReversal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("outbound_payment" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableOutboundPayment obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payout" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullablePayout obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (treasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullable" (\obj -> (((GHC.Base.pure TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "credit_reversal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "outbound_payment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "payout")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))}
-- | Create a new 'TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullable' with all required fields.
mkTreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullable :: TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullable
mkTreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullable = TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullable{treasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableCreditReversal = GHC.Maybe.Nothing,
                                                                                                                                                    treasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableOutboundPayment = GHC.Maybe.Nothing,
                                                                                                                                                    treasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullablePayout = GHC.Maybe.Nothing,
                                                                                                                                                    treasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.treasury_received_credits_resource_linked_flows.properties.source_flow_details.anyOf.properties.type@ in the specification.
-- 
-- The type of the source flow that originated the ReceivedCredit.
data TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType' =
   TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType'EnumCreditReversal -- ^ Represents the JSON value @"credit_reversal"@
  | TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType'EnumOther -- ^ Represents the JSON value @"other"@
  | TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType'EnumOutboundPayment -- ^ Represents the JSON value @"outbound_payment"@
  | TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType'EnumPayout -- ^ Represents the JSON value @"payout"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType'
    where {toJSON (TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType'Other val) = val;
           toJSON (TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType'EnumCreditReversal) = "credit_reversal";
           toJSON (TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType'EnumOther) = "other";
           toJSON (TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType'EnumOutboundPayment) = "outbound_payment";
           toJSON (TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType'EnumPayout) = "payout"}
instance Data.Aeson.Types.FromJSON.FromJSON TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "credit_reversal" -> TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType'EnumCreditReversal
                                             | val GHC.Classes.== "other" -> TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType'EnumOther
                                             | val GHC.Classes.== "outbound_payment" -> TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType'EnumOutboundPayment
                                             | val GHC.Classes.== "payout" -> TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType'EnumPayout
                                             | GHC.Base.otherwise -> TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails'NonNullableType'Other val)}
