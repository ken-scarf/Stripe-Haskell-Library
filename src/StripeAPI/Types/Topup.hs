{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema Topup
module StripeAPI.Types.Topup where

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
import {-# SOURCE #-} StripeAPI.Types.Source
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.topup@ in the specification.
--
-- To top up your Stripe balance, you create a top-up object. You can retrieve
-- individual top-ups, as well as list all top-ups. Top-ups are identified by a
-- unique, random ID.
--
-- Related guide: [Topping Up your Platform Account](https:\/\/stripe.com\/docs\/connect\/top-ups).
data Topup = Topup
  { -- | amount: Amount transferred.
    topupAmount :: GHC.Types.Int,
    -- | balance_transaction: ID of the balance transaction that describes the impact of this top-up on your account balance. May not be specified depending on status of top-up.
    topupBalanceTransaction :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable TopupBalanceTransaction'NonNullableVariants)),
    -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
    topupCreated :: GHC.Types.Int,
    -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    topupCurrency :: Data.Text.Internal.Text,
    -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    topupDescription :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | expected_availability_date: Date the funds are expected to arrive in your Stripe account for payouts. This factors in delays like weekends or bank holidays. May not be specified depending on status of top-up.
    topupExpectedAvailabilityDate :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int)),
    -- | failure_code: Error code explaining reason for top-up failure if available (see [the errors section](https:\/\/stripe.com\/docs\/api\#errors) for a list of codes).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    topupFailureCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | failure_message: Message to user further explaining reason for top-up failure if available.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    topupFailureMessage :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | id: Unique identifier for the object.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    topupId :: Data.Text.Internal.Text,
    -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
    topupLivemode :: GHC.Types.Bool,
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    topupMetadata :: Data.Aeson.Types.Internal.Object,
    -- | source: \`Source\` objects allow you to accept a variety of payment methods. They
    -- represent a customer\'s payment instrument, and can be used with the Stripe API
    -- just like a \`Card\` object: once chargeable, they can be charged, or can be
    -- attached to customers.
    --
    -- Related guides: [Sources API](https:\/\/stripe.com\/docs\/sources) and [Sources & Customers](https:\/\/stripe.com\/docs\/sources\/customers).
    topupSource :: Source,
    -- | statement_descriptor: Extra information about a top-up. This will appear on your source\'s bank statement. It must contain at least one letter.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    topupStatementDescriptor :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | status: The status of the top-up is either \`canceled\`, \`failed\`, \`pending\`, \`reversed\`, or \`succeeded\`.
    topupStatus :: TopupStatus',
    -- | transfer_group: A string that identifies this top-up as part of a group.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    topupTransferGroup :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON Topup where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= topupAmount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("balance_transaction" Data.Aeson.Types.ToJSON..=)) (topupBalanceTransaction obj) : ["created" Data.Aeson.Types.ToJSON..= topupCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= topupCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (topupDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expected_availability_date" Data.Aeson.Types.ToJSON..=)) (topupExpectedAvailabilityDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_code" Data.Aeson.Types.ToJSON..=)) (topupFailureCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_message" Data.Aeson.Types.ToJSON..=)) (topupFailureMessage obj) : ["id" Data.Aeson.Types.ToJSON..= topupId obj] : ["livemode" Data.Aeson.Types.ToJSON..= topupLivemode obj] : ["metadata" Data.Aeson.Types.ToJSON..= topupMetadata obj] : ["source" Data.Aeson.Types.ToJSON..= topupSource obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (topupStatementDescriptor obj) : ["status" Data.Aeson.Types.ToJSON..= topupStatus obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transfer_group" Data.Aeson.Types.ToJSON..=)) (topupTransferGroup obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "topup"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= topupAmount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("balance_transaction" Data.Aeson.Types.ToJSON..=)) (topupBalanceTransaction obj) : ["created" Data.Aeson.Types.ToJSON..= topupCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= topupCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (topupDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expected_availability_date" Data.Aeson.Types.ToJSON..=)) (topupExpectedAvailabilityDate obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_code" Data.Aeson.Types.ToJSON..=)) (topupFailureCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failure_message" Data.Aeson.Types.ToJSON..=)) (topupFailureMessage obj) : ["id" Data.Aeson.Types.ToJSON..= topupId obj] : ["livemode" Data.Aeson.Types.ToJSON..= topupLivemode obj] : ["metadata" Data.Aeson.Types.ToJSON..= topupMetadata obj] : ["source" Data.Aeson.Types.ToJSON..= topupSource obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (topupStatementDescriptor obj) : ["status" Data.Aeson.Types.ToJSON..= topupStatus obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transfer_group" Data.Aeson.Types.ToJSON..=)) (topupTransferGroup obj) : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "topup"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON Topup where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "Topup" (\obj -> ((((((((((((((GHC.Base.pure Topup GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "balance_transaction")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expected_availability_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "failure_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "failure_message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transfer_group"))

-- | Create a new 'Topup' with all required fields.
mkTopup ::
  -- | 'topupAmount'
  GHC.Types.Int ->
  -- | 'topupCreated'
  GHC.Types.Int ->
  -- | 'topupCurrency'
  Data.Text.Internal.Text ->
  -- | 'topupId'
  Data.Text.Internal.Text ->
  -- | 'topupLivemode'
  GHC.Types.Bool ->
  -- | 'topupMetadata'
  Data.Aeson.Types.Internal.Object ->
  -- | 'topupSource'
  Source ->
  -- | 'topupStatus'
  TopupStatus' ->
  Topup
mkTopup topupAmount topupCreated topupCurrency topupId topupLivemode topupMetadata topupSource topupStatus =
  Topup
    { topupAmount = topupAmount,
      topupBalanceTransaction = GHC.Maybe.Nothing,
      topupCreated = topupCreated,
      topupCurrency = topupCurrency,
      topupDescription = GHC.Maybe.Nothing,
      topupExpectedAvailabilityDate = GHC.Maybe.Nothing,
      topupFailureCode = GHC.Maybe.Nothing,
      topupFailureMessage = GHC.Maybe.Nothing,
      topupId = topupId,
      topupLivemode = topupLivemode,
      topupMetadata = topupMetadata,
      topupSource = topupSource,
      topupStatementDescriptor = GHC.Maybe.Nothing,
      topupStatus = topupStatus,
      topupTransferGroup = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @components.schemas.topup.properties.balance_transaction.anyOf@ in the specification.
--
-- ID of the balance transaction that describes the impact of this top-up on your account balance. May not be specified depending on status of top-up.
data TopupBalanceTransaction'NonNullableVariants
  = TopupBalanceTransaction'NonNullableText Data.Text.Internal.Text
  | TopupBalanceTransaction'NonNullableBalanceTransaction BalanceTransaction
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON TopupBalanceTransaction'NonNullableVariants where
  toJSON (TopupBalanceTransaction'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (TopupBalanceTransaction'NonNullableBalanceTransaction a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON TopupBalanceTransaction'NonNullableVariants where
  parseJSON val = case (TopupBalanceTransaction'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((TopupBalanceTransaction'NonNullableBalanceTransaction Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Defines the enum schema located at @components.schemas.topup.properties.status@ in the specification.
--
-- The status of the top-up is either \`canceled\`, \`failed\`, \`pending\`, \`reversed\`, or \`succeeded\`.
data TopupStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    TopupStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    TopupStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"canceled"@
    TopupStatus'EnumCanceled
  | -- | Represents the JSON value @"failed"@
    TopupStatus'EnumFailed
  | -- | Represents the JSON value @"pending"@
    TopupStatus'EnumPending
  | -- | Represents the JSON value @"reversed"@
    TopupStatus'EnumReversed
  | -- | Represents the JSON value @"succeeded"@
    TopupStatus'EnumSucceeded
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON TopupStatus' where
  toJSON (TopupStatus'Other val) = val
  toJSON (TopupStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (TopupStatus'EnumCanceled) = "canceled"
  toJSON (TopupStatus'EnumFailed) = "failed"
  toJSON (TopupStatus'EnumPending) = "pending"
  toJSON (TopupStatus'EnumReversed) = "reversed"
  toJSON (TopupStatus'EnumSucceeded) = "succeeded"

instance Data.Aeson.Types.FromJSON.FromJSON TopupStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "canceled" -> TopupStatus'EnumCanceled
          | val GHC.Classes.== "failed" -> TopupStatus'EnumFailed
          | val GHC.Classes.== "pending" -> TopupStatus'EnumPending
          | val GHC.Classes.== "reversed" -> TopupStatus'EnumReversed
          | val GHC.Classes.== "succeeded" -> TopupStatus'EnumSucceeded
          | GHC.Base.otherwise -> TopupStatus'Other val
      )
