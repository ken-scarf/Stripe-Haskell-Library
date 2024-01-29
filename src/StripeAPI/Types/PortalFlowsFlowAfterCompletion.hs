-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PortalFlowsFlowAfterCompletion
module StripeAPI.Types.PortalFlowsFlowAfterCompletion where

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
import {-# SOURCE #-} StripeAPI.Types.PortalFlowsAfterCompletionHostedConfirmation
import {-# SOURCE #-} StripeAPI.Types.PortalFlowsAfterCompletionRedirect

-- | Defines the object schema located at @components.schemas.portal_flows_flow_after_completion@ in the specification.
-- 
-- 
data PortalFlowsFlowAfterCompletion = PortalFlowsFlowAfterCompletion {
  -- | hosted_confirmation: Configuration when \`after_completion.type=hosted_confirmation\`.
  portalFlowsFlowAfterCompletionHostedConfirmation :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PortalFlowsFlowAfterCompletionHostedConfirmation'NonNullable))
  -- | redirect: Configuration when \`after_completion.type=redirect\`.
  , portalFlowsFlowAfterCompletionRedirect :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PortalFlowsFlowAfterCompletionRedirect'NonNullable))
  -- | type: The specified type of behavior after the flow is completed.
  , portalFlowsFlowAfterCompletionType :: PortalFlowsFlowAfterCompletionType'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PortalFlowsFlowAfterCompletion
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hosted_confirmation" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowAfterCompletionHostedConfirmation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("redirect" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowAfterCompletionRedirect obj) : ["type" Data.Aeson.Types.ToJSON..= portalFlowsFlowAfterCompletionType obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("hosted_confirmation" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowAfterCompletionHostedConfirmation obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("redirect" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowAfterCompletionRedirect obj) : ["type" Data.Aeson.Types.ToJSON..= portalFlowsFlowAfterCompletionType obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PortalFlowsFlowAfterCompletion
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PortalFlowsFlowAfterCompletion" (\obj -> ((GHC.Base.pure PortalFlowsFlowAfterCompletion GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "hosted_confirmation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "redirect")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))}
-- | Create a new 'PortalFlowsFlowAfterCompletion' with all required fields.
mkPortalFlowsFlowAfterCompletion :: PortalFlowsFlowAfterCompletionType' -- ^ 'portalFlowsFlowAfterCompletionType'
  -> PortalFlowsFlowAfterCompletion
mkPortalFlowsFlowAfterCompletion portalFlowsFlowAfterCompletionType = PortalFlowsFlowAfterCompletion{portalFlowsFlowAfterCompletionHostedConfirmation = GHC.Maybe.Nothing,
                                                                                                     portalFlowsFlowAfterCompletionRedirect = GHC.Maybe.Nothing,
                                                                                                     portalFlowsFlowAfterCompletionType = portalFlowsFlowAfterCompletionType}
-- | Defines the object schema located at @components.schemas.portal_flows_flow_after_completion.properties.hosted_confirmation.anyOf@ in the specification.
-- 
-- Configuration when \\\`after_completion.type=hosted_confirmation\\\`.
data PortalFlowsFlowAfterCompletionHostedConfirmation'NonNullable = PortalFlowsFlowAfterCompletionHostedConfirmation'NonNullable {
  -- | custom_message: A custom message to display to the customer after the flow is completed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  portalFlowsFlowAfterCompletionHostedConfirmation'NonNullableCustomMessage :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PortalFlowsFlowAfterCompletionHostedConfirmation'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("custom_message" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowAfterCompletionHostedConfirmation'NonNullableCustomMessage obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("custom_message" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowAfterCompletionHostedConfirmation'NonNullableCustomMessage obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PortalFlowsFlowAfterCompletionHostedConfirmation'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PortalFlowsFlowAfterCompletionHostedConfirmation'NonNullable" (\obj -> GHC.Base.pure PortalFlowsFlowAfterCompletionHostedConfirmation'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "custom_message"))}
-- | Create a new 'PortalFlowsFlowAfterCompletionHostedConfirmation'NonNullable' with all required fields.
mkPortalFlowsFlowAfterCompletionHostedConfirmation'NonNullable :: PortalFlowsFlowAfterCompletionHostedConfirmation'NonNullable
mkPortalFlowsFlowAfterCompletionHostedConfirmation'NonNullable = PortalFlowsFlowAfterCompletionHostedConfirmation'NonNullable{portalFlowsFlowAfterCompletionHostedConfirmation'NonNullableCustomMessage = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.portal_flows_flow_after_completion.properties.redirect.anyOf@ in the specification.
-- 
-- Configuration when \\\`after_completion.type=redirect\\\`.
data PortalFlowsFlowAfterCompletionRedirect'NonNullable = PortalFlowsFlowAfterCompletionRedirect'NonNullable {
  -- | return_url: The URL the customer will be redirected to after the flow is completed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  portalFlowsFlowAfterCompletionRedirect'NonNullableReturnUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PortalFlowsFlowAfterCompletionRedirect'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("return_url" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowAfterCompletionRedirect'NonNullableReturnUrl obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("return_url" Data.Aeson.Types.ToJSON..=)) (portalFlowsFlowAfterCompletionRedirect'NonNullableReturnUrl obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PortalFlowsFlowAfterCompletionRedirect'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PortalFlowsFlowAfterCompletionRedirect'NonNullable" (\obj -> GHC.Base.pure PortalFlowsFlowAfterCompletionRedirect'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "return_url"))}
-- | Create a new 'PortalFlowsFlowAfterCompletionRedirect'NonNullable' with all required fields.
mkPortalFlowsFlowAfterCompletionRedirect'NonNullable :: PortalFlowsFlowAfterCompletionRedirect'NonNullable
mkPortalFlowsFlowAfterCompletionRedirect'NonNullable = PortalFlowsFlowAfterCompletionRedirect'NonNullable{portalFlowsFlowAfterCompletionRedirect'NonNullableReturnUrl = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.portal_flows_flow_after_completion.properties.type@ in the specification.
-- 
-- The specified type of behavior after the flow is completed.
data PortalFlowsFlowAfterCompletionType' =
   PortalFlowsFlowAfterCompletionType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PortalFlowsFlowAfterCompletionType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PortalFlowsFlowAfterCompletionType'EnumHostedConfirmation -- ^ Represents the JSON value @"hosted_confirmation"@
  | PortalFlowsFlowAfterCompletionType'EnumPortalHomepage -- ^ Represents the JSON value @"portal_homepage"@
  | PortalFlowsFlowAfterCompletionType'EnumRedirect -- ^ Represents the JSON value @"redirect"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PortalFlowsFlowAfterCompletionType'
    where {toJSON (PortalFlowsFlowAfterCompletionType'Other val) = val;
           toJSON (PortalFlowsFlowAfterCompletionType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PortalFlowsFlowAfterCompletionType'EnumHostedConfirmation) = "hosted_confirmation";
           toJSON (PortalFlowsFlowAfterCompletionType'EnumPortalHomepage) = "portal_homepage";
           toJSON (PortalFlowsFlowAfterCompletionType'EnumRedirect) = "redirect"}
instance Data.Aeson.Types.FromJSON.FromJSON PortalFlowsFlowAfterCompletionType'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "hosted_confirmation" -> PortalFlowsFlowAfterCompletionType'EnumHostedConfirmation
                                             | val GHC.Classes.== "portal_homepage" -> PortalFlowsFlowAfterCompletionType'EnumPortalHomepage
                                             | val GHC.Classes.== "redirect" -> PortalFlowsFlowAfterCompletionType'EnumRedirect
                                             | GHC.Base.otherwise -> PortalFlowsFlowAfterCompletionType'Other val)}