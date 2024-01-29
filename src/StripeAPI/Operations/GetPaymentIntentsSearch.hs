-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getPaymentIntentsSearch
module StripeAPI.Operations.GetPaymentIntentsSearch where

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

-- | > GET /v1/payment_intents/search
-- 
-- \<p>Search for PaymentIntents you’ve previously created using Stripe’s \<a href=\"\/docs\/search\#search-query-language\">Search Query Language\<\/a>.
-- Don’t use search in read-after-write flows where strict consistency is necessary. Under normal operating
-- conditions, data is searchable in less than a minute. Occasionally, propagation of new or updated data can be up
-- to an hour behind during outages. Search functionality is not available to merchants in India.\<\/p>
getPaymentIntentsSearch :: forall m . StripeAPI.Common.MonadHTTP m => GetPaymentIntentsSearchParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetPaymentIntentsSearchResponse) -- ^ Monadic computation which returns the result of the operation
getPaymentIntentsSearch parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetPaymentIntentsSearchResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetPaymentIntentsSearchResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                              GetPaymentIntentsSearchResponseBody200)
                                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetPaymentIntentsSearchResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") "/v1/payment_intents/search" [StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPaymentIntentsSearchParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPaymentIntentsSearchParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "page") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getPaymentIntentsSearchParametersQueryPage parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "query") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getPaymentIntentsSearchParametersQueryQuery parameters)) (Data.Text.Internal.pack "form") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/payment_intents\/search.GET.parameters@ in the specification.
-- 
-- 
data GetPaymentIntentsSearchParameters = GetPaymentIntentsSearchParameters {
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  getPaymentIntentsSearchParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | queryLimit: Represents the parameter named \'limit\'
  -- 
  -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  , getPaymentIntentsSearchParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryPage: Represents the parameter named \'page\'
  -- 
  -- A cursor for pagination across multiple pages of results. Don\'t include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getPaymentIntentsSearchParametersQueryPage :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryQuery: Represents the parameter named \'query\'
  -- 
  -- The search query string. See [search query language](https:\/\/stripe.com\/docs\/search\#search-query-language) and the list of supported [query fields for payment intents](https:\/\/stripe.com\/docs\/search\#query-fields-for-payment-intents).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getPaymentIntentsSearchParametersQueryQuery :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetPaymentIntentsSearchParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsSearchParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsSearchParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsSearchParametersQueryPage obj) : ["queryQuery" Data.Aeson.Types.ToJSON..= getPaymentIntentsSearchParametersQueryQuery obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsSearchParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsSearchParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryPage" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsSearchParametersQueryPage obj) : ["queryQuery" Data.Aeson.Types.ToJSON..= getPaymentIntentsSearchParametersQueryQuery obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetPaymentIntentsSearchParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPaymentIntentsSearchParameters" (\obj -> (((GHC.Base.pure GetPaymentIntentsSearchParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryPage")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryQuery"))}
-- | Create a new 'GetPaymentIntentsSearchParameters' with all required fields.
mkGetPaymentIntentsSearchParameters :: Data.Text.Internal.Text -- ^ 'getPaymentIntentsSearchParametersQueryQuery'
  -> GetPaymentIntentsSearchParameters
mkGetPaymentIntentsSearchParameters getPaymentIntentsSearchParametersQueryQuery = GetPaymentIntentsSearchParameters{getPaymentIntentsSearchParametersQueryExpand = GHC.Maybe.Nothing,
                                                                                                                    getPaymentIntentsSearchParametersQueryLimit = GHC.Maybe.Nothing,
                                                                                                                    getPaymentIntentsSearchParametersQueryPage = GHC.Maybe.Nothing,
                                                                                                                    getPaymentIntentsSearchParametersQueryQuery = getPaymentIntentsSearchParametersQueryQuery}
-- | Represents a response of the operation 'getPaymentIntentsSearch'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetPaymentIntentsSearchResponseError' is used.
data GetPaymentIntentsSearchResponse =
   GetPaymentIntentsSearchResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetPaymentIntentsSearchResponse200 GetPaymentIntentsSearchResponseBody200 -- ^ Successful response.
  | GetPaymentIntentsSearchResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/v1\/payment_intents\/search.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetPaymentIntentsSearchResponseBody200 = GetPaymentIntentsSearchResponseBody200 {
  -- | data
  getPaymentIntentsSearchResponseBody200Data :: ([PaymentIntent])
  -- | has_more
  , getPaymentIntentsSearchResponseBody200HasMore :: GHC.Types.Bool
  -- | next_page
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getPaymentIntentsSearchResponseBody200NextPage :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | total_count: The total number of objects that match the query, only accurate up to 10,000.
  , getPaymentIntentsSearchResponseBody200TotalCount :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | url
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getPaymentIntentsSearchResponseBody200Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetPaymentIntentsSearchResponseBody200
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getPaymentIntentsSearchResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getPaymentIntentsSearchResponseBody200HasMore obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("next_page" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsSearchResponseBody200NextPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("total_count" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsSearchResponseBody200TotalCount obj) : ["url" Data.Aeson.Types.ToJSON..= getPaymentIntentsSearchResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "search_result"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getPaymentIntentsSearchResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getPaymentIntentsSearchResponseBody200HasMore obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("next_page" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsSearchResponseBody200NextPage obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("total_count" Data.Aeson.Types.ToJSON..=)) (getPaymentIntentsSearchResponseBody200TotalCount obj) : ["url" Data.Aeson.Types.ToJSON..= getPaymentIntentsSearchResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "search_result"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetPaymentIntentsSearchResponseBody200
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetPaymentIntentsSearchResponseBody200" (\obj -> ((((GHC.Base.pure GetPaymentIntentsSearchResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "next_page")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "total_count")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))}
-- | Create a new 'GetPaymentIntentsSearchResponseBody200' with all required fields.
mkGetPaymentIntentsSearchResponseBody200 :: [PaymentIntent] -- ^ 'getPaymentIntentsSearchResponseBody200Data'
  -> GHC.Types.Bool -- ^ 'getPaymentIntentsSearchResponseBody200HasMore'
  -> Data.Text.Internal.Text -- ^ 'getPaymentIntentsSearchResponseBody200Url'
  -> GetPaymentIntentsSearchResponseBody200
mkGetPaymentIntentsSearchResponseBody200 getPaymentIntentsSearchResponseBody200Data getPaymentIntentsSearchResponseBody200HasMore getPaymentIntentsSearchResponseBody200Url = GetPaymentIntentsSearchResponseBody200{getPaymentIntentsSearchResponseBody200Data = getPaymentIntentsSearchResponseBody200Data,
                                                                                                                                                                                                                     getPaymentIntentsSearchResponseBody200HasMore = getPaymentIntentsSearchResponseBody200HasMore,
                                                                                                                                                                                                                     getPaymentIntentsSearchResponseBody200NextPage = GHC.Maybe.Nothing,
                                                                                                                                                                                                                     getPaymentIntentsSearchResponseBody200TotalCount = GHC.Maybe.Nothing,
                                                                                                                                                                                                                     getPaymentIntentsSearchResponseBody200Url = getPaymentIntentsSearchResponseBody200Url}
