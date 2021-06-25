{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema PaymentMethodP24
module StripeAPI.Types.PaymentMethodP24 where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.payment_method_p24@ in the specification.
data PaymentMethodP24 = PaymentMethodP24
  { -- | bank: The customer\'s bank, if provided.
    paymentMethodP24Bank :: (GHC.Maybe.Maybe PaymentMethodP24Bank')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodP24 where
  toJSON obj = Data.Aeson.Types.Internal.object ("bank" Data.Aeson.Types.ToJSON..= paymentMethodP24Bank obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("bank" Data.Aeson.Types.ToJSON..= paymentMethodP24Bank obj)

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodP24 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodP24" (\obj -> GHC.Base.pure PaymentMethodP24 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "bank"))

-- | Create a new 'PaymentMethodP24' with all required fields.
mkPaymentMethodP24 :: PaymentMethodP24
mkPaymentMethodP24 = PaymentMethodP24 {paymentMethodP24Bank = GHC.Maybe.Nothing}

-- | Defines the enum schema located at @components.schemas.payment_method_p24.properties.bank@ in the specification.
--
-- The customer\'s bank, if provided.
data PaymentMethodP24Bank'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PaymentMethodP24Bank'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PaymentMethodP24Bank'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"alior_bank"@
    PaymentMethodP24Bank'EnumAliorBank
  | -- | Represents the JSON value @"bank_millennium"@
    PaymentMethodP24Bank'EnumBankMillennium
  | -- | Represents the JSON value @"bank_nowy_bfg_sa"@
    PaymentMethodP24Bank'EnumBankNowyBfgSa
  | -- | Represents the JSON value @"bank_pekao_sa"@
    PaymentMethodP24Bank'EnumBankPekaoSa
  | -- | Represents the JSON value @"banki_spbdzielcze"@
    PaymentMethodP24Bank'EnumBankiSpbdzielcze
  | -- | Represents the JSON value @"blik"@
    PaymentMethodP24Bank'EnumBlik
  | -- | Represents the JSON value @"bnp_paribas"@
    PaymentMethodP24Bank'EnumBnpParibas
  | -- | Represents the JSON value @"boz"@
    PaymentMethodP24Bank'EnumBoz
  | -- | Represents the JSON value @"citi_handlowy"@
    PaymentMethodP24Bank'EnumCitiHandlowy
  | -- | Represents the JSON value @"credit_agricole"@
    PaymentMethodP24Bank'EnumCreditAgricole
  | -- | Represents the JSON value @"envelobank"@
    PaymentMethodP24Bank'EnumEnvelobank
  | -- | Represents the JSON value @"etransfer_pocztowy24"@
    PaymentMethodP24Bank'EnumEtransferPocztowy24
  | -- | Represents the JSON value @"getin_bank"@
    PaymentMethodP24Bank'EnumGetinBank
  | -- | Represents the JSON value @"ideabank"@
    PaymentMethodP24Bank'EnumIdeabank
  | -- | Represents the JSON value @"ing"@
    PaymentMethodP24Bank'EnumIng
  | -- | Represents the JSON value @"inteligo"@
    PaymentMethodP24Bank'EnumInteligo
  | -- | Represents the JSON value @"mbank_mtransfer"@
    PaymentMethodP24Bank'EnumMbankMtransfer
  | -- | Represents the JSON value @"nest_przelew"@
    PaymentMethodP24Bank'EnumNestPrzelew
  | -- | Represents the JSON value @"noble_pay"@
    PaymentMethodP24Bank'EnumNoblePay
  | -- | Represents the JSON value @"pbac_z_ipko"@
    PaymentMethodP24Bank'EnumPbacZIpko
  | -- | Represents the JSON value @"plus_bank"@
    PaymentMethodP24Bank'EnumPlusBank
  | -- | Represents the JSON value @"santander_przelew24"@
    PaymentMethodP24Bank'EnumSantanderPrzelew24
  | -- | Represents the JSON value @"tmobile_usbugi_bankowe"@
    PaymentMethodP24Bank'EnumTmobileUsbugiBankowe
  | -- | Represents the JSON value @"toyota_bank"@
    PaymentMethodP24Bank'EnumToyotaBank
  | -- | Represents the JSON value @"volkswagen_bank"@
    PaymentMethodP24Bank'EnumVolkswagenBank
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodP24Bank' where
  toJSON (PaymentMethodP24Bank'Other val) = val
  toJSON (PaymentMethodP24Bank'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PaymentMethodP24Bank'EnumAliorBank) = "alior_bank"
  toJSON (PaymentMethodP24Bank'EnumBankMillennium) = "bank_millennium"
  toJSON (PaymentMethodP24Bank'EnumBankNowyBfgSa) = "bank_nowy_bfg_sa"
  toJSON (PaymentMethodP24Bank'EnumBankPekaoSa) = "bank_pekao_sa"
  toJSON (PaymentMethodP24Bank'EnumBankiSpbdzielcze) = "banki_spbdzielcze"
  toJSON (PaymentMethodP24Bank'EnumBlik) = "blik"
  toJSON (PaymentMethodP24Bank'EnumBnpParibas) = "bnp_paribas"
  toJSON (PaymentMethodP24Bank'EnumBoz) = "boz"
  toJSON (PaymentMethodP24Bank'EnumCitiHandlowy) = "citi_handlowy"
  toJSON (PaymentMethodP24Bank'EnumCreditAgricole) = "credit_agricole"
  toJSON (PaymentMethodP24Bank'EnumEnvelobank) = "envelobank"
  toJSON (PaymentMethodP24Bank'EnumEtransferPocztowy24) = "etransfer_pocztowy24"
  toJSON (PaymentMethodP24Bank'EnumGetinBank) = "getin_bank"
  toJSON (PaymentMethodP24Bank'EnumIdeabank) = "ideabank"
  toJSON (PaymentMethodP24Bank'EnumIng) = "ing"
  toJSON (PaymentMethodP24Bank'EnumInteligo) = "inteligo"
  toJSON (PaymentMethodP24Bank'EnumMbankMtransfer) = "mbank_mtransfer"
  toJSON (PaymentMethodP24Bank'EnumNestPrzelew) = "nest_przelew"
  toJSON (PaymentMethodP24Bank'EnumNoblePay) = "noble_pay"
  toJSON (PaymentMethodP24Bank'EnumPbacZIpko) = "pbac_z_ipko"
  toJSON (PaymentMethodP24Bank'EnumPlusBank) = "plus_bank"
  toJSON (PaymentMethodP24Bank'EnumSantanderPrzelew24) = "santander_przelew24"
  toJSON (PaymentMethodP24Bank'EnumTmobileUsbugiBankowe) = "tmobile_usbugi_bankowe"
  toJSON (PaymentMethodP24Bank'EnumToyotaBank) = "toyota_bank"
  toJSON (PaymentMethodP24Bank'EnumVolkswagenBank) = "volkswagen_bank"

instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodP24Bank' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "alior_bank" -> PaymentMethodP24Bank'EnumAliorBank
            | val GHC.Classes.== "bank_millennium" -> PaymentMethodP24Bank'EnumBankMillennium
            | val GHC.Classes.== "bank_nowy_bfg_sa" -> PaymentMethodP24Bank'EnumBankNowyBfgSa
            | val GHC.Classes.== "bank_pekao_sa" -> PaymentMethodP24Bank'EnumBankPekaoSa
            | val GHC.Classes.== "banki_spbdzielcze" -> PaymentMethodP24Bank'EnumBankiSpbdzielcze
            | val GHC.Classes.== "blik" -> PaymentMethodP24Bank'EnumBlik
            | val GHC.Classes.== "bnp_paribas" -> PaymentMethodP24Bank'EnumBnpParibas
            | val GHC.Classes.== "boz" -> PaymentMethodP24Bank'EnumBoz
            | val GHC.Classes.== "citi_handlowy" -> PaymentMethodP24Bank'EnumCitiHandlowy
            | val GHC.Classes.== "credit_agricole" -> PaymentMethodP24Bank'EnumCreditAgricole
            | val GHC.Classes.== "envelobank" -> PaymentMethodP24Bank'EnumEnvelobank
            | val GHC.Classes.== "etransfer_pocztowy24" -> PaymentMethodP24Bank'EnumEtransferPocztowy24
            | val GHC.Classes.== "getin_bank" -> PaymentMethodP24Bank'EnumGetinBank
            | val GHC.Classes.== "ideabank" -> PaymentMethodP24Bank'EnumIdeabank
            | val GHC.Classes.== "ing" -> PaymentMethodP24Bank'EnumIng
            | val GHC.Classes.== "inteligo" -> PaymentMethodP24Bank'EnumInteligo
            | val GHC.Classes.== "mbank_mtransfer" -> PaymentMethodP24Bank'EnumMbankMtransfer
            | val GHC.Classes.== "nest_przelew" -> PaymentMethodP24Bank'EnumNestPrzelew
            | val GHC.Classes.== "noble_pay" -> PaymentMethodP24Bank'EnumNoblePay
            | val GHC.Classes.== "pbac_z_ipko" -> PaymentMethodP24Bank'EnumPbacZIpko
            | val GHC.Classes.== "plus_bank" -> PaymentMethodP24Bank'EnumPlusBank
            | val GHC.Classes.== "santander_przelew24" -> PaymentMethodP24Bank'EnumSantanderPrzelew24
            | val GHC.Classes.== "tmobile_usbugi_bankowe" -> PaymentMethodP24Bank'EnumTmobileUsbugiBankowe
            | val GHC.Classes.== "toyota_bank" -> PaymentMethodP24Bank'EnumToyotaBank
            | val GHC.Classes.== "volkswagen_bank" -> PaymentMethodP24Bank'EnumVolkswagenBank
            | GHC.Base.otherwise -> PaymentMethodP24Bank'Other val
      )