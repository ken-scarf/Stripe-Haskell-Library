-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentMethodUsBankAccountBlocked
module StripeAPI.Types.PaymentMethodUsBankAccountBlocked where

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

-- | Defines the object schema located at @components.schemas.payment_method_us_bank_account_blocked@ in the specification.
-- 
-- 
data PaymentMethodUsBankAccountBlocked = PaymentMethodUsBankAccountBlocked {
  -- | network_code: The ACH network code that resulted in this block.
  paymentMethodUsBankAccountBlockedNetworkCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodUsBankAccountBlockedNetworkCode'NonNullable))
  -- | reason: The reason why this PaymentMethod\'s fingerprint has been blocked
  , paymentMethodUsBankAccountBlockedReason :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PaymentMethodUsBankAccountBlockedReason'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodUsBankAccountBlocked
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("network_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountBlockedNetworkCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountBlockedReason obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("network_code" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountBlockedNetworkCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason" Data.Aeson.Types.ToJSON..=)) (paymentMethodUsBankAccountBlockedReason obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodUsBankAccountBlocked
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodUsBankAccountBlocked" (\obj -> (GHC.Base.pure PaymentMethodUsBankAccountBlocked GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "network_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reason"))}
-- | Create a new 'PaymentMethodUsBankAccountBlocked' with all required fields.
mkPaymentMethodUsBankAccountBlocked :: PaymentMethodUsBankAccountBlocked
mkPaymentMethodUsBankAccountBlocked = PaymentMethodUsBankAccountBlocked{paymentMethodUsBankAccountBlockedNetworkCode = GHC.Maybe.Nothing,
                                                                        paymentMethodUsBankAccountBlockedReason = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.payment_method_us_bank_account_blocked.properties.network_code@ in the specification.
-- 
-- The ACH network code that resulted in this block.
data PaymentMethodUsBankAccountBlockedNetworkCode'NonNullable =
   PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR02 -- ^ Represents the JSON value @"R02"@
  | PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR03 -- ^ Represents the JSON value @"R03"@
  | PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR04 -- ^ Represents the JSON value @"R04"@
  | PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR05 -- ^ Represents the JSON value @"R05"@
  | PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR07 -- ^ Represents the JSON value @"R07"@
  | PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR08 -- ^ Represents the JSON value @"R08"@
  | PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR10 -- ^ Represents the JSON value @"R10"@
  | PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR11 -- ^ Represents the JSON value @"R11"@
  | PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR16 -- ^ Represents the JSON value @"R16"@
  | PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR20 -- ^ Represents the JSON value @"R20"@
  | PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR29 -- ^ Represents the JSON value @"R29"@
  | PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR31 -- ^ Represents the JSON value @"R31"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodUsBankAccountBlockedNetworkCode'NonNullable
    where {toJSON (PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableOther val) = val;
           toJSON (PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR02) = "R02";
           toJSON (PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR03) = "R03";
           toJSON (PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR04) = "R04";
           toJSON (PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR05) = "R05";
           toJSON (PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR07) = "R07";
           toJSON (PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR08) = "R08";
           toJSON (PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR10) = "R10";
           toJSON (PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR11) = "R11";
           toJSON (PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR16) = "R16";
           toJSON (PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR20) = "R20";
           toJSON (PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR29) = "R29";
           toJSON (PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR31) = "R31"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodUsBankAccountBlockedNetworkCode'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "R02" -> PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR02
                                             | val GHC.Classes.== "R03" -> PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR03
                                             | val GHC.Classes.== "R04" -> PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR04
                                             | val GHC.Classes.== "R05" -> PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR05
                                             | val GHC.Classes.== "R07" -> PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR07
                                             | val GHC.Classes.== "R08" -> PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR08
                                             | val GHC.Classes.== "R10" -> PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR10
                                             | val GHC.Classes.== "R11" -> PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR11
                                             | val GHC.Classes.== "R16" -> PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR16
                                             | val GHC.Classes.== "R20" -> PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR20
                                             | val GHC.Classes.== "R29" -> PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR29
                                             | val GHC.Classes.== "R31" -> PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableEnumR31
                                             | GHC.Base.otherwise -> PaymentMethodUsBankAccountBlockedNetworkCode'NonNullableOther val)}
-- | Defines the enum schema located at @components.schemas.payment_method_us_bank_account_blocked.properties.reason@ in the specification.
-- 
-- The reason why this PaymentMethod\'s fingerprint has been blocked
data PaymentMethodUsBankAccountBlockedReason'NonNullable =
   PaymentMethodUsBankAccountBlockedReason'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentMethodUsBankAccountBlockedReason'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentMethodUsBankAccountBlockedReason'NonNullableEnumBankAccountClosed -- ^ Represents the JSON value @"bank_account_closed"@
  | PaymentMethodUsBankAccountBlockedReason'NonNullableEnumBankAccountFrozen -- ^ Represents the JSON value @"bank_account_frozen"@
  | PaymentMethodUsBankAccountBlockedReason'NonNullableEnumBankAccountInvalidDetails -- ^ Represents the JSON value @"bank_account_invalid_details"@
  | PaymentMethodUsBankAccountBlockedReason'NonNullableEnumBankAccountRestricted -- ^ Represents the JSON value @"bank_account_restricted"@
  | PaymentMethodUsBankAccountBlockedReason'NonNullableEnumBankAccountUnusable -- ^ Represents the JSON value @"bank_account_unusable"@
  | PaymentMethodUsBankAccountBlockedReason'NonNullableEnumDebitNotAuthorized -- ^ Represents the JSON value @"debit_not_authorized"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodUsBankAccountBlockedReason'NonNullable
    where {toJSON (PaymentMethodUsBankAccountBlockedReason'NonNullableOther val) = val;
           toJSON (PaymentMethodUsBankAccountBlockedReason'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentMethodUsBankAccountBlockedReason'NonNullableEnumBankAccountClosed) = "bank_account_closed";
           toJSON (PaymentMethodUsBankAccountBlockedReason'NonNullableEnumBankAccountFrozen) = "bank_account_frozen";
           toJSON (PaymentMethodUsBankAccountBlockedReason'NonNullableEnumBankAccountInvalidDetails) = "bank_account_invalid_details";
           toJSON (PaymentMethodUsBankAccountBlockedReason'NonNullableEnumBankAccountRestricted) = "bank_account_restricted";
           toJSON (PaymentMethodUsBankAccountBlockedReason'NonNullableEnumBankAccountUnusable) = "bank_account_unusable";
           toJSON (PaymentMethodUsBankAccountBlockedReason'NonNullableEnumDebitNotAuthorized) = "debit_not_authorized"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodUsBankAccountBlockedReason'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "bank_account_closed" -> PaymentMethodUsBankAccountBlockedReason'NonNullableEnumBankAccountClosed
                                             | val GHC.Classes.== "bank_account_frozen" -> PaymentMethodUsBankAccountBlockedReason'NonNullableEnumBankAccountFrozen
                                             | val GHC.Classes.== "bank_account_invalid_details" -> PaymentMethodUsBankAccountBlockedReason'NonNullableEnumBankAccountInvalidDetails
                                             | val GHC.Classes.== "bank_account_restricted" -> PaymentMethodUsBankAccountBlockedReason'NonNullableEnumBankAccountRestricted
                                             | val GHC.Classes.== "bank_account_unusable" -> PaymentMethodUsBankAccountBlockedReason'NonNullableEnumBankAccountUnusable
                                             | val GHC.Classes.== "debit_not_authorized" -> PaymentMethodUsBankAccountBlockedReason'NonNullableEnumDebitNotAuthorized
                                             | GHC.Base.otherwise -> PaymentMethodUsBankAccountBlockedReason'NonNullableOther val)}