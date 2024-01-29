-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema AccountSepaDebitPaymentsSettings
module StripeAPI.Types.AccountSepaDebitPaymentsSettings where

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

-- | Defines the object schema located at @components.schemas.account_sepa_debit_payments_settings@ in the specification.
-- 
-- 
data AccountSepaDebitPaymentsSettings = AccountSepaDebitPaymentsSettings {
  -- | creditor_id: SEPA creditor identifier that identifies the company making the payment.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  accountSepaDebitPaymentsSettingsCreditorId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AccountSepaDebitPaymentsSettings
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("creditor_id" Data.Aeson.Types.ToJSON..=)) (accountSepaDebitPaymentsSettingsCreditorId obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("creditor_id" Data.Aeson.Types.ToJSON..=)) (accountSepaDebitPaymentsSettingsCreditorId obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON AccountSepaDebitPaymentsSettings
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountSepaDebitPaymentsSettings" (\obj -> GHC.Base.pure AccountSepaDebitPaymentsSettings GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "creditor_id"))}
-- | Create a new 'AccountSepaDebitPaymentsSettings' with all required fields.
mkAccountSepaDebitPaymentsSettings :: AccountSepaDebitPaymentsSettings
mkAccountSepaDebitPaymentsSettings = AccountSepaDebitPaymentsSettings{accountSepaDebitPaymentsSettingsCreditorId = GHC.Maybe.Nothing}
