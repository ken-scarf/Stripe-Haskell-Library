-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema SetupAttemptPaymentMethodDetails
module StripeAPI.Types.SetupAttemptPaymentMethodDetails where

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
import {-# SOURCE #-} StripeAPI.Types.SetupAttemptPaymentMethodDetailsBancontact
import {-# SOURCE #-} StripeAPI.Types.SetupAttemptPaymentMethodDetailsCard
import {-# SOURCE #-} StripeAPI.Types.SetupAttemptPaymentMethodDetailsCardPresent
import {-# SOURCE #-} StripeAPI.Types.SetupAttemptPaymentMethodDetailsIdeal
import {-# SOURCE #-} StripeAPI.Types.SetupAttemptPaymentMethodDetailsSofort

-- | Defines the object schema located at @components.schemas.setup_attempt_payment_method_details@ in the specification.
-- 
-- 
data SetupAttemptPaymentMethodDetails = SetupAttemptPaymentMethodDetails {
  -- | acss_debit: 
  setupAttemptPaymentMethodDetailsAcssDebit :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsAcssDebit)
  -- | au_becs_debit: 
  , setupAttemptPaymentMethodDetailsAuBecsDebit :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsAuBecsDebit)
  -- | bacs_debit: 
  , setupAttemptPaymentMethodDetailsBacsDebit :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsBacsDebit)
  -- | bancontact: 
  , setupAttemptPaymentMethodDetailsBancontact :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsBancontact)
  -- | boleto: 
  , setupAttemptPaymentMethodDetailsBoleto :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsBoleto)
  -- | card: 
  , setupAttemptPaymentMethodDetailsCard :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsCard)
  -- | card_present: 
  , setupAttemptPaymentMethodDetailsCardPresent :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsCardPresent)
  -- | cashapp: 
  , setupAttemptPaymentMethodDetailsCashapp :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsCashapp)
  -- | ideal: 
  , setupAttemptPaymentMethodDetailsIdeal :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsIdeal)
  -- | klarna: 
  , setupAttemptPaymentMethodDetailsKlarna :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsKlarna)
  -- | link: 
  , setupAttemptPaymentMethodDetailsLink :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsLink)
  -- | paypal: 
  , setupAttemptPaymentMethodDetailsPaypal :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsPaypal)
  -- | sepa_debit: 
  , setupAttemptPaymentMethodDetailsSepaDebit :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsSepaDebit)
  -- | sofort: 
  , setupAttemptPaymentMethodDetailsSofort :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsSofort)
  -- | type: The type of the payment method used in the SetupIntent (e.g., \`card\`). An additional hash is included on \`payment_method_details\` with a name matching this value. It contains confirmation-specific information for the payment method.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , setupAttemptPaymentMethodDetailsType :: Data.Text.Internal.Text
  -- | us_bank_account: 
  , setupAttemptPaymentMethodDetailsUsBankAccount :: (GHC.Maybe.Maybe SetupAttemptPaymentMethodDetailsUsBankAccount)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON SetupAttemptPaymentMethodDetails
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("acss_debit" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsAcssDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("au_becs_debit" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsAuBecsDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bacs_debit" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsBacsDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bancontact" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsBancontact obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("boleto" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsBoleto obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsCard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card_present" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsCardPresent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cashapp" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsCashapp obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ideal" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsIdeal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("klarna" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsKlarna obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("link" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsLink obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("paypal" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsPaypal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sepa_debit" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsSepaDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sofort" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsSofort obj) : ["type" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsUsBankAccount obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("acss_debit" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsAcssDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("au_becs_debit" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsAuBecsDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bacs_debit" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsBacsDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("bancontact" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsBancontact obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("boleto" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsBoleto obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsCard obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card_present" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsCardPresent obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("cashapp" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsCashapp obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("ideal" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsIdeal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("klarna" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsKlarna obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("link" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsLink obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("paypal" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsPaypal obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sepa_debit" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsSepaDebit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("sofort" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsSofort obj) : ["type" Data.Aeson.Types.ToJSON..= setupAttemptPaymentMethodDetailsType obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (setupAttemptPaymentMethodDetailsUsBankAccount obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON SetupAttemptPaymentMethodDetails
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "SetupAttemptPaymentMethodDetails" (\obj -> (((((((((((((((GHC.Base.pure SetupAttemptPaymentMethodDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "acss_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "au_becs_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bacs_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "bancontact")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "boleto")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "card")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "card_present")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "cashapp")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "ideal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "klarna")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "link")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "paypal")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sepa_debit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "sofort")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "us_bank_account"))}
-- | Create a new 'SetupAttemptPaymentMethodDetails' with all required fields.
mkSetupAttemptPaymentMethodDetails :: Data.Text.Internal.Text -- ^ 'setupAttemptPaymentMethodDetailsType'
  -> SetupAttemptPaymentMethodDetails
mkSetupAttemptPaymentMethodDetails setupAttemptPaymentMethodDetailsType = SetupAttemptPaymentMethodDetails{setupAttemptPaymentMethodDetailsAcssDebit = GHC.Maybe.Nothing,
                                                                                                           setupAttemptPaymentMethodDetailsAuBecsDebit = GHC.Maybe.Nothing,
                                                                                                           setupAttemptPaymentMethodDetailsBacsDebit = GHC.Maybe.Nothing,
                                                                                                           setupAttemptPaymentMethodDetailsBancontact = GHC.Maybe.Nothing,
                                                                                                           setupAttemptPaymentMethodDetailsBoleto = GHC.Maybe.Nothing,
                                                                                                           setupAttemptPaymentMethodDetailsCard = GHC.Maybe.Nothing,
                                                                                                           setupAttemptPaymentMethodDetailsCardPresent = GHC.Maybe.Nothing,
                                                                                                           setupAttemptPaymentMethodDetailsCashapp = GHC.Maybe.Nothing,
                                                                                                           setupAttemptPaymentMethodDetailsIdeal = GHC.Maybe.Nothing,
                                                                                                           setupAttemptPaymentMethodDetailsKlarna = GHC.Maybe.Nothing,
                                                                                                           setupAttemptPaymentMethodDetailsLink = GHC.Maybe.Nothing,
                                                                                                           setupAttemptPaymentMethodDetailsPaypal = GHC.Maybe.Nothing,
                                                                                                           setupAttemptPaymentMethodDetailsSepaDebit = GHC.Maybe.Nothing,
                                                                                                           setupAttemptPaymentMethodDetailsSofort = GHC.Maybe.Nothing,
                                                                                                           setupAttemptPaymentMethodDetailsType = setupAttemptPaymentMethodDetailsType,
                                                                                                           setupAttemptPaymentMethodDetailsUsBankAccount = GHC.Maybe.Nothing}
