-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postPaymentIntentsIntentCapture
module StripeAPI.Operations.PostPaymentIntentsIntentCapture where

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

-- | > POST /v1/payment_intents/{intent}/capture
-- 
-- \<p>Capture the funds of an existing uncaptured PaymentIntent when its status is \<code>requires_capture\<\/code>.\<\/p>
-- 
-- \<p>Uncaptured PaymentIntents are cancelled a set number of days (7 by default) after their creation.\<\/p>
-- 
-- \<p>Learn more about \<a href=\"\/docs\/payments\/capture-later\">separate authorization and capture\<\/a>.\<\/p>
postPaymentIntentsIntentCapture :: forall m . StripeAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ intent | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostPaymentIntentsIntentCaptureRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostPaymentIntentsIntentCaptureResponse) -- ^ Monadic computation which returns the result of the operation
postPaymentIntentsIntentCapture intent
                                body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPaymentIntentsIntentCaptureResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentCaptureResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                PaymentIntent)
                                                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentIntentsIntentCaptureResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/payment_intents/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel intent)) GHC.Base.<> "/capture")) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/payment_intents\/{intent}\/capture.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostPaymentIntentsIntentCaptureRequestBody = PostPaymentIntentsIntentCaptureRequestBody {
  -- | amount_to_capture: The amount to capture from the PaymentIntent, which must be less than or equal to the original amount. Any additional amount is automatically refunded. Defaults to the full \`amount_capturable\` if it\'s not provided.
  postPaymentIntentsIntentCaptureRequestBodyAmountToCapture :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | application_fee_amount: The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner\'s Stripe account. The amount of the application fee collected will be capped at the total payment amount. For more information, see the PaymentIntents [use case for connected accounts](https:\/\/stripe.com\/docs\/payments\/connected-accounts).
  , postPaymentIntentsIntentCaptureRequestBodyApplicationFeeAmount :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | expand: Specifies which fields in the response should be expanded.
  , postPaymentIntentsIntentCaptureRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | final_capture: Defaults to \`true\`. When capturing a PaymentIntent, setting \`final_capture\` to \`false\` notifies Stripe to not release the remaining uncaptured funds to make sure that they\'re captured in future requests. You can only use this setting when [multicapture](https:\/\/stripe.com\/docs\/payments\/multicapture) is available for PaymentIntents.
  , postPaymentIntentsIntentCaptureRequestBodyFinalCapture :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postPaymentIntentsIntentCaptureRequestBodyMetadata :: (GHC.Maybe.Maybe PostPaymentIntentsIntentCaptureRequestBodyMetadata'Variants)
  -- | statement_descriptor: For card charges, use [statement_descriptor_suffix](https:\/\/stripe.com\/docs\/payments\/account\/statement-descriptors\#dynamic). Otherwise, you can use this value as the complete description of a charge on your customers\' statements. It must contain at least one letter and be 1–22 characters long.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postPaymentIntentsIntentCaptureRequestBodyStatementDescriptor :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | statement_descriptor_suffix: Provides information about a card payment that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. The concatenated descriptor must be 1-22 characters long.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 22
  , postPaymentIntentsIntentCaptureRequestBodyStatementDescriptorSuffix :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | transfer_data: The parameters that you can use to automatically create a transfer after the payment
  -- is captured. Learn more about the [use case for connected accounts](https:\/\/stripe.com\/docs\/payments\/connected-accounts).
  , postPaymentIntentsIntentCaptureRequestBodyTransferData :: (GHC.Maybe.Maybe PostPaymentIntentsIntentCaptureRequestBodyTransferData')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostPaymentIntentsIntentCaptureRequestBody
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_to_capture" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCaptureRequestBodyAmountToCapture obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application_fee_amount" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCaptureRequestBodyApplicationFeeAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCaptureRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("final_capture" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCaptureRequestBodyFinalCapture obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCaptureRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCaptureRequestBodyStatementDescriptor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor_suffix" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCaptureRequestBodyStatementDescriptorSuffix obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transfer_data" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCaptureRequestBodyTransferData obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount_to_capture" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCaptureRequestBodyAmountToCapture obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("application_fee_amount" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCaptureRequestBodyApplicationFeeAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCaptureRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("final_capture" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCaptureRequestBodyFinalCapture obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCaptureRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCaptureRequestBodyStatementDescriptor obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("statement_descriptor_suffix" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCaptureRequestBodyStatementDescriptorSuffix obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("transfer_data" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCaptureRequestBodyTransferData obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentCaptureRequestBody
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentCaptureRequestBody" (\obj -> (((((((GHC.Base.pure PostPaymentIntentsIntentCaptureRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount_to_capture")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "application_fee_amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "final_capture")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "statement_descriptor_suffix")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "transfer_data"))}
-- | Create a new 'PostPaymentIntentsIntentCaptureRequestBody' with all required fields.
mkPostPaymentIntentsIntentCaptureRequestBody :: PostPaymentIntentsIntentCaptureRequestBody
mkPostPaymentIntentsIntentCaptureRequestBody = PostPaymentIntentsIntentCaptureRequestBody{postPaymentIntentsIntentCaptureRequestBodyAmountToCapture = GHC.Maybe.Nothing,
                                                                                          postPaymentIntentsIntentCaptureRequestBodyApplicationFeeAmount = GHC.Maybe.Nothing,
                                                                                          postPaymentIntentsIntentCaptureRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                          postPaymentIntentsIntentCaptureRequestBodyFinalCapture = GHC.Maybe.Nothing,
                                                                                          postPaymentIntentsIntentCaptureRequestBodyMetadata = GHC.Maybe.Nothing,
                                                                                          postPaymentIntentsIntentCaptureRequestBodyStatementDescriptor = GHC.Maybe.Nothing,
                                                                                          postPaymentIntentsIntentCaptureRequestBodyStatementDescriptorSuffix = GHC.Maybe.Nothing,
                                                                                          postPaymentIntentsIntentCaptureRequestBodyTransferData = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/payment_intents\/{intent}\/capture.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
-- 
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostPaymentIntentsIntentCaptureRequestBodyMetadata'Variants =
   PostPaymentIntentsIntentCaptureRequestBodyMetadata'EmptyString -- ^ Represents the JSON value @""@
  | PostPaymentIntentsIntentCaptureRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostPaymentIntentsIntentCaptureRequestBodyMetadata'Variants
    where {toJSON (PostPaymentIntentsIntentCaptureRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (PostPaymentIntentsIntentCaptureRequestBodyMetadata'EmptyString) = ""}
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentCaptureRequestBodyMetadata'Variants
    where {parseJSON val = if | val GHC.Classes.== "" -> GHC.Base.pure PostPaymentIntentsIntentCaptureRequestBodyMetadata'EmptyString
                              | GHC.Base.otherwise -> case (PostPaymentIntentsIntentCaptureRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
                                                      {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                                                       Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the object schema located at @paths.\/v1\/payment_intents\/{intent}\/capture.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.transfer_data@ in the specification.
-- 
-- The parameters that you can use to automatically create a transfer after the payment
-- is captured. Learn more about the [use case for connected accounts](https:\/\/stripe.com\/docs\/payments\/connected-accounts).
data PostPaymentIntentsIntentCaptureRequestBodyTransferData' = PostPaymentIntentsIntentCaptureRequestBodyTransferData' {
  -- | amount
  postPaymentIntentsIntentCaptureRequestBodyTransferData'Amount :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostPaymentIntentsIntentCaptureRequestBodyTransferData'
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCaptureRequestBodyTransferData'Amount obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (postPaymentIntentsIntentCaptureRequestBodyTransferData'Amount obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentIntentsIntentCaptureRequestBodyTransferData'
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentIntentsIntentCaptureRequestBodyTransferData'" (\obj -> GHC.Base.pure PostPaymentIntentsIntentCaptureRequestBodyTransferData' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount"))}
-- | Create a new 'PostPaymentIntentsIntentCaptureRequestBodyTransferData'' with all required fields.
mkPostPaymentIntentsIntentCaptureRequestBodyTransferData' :: PostPaymentIntentsIntentCaptureRequestBodyTransferData'
mkPostPaymentIntentsIntentCaptureRequestBodyTransferData' = PostPaymentIntentsIntentCaptureRequestBodyTransferData'{postPaymentIntentsIntentCaptureRequestBodyTransferData'Amount = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postPaymentIntentsIntentCapture'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPaymentIntentsIntentCaptureResponseError' is used.
data PostPaymentIntentsIntentCaptureResponse =
   PostPaymentIntentsIntentCaptureResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostPaymentIntentsIntentCaptureResponse200 PaymentIntent -- ^ Successful response.
  | PostPaymentIntentsIntentCaptureResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
