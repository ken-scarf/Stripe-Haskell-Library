-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TerminalReaderReaderResourceRefundPaymentAction
module StripeAPI.Types.TerminalReaderReaderResourceRefundPaymentAction where

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
import {-# SOURCE #-} StripeAPI.Types.Charge
import {-# SOURCE #-} StripeAPI.Types.PaymentIntent
import {-# SOURCE #-} StripeAPI.Types.Refund

-- | Defines the object schema located at @components.schemas.terminal_reader_reader_resource_refund_payment_action@ in the specification.
-- 
-- Represents a reader action to refund a payment
data TerminalReaderReaderResourceRefundPaymentAction = TerminalReaderReaderResourceRefundPaymentAction {
  -- | amount: The amount being refunded.
  terminalReaderReaderResourceRefundPaymentActionAmount :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | charge: Charge that is being refunded.
  , terminalReaderReaderResourceRefundPaymentActionCharge :: (GHC.Maybe.Maybe TerminalReaderReaderResourceRefundPaymentActionCharge'Variants)
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , terminalReaderReaderResourceRefundPaymentActionMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | payment_intent: Payment intent that is being refunded.
  , terminalReaderReaderResourceRefundPaymentActionPaymentIntent :: (GHC.Maybe.Maybe TerminalReaderReaderResourceRefundPaymentActionPaymentIntent'Variants)
  -- | reason: The reason for the refund.
  , terminalReaderReaderResourceRefundPaymentActionReason :: (GHC.Maybe.Maybe TerminalReaderReaderResourceRefundPaymentActionReason')
  -- | refund: Unique identifier for the refund object.
  , terminalReaderReaderResourceRefundPaymentActionRefund :: (GHC.Maybe.Maybe TerminalReaderReaderResourceRefundPaymentActionRefund'Variants)
  -- | refund_application_fee: Boolean indicating whether the application fee should be refunded when refunding this charge. If a full charge refund is given, the full application fee will be refunded. Otherwise, the application fee will be refunded in an amount proportional to the amount of the charge refunded. An application fee can be refunded only by the application that created the charge.
  , terminalReaderReaderResourceRefundPaymentActionRefundApplicationFee :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | reverse_transfer: Boolean indicating whether the transfer should be reversed when refunding this charge. The transfer will be reversed proportionally to the amount being refunded (either the entire or partial amount). A transfer can be reversed only by the application that created the charge.
  , terminalReaderReaderResourceRefundPaymentActionReverseTransfer :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TerminalReaderReaderResourceRefundPaymentAction
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceRefundPaymentActionAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("charge" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceRefundPaymentActionCharge obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceRefundPaymentActionMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_intent" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceRefundPaymentActionPaymentIntent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceRefundPaymentActionReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceRefundPaymentActionRefund obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_application_fee" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceRefundPaymentActionRefundApplicationFee obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reverse_transfer" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceRefundPaymentActionReverseTransfer obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceRefundPaymentActionAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("charge" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceRefundPaymentActionCharge obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceRefundPaymentActionMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_intent" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceRefundPaymentActionPaymentIntent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceRefundPaymentActionReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceRefundPaymentActionRefund obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("refund_application_fee" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceRefundPaymentActionRefundApplicationFee obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reverse_transfer" Data.Aeson.Types.ToJSON..=)) (terminalReaderReaderResourceRefundPaymentActionReverseTransfer obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON TerminalReaderReaderResourceRefundPaymentAction
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "TerminalReaderReaderResourceRefundPaymentAction" (\obj -> (((((((GHC.Base.pure TerminalReaderReaderResourceRefundPaymentAction GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "charge")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "payment_intent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refund")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "refund_application_fee")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reverse_transfer"))}
-- | Create a new 'TerminalReaderReaderResourceRefundPaymentAction' with all required fields.
mkTerminalReaderReaderResourceRefundPaymentAction :: TerminalReaderReaderResourceRefundPaymentAction
mkTerminalReaderReaderResourceRefundPaymentAction = TerminalReaderReaderResourceRefundPaymentAction{terminalReaderReaderResourceRefundPaymentActionAmount = GHC.Maybe.Nothing,
                                                                                                    terminalReaderReaderResourceRefundPaymentActionCharge = GHC.Maybe.Nothing,
                                                                                                    terminalReaderReaderResourceRefundPaymentActionMetadata = GHC.Maybe.Nothing,
                                                                                                    terminalReaderReaderResourceRefundPaymentActionPaymentIntent = GHC.Maybe.Nothing,
                                                                                                    terminalReaderReaderResourceRefundPaymentActionReason = GHC.Maybe.Nothing,
                                                                                                    terminalReaderReaderResourceRefundPaymentActionRefund = GHC.Maybe.Nothing,
                                                                                                    terminalReaderReaderResourceRefundPaymentActionRefundApplicationFee = GHC.Maybe.Nothing,
                                                                                                    terminalReaderReaderResourceRefundPaymentActionReverseTransfer = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @components.schemas.terminal_reader_reader_resource_refund_payment_action.properties.charge.anyOf@ in the specification.
-- 
-- Charge that is being refunded.
data TerminalReaderReaderResourceRefundPaymentActionCharge'Variants =
   TerminalReaderReaderResourceRefundPaymentActionCharge'Text Data.Text.Internal.Text
  | TerminalReaderReaderResourceRefundPaymentActionCharge'Charge Charge
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TerminalReaderReaderResourceRefundPaymentActionCharge'Variants
    where {toJSON (TerminalReaderReaderResourceRefundPaymentActionCharge'Text a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (TerminalReaderReaderResourceRefundPaymentActionCharge'Charge a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON TerminalReaderReaderResourceRefundPaymentActionCharge'Variants
    where {parseJSON val = case (TerminalReaderReaderResourceRefundPaymentActionCharge'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((TerminalReaderReaderResourceRefundPaymentActionCharge'Charge Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the oneOf schema located at @components.schemas.terminal_reader_reader_resource_refund_payment_action.properties.payment_intent.anyOf@ in the specification.
-- 
-- Payment intent that is being refunded.
data TerminalReaderReaderResourceRefundPaymentActionPaymentIntent'Variants =
   TerminalReaderReaderResourceRefundPaymentActionPaymentIntent'Text Data.Text.Internal.Text
  | TerminalReaderReaderResourceRefundPaymentActionPaymentIntent'PaymentIntent PaymentIntent
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TerminalReaderReaderResourceRefundPaymentActionPaymentIntent'Variants
    where {toJSON (TerminalReaderReaderResourceRefundPaymentActionPaymentIntent'Text a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (TerminalReaderReaderResourceRefundPaymentActionPaymentIntent'PaymentIntent a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON TerminalReaderReaderResourceRefundPaymentActionPaymentIntent'Variants
    where {parseJSON val = case (TerminalReaderReaderResourceRefundPaymentActionPaymentIntent'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((TerminalReaderReaderResourceRefundPaymentActionPaymentIntent'PaymentIntent Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the enum schema located at @components.schemas.terminal_reader_reader_resource_refund_payment_action.properties.reason@ in the specification.
-- 
-- The reason for the refund.
data TerminalReaderReaderResourceRefundPaymentActionReason' =
   TerminalReaderReaderResourceRefundPaymentActionReason'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | TerminalReaderReaderResourceRefundPaymentActionReason'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | TerminalReaderReaderResourceRefundPaymentActionReason'EnumDuplicate -- ^ Represents the JSON value @"duplicate"@
  | TerminalReaderReaderResourceRefundPaymentActionReason'EnumFraudulent -- ^ Represents the JSON value @"fraudulent"@
  | TerminalReaderReaderResourceRefundPaymentActionReason'EnumRequestedByCustomer -- ^ Represents the JSON value @"requested_by_customer"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TerminalReaderReaderResourceRefundPaymentActionReason'
    where {toJSON (TerminalReaderReaderResourceRefundPaymentActionReason'Other val) = val;
           toJSON (TerminalReaderReaderResourceRefundPaymentActionReason'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (TerminalReaderReaderResourceRefundPaymentActionReason'EnumDuplicate) = "duplicate";
           toJSON (TerminalReaderReaderResourceRefundPaymentActionReason'EnumFraudulent) = "fraudulent";
           toJSON (TerminalReaderReaderResourceRefundPaymentActionReason'EnumRequestedByCustomer) = "requested_by_customer"}
instance Data.Aeson.Types.FromJSON.FromJSON TerminalReaderReaderResourceRefundPaymentActionReason'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "duplicate" -> TerminalReaderReaderResourceRefundPaymentActionReason'EnumDuplicate
                                             | val GHC.Classes.== "fraudulent" -> TerminalReaderReaderResourceRefundPaymentActionReason'EnumFraudulent
                                             | val GHC.Classes.== "requested_by_customer" -> TerminalReaderReaderResourceRefundPaymentActionReason'EnumRequestedByCustomer
                                             | GHC.Base.otherwise -> TerminalReaderReaderResourceRefundPaymentActionReason'Other val)}
-- | Defines the oneOf schema located at @components.schemas.terminal_reader_reader_resource_refund_payment_action.properties.refund.anyOf@ in the specification.
-- 
-- Unique identifier for the refund object.
data TerminalReaderReaderResourceRefundPaymentActionRefund'Variants =
   TerminalReaderReaderResourceRefundPaymentActionRefund'Text Data.Text.Internal.Text
  | TerminalReaderReaderResourceRefundPaymentActionRefund'Refund Refund
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TerminalReaderReaderResourceRefundPaymentActionRefund'Variants
    where {toJSON (TerminalReaderReaderResourceRefundPaymentActionRefund'Text a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (TerminalReaderReaderResourceRefundPaymentActionRefund'Refund a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON TerminalReaderReaderResourceRefundPaymentActionRefund'Variants
    where {parseJSON val = case (TerminalReaderReaderResourceRefundPaymentActionRefund'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((TerminalReaderReaderResourceRefundPaymentActionRefund'Refund Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
