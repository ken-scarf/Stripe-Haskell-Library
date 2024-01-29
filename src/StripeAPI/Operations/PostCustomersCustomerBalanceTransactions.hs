{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postCustomersCustomerBalanceTransactions
module StripeAPI.Operations.PostCustomersCustomerBalanceTransactions where

import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | > POST /v1/customers/{customer}/balance_transactions
--
-- \<p>Creates an immutable transaction that updates the customer’s credit \<a href=\"\/docs\/billing\/customer\/balance\">balance\<\/a>.\<\/p>
postCustomersCustomerBalanceTransactions ::
  forall m.
  (StripeAPI.Common.MonadHTTP m) =>
  -- | customer | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  PostCustomersCustomerBalanceTransactionsRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostCustomersCustomerBalanceTransactionsResponse)
postCustomersCustomerBalanceTransactions
  customer
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostCustomersCustomerBalanceTransactionsResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostCustomersCustomerBalanceTransactionsResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              CustomerBalanceTransaction
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostCustomersCustomerBalanceTransactionsResponseDefault
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              Error
                                                        )
                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type"
                           )
                  response_0
            )
            response_0
      )
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/balance_transactions"))) GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/customers\/{customer}\/balance_transactions.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostCustomersCustomerBalanceTransactionsRequestBody = PostCustomersCustomerBalanceTransactionsRequestBody
  { -- | amount: The integer amount in **cents (or local equivalent)** to apply to the customer\'s credit balance.
    postCustomersCustomerBalanceTransactionsRequestBodyAmount :: GHC.Types.Int,
    -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies). If the customer\'s [\`currency\`](https:\/\/stripe.com\/docs\/api\/customers\/object\#customer_object-currency) is set, this value must match it. If the customer\'s \`currency\` is not set, it will be updated to this value.
    postCustomersCustomerBalanceTransactionsRequestBodyCurrency :: Data.Text.Internal.Text,
    -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
    --
    -- Constraints:
    --
    -- * Maximum length of 350
    postCustomersCustomerBalanceTransactionsRequestBodyDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | expand: Specifies which fields in the response should be expanded.
    postCustomersCustomerBalanceTransactionsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postCustomersCustomerBalanceTransactionsRequestBodyMetadata :: (GHC.Maybe.Maybe PostCustomersCustomerBalanceTransactionsRequestBodyMetadata'Variants)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostCustomersCustomerBalanceTransactionsRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= postCustomersCustomerBalanceTransactionsRequestBodyAmount obj] : ["currency" Data.Aeson.Types.ToJSON..= postCustomersCustomerBalanceTransactionsRequestBodyCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerBalanceTransactionsRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerBalanceTransactionsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerBalanceTransactionsRequestBodyMetadata obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= postCustomersCustomerBalanceTransactionsRequestBodyAmount obj] : ["currency" Data.Aeson.Types.ToJSON..= postCustomersCustomerBalanceTransactionsRequestBodyCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerBalanceTransactionsRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerBalanceTransactionsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postCustomersCustomerBalanceTransactionsRequestBodyMetadata obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBalanceTransactionsRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCustomersCustomerBalanceTransactionsRequestBody" (\obj -> ((((GHC.Base.pure PostCustomersCustomerBalanceTransactionsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata"))

-- | Create a new 'PostCustomersCustomerBalanceTransactionsRequestBody' with all required fields.
mkPostCustomersCustomerBalanceTransactionsRequestBody ::
  -- | 'postCustomersCustomerBalanceTransactionsRequestBodyAmount'
  GHC.Types.Int ->
  -- | 'postCustomersCustomerBalanceTransactionsRequestBodyCurrency'
  Data.Text.Internal.Text ->
  PostCustomersCustomerBalanceTransactionsRequestBody
mkPostCustomersCustomerBalanceTransactionsRequestBody postCustomersCustomerBalanceTransactionsRequestBodyAmount postCustomersCustomerBalanceTransactionsRequestBodyCurrency =
  PostCustomersCustomerBalanceTransactionsRequestBody
    { postCustomersCustomerBalanceTransactionsRequestBodyAmount = postCustomersCustomerBalanceTransactionsRequestBodyAmount,
      postCustomersCustomerBalanceTransactionsRequestBodyCurrency = postCustomersCustomerBalanceTransactionsRequestBodyCurrency,
      postCustomersCustomerBalanceTransactionsRequestBodyDescription = GHC.Maybe.Nothing,
      postCustomersCustomerBalanceTransactionsRequestBodyExpand = GHC.Maybe.Nothing,
      postCustomersCustomerBalanceTransactionsRequestBodyMetadata = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/customers\/{customer}\/balance_transactions.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
--
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostCustomersCustomerBalanceTransactionsRequestBodyMetadata'Variants
  = -- | Represents the JSON value @""@
    PostCustomersCustomerBalanceTransactionsRequestBodyMetadata'EmptyString
  | PostCustomersCustomerBalanceTransactionsRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostCustomersCustomerBalanceTransactionsRequestBodyMetadata'Variants where
  toJSON (PostCustomersCustomerBalanceTransactionsRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostCustomersCustomerBalanceTransactionsRequestBodyMetadata'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostCustomersCustomerBalanceTransactionsRequestBodyMetadata'Variants where
  parseJSON val =
    if
      | val GHC.Classes.== "" -> GHC.Base.pure PostCustomersCustomerBalanceTransactionsRequestBodyMetadata'EmptyString
      | GHC.Base.otherwise -> case (PostCustomersCustomerBalanceTransactionsRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
          Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
          Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Represents a response of the operation 'postCustomersCustomerBalanceTransactions'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCustomersCustomerBalanceTransactionsResponseError' is used.
data PostCustomersCustomerBalanceTransactionsResponse
  = -- | Means either no matching case available or a parse error
    PostCustomersCustomerBalanceTransactionsResponseError GHC.Base.String
  | -- | Successful response.
    PostCustomersCustomerBalanceTransactionsResponse200 CustomerBalanceTransaction
  | -- | Error response.
    PostCustomersCustomerBalanceTransactionsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
