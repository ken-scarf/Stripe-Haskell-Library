{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema GelatoIdNumberReport
module StripeAPI.Types.GelatoIdNumberReport where

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
import {-# SOURCE #-} StripeAPI.Types.GelatoDataIdNumberReportDate
import {-# SOURCE #-} StripeAPI.Types.GelatoIdNumberReportError
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.gelato_id_number_report@ in the specification.
--
-- Result from an id_number check
data GelatoIdNumberReport = GelatoIdNumberReport
  { -- | dob: Date of birth.
    gelatoIdNumberReportDob :: (GHC.Maybe.Maybe GelatoIdNumberReportDob'),
    -- | error: Details on the verification error. Present when status is \`unverified\`.
    gelatoIdNumberReportError :: (GHC.Maybe.Maybe GelatoIdNumberReportError'),
    -- | first_name: First name.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    gelatoIdNumberReportFirstName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | id_number: ID number.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    gelatoIdNumberReportIdNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | id_number_type: Type of ID number.
    gelatoIdNumberReportIdNumberType :: (GHC.Maybe.Maybe GelatoIdNumberReportIdNumberType'),
    -- | last_name: Last name.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    gelatoIdNumberReportLastName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | status: Status of this \`id_number\` check.
    gelatoIdNumberReportStatus :: GelatoIdNumberReportStatus'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GelatoIdNumberReport where
  toJSON obj = Data.Aeson.Types.Internal.object ("dob" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportDob obj : "error" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportError obj : "first_name" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportFirstName obj : "id_number" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportIdNumber obj : "id_number_type" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportIdNumberType obj : "last_name" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportLastName obj : "status" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportStatus obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("dob" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportDob obj) GHC.Base.<> (("error" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportError obj) GHC.Base.<> (("first_name" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportFirstName obj) GHC.Base.<> (("id_number" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportIdNumber obj) GHC.Base.<> (("id_number_type" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportIdNumberType obj) GHC.Base.<> (("last_name" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportLastName obj) GHC.Base.<> ("status" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportStatus obj)))))))

instance Data.Aeson.Types.FromJSON.FromJSON GelatoIdNumberReport where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GelatoIdNumberReport" (\obj -> ((((((GHC.Base.pure GelatoIdNumberReport GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dob")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id_number_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))

-- | Create a new 'GelatoIdNumberReport' with all required fields.
mkGelatoIdNumberReport ::
  -- | 'gelatoIdNumberReportStatus'
  GelatoIdNumberReportStatus' ->
  GelatoIdNumberReport
mkGelatoIdNumberReport gelatoIdNumberReportStatus =
  GelatoIdNumberReport
    { gelatoIdNumberReportDob = GHC.Maybe.Nothing,
      gelatoIdNumberReportError = GHC.Maybe.Nothing,
      gelatoIdNumberReportFirstName = GHC.Maybe.Nothing,
      gelatoIdNumberReportIdNumber = GHC.Maybe.Nothing,
      gelatoIdNumberReportIdNumberType = GHC.Maybe.Nothing,
      gelatoIdNumberReportLastName = GHC.Maybe.Nothing,
      gelatoIdNumberReportStatus = gelatoIdNumberReportStatus
    }

-- | Defines the object schema located at @components.schemas.gelato_id_number_report.properties.dob.anyOf@ in the specification.
--
-- Date of birth.
data GelatoIdNumberReportDob' = GelatoIdNumberReportDob'
  { -- | day: Numerical day between 1 and 31.
    gelatoIdNumberReportDob'Day :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | month: Numerical month between 1 and 12.
    gelatoIdNumberReportDob'Month :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | year: The four-digit year.
    gelatoIdNumberReportDob'Year :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GelatoIdNumberReportDob' where
  toJSON obj = Data.Aeson.Types.Internal.object ("day" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportDob'Day obj : "month" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportDob'Month obj : "year" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportDob'Year obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("day" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportDob'Day obj) GHC.Base.<> (("month" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportDob'Month obj) GHC.Base.<> ("year" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportDob'Year obj)))

instance Data.Aeson.Types.FromJSON.FromJSON GelatoIdNumberReportDob' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GelatoIdNumberReportDob'" (\obj -> ((GHC.Base.pure GelatoIdNumberReportDob' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "day")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "year"))

-- | Create a new 'GelatoIdNumberReportDob'' with all required fields.
mkGelatoIdNumberReportDob' :: GelatoIdNumberReportDob'
mkGelatoIdNumberReportDob' =
  GelatoIdNumberReportDob'
    { gelatoIdNumberReportDob'Day = GHC.Maybe.Nothing,
      gelatoIdNumberReportDob'Month = GHC.Maybe.Nothing,
      gelatoIdNumberReportDob'Year = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.gelato_id_number_report.properties.error.anyOf@ in the specification.
--
-- Details on the verification error. Present when status is \\\`unverified\\\`.
data GelatoIdNumberReportError' = GelatoIdNumberReportError'
  { -- | code: A short machine-readable string giving the reason for the verification failure.
    gelatoIdNumberReportError'Code :: (GHC.Maybe.Maybe GelatoIdNumberReportError'Code'),
    -- | reason: A human-readable message giving the reason for the failure. These messages can be shown to your users.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    gelatoIdNumberReportError'Reason :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GelatoIdNumberReportError' where
  toJSON obj = Data.Aeson.Types.Internal.object ("code" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportError'Code obj : "reason" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportError'Reason obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("code" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportError'Code obj) GHC.Base.<> ("reason" Data.Aeson.Types.ToJSON..= gelatoIdNumberReportError'Reason obj))

instance Data.Aeson.Types.FromJSON.FromJSON GelatoIdNumberReportError' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GelatoIdNumberReportError'" (\obj -> (GHC.Base.pure GelatoIdNumberReportError' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reason"))

-- | Create a new 'GelatoIdNumberReportError'' with all required fields.
mkGelatoIdNumberReportError' :: GelatoIdNumberReportError'
mkGelatoIdNumberReportError' =
  GelatoIdNumberReportError'
    { gelatoIdNumberReportError'Code = GHC.Maybe.Nothing,
      gelatoIdNumberReportError'Reason = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.gelato_id_number_report.properties.error.anyOf.properties.code@ in the specification.
--
-- A short machine-readable string giving the reason for the verification failure.
data GelatoIdNumberReportError'Code'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GelatoIdNumberReportError'Code'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GelatoIdNumberReportError'Code'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"id_number_insufficient_document_data"@
    GelatoIdNumberReportError'Code'EnumIdNumberInsufficientDocumentData
  | -- | Represents the JSON value @"id_number_mismatch"@
    GelatoIdNumberReportError'Code'EnumIdNumberMismatch
  | -- | Represents the JSON value @"id_number_unverified_other"@
    GelatoIdNumberReportError'Code'EnumIdNumberUnverifiedOther
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GelatoIdNumberReportError'Code' where
  toJSON (GelatoIdNumberReportError'Code'Other val) = val
  toJSON (GelatoIdNumberReportError'Code'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GelatoIdNumberReportError'Code'EnumIdNumberInsufficientDocumentData) = "id_number_insufficient_document_data"
  toJSON (GelatoIdNumberReportError'Code'EnumIdNumberMismatch) = "id_number_mismatch"
  toJSON (GelatoIdNumberReportError'Code'EnumIdNumberUnverifiedOther) = "id_number_unverified_other"

instance Data.Aeson.Types.FromJSON.FromJSON GelatoIdNumberReportError'Code' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "id_number_insufficient_document_data" -> GelatoIdNumberReportError'Code'EnumIdNumberInsufficientDocumentData
            | val GHC.Classes.== "id_number_mismatch" -> GelatoIdNumberReportError'Code'EnumIdNumberMismatch
            | val GHC.Classes.== "id_number_unverified_other" -> GelatoIdNumberReportError'Code'EnumIdNumberUnverifiedOther
            | GHC.Base.otherwise -> GelatoIdNumberReportError'Code'Other val
      )

-- | Defines the enum schema located at @components.schemas.gelato_id_number_report.properties.id_number_type@ in the specification.
--
-- Type of ID number.
data GelatoIdNumberReportIdNumberType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GelatoIdNumberReportIdNumberType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GelatoIdNumberReportIdNumberType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"br_cpf"@
    GelatoIdNumberReportIdNumberType'EnumBrCpf
  | -- | Represents the JSON value @"sg_nric"@
    GelatoIdNumberReportIdNumberType'EnumSgNric
  | -- | Represents the JSON value @"us_ssn"@
    GelatoIdNumberReportIdNumberType'EnumUsSsn
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GelatoIdNumberReportIdNumberType' where
  toJSON (GelatoIdNumberReportIdNumberType'Other val) = val
  toJSON (GelatoIdNumberReportIdNumberType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GelatoIdNumberReportIdNumberType'EnumBrCpf) = "br_cpf"
  toJSON (GelatoIdNumberReportIdNumberType'EnumSgNric) = "sg_nric"
  toJSON (GelatoIdNumberReportIdNumberType'EnumUsSsn) = "us_ssn"

instance Data.Aeson.Types.FromJSON.FromJSON GelatoIdNumberReportIdNumberType' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "br_cpf" -> GelatoIdNumberReportIdNumberType'EnumBrCpf
            | val GHC.Classes.== "sg_nric" -> GelatoIdNumberReportIdNumberType'EnumSgNric
            | val GHC.Classes.== "us_ssn" -> GelatoIdNumberReportIdNumberType'EnumUsSsn
            | GHC.Base.otherwise -> GelatoIdNumberReportIdNumberType'Other val
      )

-- | Defines the enum schema located at @components.schemas.gelato_id_number_report.properties.status@ in the specification.
--
-- Status of this \`id_number\` check.
data GelatoIdNumberReportStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GelatoIdNumberReportStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GelatoIdNumberReportStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"unverified"@
    GelatoIdNumberReportStatus'EnumUnverified
  | -- | Represents the JSON value @"verified"@
    GelatoIdNumberReportStatus'EnumVerified
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GelatoIdNumberReportStatus' where
  toJSON (GelatoIdNumberReportStatus'Other val) = val
  toJSON (GelatoIdNumberReportStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GelatoIdNumberReportStatus'EnumUnverified) = "unverified"
  toJSON (GelatoIdNumberReportStatus'EnumVerified) = "verified"

instance Data.Aeson.Types.FromJSON.FromJSON GelatoIdNumberReportStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if
            | val GHC.Classes.== "unverified" -> GelatoIdNumberReportStatus'EnumUnverified
            | val GHC.Classes.== "verified" -> GelatoIdNumberReportStatus'EnumVerified
            | GHC.Base.otherwise -> GelatoIdNumberReportStatus'Other val
      )