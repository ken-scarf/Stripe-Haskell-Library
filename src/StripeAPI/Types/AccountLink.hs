-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema AccountLink
module StripeAPI.Types.AccountLink where

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

-- | Defines the object schema located at @components.schemas.account_link@ in the specification.
-- 
-- Account Links are the means by which a Connect platform grants a connected account permission to access
-- Stripe-hosted applications, such as Connect Onboarding.
-- 
-- Related guide: [Connect Onboarding](https:\/\/stripe.com\/docs\/connect\/custom\/hosted-onboarding)
data AccountLink = AccountLink {
  -- | created: Time at which the object was created. Measured in seconds since the Unix epoch.
  accountLinkCreated :: GHC.Types.Int
  -- | expires_at: The timestamp at which this account link will expire.
  , accountLinkExpiresAt :: GHC.Types.Int
  -- | url: The URL for the account link.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , accountLinkUrl :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AccountLink
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= accountLinkCreated obj] : ["expires_at" Data.Aeson.Types.ToJSON..= accountLinkExpiresAt obj] : ["url" Data.Aeson.Types.ToJSON..= accountLinkUrl obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "account_link"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["created" Data.Aeson.Types.ToJSON..= accountLinkCreated obj] : ["expires_at" Data.Aeson.Types.ToJSON..= accountLinkExpiresAt obj] : ["url" Data.Aeson.Types.ToJSON..= accountLinkUrl obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "account_link"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON AccountLink
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountLink" (\obj -> ((GHC.Base.pure AccountLink GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "expires_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))}
-- | Create a new 'AccountLink' with all required fields.
mkAccountLink :: GHC.Types.Int -- ^ 'accountLinkCreated'
  -> GHC.Types.Int -- ^ 'accountLinkExpiresAt'
  -> Data.Text.Internal.Text -- ^ 'accountLinkUrl'
  -> AccountLink
mkAccountLink accountLinkCreated accountLinkExpiresAt accountLinkUrl = AccountLink{accountLinkCreated = accountLinkCreated,
                                                                                   accountLinkExpiresAt = accountLinkExpiresAt,
                                                                                   accountLinkUrl = accountLinkUrl}
