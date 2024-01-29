-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postTreasuryCreditReversals
module StripeAPI.Operations.PostTreasuryCreditReversals where

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

-- | > POST /v1/treasury/credit_reversals
-- 
-- \<p>Reverses a ReceivedCredit and creates a CreditReversal object.\<\/p>
postTreasuryCreditReversals :: forall m . StripeAPI.Common.MonadHTTP m => PostTreasuryCreditReversalsRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostTreasuryCreditReversalsResponse) -- ^ Monadic computation which returns the result of the operation
postTreasuryCreditReversals body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTreasuryCreditReversalsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTreasuryCreditReversalsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    Treasury'creditReversal)
                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTreasuryCreditReversalsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/v1/treasury/credit_reversals" GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/treasury\/credit_reversals.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostTreasuryCreditReversalsRequestBody = PostTreasuryCreditReversalsRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postTreasuryCreditReversalsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postTreasuryCreditReversalsRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object)
  -- | received_credit: The ReceivedCredit to reverse.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTreasuryCreditReversalsRequestBodyReceivedCredit :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostTreasuryCreditReversalsRequestBody
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTreasuryCreditReversalsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postTreasuryCreditReversalsRequestBodyMetadata obj) : ["received_credit" Data.Aeson.Types.ToJSON..= postTreasuryCreditReversalsRequestBodyReceivedCredit obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTreasuryCreditReversalsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postTreasuryCreditReversalsRequestBodyMetadata obj) : ["received_credit" Data.Aeson.Types.ToJSON..= postTreasuryCreditReversalsRequestBodyReceivedCredit obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostTreasuryCreditReversalsRequestBody
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTreasuryCreditReversalsRequestBody" (\obj -> ((GHC.Base.pure PostTreasuryCreditReversalsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "received_credit"))}
-- | Create a new 'PostTreasuryCreditReversalsRequestBody' with all required fields.
mkPostTreasuryCreditReversalsRequestBody :: Data.Text.Internal.Text -- ^ 'postTreasuryCreditReversalsRequestBodyReceivedCredit'
  -> PostTreasuryCreditReversalsRequestBody
mkPostTreasuryCreditReversalsRequestBody postTreasuryCreditReversalsRequestBodyReceivedCredit = PostTreasuryCreditReversalsRequestBody{postTreasuryCreditReversalsRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                                                                       postTreasuryCreditReversalsRequestBodyMetadata = GHC.Maybe.Nothing,
                                                                                                                                       postTreasuryCreditReversalsRequestBodyReceivedCredit = postTreasuryCreditReversalsRequestBodyReceivedCredit}
-- | Represents a response of the operation 'postTreasuryCreditReversals'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTreasuryCreditReversalsResponseError' is used.
data PostTreasuryCreditReversalsResponse =
   PostTreasuryCreditReversalsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostTreasuryCreditReversalsResponse200 Treasury'creditReversal -- ^ Successful response.
  | PostTreasuryCreditReversalsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
