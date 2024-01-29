-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema IssuingAuthorizationRequest
module StripeAPI.Types.IssuingAuthorizationRequest where

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
import {-# SOURCE #-} StripeAPI.Types.IssuingAuthorizationAmountDetails

-- | Defines the object schema located at @components.schemas.issuing_authorization_request@ in the specification.
-- 
-- 
data IssuingAuthorizationRequest = IssuingAuthorizationRequest {
  -- | amount: The \`pending_request.amount\` at the time of the request, presented in your card\'s currency and in the [smallest currency unit](https:\/\/stripe.com\/docs\/currencies\#zero-decimal). Stripe held this amount from your account to fund the authorization if the request was approved.
  issuingAuthorizationRequestAmount :: GHC.Types.Int
  -- | amount_details: Detailed breakdown of amount components. These amounts are denominated in \`currency\` and in the [smallest currency unit](https:\/\/stripe.com\/docs\/currencies\#zero-decimal).
  , issuingAuthorizationRequestAmountDetails :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable IssuingAuthorizationRequestAmountDetails'NonNullable))
  -- | approved: Whether this request was approved.
  , issuingAuthorizationRequestApproved :: GHC.Types.Bool
  -- | authorization_code: A code created by Stripe which is shared with the merchant to validate the authorization. This field will be populated if the authorization message was approved. The code typically starts with the letter \"S\", followed by a six-digit number. For example, \"S498162\". Please note that the code is not guaranteed to be unique across authorizations.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingAuthorizationRequestAuthorizationCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  , issuingAuthorizationRequestCreated :: GHC.Types.Int
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingAuthorizationRequestCurrency :: Data.Text.Internal.Text
  -- | merchant_amount: The \`pending_request.merchant_amount\` at the time of the request, presented in the \`merchant_currency\` and in the [smallest currency unit](https:\/\/stripe.com\/docs\/currencies\#zero-decimal).
  , issuingAuthorizationRequestMerchantAmount :: GHC.Types.Int
  -- | merchant_currency: The currency that was collected by the merchant and presented to the cardholder for the authorization. Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingAuthorizationRequestMerchantCurrency :: Data.Text.Internal.Text
  -- | network_risk_score: The card network\'s estimate of the likelihood that an authorization is fraudulent. Takes on values between 1 and 99.
  , issuingAuthorizationRequestNetworkRiskScore :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | reason: When an authorization is approved or declined by you or by Stripe, this field provides additional detail on the reason for the outcome.
  , issuingAuthorizationRequestReason :: IssuingAuthorizationRequestReason'
  -- | reason_message: If the \`request_history.reason\` is \`webhook_error\` because the direct webhook response is invalid (for example, parsing errors or missing parameters), we surface a more detailed error message via this field.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , issuingAuthorizationRequestReasonMessage :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | requested_at: Time when the card network received an authorization request from the acquirer in UTC. Referred to by networks as transmission time.
  , issuingAuthorizationRequestRequestedAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationRequest
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestAmount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_details" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationRequestAmountDetails obj) : ["approved" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestApproved obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authorization_code" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationRequestAuthorizationCode obj) : ["created" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestCurrency obj] : ["merchant_amount" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestMerchantAmount obj] : ["merchant_currency" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestMerchantCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("network_risk_score" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationRequestNetworkRiskScore obj) : ["reason" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestReason obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason_message" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationRequestReasonMessage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("requested_at" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationRequestRequestedAt obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestAmount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_details" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationRequestAmountDetails obj) : ["approved" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestApproved obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authorization_code" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationRequestAuthorizationCode obj) : ["created" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestCreated obj] : ["currency" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestCurrency obj] : ["merchant_amount" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestMerchantAmount obj] : ["merchant_currency" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestMerchantCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("network_risk_score" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationRequestNetworkRiskScore obj) : ["reason" Data.Aeson.Types.ToJSON..= issuingAuthorizationRequestReason obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason_message" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationRequestReasonMessage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("requested_at" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationRequestRequestedAt obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationRequest
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingAuthorizationRequest" (\obj -> (((((((((((GHC.Base.pure IssuingAuthorizationRequest GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount_details")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "approved")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authorization_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "merchant_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "merchant_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "network_risk_score")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "reason")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reason_message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "requested_at"))}
-- | Create a new 'IssuingAuthorizationRequest' with all required fields.
mkIssuingAuthorizationRequest :: GHC.Types.Int -- ^ 'issuingAuthorizationRequestAmount'
  -> GHC.Types.Bool -- ^ 'issuingAuthorizationRequestApproved'
  -> GHC.Types.Int -- ^ 'issuingAuthorizationRequestCreated'
  -> Data.Text.Internal.Text -- ^ 'issuingAuthorizationRequestCurrency'
  -> GHC.Types.Int -- ^ 'issuingAuthorizationRequestMerchantAmount'
  -> Data.Text.Internal.Text -- ^ 'issuingAuthorizationRequestMerchantCurrency'
  -> IssuingAuthorizationRequestReason' -- ^ 'issuingAuthorizationRequestReason'
  -> IssuingAuthorizationRequest
mkIssuingAuthorizationRequest issuingAuthorizationRequestAmount issuingAuthorizationRequestApproved issuingAuthorizationRequestCreated issuingAuthorizationRequestCurrency issuingAuthorizationRequestMerchantAmount issuingAuthorizationRequestMerchantCurrency issuingAuthorizationRequestReason = IssuingAuthorizationRequest{issuingAuthorizationRequestAmount = issuingAuthorizationRequestAmount,
                                                                                                                                                                                                                                                                                                                                 issuingAuthorizationRequestAmountDetails = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                 issuingAuthorizationRequestApproved = issuingAuthorizationRequestApproved,
                                                                                                                                                                                                                                                                                                                                 issuingAuthorizationRequestAuthorizationCode = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                 issuingAuthorizationRequestCreated = issuingAuthorizationRequestCreated,
                                                                                                                                                                                                                                                                                                                                 issuingAuthorizationRequestCurrency = issuingAuthorizationRequestCurrency,
                                                                                                                                                                                                                                                                                                                                 issuingAuthorizationRequestMerchantAmount = issuingAuthorizationRequestMerchantAmount,
                                                                                                                                                                                                                                                                                                                                 issuingAuthorizationRequestMerchantCurrency = issuingAuthorizationRequestMerchantCurrency,
                                                                                                                                                                                                                                                                                                                                 issuingAuthorizationRequestNetworkRiskScore = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                 issuingAuthorizationRequestReason = issuingAuthorizationRequestReason,
                                                                                                                                                                                                                                                                                                                                 issuingAuthorizationRequestReasonMessage = GHC.Maybe.Nothing,
                                                                                                                                                                                                                                                                                                                                 issuingAuthorizationRequestRequestedAt = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.issuing_authorization_request.properties.amount_details.anyOf@ in the specification.
-- 
-- Detailed breakdown of amount components. These amounts are denominated in \\\`currency\\\` and in the [smallest currency unit](https:\\\/\\\/stripe.com\\\/docs\\\/currencies\\\#zero-decimal).
data IssuingAuthorizationRequestAmountDetails'NonNullable = IssuingAuthorizationRequestAmountDetails'NonNullable {
  -- | atm_fee: The fee charged by the ATM for the cash withdrawal.
  issuingAuthorizationRequestAmountDetails'NonNullableAtmFee :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | cashback_amount: The amount of cash requested by the cardholder.
  , issuingAuthorizationRequestAmountDetails'NonNullableCashbackAmount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationRequestAmountDetails'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("atm_fee" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationRequestAmountDetails'NonNullableAtmFee obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cashback_amount" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationRequestAmountDetails'NonNullableCashbackAmount obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("atm_fee" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationRequestAmountDetails'NonNullableAtmFee obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cashback_amount" Data.Aeson.Types.ToJSON..=)) (issuingAuthorizationRequestAmountDetails'NonNullableCashbackAmount obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationRequestAmountDetails'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingAuthorizationRequestAmountDetails'NonNullable" (\obj -> (GHC.Base.pure IssuingAuthorizationRequestAmountDetails'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "atm_fee")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cashback_amount"))}
-- | Create a new 'IssuingAuthorizationRequestAmountDetails'NonNullable' with all required fields.
mkIssuingAuthorizationRequestAmountDetails'NonNullable :: IssuingAuthorizationRequestAmountDetails'NonNullable
mkIssuingAuthorizationRequestAmountDetails'NonNullable = IssuingAuthorizationRequestAmountDetails'NonNullable{issuingAuthorizationRequestAmountDetails'NonNullableAtmFee = GHC.Maybe.Nothing,
                                                                                                              issuingAuthorizationRequestAmountDetails'NonNullableCashbackAmount = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.issuing_authorization_request.properties.reason@ in the specification.
-- 
-- When an authorization is approved or declined by you or by Stripe, this field provides additional detail on the reason for the outcome.
data IssuingAuthorizationRequestReason' =
   IssuingAuthorizationRequestReason'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | IssuingAuthorizationRequestReason'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | IssuingAuthorizationRequestReason'EnumAccountDisabled -- ^ Represents the JSON value @"account_disabled"@
  | IssuingAuthorizationRequestReason'EnumCardActive -- ^ Represents the JSON value @"card_active"@
  | IssuingAuthorizationRequestReason'EnumCardInactive -- ^ Represents the JSON value @"card_inactive"@
  | IssuingAuthorizationRequestReason'EnumCardholderInactive -- ^ Represents the JSON value @"cardholder_inactive"@
  | IssuingAuthorizationRequestReason'EnumCardholderVerificationRequired -- ^ Represents the JSON value @"cardholder_verification_required"@
  | IssuingAuthorizationRequestReason'EnumInsufficientFunds -- ^ Represents the JSON value @"insufficient_funds"@
  | IssuingAuthorizationRequestReason'EnumNotAllowed -- ^ Represents the JSON value @"not_allowed"@
  | IssuingAuthorizationRequestReason'EnumSpendingControls -- ^ Represents the JSON value @"spending_controls"@
  | IssuingAuthorizationRequestReason'EnumSuspectedFraud -- ^ Represents the JSON value @"suspected_fraud"@
  | IssuingAuthorizationRequestReason'EnumVerificationFailed -- ^ Represents the JSON value @"verification_failed"@
  | IssuingAuthorizationRequestReason'EnumWebhookApproved -- ^ Represents the JSON value @"webhook_approved"@
  | IssuingAuthorizationRequestReason'EnumWebhookDeclined -- ^ Represents the JSON value @"webhook_declined"@
  | IssuingAuthorizationRequestReason'EnumWebhookError -- ^ Represents the JSON value @"webhook_error"@
  | IssuingAuthorizationRequestReason'EnumWebhookTimeout -- ^ Represents the JSON value @"webhook_timeout"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingAuthorizationRequestReason'
    where {toJSON (IssuingAuthorizationRequestReason'Other val) = val;
           toJSON (IssuingAuthorizationRequestReason'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (IssuingAuthorizationRequestReason'EnumAccountDisabled) = "account_disabled";
           toJSON (IssuingAuthorizationRequestReason'EnumCardActive) = "card_active";
           toJSON (IssuingAuthorizationRequestReason'EnumCardInactive) = "card_inactive";
           toJSON (IssuingAuthorizationRequestReason'EnumCardholderInactive) = "cardholder_inactive";
           toJSON (IssuingAuthorizationRequestReason'EnumCardholderVerificationRequired) = "cardholder_verification_required";
           toJSON (IssuingAuthorizationRequestReason'EnumInsufficientFunds) = "insufficient_funds";
           toJSON (IssuingAuthorizationRequestReason'EnumNotAllowed) = "not_allowed";
           toJSON (IssuingAuthorizationRequestReason'EnumSpendingControls) = "spending_controls";
           toJSON (IssuingAuthorizationRequestReason'EnumSuspectedFraud) = "suspected_fraud";
           toJSON (IssuingAuthorizationRequestReason'EnumVerificationFailed) = "verification_failed";
           toJSON (IssuingAuthorizationRequestReason'EnumWebhookApproved) = "webhook_approved";
           toJSON (IssuingAuthorizationRequestReason'EnumWebhookDeclined) = "webhook_declined";
           toJSON (IssuingAuthorizationRequestReason'EnumWebhookError) = "webhook_error";
           toJSON (IssuingAuthorizationRequestReason'EnumWebhookTimeout) = "webhook_timeout"}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationRequestReason'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "account_disabled" -> IssuingAuthorizationRequestReason'EnumAccountDisabled
                                             | val GHC.Classes.== "card_active" -> IssuingAuthorizationRequestReason'EnumCardActive
                                             | val GHC.Classes.== "card_inactive" -> IssuingAuthorizationRequestReason'EnumCardInactive
                                             | val GHC.Classes.== "cardholder_inactive" -> IssuingAuthorizationRequestReason'EnumCardholderInactive
                                             | val GHC.Classes.== "cardholder_verification_required" -> IssuingAuthorizationRequestReason'EnumCardholderVerificationRequired
                                             | val GHC.Classes.== "insufficient_funds" -> IssuingAuthorizationRequestReason'EnumInsufficientFunds
                                             | val GHC.Classes.== "not_allowed" -> IssuingAuthorizationRequestReason'EnumNotAllowed
                                             | val GHC.Classes.== "spending_controls" -> IssuingAuthorizationRequestReason'EnumSpendingControls
                                             | val GHC.Classes.== "suspected_fraud" -> IssuingAuthorizationRequestReason'EnumSuspectedFraud
                                             | val GHC.Classes.== "verification_failed" -> IssuingAuthorizationRequestReason'EnumVerificationFailed
                                             | val GHC.Classes.== "webhook_approved" -> IssuingAuthorizationRequestReason'EnumWebhookApproved
                                             | val GHC.Classes.== "webhook_declined" -> IssuingAuthorizationRequestReason'EnumWebhookDeclined
                                             | val GHC.Classes.== "webhook_error" -> IssuingAuthorizationRequestReason'EnumWebhookError
                                             | val GHC.Classes.== "webhook_timeout" -> IssuingAuthorizationRequestReason'EnumWebhookTimeout
                                             | GHC.Base.otherwise -> IssuingAuthorizationRequestReason'Other val)}
