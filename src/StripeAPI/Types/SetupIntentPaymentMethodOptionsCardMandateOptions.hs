-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema SetupIntentPaymentMethodOptionsCardMandateOptions
module StripeAPI.Types.SetupIntentPaymentMethodOptionsCardMandateOptions where

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

-- | Defines the object schema located at @components.schemas.setup_intent_payment_method_options_card_mandate_options@ in the specification.
-- 
-- 
data SetupIntentPaymentMethodOptionsCardMandateOptions = SetupIntentPaymentMethodOptionsCardMandateOptions {
  -- | amount: Amount to be charged for future payments.
  setupIntentPaymentMethodOptionsCardMandateOptionsAmount :: GHC.Types.Int
  -- | amount_type: One of \`fixed\` or \`maximum\`. If \`fixed\`, the \`amount\` param refers to the exact amount to be charged in future payments. If \`maximum\`, the amount charged can be up to the value passed for the \`amount\` param.
  , setupIntentPaymentMethodOptionsCardMandateOptionsAmountType :: SetupIntentPaymentMethodOptionsCardMandateOptionsAmountType'
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , setupIntentPaymentMethodOptionsCardMandateOptionsCurrency :: Data.Text.Internal.Text
  -- | description: A description of the mandate or subscription that is meant to be displayed to the customer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 200
  , setupIntentPaymentMethodOptionsCardMandateOptionsDescription :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | end_date: End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
  , setupIntentPaymentMethodOptionsCardMandateOptionsEndDate :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | interval: Specifies payment frequency. One of \`day\`, \`week\`, \`month\`, \`year\`, or \`sporadic\`.
  , setupIntentPaymentMethodOptionsCardMandateOptionsInterval :: SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'
  -- | interval_count: The number of intervals between payments. For example, \`interval=month\` and \`interval_count=3\` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when \`interval=sporadic\`.
  , setupIntentPaymentMethodOptionsCardMandateOptionsIntervalCount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | reference: Unique identifier for the mandate or subscription.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 80
  , setupIntentPaymentMethodOptionsCardMandateOptionsReference :: Data.Text.Internal.Text
  -- | start_date: Start date of the mandate or subscription. Start date should not be lesser than yesterday.
  , setupIntentPaymentMethodOptionsCardMandateOptionsStartDate :: GHC.Types.Int
  -- | supported_types: Specifies the type of mandates supported. Possible values are \`india\`.
  , setupIntentPaymentMethodOptionsCardMandateOptionsSupportedTypes :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable ([SetupIntentPaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullable])))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsCardMandateOptions
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= setupIntentPaymentMethodOptionsCardMandateOptionsAmount obj] : ["amount_type" Data.Aeson.Types.ToJSON..= setupIntentPaymentMethodOptionsCardMandateOptionsAmountType obj] : ["currency" Data.Aeson.Types.ToJSON..= setupIntentPaymentMethodOptionsCardMandateOptionsCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsCardMandateOptionsDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("end_date" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsCardMandateOptionsEndDate obj) : ["interval" Data.Aeson.Types.ToJSON..= setupIntentPaymentMethodOptionsCardMandateOptionsInterval obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval_count" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsCardMandateOptionsIntervalCount obj) : ["reference" Data.Aeson.Types.ToJSON..= setupIntentPaymentMethodOptionsCardMandateOptionsReference obj] : ["start_date" Data.Aeson.Types.ToJSON..= setupIntentPaymentMethodOptionsCardMandateOptionsStartDate obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("supported_types" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsCardMandateOptionsSupportedTypes obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= setupIntentPaymentMethodOptionsCardMandateOptionsAmount obj] : ["amount_type" Data.Aeson.Types.ToJSON..= setupIntentPaymentMethodOptionsCardMandateOptionsAmountType obj] : ["currency" Data.Aeson.Types.ToJSON..= setupIntentPaymentMethodOptionsCardMandateOptionsCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsCardMandateOptionsDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("end_date" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsCardMandateOptionsEndDate obj) : ["interval" Data.Aeson.Types.ToJSON..= setupIntentPaymentMethodOptionsCardMandateOptionsInterval obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("interval_count" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsCardMandateOptionsIntervalCount obj) : ["reference" Data.Aeson.Types.ToJSON..= setupIntentPaymentMethodOptionsCardMandateOptionsReference obj] : ["start_date" Data.Aeson.Types.ToJSON..= setupIntentPaymentMethodOptionsCardMandateOptionsStartDate obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("supported_types" Data.Aeson.Types.ToJSON..=)) (setupIntentPaymentMethodOptionsCardMandateOptionsSupportedTypes obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsCardMandateOptions
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupIntentPaymentMethodOptionsCardMandateOptions" (\obj -> (((((((((GHC.Base.pure SetupIntentPaymentMethodOptionsCardMandateOptions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "end_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "interval")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "interval_count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "reference")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "start_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "supported_types"))}
-- | Create a new 'SetupIntentPaymentMethodOptionsCardMandateOptions' with all required fields.
mkSetupIntentPaymentMethodOptionsCardMandateOptions :: GHC.Types.Int -- ^ 'setupIntentPaymentMethodOptionsCardMandateOptionsAmount'
  -> SetupIntentPaymentMethodOptionsCardMandateOptionsAmountType' -- ^ 'setupIntentPaymentMethodOptionsCardMandateOptionsAmountType'
  -> Data.Text.Internal.Text -- ^ 'setupIntentPaymentMethodOptionsCardMandateOptionsCurrency'
  -> SetupIntentPaymentMethodOptionsCardMandateOptionsInterval' -- ^ 'setupIntentPaymentMethodOptionsCardMandateOptionsInterval'
  -> Data.Text.Internal.Text -- ^ 'setupIntentPaymentMethodOptionsCardMandateOptionsReference'
  -> GHC.Types.Int -- ^ 'setupIntentPaymentMethodOptionsCardMandateOptionsStartDate'
  -> SetupIntentPaymentMethodOptionsCardMandateOptions
mkSetupIntentPaymentMethodOptionsCardMandateOptions setupIntentPaymentMethodOptionsCardMandateOptionsAmount setupIntentPaymentMethodOptionsCardMandateOptionsAmountType setupIntentPaymentMethodOptionsCardMandateOptionsCurrency setupIntentPaymentMethodOptionsCardMandateOptionsInterval setupIntentPaymentMethodOptionsCardMandateOptionsReference setupIntentPaymentMethodOptionsCardMandateOptionsStartDate = SetupIntentPaymentMethodOptionsCardMandateOptions{setupIntentPaymentMethodOptionsCardMandateOptionsAmount = setupIntentPaymentMethodOptionsCardMandateOptionsAmount,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      setupIntentPaymentMethodOptionsCardMandateOptionsAmountType = setupIntentPaymentMethodOptionsCardMandateOptionsAmountType,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      setupIntentPaymentMethodOptionsCardMandateOptionsCurrency = setupIntentPaymentMethodOptionsCardMandateOptionsCurrency,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      setupIntentPaymentMethodOptionsCardMandateOptionsDescription = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      setupIntentPaymentMethodOptionsCardMandateOptionsEndDate = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      setupIntentPaymentMethodOptionsCardMandateOptionsInterval = setupIntentPaymentMethodOptionsCardMandateOptionsInterval,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      setupIntentPaymentMethodOptionsCardMandateOptionsIntervalCount = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      setupIntentPaymentMethodOptionsCardMandateOptionsReference = setupIntentPaymentMethodOptionsCardMandateOptionsReference,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      setupIntentPaymentMethodOptionsCardMandateOptionsStartDate = setupIntentPaymentMethodOptionsCardMandateOptionsStartDate,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      setupIntentPaymentMethodOptionsCardMandateOptionsSupportedTypes = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.setup_intent_payment_method_options_card_mandate_options.properties.amount_type@ in the specification.
-- 
-- One of \`fixed\` or \`maximum\`. If \`fixed\`, the \`amount\` param refers to the exact amount to be charged in future payments. If \`maximum\`, the amount charged can be up to the value passed for the \`amount\` param.
data SetupIntentPaymentMethodOptionsCardMandateOptionsAmountType' =
   SetupIntentPaymentMethodOptionsCardMandateOptionsAmountType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | SetupIntentPaymentMethodOptionsCardMandateOptionsAmountType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | SetupIntentPaymentMethodOptionsCardMandateOptionsAmountType'EnumFixed -- ^ Represents the JSON value @"fixed"@
  | SetupIntentPaymentMethodOptionsCardMandateOptionsAmountType'EnumMaximum -- ^ Represents the JSON value @"maximum"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsCardMandateOptionsAmountType'
    where {toJSON (SetupIntentPaymentMethodOptionsCardMandateOptionsAmountType'Other val) = val;
           toJSON (SetupIntentPaymentMethodOptionsCardMandateOptionsAmountType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (SetupIntentPaymentMethodOptionsCardMandateOptionsAmountType'EnumFixed) = "fixed";
           toJSON (SetupIntentPaymentMethodOptionsCardMandateOptionsAmountType'EnumMaximum) = "maximum"}
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsCardMandateOptionsAmountType'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "fixed" -> SetupIntentPaymentMethodOptionsCardMandateOptionsAmountType'EnumFixed
                                             | val GHC.Classes.== "maximum" -> SetupIntentPaymentMethodOptionsCardMandateOptionsAmountType'EnumMaximum
                                             | GHC.Base.otherwise -> SetupIntentPaymentMethodOptionsCardMandateOptionsAmountType'Other val)}
-- | Defines the enum schema located at @components.schemas.setup_intent_payment_method_options_card_mandate_options.properties.interval@ in the specification.
-- 
-- Specifies payment frequency. One of \`day\`, \`week\`, \`month\`, \`year\`, or \`sporadic\`.
data SetupIntentPaymentMethodOptionsCardMandateOptionsInterval' =
   SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'EnumDay -- ^ Represents the JSON value @"day"@
  | SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'EnumMonth -- ^ Represents the JSON value @"month"@
  | SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'EnumSporadic -- ^ Represents the JSON value @"sporadic"@
  | SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'EnumWeek -- ^ Represents the JSON value @"week"@
  | SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'EnumYear -- ^ Represents the JSON value @"year"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'
    where {toJSON (SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'Other val) = val;
           toJSON (SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'EnumDay) = "day";
           toJSON (SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'EnumMonth) = "month";
           toJSON (SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'EnumSporadic) = "sporadic";
           toJSON (SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'EnumWeek) = "week";
           toJSON (SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'EnumYear) = "year"}
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "day" -> SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'EnumDay
                                             | val GHC.Classes.== "month" -> SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'EnumMonth
                                             | val GHC.Classes.== "sporadic" -> SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'EnumSporadic
                                             | val GHC.Classes.== "week" -> SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'EnumWeek
                                             | val GHC.Classes.== "year" -> SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'EnumYear
                                             | GHC.Base.otherwise -> SetupIntentPaymentMethodOptionsCardMandateOptionsInterval'Other val)}
-- | Defines the enum schema located at @components.schemas.setup_intent_payment_method_options_card_mandate_options.properties.supported_types.items@ in the specification.
-- 
-- 
data SetupIntentPaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullable =
   SetupIntentPaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | SetupIntentPaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | SetupIntentPaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullableEnumIndia -- ^ Represents the JSON value @"india"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupIntentPaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullable
    where {toJSON (SetupIntentPaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullableOther val) = val;
           toJSON (SetupIntentPaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (SetupIntentPaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullableEnumIndia) = "india"}
instance Data.Aeson.Types.FromJSON.FromJSON SetupIntentPaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "india" -> SetupIntentPaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullableEnumIndia
                                             | GHC.Base.otherwise -> SetupIntentPaymentMethodOptionsCardMandateOptionsSupportedTypes'NonNullableOther val)}
