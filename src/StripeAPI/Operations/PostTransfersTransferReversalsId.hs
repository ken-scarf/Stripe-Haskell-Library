-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postTransfersTransferReversalsId
module StripeAPI.Operations.PostTransfersTransferReversalsId where

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

-- | > POST /v1/transfers/{transfer}/reversals/{id}
-- 
-- \<p>Updates the specified reversal by setting the values of the parameters passed. Any parameters not provided will be left unchanged.\<\/p>
-- 
-- \<p>This request only accepts metadata and description as arguments.\<\/p>
postTransfersTransferReversalsId :: forall m . StripeAPI.Common.MonadHTTP m => PostTransfersTransferReversalsIdParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> GHC.Maybe.Maybe PostTransfersTransferReversalsIdRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostTransfersTransferReversalsIdResponse) -- ^ Monadic computation which returns the result of the operation
postTransfersTransferReversalsId parameters
                                 body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTransfersTransferReversalsIdResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersTransferReversalsIdResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                   TransferReversal)
                                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTransfersTransferReversalsIdResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                     Error)
                                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") (("/v1/transfers/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (postTransfersTransferReversalsIdParametersPathTransfer parameters))) GHC.Base.<> "/reversals/")) GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (postTransfersTransferReversalsIdParametersPathId parameters))) GHC.Base.<> "")) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/transfers\/{transfer}\/reversals\/{id}.POST.parameters@ in the specification.
-- 
-- 
data PostTransfersTransferReversalsIdParameters = PostTransfersTransferReversalsIdParameters {
  -- | pathId: Represents the parameter named \'id\'
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postTransfersTransferReversalsIdParametersPathId :: Data.Text.Internal.Text
  -- | pathTransfer: Represents the parameter named \'transfer\'
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTransfersTransferReversalsIdParametersPathTransfer :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostTransfersTransferReversalsIdParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathId" Data.Aeson.Types.ToJSON..= postTransfersTransferReversalsIdParametersPathId obj] : ["pathTransfer" Data.Aeson.Types.ToJSON..= postTransfersTransferReversalsIdParametersPathTransfer obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathId" Data.Aeson.Types.ToJSON..= postTransfersTransferReversalsIdParametersPathId obj] : ["pathTransfer" Data.Aeson.Types.ToJSON..= postTransfersTransferReversalsIdParametersPathTransfer obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostTransfersTransferReversalsIdParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTransfersTransferReversalsIdParameters" (\obj -> (GHC.Base.pure PostTransfersTransferReversalsIdParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathTransfer"))}
-- | Create a new 'PostTransfersTransferReversalsIdParameters' with all required fields.
mkPostTransfersTransferReversalsIdParameters :: Data.Text.Internal.Text -- ^ 'postTransfersTransferReversalsIdParametersPathId'
  -> Data.Text.Internal.Text -- ^ 'postTransfersTransferReversalsIdParametersPathTransfer'
  -> PostTransfersTransferReversalsIdParameters
mkPostTransfersTransferReversalsIdParameters postTransfersTransferReversalsIdParametersPathId postTransfersTransferReversalsIdParametersPathTransfer = PostTransfersTransferReversalsIdParameters{postTransfersTransferReversalsIdParametersPathId = postTransfersTransferReversalsIdParametersPathId,
                                                                                                                                                                                                  postTransfersTransferReversalsIdParametersPathTransfer = postTransfersTransferReversalsIdParametersPathTransfer}
-- | Defines the object schema located at @paths.\/v1\/transfers\/{transfer}\/reversals\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostTransfersTransferReversalsIdRequestBody = PostTransfersTransferReversalsIdRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postTransfersTransferReversalsIdRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postTransfersTransferReversalsIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostTransfersTransferReversalsIdRequestBodyMetadata'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostTransfersTransferReversalsIdRequestBody
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTransfersTransferReversalsIdRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postTransfersTransferReversalsIdRequestBodyMetadata obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTransfersTransferReversalsIdRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postTransfersTransferReversalsIdRequestBodyMetadata obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostTransfersTransferReversalsIdRequestBody
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTransfersTransferReversalsIdRequestBody" (\obj -> (GHC.Base.pure PostTransfersTransferReversalsIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata"))}
-- | Create a new 'PostTransfersTransferReversalsIdRequestBody' with all required fields.
mkPostTransfersTransferReversalsIdRequestBody :: PostTransfersTransferReversalsIdRequestBody
mkPostTransfersTransferReversalsIdRequestBody = PostTransfersTransferReversalsIdRequestBody{postTransfersTransferReversalsIdRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                            postTransfersTransferReversalsIdRequestBodyMetadata = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/transfers\/{transfer}\/reversals\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
-- 
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostTransfersTransferReversalsIdRequestBodyMetadata'Variants =
   PostTransfersTransferReversalsIdRequestBodyMetadata'EmptyString -- ^ Represents the JSON value @""@
  | PostTransfersTransferReversalsIdRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostTransfersTransferReversalsIdRequestBodyMetadata'Variants
    where {toJSON (PostTransfersTransferReversalsIdRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (PostTransfersTransferReversalsIdRequestBodyMetadata'EmptyString) = ""}
instance Data.Aeson.Types.FromJSON.FromJSON PostTransfersTransferReversalsIdRequestBodyMetadata'Variants
    where {parseJSON val = if | val GHC.Classes.== "" -> GHC.Base.pure PostTransfersTransferReversalsIdRequestBodyMetadata'EmptyString
                              | GHC.Base.otherwise -> case (PostTransfersTransferReversalsIdRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
                                                      {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                                                       Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Represents a response of the operation 'postTransfersTransferReversalsId'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTransfersTransferReversalsIdResponseError' is used.
data PostTransfersTransferReversalsIdResponse =
   PostTransfersTransferReversalsIdResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostTransfersTransferReversalsIdResponse200 TransferReversal -- ^ Successful response.
  | PostTransfersTransferReversalsIdResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
