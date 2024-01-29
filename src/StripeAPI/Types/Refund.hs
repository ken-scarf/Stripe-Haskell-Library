{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Refund
module StripeAPI.Types.Refund where

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
import {-# SOURCE #-} StripeAPI.Types.BalanceTransaction
import {-# SOURCE #-} StripeAPI.Types.Charge
import {-# SOURCE #-} StripeAPI.Types.PaymentIntent
import {-# SOURCE #-} StripeAPI.Types.RefundNextAction
import {-# SOURCE #-} StripeAPI.Types.TransferReversal
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.refund@ in the specification.
--
-- \`Refund\` objects allow you to refund a charge that has previously been created
-- but not yet refunded. Funds will be refunded to the credit or debit card that
-- was originally charged.
--
-- Related guide: [Refunds](https:\/\/stripe.com\/docs\/refunds).
data Refund = Refund
  { -- | amount: Amount, in %s.
    refundAmount :: GHC.Types.Int,
    -- | balance_transaction: Balance transaction that describes the impact on your account balance.
    refundBalanceTransaction :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable RefundBalanceTransaction'NonNullableVariants)),
    -- | charge: ID of the charge that was refunded.
    refundCharge :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable RefundCharge'NonNullableVariants)),
    -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    refundCreated :: GHC.Types.Int,
    -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    refundCurrency :: Data.Text.Internal.Text,
    -- | description: An arbitrary string attached to the object. Often useful for displaying to users. (Available on non-card refunds only)
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    refundDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | failure_balance_transaction: If the refund failed, this balance transaction describes the adjustment made on your account balance that reverses the initial balance transaction.
    refundFailureBalanceTransaction :: (GHC.Maybe.Maybe RefundFailureBalanceTransaction'Variants),
    -- | failure_reason: If the refund failed, the reason for refund failure if known. Possible values are \`lost_or_stolen_card\`, \`expired_or_canceled_card\`, or \`unknown\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    refundFailureReason :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    refundId :: Data.Text.Internal.Text,
    -- | instructions_email: Email to which refund instructions, if required, are sent to.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    refundInstructionsEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    refundMetadata :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Aeson.Types.Internal.Object)),
    -- | next_action:
    refundNextAction :: (GHC.Maybe.Maybe RefundNextAction),
    -- | payment_intent: ID of the PaymentIntent that was refunded.
    refundPaymentIntent :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable RefundPaymentIntent'NonNullableVariants)),
    -- | reason: Reason for the refund, either user-provided (\`duplicate\`, \`fraudulent\`, or \`requested_by_customer\`) or generated by Stripe internally (\`expired_uncaptured_charge\`).
    refundReason :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable RefundReason'NonNullable)),
    -- | receipt_number: This is the transaction number that appears on email receipts sent for this refund.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    refundReceiptNumber :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | source_transfer_reversal: The transfer reversal that is associated with the refund. Only present if the charge came from another Stripe account. See the Connect documentation for details.
    refundSourceTransferReversal :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable RefundSourceTransferReversal'NonNullableVariants)),
    -- | status: Status of the refund. For credit card refunds, this can be \`pending\`, \`succeeded\`, or \`failed\`. For other types of refunds, it can be \`pending\`, \`requires_action\`, \`succeeded\`, \`failed\`, or \`canceled\`. Refer to our [refunds](https:\/\/stripe.com\/docs\/refunds\#failed-refunds) documentation for more details.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    refundStatus :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | transfer_reversal: If the accompanying transfer was reversed, the transfer reversal object. Only applicable if the charge was created using the destination parameter.
    refundTransferReversal :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable RefundTransferReversal'NonNullableVariants))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Refund where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= refundAmount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("balance_transaction" Data.Aeson.Types.ToJSON..=)) (refundBalanceTransaction obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("charge" Data.Aeson.Types.ToJSON..=)) (refundCharge obj) : ["created" Data.Aeson.Types.ToJSON..= refundCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= refundCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (refundDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_balance_transaction" Data.Aeson.Types.ToJSON..=)) (refundFailureBalanceTransaction obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_reason" Data.Aeson.Types.ToJSON..=)) (refundFailureReason obj) : ["id" Data.Aeson.Types.ToJSON..= refundId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("instructions_email" Data.Aeson.Types.ToJSON..=)) (refundInstructionsEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (refundMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("next_action" Data.Aeson.Types.ToJSON..=)) (refundNextAction obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_intent" Data.Aeson.Types.ToJSON..=)) (refundPaymentIntent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason" Data.Aeson.Types.ToJSON..=)) (refundReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("receipt_number" Data.Aeson.Types.ToJSON..=)) (refundReceiptNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("source_transfer_reversal" Data.Aeson.Types.ToJSON..=)) (refundSourceTransferReversal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status" Data.Aeson.Types.ToJSON..=)) (refundStatus obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transfer_reversal" Data.Aeson.Types.ToJSON..=)) (refundTransferReversal obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "refund"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= refundAmount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("balance_transaction" Data.Aeson.Types.ToJSON..=)) (refundBalanceTransaction obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("charge" Data.Aeson.Types.ToJSON..=)) (refundCharge obj) : ["created" Data.Aeson.Types.ToJSON..= refundCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= refundCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (refundDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_balance_transaction" Data.Aeson.Types.ToJSON..=)) (refundFailureBalanceTransaction obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_reason" Data.Aeson.Types.ToJSON..=)) (refundFailureReason obj) : ["id" Data.Aeson.Types.ToJSON..= refundId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("instructions_email" Data.Aeson.Types.ToJSON..=)) (refundInstructionsEmail obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (refundMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("next_action" Data.Aeson.Types.ToJSON..=)) (refundNextAction obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("payment_intent" Data.Aeson.Types.ToJSON..=)) (refundPaymentIntent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason" Data.Aeson.Types.ToJSON..=)) (refundReason obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("receipt_number" Data.Aeson.Types.ToJSON..=)) (refundReceiptNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("source_transfer_reversal" Data.Aeson.Types.ToJSON..=)) (refundSourceTransferReversal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status" Data.Aeson.Types.ToJSON..=)) (refundStatus obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transfer_reversal" Data.Aeson.Types.ToJSON..=)) (refundTransferReversal obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "refund"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Refund where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Refund" (\obj -> (((((((((((((((((GHC.Base.pure Refund GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "balance_transaction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "charge")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "failure_balance_transaction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "failure_reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "instructions_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "next_action")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "payment_intent")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "receipt_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "source_transfer_reversal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transfer_reversal"))

-- | Create a new 'Refund' with all required fields.
mkRefund ::
  -- | 'refundAmount'
  GHC.Types.Int ->
  -- | 'refundCreated'
  GHC.Types.Int ->
  -- | 'refundCurrency'
  Data.Text.Internal.Text ->
  -- | 'refundId'
  Data.Text.Internal.Text ->
  Refund
mkRefund refundAmount refundCreated refundCurrency refundId =
  Refund
    { refundAmount = refundAmount,
      refundBalanceTransaction = GHC.Maybe.Nothing,
      refundCharge = GHC.Maybe.Nothing,
      refundCreated = refundCreated,
      refundCurrency = refundCurrency,
      refundDescription = GHC.Maybe.Nothing,
      refundFailureBalanceTransaction = GHC.Maybe.Nothing,
      refundFailureReason = GHC.Maybe.Nothing,
      refundId = refundId,
      refundInstructionsEmail = GHC.Maybe.Nothing,
      refundMetadata = GHC.Maybe.Nothing,
      refundNextAction = GHC.Maybe.Nothing,
      refundPaymentIntent = GHC.Maybe.Nothing,
      refundReason = GHC.Maybe.Nothing,
      refundReceiptNumber = GHC.Maybe.Nothing,
      refundSourceTransferReversal = GHC.Maybe.Nothing,
      refundStatus = GHC.Maybe.Nothing,
      refundTransferReversal = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.refund.properties.balance_transaction.anyOf@ in the specification.
--
-- Balance transaction that describes the impact on your account balance.
data RefundBalanceTransaction'NonNullableVariants
  = RefundBalanceTransaction'NonNullableText Data.Text.Internal.Text
  | RefundBalanceTransaction'NonNullableBalanceTransaction BalanceTransaction
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON RefundBalanceTransaction'NonNullableVariants where
  toJSON (RefundBalanceTransaction'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (RefundBalanceTransaction'NonNullableBalanceTransaction a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON RefundBalanceTransaction'NonNullableVariants where
  parseJSON val = case (RefundBalanceTransaction'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((RefundBalanceTransaction'NonNullableBalanceTransaction Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.refund.properties.charge.anyOf@ in the specification.
--
-- ID of the charge that was refunded.
data RefundCharge'NonNullableVariants
  = RefundCharge'NonNullableText Data.Text.Internal.Text
  | RefundCharge'NonNullableCharge Charge
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON RefundCharge'NonNullableVariants where
  toJSON (RefundCharge'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (RefundCharge'NonNullableCharge a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON RefundCharge'NonNullableVariants where
  parseJSON val = case (RefundCharge'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((RefundCharge'NonNullableCharge Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.refund.properties.failure_balance_transaction.anyOf@ in the specification.
--
-- If the refund failed, this balance transaction describes the adjustment made on your account balance that reverses the initial balance transaction.
data RefundFailureBalanceTransaction'Variants
  = RefundFailureBalanceTransaction'Text Data.Text.Internal.Text
  | RefundFailureBalanceTransaction'BalanceTransaction BalanceTransaction
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON RefundFailureBalanceTransaction'Variants where
  toJSON (RefundFailureBalanceTransaction'Text a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (RefundFailureBalanceTransaction'BalanceTransaction a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON RefundFailureBalanceTransaction'Variants where
  parseJSON val = case (RefundFailureBalanceTransaction'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((RefundFailureBalanceTransaction'BalanceTransaction Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.refund.properties.payment_intent.anyOf@ in the specification.
--
-- ID of the PaymentIntent that was refunded.
data RefundPaymentIntent'NonNullableVariants
  = RefundPaymentIntent'NonNullableText Data.Text.Internal.Text
  | RefundPaymentIntent'NonNullablePaymentIntent PaymentIntent
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON RefundPaymentIntent'NonNullableVariants where
  toJSON (RefundPaymentIntent'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (RefundPaymentIntent'NonNullablePaymentIntent a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON RefundPaymentIntent'NonNullableVariants where
  parseJSON val = case (RefundPaymentIntent'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((RefundPaymentIntent'NonNullablePaymentIntent Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @components.schemas.refund.properties.reason@ in the specification.
--
-- Reason for the refund, either user-provided (\`duplicate\`, \`fraudulent\`, or \`requested_by_customer\`) or generated by Stripe internally (\`expired_uncaptured_charge\`).
data RefundReason'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    RefundReason'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    RefundReason'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"duplicate"@
    RefundReason'NonNullableEnumDuplicate
  | -- | Represents the JSON value @"expired_uncaptured_charge"@
    RefundReason'NonNullableEnumExpiredUncapturedCharge
  | -- | Represents the JSON value @"fraudulent"@
    RefundReason'NonNullableEnumFraudulent
  | -- | Represents the JSON value @"requested_by_customer"@
    RefundReason'NonNullableEnumRequestedByCustomer
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON RefundReason'NonNullable where
  toJSON (RefundReason'NonNullableOther val) = val
  toJSON (RefundReason'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (RefundReason'NonNullableEnumDuplicate) = "duplicate"
  toJSON (RefundReason'NonNullableEnumExpiredUncapturedCharge) = "expired_uncaptured_charge"
  toJSON (RefundReason'NonNullableEnumFraudulent) = "fraudulent"
  toJSON (RefundReason'NonNullableEnumRequestedByCustomer) = "requested_by_customer"

instance Data.Aeson.Types.FromJSON.FromJSON RefundReason'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "duplicate" -> RefundReason'NonNullableEnumDuplicate
          | val GHC.Classes.== "expired_uncaptured_charge" -> RefundReason'NonNullableEnumExpiredUncapturedCharge
          | val GHC.Classes.== "fraudulent" -> RefundReason'NonNullableEnumFraudulent
          | val GHC.Classes.== "requested_by_customer" -> RefundReason'NonNullableEnumRequestedByCustomer
          | GHC.Base.otherwise -> RefundReason'NonNullableOther val
      )

-- | Defines the oneOf schema located at @components.schemas.refund.properties.source_transfer_reversal.anyOf@ in the specification.
--
-- The transfer reversal that is associated with the refund. Only present if the charge came from another Stripe account. See the Connect documentation for details.
data RefundSourceTransferReversal'NonNullableVariants
  = RefundSourceTransferReversal'NonNullableText Data.Text.Internal.Text
  | RefundSourceTransferReversal'NonNullableTransferReversal TransferReversal
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON RefundSourceTransferReversal'NonNullableVariants where
  toJSON (RefundSourceTransferReversal'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (RefundSourceTransferReversal'NonNullableTransferReversal a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON RefundSourceTransferReversal'NonNullableVariants where
  parseJSON val = case (RefundSourceTransferReversal'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((RefundSourceTransferReversal'NonNullableTransferReversal Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the oneOf schema located at @components.schemas.refund.properties.transfer_reversal.anyOf@ in the specification.
--
-- If the accompanying transfer was reversed, the transfer reversal object. Only applicable if the charge was created using the destination parameter.
data RefundTransferReversal'NonNullableVariants
  = RefundTransferReversal'NonNullableText Data.Text.Internal.Text
  | RefundTransferReversal'NonNullableTransferReversal TransferReversal
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON RefundTransferReversal'NonNullableVariants where
  toJSON (RefundTransferReversal'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (RefundTransferReversal'NonNullableTransferReversal a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON RefundTransferReversal'NonNullableVariants where
  parseJSON val = case (RefundTransferReversal'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((RefundTransferReversal'NonNullableTransferReversal Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
