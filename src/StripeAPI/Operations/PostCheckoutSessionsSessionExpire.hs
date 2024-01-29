-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postCheckoutSessionsSessionExpire
module StripeAPI.Operations.PostCheckoutSessionsSessionExpire where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.ByteString as Data.ByteString.Internal.Type
import qualified Data.Either
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified StripeAPI.Common
import StripeAPI.Types

-- | > POST /v1/checkout/sessions/{session}/expire
-- 
-- \<p>A Session can be expired when it is in one of these statuses: \<code>open\<\/code> \<\/p>
-- 
-- \<p>After it expires, a customer can’t complete a Session and customers loading the Session see a message saying the Session is expired.\<\/p>
postCheckoutSessionsSessionExpire :: forall m . StripeAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ session | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostCheckoutSessionsSessionExpireRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostCheckoutSessionsSessionExpireResponse) -- ^ Monadic computation which returns the result of the operation
postCheckoutSessionsSessionExpire session
                                  body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCheckoutSessionsSessionExpireResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCheckoutSessionsSessionExpireResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      Checkout'session)
                                                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCheckoutSessionsSessionExpireResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/checkout/sessions/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel session)) GHC.Base.<> "/expire")) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/checkout\/sessions\/{session}\/expire.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostCheckoutSessionsSessionExpireRequestBody = PostCheckoutSessionsSessionExpireRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postCheckoutSessionsSessionExpireRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCheckoutSessionsSessionExpireRequestBody
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postCheckoutSessionsSessionExpireRequestBodyExpand obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postCheckoutSessionsSessionExpireRequestBodyExpand obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostCheckoutSessionsSessionExpireRequestBody
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCheckoutSessionsSessionExpireRequestBody" (\obj -> GHC.Base.pure PostCheckoutSessionsSessionExpireRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand"))}
-- | Create a new 'PostCheckoutSessionsSessionExpireRequestBody' with all required fields.
mkPostCheckoutSessionsSessionExpireRequestBody :: PostCheckoutSessionsSessionExpireRequestBody
mkPostCheckoutSessionsSessionExpireRequestBody = PostCheckoutSessionsSessionExpireRequestBody{postCheckoutSessionsSessionExpireRequestBodyExpand = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postCheckoutSessionsSessionExpire'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCheckoutSessionsSessionExpireResponseError' is used.
data PostCheckoutSessionsSessionExpireResponse =
   PostCheckoutSessionsSessionExpireResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostCheckoutSessionsSessionExpireResponse200 Checkout'session -- ^ Successful response.
  | PostCheckoutSessionsSessionExpireResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
