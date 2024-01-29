-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PortalSubscriptionPause
module StripeAPI.Types.PortalSubscriptionPause where

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

-- | Defines the object schema located at @components.schemas.portal_subscription_pause@ in the specification.
-- 
-- 
data PortalSubscriptionPause = PortalSubscriptionPause {
  -- | enabled: Whether the feature is enabled.
  portalSubscriptionPauseEnabled :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PortalSubscriptionPause
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= portalSubscriptionPauseEnabled obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= portalSubscriptionPauseEnabled obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PortalSubscriptionPause
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PortalSubscriptionPause" (\obj -> GHC.Base.pure PortalSubscriptionPause GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "enabled"))}
-- | Create a new 'PortalSubscriptionPause' with all required fields.
mkPortalSubscriptionPause :: GHC.Types.Bool -- ^ 'portalSubscriptionPauseEnabled'
  -> PortalSubscriptionPause
mkPortalSubscriptionPause portalSubscriptionPauseEnabled = PortalSubscriptionPause{portalSubscriptionPauseEnabled = portalSubscriptionPauseEnabled}
