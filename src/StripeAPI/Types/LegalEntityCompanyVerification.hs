{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema LegalEntityCompanyVerification
module StripeAPI.Types.LegalEntityCompanyVerification where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
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
import {-# SOURCE #-} StripeAPI.Types.LegalEntityCompanyVerificationDocument
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.legal_entity_company_verification@ in the specification.
data LegalEntityCompanyVerification
  = LegalEntityCompanyVerification
      { -- | document:
        legalEntityCompanyVerificationDocument :: LegalEntityCompanyVerificationDocument
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON LegalEntityCompanyVerification where
  toJSON obj = Data.Aeson.Types.Internal.object ("document" Data.Aeson.Types.ToJSON..= legalEntityCompanyVerificationDocument obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs ("document" Data.Aeson.Types.ToJSON..= legalEntityCompanyVerificationDocument obj)

instance Data.Aeson.Types.FromJSON.FromJSON LegalEntityCompanyVerification where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "LegalEntityCompanyVerification" (\obj -> GHC.Base.pure LegalEntityCompanyVerification GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "document"))

-- | Create a new 'LegalEntityCompanyVerification' with all required fields.
mkLegalEntityCompanyVerification ::
  -- | 'legalEntityCompanyVerificationDocument'
  LegalEntityCompanyVerificationDocument ->
  LegalEntityCompanyVerification
mkLegalEntityCompanyVerification legalEntityCompanyVerificationDocument = LegalEntityCompanyVerification {legalEntityCompanyVerificationDocument = legalEntityCompanyVerificationDocument}