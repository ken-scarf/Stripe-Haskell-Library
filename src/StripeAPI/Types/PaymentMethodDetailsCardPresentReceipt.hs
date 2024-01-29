-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentMethodDetailsCardPresentReceipt
module StripeAPI.Types.PaymentMethodDetailsCardPresentReceipt where

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

-- | Defines the object schema located at @components.schemas.payment_method_details_card_present_receipt@ in the specification.
-- 
-- 
data PaymentMethodDetailsCardPresentReceipt = PaymentMethodDetailsCardPresentReceipt {
  -- | account_type: The type of account being debited or credited
  paymentMethodDetailsCardPresentReceiptAccountType :: (GHC.Maybe.Maybe PaymentMethodDetailsCardPresentReceiptAccountType')
  -- | application_cryptogram: EMV tag 9F26, cryptogram generated by the integrated circuit chip.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsCardPresentReceiptApplicationCryptogram :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | application_preferred_name: Mnenomic of the Application Identifier.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsCardPresentReceiptApplicationPreferredName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | authorization_code: Identifier for this transaction.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsCardPresentReceiptAuthorizationCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | authorization_response_code: EMV tag 8A. A code returned by the card issuer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsCardPresentReceiptAuthorizationResponseCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | cardholder_verification_method: How the cardholder verified ownership of the card.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsCardPresentReceiptCardholderVerificationMethod :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | dedicated_file_name: EMV tag 84. Similar to the application identifier stored on the integrated circuit chip.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsCardPresentReceiptDedicatedFileName :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | terminal_verification_results: The outcome of a series of EMV functions performed by the card reader.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsCardPresentReceiptTerminalVerificationResults :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | transaction_status_information: An indication of various EMV functions performed during the transaction.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodDetailsCardPresentReceiptTransactionStatusInformation :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardPresentReceipt
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardPresentReceiptAccountType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application_cryptogram" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardPresentReceiptApplicationCryptogram obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application_preferred_name" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardPresentReceiptApplicationPreferredName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authorization_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardPresentReceiptAuthorizationCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authorization_response_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardPresentReceiptAuthorizationResponseCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cardholder_verification_method" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardPresentReceiptCardholderVerificationMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dedicated_file_name" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardPresentReceiptDedicatedFileName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("terminal_verification_results" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardPresentReceiptTerminalVerificationResults obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction_status_information" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardPresentReceiptTransactionStatusInformation obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardPresentReceiptAccountType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application_cryptogram" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardPresentReceiptApplicationCryptogram obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application_preferred_name" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardPresentReceiptApplicationPreferredName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authorization_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardPresentReceiptAuthorizationCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("authorization_response_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardPresentReceiptAuthorizationResponseCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cardholder_verification_method" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardPresentReceiptCardholderVerificationMethod obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("dedicated_file_name" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardPresentReceiptDedicatedFileName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("terminal_verification_results" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardPresentReceiptTerminalVerificationResults obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transaction_status_information" Data.Aeson.Types.ToJSON..=)) (paymentMethodDetailsCardPresentReceiptTransactionStatusInformation obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardPresentReceipt
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDetailsCardPresentReceipt" (\obj -> ((((((((GHC.Base.pure PaymentMethodDetailsCardPresentReceipt GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "application_cryptogram")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "application_preferred_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authorization_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "authorization_response_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cardholder_verification_method")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "dedicated_file_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "terminal_verification_results")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transaction_status_information"))}
-- | Create a new 'PaymentMethodDetailsCardPresentReceipt' with all required fields.
mkPaymentMethodDetailsCardPresentReceipt :: PaymentMethodDetailsCardPresentReceipt
mkPaymentMethodDetailsCardPresentReceipt = PaymentMethodDetailsCardPresentReceipt{paymentMethodDetailsCardPresentReceiptAccountType = GHC.Maybe.Nothing,
                                                                                  paymentMethodDetailsCardPresentReceiptApplicationCryptogram = GHC.Maybe.Nothing,
                                                                                  paymentMethodDetailsCardPresentReceiptApplicationPreferredName = GHC.Maybe.Nothing,
                                                                                  paymentMethodDetailsCardPresentReceiptAuthorizationCode = GHC.Maybe.Nothing,
                                                                                  paymentMethodDetailsCardPresentReceiptAuthorizationResponseCode = GHC.Maybe.Nothing,
                                                                                  paymentMethodDetailsCardPresentReceiptCardholderVerificationMethod = GHC.Maybe.Nothing,
                                                                                  paymentMethodDetailsCardPresentReceiptDedicatedFileName = GHC.Maybe.Nothing,
                                                                                  paymentMethodDetailsCardPresentReceiptTerminalVerificationResults = GHC.Maybe.Nothing,
                                                                                  paymentMethodDetailsCardPresentReceiptTransactionStatusInformation = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.payment_method_details_card_present_receipt.properties.account_type@ in the specification.
-- 
-- The type of account being debited or credited
data PaymentMethodDetailsCardPresentReceiptAccountType' =
   PaymentMethodDetailsCardPresentReceiptAccountType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentMethodDetailsCardPresentReceiptAccountType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentMethodDetailsCardPresentReceiptAccountType'EnumChecking -- ^ Represents the JSON value @"checking"@
  | PaymentMethodDetailsCardPresentReceiptAccountType'EnumCredit -- ^ Represents the JSON value @"credit"@
  | PaymentMethodDetailsCardPresentReceiptAccountType'EnumPrepaid -- ^ Represents the JSON value @"prepaid"@
  | PaymentMethodDetailsCardPresentReceiptAccountType'EnumUnknown -- ^ Represents the JSON value @"unknown"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDetailsCardPresentReceiptAccountType'
    where {toJSON (PaymentMethodDetailsCardPresentReceiptAccountType'Other val) = val;
           toJSON (PaymentMethodDetailsCardPresentReceiptAccountType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentMethodDetailsCardPresentReceiptAccountType'EnumChecking) = "checking";
           toJSON (PaymentMethodDetailsCardPresentReceiptAccountType'EnumCredit) = "credit";
           toJSON (PaymentMethodDetailsCardPresentReceiptAccountType'EnumPrepaid) = "prepaid";
           toJSON (PaymentMethodDetailsCardPresentReceiptAccountType'EnumUnknown) = "unknown"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDetailsCardPresentReceiptAccountType'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "checking" -> PaymentMethodDetailsCardPresentReceiptAccountType'EnumChecking
                                             | val GHC.Classes.== "credit" -> PaymentMethodDetailsCardPresentReceiptAccountType'EnumCredit
                                             | val GHC.Classes.== "prepaid" -> PaymentMethodDetailsCardPresentReceiptAccountType'EnumPrepaid
                                             | val GHC.Classes.== "unknown" -> PaymentMethodDetailsCardPresentReceiptAccountType'EnumUnknown
                                             | GHC.Base.otherwise -> PaymentMethodDetailsCardPresentReceiptAccountType'Other val)}
