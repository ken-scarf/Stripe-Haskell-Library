{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postTestHelpersTreasuryReceivedDebits
module StripeAPI.Operations.PostTestHelpersTreasuryReceivedDebits where

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

-- | > POST /v1/test_helpers/treasury/received_debits
--
-- \<p>Use this endpoint to simulate a test mode ReceivedDebit initiated by a third party. In live mode, you can’t directly create ReceivedDebits initiated by third parties.\<\/p>
postTestHelpersTreasuryReceivedDebits ::
  forall m.
  (StripeAPI.Common.MonadHTTP m) =>
  -- | The request body to send
  PostTestHelpersTreasuryReceivedDebitsRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostTestHelpersTreasuryReceivedDebitsResponse)
postTestHelpersTreasuryReceivedDebits body =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostTestHelpersTreasuryReceivedDebitsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                               | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostTestHelpersTreasuryReceivedDebitsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Treasury'receivedDebit
                                                      )
                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostTestHelpersTreasuryReceivedDebitsResponseDefault
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
    (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/test_helpers/treasury/received_debits") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/test_helpers\/treasury\/received_debits.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostTestHelpersTreasuryReceivedDebitsRequestBody = PostTestHelpersTreasuryReceivedDebitsRequestBody
  { -- | amount: Amount (in cents) to be transferred.
    postTestHelpersTreasuryReceivedDebitsRequestBodyAmount :: GHC.Types.Int,
    -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    postTestHelpersTreasuryReceivedDebitsRequestBodyCurrency :: Data.Text.Internal.Text,
    -- | description: An arbitrary string attached to the object. Often useful for displaying to users.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postTestHelpersTreasuryReceivedDebitsRequestBodyDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | expand: Specifies which fields in the response should be expanded.
    postTestHelpersTreasuryReceivedDebitsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | financial_account: The FinancialAccount to pull funds from.
    postTestHelpersTreasuryReceivedDebitsRequestBodyFinancialAccount :: Data.Text.Internal.Text,
    -- | initiating_payment_method_details: Initiating payment method details for the object.
    postTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails :: (GHC.Maybe.Maybe PostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostTestHelpersTreasuryReceivedDebitsRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= postTestHelpersTreasuryReceivedDebitsRequestBodyAmount obj] : ["currency" Data.Aeson.Types.ToJSON..= postTestHelpersTreasuryReceivedDebitsRequestBodyCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTreasuryReceivedDebitsRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTreasuryReceivedDebitsRequestBodyExpand obj) : ["financial_account" Data.Aeson.Types.ToJSON..= postTestHelpersTreasuryReceivedDebitsRequestBodyFinancialAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("initiating_payment_method_details" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails obj) : ["network" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "ach"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["amount" Data.Aeson.Types.ToJSON..= postTestHelpersTreasuryReceivedDebitsRequestBodyAmount obj] : ["currency" Data.Aeson.Types.ToJSON..= postTestHelpersTreasuryReceivedDebitsRequestBodyCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("description" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTreasuryReceivedDebitsRequestBodyDescription obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTreasuryReceivedDebitsRequestBodyExpand obj) : ["financial_account" Data.Aeson.Types.ToJSON..= postTestHelpersTreasuryReceivedDebitsRequestBodyFinancialAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("initiating_payment_method_details" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails obj) : ["network" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "ach"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostTestHelpersTreasuryReceivedDebitsRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTestHelpersTreasuryReceivedDebitsRequestBody" (\obj -> (((((GHC.Base.pure PostTestHelpersTreasuryReceivedDebitsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "financial_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "initiating_payment_method_details"))

-- | Create a new 'PostTestHelpersTreasuryReceivedDebitsRequestBody' with all required fields.
mkPostTestHelpersTreasuryReceivedDebitsRequestBody ::
  -- | 'postTestHelpersTreasuryReceivedDebitsRequestBodyAmount'
  GHC.Types.Int ->
  -- | 'postTestHelpersTreasuryReceivedDebitsRequestBodyCurrency'
  Data.Text.Internal.Text ->
  -- | 'postTestHelpersTreasuryReceivedDebitsRequestBodyFinancialAccount'
  Data.Text.Internal.Text ->
  PostTestHelpersTreasuryReceivedDebitsRequestBody
mkPostTestHelpersTreasuryReceivedDebitsRequestBody postTestHelpersTreasuryReceivedDebitsRequestBodyAmount postTestHelpersTreasuryReceivedDebitsRequestBodyCurrency postTestHelpersTreasuryReceivedDebitsRequestBodyFinancialAccount =
  PostTestHelpersTreasuryReceivedDebitsRequestBody
    { postTestHelpersTreasuryReceivedDebitsRequestBodyAmount = postTestHelpersTreasuryReceivedDebitsRequestBodyAmount,
      postTestHelpersTreasuryReceivedDebitsRequestBodyCurrency = postTestHelpersTreasuryReceivedDebitsRequestBodyCurrency,
      postTestHelpersTreasuryReceivedDebitsRequestBodyDescription = GHC.Maybe.Nothing,
      postTestHelpersTreasuryReceivedDebitsRequestBodyExpand = GHC.Maybe.Nothing,
      postTestHelpersTreasuryReceivedDebitsRequestBodyFinancialAccount = postTestHelpersTreasuryReceivedDebitsRequestBodyFinancialAccount,
      postTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @paths.\/v1\/test_helpers\/treasury\/received_debits.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.initiating_payment_method_details@ in the specification.
--
-- Initiating payment method details for the object.
data PostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails' = PostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'
  { -- | us_bank_account
    postTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount :: (GHC.Maybe.Maybe PostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount obj) : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "us_bank_account"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("us_bank_account" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount obj) : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "us_bank_account"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'" (\obj -> GHC.Base.pure PostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "us_bank_account"))

-- | Create a new 'PostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'' with all required fields.
mkPostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails' :: PostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'
mkPostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails' = PostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails' {postTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount = GHC.Maybe.Nothing}

-- | Defines the object schema located at @paths.\/v1\/test_helpers\/treasury\/received_debits.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.initiating_payment_method_details.properties.us_bank_account@ in the specification.
data PostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount' = PostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount'
  { -- | account_holder_name
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount'AccountHolderName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | account_number
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount'AccountNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | routing_number
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount'RoutingNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_name" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount'AccountHolderName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_number" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount'AccountNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount'RoutingNumber obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_name" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount'AccountHolderName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_number" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount'AccountNumber obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("routing_number" Data.Aeson.Types.ToJSON..=)) (postTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount'RoutingNumber obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount'" (\obj -> ((GHC.Base.pure PostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "routing_number"))

-- | Create a new 'PostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount'' with all required fields.
mkPostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount' :: PostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount'
mkPostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount' =
  PostTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount'
    { postTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount'AccountHolderName = GHC.Maybe.Nothing,
      postTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount'AccountNumber = GHC.Maybe.Nothing,
      postTestHelpersTreasuryReceivedDebitsRequestBodyInitiatingPaymentMethodDetails'UsBankAccount'RoutingNumber = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'postTestHelpersTreasuryReceivedDebits'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTestHelpersTreasuryReceivedDebitsResponseError' is used.
data PostTestHelpersTreasuryReceivedDebitsResponse
  = -- | Means either no matching case available or a parse error
    PostTestHelpersTreasuryReceivedDebitsResponseError GHC.Base.String
  | -- | Successful response.
    PostTestHelpersTreasuryReceivedDebitsResponse200 Treasury'receivedDebit
  | -- | Error response.
    PostTestHelpersTreasuryReceivedDebitsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
