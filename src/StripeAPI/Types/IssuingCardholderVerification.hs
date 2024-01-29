-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema IssuingCardholderVerification
module StripeAPI.Types.IssuingCardholderVerification where

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
import {-# SOURCE #-} StripeAPI.Types.File
import {-# SOURCE #-} StripeAPI.Types.IssuingCardholderIdDocument

-- | Defines the object schema located at @components.schemas.issuing_cardholder_verification@ in the specification.
-- 
-- 
data IssuingCardholderVerification = IssuingCardholderVerification {
  -- | document: An identifying document, either a passport or local ID card.
  issuingCardholderVerificationDocument :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable IssuingCardholderVerificationDocument'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardholderVerification
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("document" Data.Aeson.Types.ToJSON..=)) (issuingCardholderVerificationDocument obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("document" Data.Aeson.Types.ToJSON..=)) (issuingCardholderVerificationDocument obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderVerification
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingCardholderVerification" (\obj -> GHC.Base.pure IssuingCardholderVerification GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "document"))}
-- | Create a new 'IssuingCardholderVerification' with all required fields.
mkIssuingCardholderVerification :: IssuingCardholderVerification
mkIssuingCardholderVerification = IssuingCardholderVerification{issuingCardholderVerificationDocument = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.issuing_cardholder_verification.properties.document.anyOf@ in the specification.
-- 
-- An identifying document, either a passport or local ID card.
data IssuingCardholderVerificationDocument'NonNullable = IssuingCardholderVerificationDocument'NonNullable {
  -- | back: The back of a document returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`identity_document\`.
  issuingCardholderVerificationDocument'NonNullableBack :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable IssuingCardholderVerificationDocument'NonNullableBack'NonNullableVariants))
  -- | front: The front of a document returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`identity_document\`.
  , issuingCardholderVerificationDocument'NonNullableFront :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable IssuingCardholderVerificationDocument'NonNullableFront'NonNullableVariants))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardholderVerificationDocument'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("back" Data.Aeson.Types.ToJSON..=)) (issuingCardholderVerificationDocument'NonNullableBack obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("front" Data.Aeson.Types.ToJSON..=)) (issuingCardholderVerificationDocument'NonNullableFront obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("back" Data.Aeson.Types.ToJSON..=)) (issuingCardholderVerificationDocument'NonNullableBack obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("front" Data.Aeson.Types.ToJSON..=)) (issuingCardholderVerificationDocument'NonNullableFront obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderVerificationDocument'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "IssuingCardholderVerificationDocument'NonNullable" (\obj -> (GHC.Base.pure IssuingCardholderVerificationDocument'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "back")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "front"))}
-- | Create a new 'IssuingCardholderVerificationDocument'NonNullable' with all required fields.
mkIssuingCardholderVerificationDocument'NonNullable :: IssuingCardholderVerificationDocument'NonNullable
mkIssuingCardholderVerificationDocument'NonNullable = IssuingCardholderVerificationDocument'NonNullable{issuingCardholderVerificationDocument'NonNullableBack = GHC.Maybe.Nothing,
                                                                                                        issuingCardholderVerificationDocument'NonNullableFront = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @components.schemas.issuing_cardholder_verification.properties.document.anyOf.properties.back.anyOf@ in the specification.
-- 
-- The back of a document returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`identity_document\`.
data IssuingCardholderVerificationDocument'NonNullableBack'NonNullableVariants =
   IssuingCardholderVerificationDocument'NonNullableBack'NonNullableText Data.Text.Internal.Text
  | IssuingCardholderVerificationDocument'NonNullableBack'NonNullableFile File
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardholderVerificationDocument'NonNullableBack'NonNullableVariants
    where {toJSON (IssuingCardholderVerificationDocument'NonNullableBack'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (IssuingCardholderVerificationDocument'NonNullableBack'NonNullableFile a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderVerificationDocument'NonNullableBack'NonNullableVariants
    where {parseJSON val = case (IssuingCardholderVerificationDocument'NonNullableBack'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((IssuingCardholderVerificationDocument'NonNullableBack'NonNullableFile Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the oneOf schema located at @components.schemas.issuing_cardholder_verification.properties.document.anyOf.properties.front.anyOf@ in the specification.
-- 
-- The front of a document returned by a [file upload](https:\/\/stripe.com\/docs\/api\#create_file) with a \`purpose\` value of \`identity_document\`.
data IssuingCardholderVerificationDocument'NonNullableFront'NonNullableVariants =
   IssuingCardholderVerificationDocument'NonNullableFront'NonNullableText Data.Text.Internal.Text
  | IssuingCardholderVerificationDocument'NonNullableFront'NonNullableFile File
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON IssuingCardholderVerificationDocument'NonNullableFront'NonNullableVariants
    where {toJSON (IssuingCardholderVerificationDocument'NonNullableFront'NonNullableText a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (IssuingCardholderVerificationDocument'NonNullableFront'NonNullableFile a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON IssuingCardholderVerificationDocument'NonNullableFront'NonNullableVariants
    where {parseJSON val = case (IssuingCardholderVerificationDocument'NonNullableFront'NonNullableText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((IssuingCardholderVerificationDocument'NonNullableFront'NonNullableFile Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
