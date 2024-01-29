-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postPaymentMethodDomainsPaymentMethodDomainValidate
module StripeAPI.Operations.PostPaymentMethodDomainsPaymentMethodDomainValidate where

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

-- | > POST /v1/payment_method_domains/{payment_method_domain}/validate
-- 
-- \<p>Some payment methods such as Apple Pay require additional steps to verify a domain. If the requirements weren’t satisfied when the domain was created, the payment method will be inactive on the domain.
-- The payment method doesn’t appear in Elements for this domain until it is active.\<\/p>
-- 
-- \<p>To activate a payment method on an existing payment method domain, complete the required validation steps specific to the payment method, and then validate the payment method domain with this endpoint.\<\/p>
-- 
-- \<p>Related guides: \<a href=\"\/docs\/payments\/payment-methods\/pmd-registration\">Payment method domains\<\/a>.\<\/p>
postPaymentMethodDomainsPaymentMethodDomainValidate :: forall m . StripeAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ payment_method_domain | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostPaymentMethodDomainsPaymentMethodDomainValidateRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostPaymentMethodDomainsPaymentMethodDomainValidateResponse) -- ^ Monadic computation which returns the result of the operation
postPaymentMethodDomainsPaymentMethodDomainValidate paymentMethodDomain
                                                    body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostPaymentMethodDomainsPaymentMethodDomainValidateResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodDomainsPaymentMethodDomainValidateResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            PaymentMethodDomain)
                                                                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostPaymentMethodDomainsPaymentMethodDomainValidateResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/payment_method_domains/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel paymentMethodDomain)) GHC.Base.<> "/validate")) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/payment_method_domains\/{payment_method_domain}\/validate.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostPaymentMethodDomainsPaymentMethodDomainValidateRequestBody = PostPaymentMethodDomainsPaymentMethodDomainValidateRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postPaymentMethodDomainsPaymentMethodDomainValidateRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostPaymentMethodDomainsPaymentMethodDomainValidateRequestBody
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodDomainsPaymentMethodDomainValidateRequestBodyExpand obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postPaymentMethodDomainsPaymentMethodDomainValidateRequestBodyExpand obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostPaymentMethodDomainsPaymentMethodDomainValidateRequestBody
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostPaymentMethodDomainsPaymentMethodDomainValidateRequestBody" (\obj -> GHC.Base.pure PostPaymentMethodDomainsPaymentMethodDomainValidateRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand"))}
-- | Create a new 'PostPaymentMethodDomainsPaymentMethodDomainValidateRequestBody' with all required fields.
mkPostPaymentMethodDomainsPaymentMethodDomainValidateRequestBody :: PostPaymentMethodDomainsPaymentMethodDomainValidateRequestBody
mkPostPaymentMethodDomainsPaymentMethodDomainValidateRequestBody = PostPaymentMethodDomainsPaymentMethodDomainValidateRequestBody{postPaymentMethodDomainsPaymentMethodDomainValidateRequestBodyExpand = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postPaymentMethodDomainsPaymentMethodDomainValidate'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostPaymentMethodDomainsPaymentMethodDomainValidateResponseError' is used.
data PostPaymentMethodDomainsPaymentMethodDomainValidateResponse =
   PostPaymentMethodDomainsPaymentMethodDomainValidateResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostPaymentMethodDomainsPaymentMethodDomainValidateResponse200 PaymentMethodDomain -- ^ Successful response.
  | PostPaymentMethodDomainsPaymentMethodDomainValidateResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
