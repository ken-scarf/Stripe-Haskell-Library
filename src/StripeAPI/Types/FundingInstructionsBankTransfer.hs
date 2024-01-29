{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema FundingInstructionsBankTransfer
module StripeAPI.Types.FundingInstructionsBankTransfer where

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
import {-# SOURCE #-} StripeAPI.Types.FundingInstructionsBankTransferFinancialAddress
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.funding_instructions_bank_transfer@ in the specification.
data FundingInstructionsBankTransfer = FundingInstructionsBankTransfer
  { -- | country: The country of the bank account to fund
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    fundingInstructionsBankTransferCountry :: Data.Text.Internal.Text,
    -- | financial_addresses: A list of financial addresses that can be used to fund a particular balance
    fundingInstructionsBankTransferFinancialAddresses :: ([FundingInstructionsBankTransferFinancialAddress]),
    -- | type: The bank_transfer type
    fundingInstructionsBankTransferType :: FundingInstructionsBankTransferType'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON FundingInstructionsBankTransfer where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["country" Data.Aeson.Types.ToJSON..= fundingInstructionsBankTransferCountry obj] : ["financial_addresses" Data.Aeson.Types.ToJSON..= fundingInstructionsBankTransferFinancialAddresses obj] : ["type" Data.Aeson.Types.ToJSON..= fundingInstructionsBankTransferType obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["country" Data.Aeson.Types.ToJSON..= fundingInstructionsBankTransferCountry obj] : ["financial_addresses" Data.Aeson.Types.ToJSON..= fundingInstructionsBankTransferFinancialAddresses obj] : ["type" Data.Aeson.Types.ToJSON..= fundingInstructionsBankTransferType obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON FundingInstructionsBankTransfer where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "FundingInstructionsBankTransfer" (\obj -> ((GHC.Base.pure FundingInstructionsBankTransfer GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "financial_addresses")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))

-- | Create a new 'FundingInstructionsBankTransfer' with all required fields.
mkFundingInstructionsBankTransfer ::
  -- | 'fundingInstructionsBankTransferCountry'
  Data.Text.Internal.Text ->
  -- | 'fundingInstructionsBankTransferFinancialAddresses'
  [FundingInstructionsBankTransferFinancialAddress] ->
  -- | 'fundingInstructionsBankTransferType'
  FundingInstructionsBankTransferType' ->
  FundingInstructionsBankTransfer
mkFundingInstructionsBankTransfer fundingInstructionsBankTransferCountry fundingInstructionsBankTransferFinancialAddresses fundingInstructionsBankTransferType =
  FundingInstructionsBankTransfer
    { fundingInstructionsBankTransferCountry = fundingInstructionsBankTransferCountry,
      fundingInstructionsBankTransferFinancialAddresses = fundingInstructionsBankTransferFinancialAddresses,
      fundingInstructionsBankTransferType = fundingInstructionsBankTransferType
    }

-- | Defines the enum schema located at @components.schemas.funding_instructions_bank_transfer.properties.type@ in the specification.
--
-- The bank_transfer type
data FundingInstructionsBankTransferType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    FundingInstructionsBankTransferType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    FundingInstructionsBankTransferType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"eu_bank_transfer"@
    FundingInstructionsBankTransferType'EnumEuBankTransfer
  | -- | Represents the JSON value @"jp_bank_transfer"@
    FundingInstructionsBankTransferType'EnumJpBankTransfer
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON FundingInstructionsBankTransferType' where
  toJSON (FundingInstructionsBankTransferType'Other val) = val
  toJSON (FundingInstructionsBankTransferType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (FundingInstructionsBankTransferType'EnumEuBankTransfer) = "eu_bank_transfer"
  toJSON (FundingInstructionsBankTransferType'EnumJpBankTransfer) = "jp_bank_transfer"

instance Data.Aeson.Types.FromJSON.FromJSON FundingInstructionsBankTransferType' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "eu_bank_transfer" -> FundingInstructionsBankTransferType'EnumEuBankTransfer
          | val GHC.Classes.== "jp_bank_transfer" -> FundingInstructionsBankTransferType'EnumJpBankTransfer
          | GHC.Base.otherwise -> FundingInstructionsBankTransferType'Other val
      )
