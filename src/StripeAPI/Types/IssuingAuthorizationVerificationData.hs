{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Types.IssuingAuthorizationVerificationData where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Data.Aeson
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
import qualified GHC.Generics
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common

data IssuingAuthorizationVerificationData
    = IssuingAuthorizationVerificationData {issuingAuthorizationVerificationDataAddressLine1Check :: IssuingAuthorizationVerificationDataAddressLine1Check',
                                            issuingAuthorizationVerificationDataAddressZipCheck :: IssuingAuthorizationVerificationDataAddressZipCheck',
                                            issuingAuthorizationVerificationDataAuthentication :: IssuingAuthorizationVerificationDataAuthentication',
                                            issuingAuthorizationVerificationDataCvcCheck :: IssuingAuthorizationVerificationDataCvcCheck'}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data IssuingAuthorizationVerificationDataAddressLine1Check'
    = IssuingAuthorizationVerificationDataAddressLine1Check'EnumOther Data.Aeson.Types.Internal.Value
    | IssuingAuthorizationVerificationDataAddressLine1Check'EnumTyped GHC.Base.String
    | IssuingAuthorizationVerificationDataAddressLine1Check'EnumStringMatch
    | IssuingAuthorizationVerificationDataAddressLine1Check'EnumStringMismatch
    | IssuingAuthorizationVerificationDataAddressLine1Check'EnumStringNotProvided
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON IssuingAuthorizationVerificationDataAddressLine1Check'
    where toJSON (IssuingAuthorizationVerificationDataAddressLine1Check'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingAuthorizationVerificationDataAddressLine1Check'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingAuthorizationVerificationDataAddressLine1Check'EnumStringMatch) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "match"
          toJSON (IssuingAuthorizationVerificationDataAddressLine1Check'EnumStringMismatch) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "mismatch"
          toJSON (IssuingAuthorizationVerificationDataAddressLine1Check'EnumStringNotProvided) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "not_provided"
instance Data.Aeson.FromJSON IssuingAuthorizationVerificationDataAddressLine1Check'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "match")
                                          then IssuingAuthorizationVerificationDataAddressLine1Check'EnumStringMatch
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "mismatch")
                                                then IssuingAuthorizationVerificationDataAddressLine1Check'EnumStringMismatch
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "not_provided")
                                                      then IssuingAuthorizationVerificationDataAddressLine1Check'EnumStringNotProvided
                                                      else IssuingAuthorizationVerificationDataAddressLine1Check'EnumOther val)
data IssuingAuthorizationVerificationDataAddressZipCheck'
    = IssuingAuthorizationVerificationDataAddressZipCheck'EnumOther Data.Aeson.Types.Internal.Value
    | IssuingAuthorizationVerificationDataAddressZipCheck'EnumTyped GHC.Base.String
    | IssuingAuthorizationVerificationDataAddressZipCheck'EnumStringMatch
    | IssuingAuthorizationVerificationDataAddressZipCheck'EnumStringMismatch
    | IssuingAuthorizationVerificationDataAddressZipCheck'EnumStringNotProvided
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON IssuingAuthorizationVerificationDataAddressZipCheck'
    where toJSON (IssuingAuthorizationVerificationDataAddressZipCheck'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingAuthorizationVerificationDataAddressZipCheck'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingAuthorizationVerificationDataAddressZipCheck'EnumStringMatch) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "match"
          toJSON (IssuingAuthorizationVerificationDataAddressZipCheck'EnumStringMismatch) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "mismatch"
          toJSON (IssuingAuthorizationVerificationDataAddressZipCheck'EnumStringNotProvided) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "not_provided"
instance Data.Aeson.FromJSON IssuingAuthorizationVerificationDataAddressZipCheck'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "match")
                                          then IssuingAuthorizationVerificationDataAddressZipCheck'EnumStringMatch
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "mismatch")
                                                then IssuingAuthorizationVerificationDataAddressZipCheck'EnumStringMismatch
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "not_provided")
                                                      then IssuingAuthorizationVerificationDataAddressZipCheck'EnumStringNotProvided
                                                      else IssuingAuthorizationVerificationDataAddressZipCheck'EnumOther val)
data IssuingAuthorizationVerificationDataAuthentication'
    = IssuingAuthorizationVerificationDataAuthentication'EnumOther Data.Aeson.Types.Internal.Value
    | IssuingAuthorizationVerificationDataAuthentication'EnumTyped GHC.Base.String
    | IssuingAuthorizationVerificationDataAuthentication'EnumStringFailure
    | IssuingAuthorizationVerificationDataAuthentication'EnumStringNone
    | IssuingAuthorizationVerificationDataAuthentication'EnumStringSuccess
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON IssuingAuthorizationVerificationDataAuthentication'
    where toJSON (IssuingAuthorizationVerificationDataAuthentication'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingAuthorizationVerificationDataAuthentication'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingAuthorizationVerificationDataAuthentication'EnumStringFailure) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "failure"
          toJSON (IssuingAuthorizationVerificationDataAuthentication'EnumStringNone) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none"
          toJSON (IssuingAuthorizationVerificationDataAuthentication'EnumStringSuccess) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success"
instance Data.Aeson.FromJSON IssuingAuthorizationVerificationDataAuthentication'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "failure")
                                          then IssuingAuthorizationVerificationDataAuthentication'EnumStringFailure
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "none")
                                                then IssuingAuthorizationVerificationDataAuthentication'EnumStringNone
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "success")
                                                      then IssuingAuthorizationVerificationDataAuthentication'EnumStringSuccess
                                                      else IssuingAuthorizationVerificationDataAuthentication'EnumOther val)
data IssuingAuthorizationVerificationDataCvcCheck'
    = IssuingAuthorizationVerificationDataCvcCheck'EnumOther Data.Aeson.Types.Internal.Value
    | IssuingAuthorizationVerificationDataCvcCheck'EnumTyped GHC.Base.String
    | IssuingAuthorizationVerificationDataCvcCheck'EnumStringMatch
    | IssuingAuthorizationVerificationDataCvcCheck'EnumStringMismatch
    | IssuingAuthorizationVerificationDataCvcCheck'EnumStringNotProvided
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON IssuingAuthorizationVerificationDataCvcCheck'
    where toJSON (IssuingAuthorizationVerificationDataCvcCheck'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingAuthorizationVerificationDataCvcCheck'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (IssuingAuthorizationVerificationDataCvcCheck'EnumStringMatch) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "match"
          toJSON (IssuingAuthorizationVerificationDataCvcCheck'EnumStringMismatch) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "mismatch"
          toJSON (IssuingAuthorizationVerificationDataCvcCheck'EnumStringNotProvided) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "not_provided"
instance Data.Aeson.FromJSON IssuingAuthorizationVerificationDataCvcCheck'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "match")
                                          then IssuingAuthorizationVerificationDataCvcCheck'EnumStringMatch
                                          else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "mismatch")
                                                then IssuingAuthorizationVerificationDataCvcCheck'EnumStringMismatch
                                                else if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "not_provided")
                                                      then IssuingAuthorizationVerificationDataCvcCheck'EnumStringNotProvided
                                                      else IssuingAuthorizationVerificationDataCvcCheck'EnumOther val)
instance Data.Aeson.ToJSON IssuingAuthorizationVerificationData
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "address_line1_check" (issuingAuthorizationVerificationDataAddressLine1Check obj) : (Data.Aeson..=) "address_zip_check" (issuingAuthorizationVerificationDataAddressZipCheck obj) : (Data.Aeson..=) "authentication" (issuingAuthorizationVerificationDataAuthentication obj) : (Data.Aeson..=) "cvc_check" (issuingAuthorizationVerificationDataCvcCheck obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "address_line1_check" (issuingAuthorizationVerificationDataAddressLine1Check obj) GHC.Base.<> ((Data.Aeson..=) "address_zip_check" (issuingAuthorizationVerificationDataAddressZipCheck obj) GHC.Base.<> ((Data.Aeson..=) "authentication" (issuingAuthorizationVerificationDataAuthentication obj) GHC.Base.<> (Data.Aeson..=) "cvc_check" (issuingAuthorizationVerificationDataCvcCheck obj))))
instance Data.Aeson.Types.FromJSON.FromJSON IssuingAuthorizationVerificationData
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingAuthorizationVerificationData" (\obj -> (((GHC.Base.pure IssuingAuthorizationVerificationData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address_line1_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address_zip_check")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "authentication")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "cvc_check"))