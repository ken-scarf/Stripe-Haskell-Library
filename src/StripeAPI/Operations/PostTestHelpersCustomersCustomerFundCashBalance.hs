{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postTestHelpersCustomersCustomerFundCashBalance
module StripeAPI.Operations.PostTestHelpersCustomersCustomerFundCashBalance where

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

-- | > POST /v1/test_helpers/customers/{customer}/fund_cash_balance
--
-- \<p>Create an incoming testmode bank transfer\<\/p>
postTestHelpersCustomersCustomerFundCashBalance ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | customer | Constraints: Maximum length of 5000
  Data.Text.Internal.Text ->
  -- | The request body to send
  PostTestHelpersCustomersCustomerFundCashBalanceRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostTestHelpersCustomersCustomerFundCashBalanceResponse)
postTestHelpersCustomersCustomerFundCashBalance
  customer
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostTestHelpersCustomersCustomerFundCashBalanceResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                   | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostTestHelpersCustomersCustomerFundCashBalanceResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              CustomerBalanceTransaction
                                                        )
                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostTestHelpersCustomersCustomerFundCashBalanceResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/test_helpers/customers/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel customer)) GHC.Base.++ "/fund_cash_balance"))) GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/test_helpers\/customers\/{customer}\/fund_cash_balance.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostTestHelpersCustomersCustomerFundCashBalanceRequestBody = PostTestHelpersCustomersCustomerFundCashBalanceRequestBody
  { -- | amount: Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https:\/\/stripe.com\/docs\/currencies\#zero-decimal) (e.g., 100 cents to charge \$1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is \$0.50 US or [equivalent in charge currency](https:\/\/stripe.com\/docs\/currencies\#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of \$999,999.99).
    postTestHelpersCustomersCustomerFundCashBalanceRequestBodyAmount :: GHC.Types.Int,
    -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    postTestHelpersCustomersCustomerFundCashBalanceRequestBodyCurrency :: Data.Text.Internal.Text,
    -- | expand: Specifies which fields in the response should be expanded.
    postTestHelpersCustomersCustomerFundCashBalanceRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | reference
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postTestHelpersCustomersCustomerFundCashBalanceRequestBodyReference :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostTestHelpersCustomersCustomerFundCashBalanceRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= postTestHelpersCustomersCustomerFundCashBalanceRequestBodyAmount obj] : ["currency" Data.Aeson.Types.ToJSON..= postTestHelpersCustomersCustomerFundCashBalanceRequestBodyCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTestHelpersCustomersCustomerFundCashBalanceRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reference" Data.Aeson.Types.ToJSON..=)) (postTestHelpersCustomersCustomerFundCashBalanceRequestBodyReference obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= postTestHelpersCustomersCustomerFundCashBalanceRequestBodyAmount obj] : ["currency" Data.Aeson.Types.ToJSON..= postTestHelpersCustomersCustomerFundCashBalanceRequestBodyCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTestHelpersCustomersCustomerFundCashBalanceRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reference" Data.Aeson.Types.ToJSON..=)) (postTestHelpersCustomersCustomerFundCashBalanceRequestBodyReference obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostTestHelpersCustomersCustomerFundCashBalanceRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTestHelpersCustomersCustomerFundCashBalanceRequestBody" (\obj -> (((GHC.Base.pure PostTestHelpersCustomersCustomerFundCashBalanceRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reference"))

-- | Create a new 'PostTestHelpersCustomersCustomerFundCashBalanceRequestBody' with all required fields.
mkPostTestHelpersCustomersCustomerFundCashBalanceRequestBody ::
  -- | 'postTestHelpersCustomersCustomerFundCashBalanceRequestBodyAmount'
  GHC.Types.Int ->
  -- | 'postTestHelpersCustomersCustomerFundCashBalanceRequestBodyCurrency'
  Data.Text.Internal.Text ->
  PostTestHelpersCustomersCustomerFundCashBalanceRequestBody
mkPostTestHelpersCustomersCustomerFundCashBalanceRequestBody postTestHelpersCustomersCustomerFundCashBalanceRequestBodyAmount postTestHelpersCustomersCustomerFundCashBalanceRequestBodyCurrency =
  PostTestHelpersCustomersCustomerFundCashBalanceRequestBody
    { postTestHelpersCustomersCustomerFundCashBalanceRequestBodyAmount = postTestHelpersCustomersCustomerFundCashBalanceRequestBodyAmount,
      postTestHelpersCustomersCustomerFundCashBalanceRequestBodyCurrency = postTestHelpersCustomersCustomerFundCashBalanceRequestBodyCurrency,
      postTestHelpersCustomersCustomerFundCashBalanceRequestBodyExpand = GHC.Maybe.Nothing,
      postTestHelpersCustomersCustomerFundCashBalanceRequestBodyReference = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'postTestHelpersCustomersCustomerFundCashBalance'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTestHelpersCustomersCustomerFundCashBalanceResponseError' is used.
data PostTestHelpersCustomersCustomerFundCashBalanceResponse
  = -- | Means either no matching case available or a parse error
    PostTestHelpersCustomersCustomerFundCashBalanceResponseError GHC.Base.String
  | -- | Successful response.
    PostTestHelpersCustomersCustomerFundCashBalanceResponse200 CustomerBalanceTransaction
  | -- | Error response.
    PostTestHelpersCustomersCustomerFundCashBalanceResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)