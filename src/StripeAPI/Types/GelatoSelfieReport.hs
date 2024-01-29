{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema GelatoSelfieReport
module StripeAPI.Types.GelatoSelfieReport where

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
import {-# SOURCE #-} StripeAPI.Types.GelatoSelfieReportError
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.gelato_selfie_report@ in the specification.
--
-- Result from a selfie check
data GelatoSelfieReport = GelatoSelfieReport
  { -- | document: ID of the [File](https:\/\/stripe.com\/docs\/api\/files) holding the image of the identity document used in this check.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    gelatoSelfieReportDocument :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | error: Details on the verification error. Present when status is \`unverified\`.
    gelatoSelfieReportError :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GelatoSelfieReportError'NonNullable)),
    -- | selfie: ID of the [File](https:\/\/stripe.com\/docs\/api\/files) holding the image of the selfie used in this check.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    gelatoSelfieReportSelfie :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text)),
    -- | status: Status of this \`selfie\` check.
    gelatoSelfieReportStatus :: GelatoSelfieReportStatus'
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GelatoSelfieReport where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("document" Data.Aeson.Types.ToJSON..=)) (gelatoSelfieReportDocument obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("error" Data.Aeson.Types.ToJSON..=)) (gelatoSelfieReportError obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("selfie" Data.Aeson.Types.ToJSON..=)) (gelatoSelfieReportSelfie obj) : ["status" Data.Aeson.Types.ToJSON..= gelatoSelfieReportStatus obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("document" Data.Aeson.Types.ToJSON..=)) (gelatoSelfieReportDocument obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("error" Data.Aeson.Types.ToJSON..=)) (gelatoSelfieReportError obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("selfie" Data.Aeson.Types.ToJSON..=)) (gelatoSelfieReportSelfie obj) : ["status" Data.Aeson.Types.ToJSON..= gelatoSelfieReportStatus obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GelatoSelfieReport where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GelatoSelfieReport" (\obj -> (((GHC.Base.pure GelatoSelfieReport GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "error")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "selfie")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status"))

-- | Create a new 'GelatoSelfieReport' with all required fields.
mkGelatoSelfieReport ::
  -- | 'gelatoSelfieReportStatus'
  GelatoSelfieReportStatus' ->
  GelatoSelfieReport
mkGelatoSelfieReport gelatoSelfieReportStatus =
  GelatoSelfieReport
    { gelatoSelfieReportDocument = GHC.Maybe.Nothing,
      gelatoSelfieReportError = GHC.Maybe.Nothing,
      gelatoSelfieReportSelfie = GHC.Maybe.Nothing,
      gelatoSelfieReportStatus = gelatoSelfieReportStatus
    }

-- | Defines the object schema located at @components.schemas.gelato_selfie_report.properties.error.anyOf@ in the specification.
--
-- Details on the verification error. Present when status is \\\`unverified\\\`.
data GelatoSelfieReportError'NonNullable = GelatoSelfieReportError'NonNullable
  { -- | code: A short machine-readable string giving the reason for the verification failure.
    gelatoSelfieReportError'NonNullableCode :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GelatoSelfieReportError'NonNullableCode'NonNullable)),
    -- | reason: A human-readable message giving the reason for the failure. These messages can be shown to your users.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    gelatoSelfieReportError'NonNullableReason :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GelatoSelfieReportError'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (gelatoSelfieReportError'NonNullableCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason" Data.Aeson.Types.ToJSON..=)) (gelatoSelfieReportError'NonNullableReason obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("code" Data.Aeson.Types.ToJSON..=)) (gelatoSelfieReportError'NonNullableCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reason" Data.Aeson.Types.ToJSON..=)) (gelatoSelfieReportError'NonNullableReason obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GelatoSelfieReportError'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GelatoSelfieReportError'NonNullable" (\obj -> (GHC.Base.pure GelatoSelfieReportError'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reason"))

-- | Create a new 'GelatoSelfieReportError'NonNullable' with all required fields.
mkGelatoSelfieReportError'NonNullable :: GelatoSelfieReportError'NonNullable
mkGelatoSelfieReportError'NonNullable =
  GelatoSelfieReportError'NonNullable
    { gelatoSelfieReportError'NonNullableCode = GHC.Maybe.Nothing,
      gelatoSelfieReportError'NonNullableReason = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @components.schemas.gelato_selfie_report.properties.error.anyOf.properties.code@ in the specification.
--
-- A short machine-readable string giving the reason for the verification failure.
data GelatoSelfieReportError'NonNullableCode'NonNullable
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GelatoSelfieReportError'NonNullableCode'NonNullableOther Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GelatoSelfieReportError'NonNullableCode'NonNullableTyped Data.Text.Internal.Text
  | -- | Represents the JSON value @"selfie_document_missing_photo"@
    GelatoSelfieReportError'NonNullableCode'NonNullableEnumSelfieDocumentMissingPhoto
  | -- | Represents the JSON value @"selfie_face_mismatch"@
    GelatoSelfieReportError'NonNullableCode'NonNullableEnumSelfieFaceMismatch
  | -- | Represents the JSON value @"selfie_manipulated"@
    GelatoSelfieReportError'NonNullableCode'NonNullableEnumSelfieManipulated
  | -- | Represents the JSON value @"selfie_unverified_other"@
    GelatoSelfieReportError'NonNullableCode'NonNullableEnumSelfieUnverifiedOther
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GelatoSelfieReportError'NonNullableCode'NonNullable where
  toJSON (GelatoSelfieReportError'NonNullableCode'NonNullableOther val) = val
  toJSON (GelatoSelfieReportError'NonNullableCode'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GelatoSelfieReportError'NonNullableCode'NonNullableEnumSelfieDocumentMissingPhoto) = "selfie_document_missing_photo"
  toJSON (GelatoSelfieReportError'NonNullableCode'NonNullableEnumSelfieFaceMismatch) = "selfie_face_mismatch"
  toJSON (GelatoSelfieReportError'NonNullableCode'NonNullableEnumSelfieManipulated) = "selfie_manipulated"
  toJSON (GelatoSelfieReportError'NonNullableCode'NonNullableEnumSelfieUnverifiedOther) = "selfie_unverified_other"

instance Data.Aeson.Types.FromJSON.FromJSON GelatoSelfieReportError'NonNullableCode'NonNullable where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "selfie_document_missing_photo" -> GelatoSelfieReportError'NonNullableCode'NonNullableEnumSelfieDocumentMissingPhoto
          | val GHC.Classes.== "selfie_face_mismatch" -> GelatoSelfieReportError'NonNullableCode'NonNullableEnumSelfieFaceMismatch
          | val GHC.Classes.== "selfie_manipulated" -> GelatoSelfieReportError'NonNullableCode'NonNullableEnumSelfieManipulated
          | val GHC.Classes.== "selfie_unverified_other" -> GelatoSelfieReportError'NonNullableCode'NonNullableEnumSelfieUnverifiedOther
          | GHC.Base.otherwise -> GelatoSelfieReportError'NonNullableCode'NonNullableOther val
      )

-- | Defines the enum schema located at @components.schemas.gelato_selfie_report.properties.status@ in the specification.
--
-- Status of this \`selfie\` check.
data GelatoSelfieReportStatus'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    GelatoSelfieReportStatus'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    GelatoSelfieReportStatus'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"unverified"@
    GelatoSelfieReportStatus'EnumUnverified
  | -- | Represents the JSON value @"verified"@
    GelatoSelfieReportStatus'EnumVerified
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GelatoSelfieReportStatus' where
  toJSON (GelatoSelfieReportStatus'Other val) = val
  toJSON (GelatoSelfieReportStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (GelatoSelfieReportStatus'EnumUnverified) = "unverified"
  toJSON (GelatoSelfieReportStatus'EnumVerified) = "verified"

instance Data.Aeson.Types.FromJSON.FromJSON GelatoSelfieReportStatus' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "unverified" -> GelatoSelfieReportStatus'EnumUnverified
          | val GHC.Classes.== "verified" -> GelatoSelfieReportStatus'EnumVerified
          | GHC.Base.otherwise -> GelatoSelfieReportStatus'Other val
      )
