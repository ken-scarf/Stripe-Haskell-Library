-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Terminal_Location
module StripeAPI.Types.Terminal_Location where

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
import {-# SOURCE #-} StripeAPI.Types.Address

-- | Defines the object schema located at @components.schemas.terminal.location@ in the specification.
-- 
-- A Location represents a grouping of readers.
-- 
-- Related guide: [Fleet management](https:\/\/stripe.com\/docs\/terminal\/fleet\/locations)
data Terminal'location = Terminal'location {
  -- | address: 
  terminal'locationAddress :: Address
  -- | configuration_overrides: The ID of a configuration that will be used to customize all readers in this location.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , terminal'locationConfigurationOverrides :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | display_name: The display name of the location.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , terminal'locationDisplayName :: Data.Text.Internal.Text
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , terminal'locationId :: Data.Text.Internal.Text
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , terminal'locationLivemode :: GHC.Types.Bool
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  , terminal'locationMetadata :: Data.Aeson.Types.Internal.Object
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Terminal'location
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["address" Data.Aeson.Types.ToJSON..= terminal'locationAddress obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("configuration_overrides" Data.Aeson.Types.ToJSON..=)) (terminal'locationConfigurationOverrides obj) : ["display_name" Data.Aeson.Types.ToJSON..= terminal'locationDisplayName obj] : ["id" Data.Aeson.Types.ToJSON..= terminal'locationId obj] : ["livemode" Data.Aeson.Types.ToJSON..= terminal'locationLivemode obj] : ["metadata" Data.Aeson.Types.ToJSON..= terminal'locationMetadata obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "terminal.location"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["address" Data.Aeson.Types.ToJSON..= terminal'locationAddress obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("configuration_overrides" Data.Aeson.Types.ToJSON..=)) (terminal'locationConfigurationOverrides obj) : ["display_name" Data.Aeson.Types.ToJSON..= terminal'locationDisplayName obj] : ["id" Data.Aeson.Types.ToJSON..= terminal'locationId obj] : ["livemode" Data.Aeson.Types.ToJSON..= terminal'locationLivemode obj] : ["metadata" Data.Aeson.Types.ToJSON..= terminal'locationMetadata obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "terminal.location"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON Terminal'location
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "Terminal'location" (\obj -> (((((GHC.Base.pure Terminal'location GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "configuration_overrides")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "display_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "metadata"))}
-- | Create a new 'Terminal'location' with all required fields.
mkTerminal'location :: Address -- ^ 'terminal'locationAddress'
  -> Data.Text.Internal.Text -- ^ 'terminal'locationDisplayName'
  -> Data.Text.Internal.Text -- ^ 'terminal'locationId'
  -> GHC.Types.Bool -- ^ 'terminal'locationLivemode'
  -> Data.Aeson.Types.Internal.Object -- ^ 'terminal'locationMetadata'
  -> Terminal'location
mkTerminal'location terminal'locationAddress terminal'locationDisplayName terminal'locationId terminal'locationLivemode terminal'locationMetadata = Terminal'location{terminal'locationAddress = terminal'locationAddress,
                                                                                                                                                                      terminal'locationConfigurationOverrides = GHC.Maybe.Nothing,
                                                                                                                                                                      terminal'locationDisplayName = terminal'locationDisplayName,
                                                                                                                                                                      terminal'locationId = terminal'locationId,
                                                                                                                                                                      terminal'locationLivemode = terminal'locationLivemode,
                                                                                                                                                                      terminal'locationMetadata = terminal'locationMetadata}
