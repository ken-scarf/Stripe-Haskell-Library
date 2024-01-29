-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getTreasuryOutboundPayments
module StripeAPI.Operations.GetTreasuryOutboundPayments where

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

-- | > GET /v1/treasury/outbound_payments
-- 
-- \<p>Returns a list of OutboundPayments sent from the specified FinancialAccount.\<\/p>
getTreasuryOutboundPayments :: forall m . StripeAPI.Common.MonadHTTP m => GetTreasuryOutboundPaymentsParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetTreasuryOutboundPaymentsResponse) -- ^ Monadic computation which returns the result of the operation
getTreasuryOutboundPayments parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetTreasuryOutboundPaymentsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetTreasuryOutboundPaymentsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                          GetTreasuryOutboundPaymentsResponseBody200)
                                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetTreasuryOutboundPaymentsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") "/v1/treasury/outbound_payments" [StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "customer") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryOutboundPaymentsParametersQueryCustomer parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryOutboundPaymentsParametersQueryEndingBefore parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryOutboundPaymentsParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "financial_account") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getTreasuryOutboundPaymentsParametersQueryFinancialAccount parameters)) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryOutboundPaymentsParametersQueryLimit parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryOutboundPaymentsParametersQueryStartingAfter parameters) (Data.Text.Internal.pack "form") GHC.Types.True,
                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "status") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getTreasuryOutboundPaymentsParametersQueryStatus parameters) (Data.Text.Internal.pack "form") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/treasury\/outbound_payments.GET.parameters@ in the specification.
-- 
-- 
data GetTreasuryOutboundPaymentsParameters = GetTreasuryOutboundPaymentsParameters {
  -- | queryCustomer: Represents the parameter named \'customer\'
  -- 
  -- Only return OutboundPayments sent to this customer.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  getTreasuryOutboundPaymentsParametersQueryCustomer :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryEnding_before: Represents the parameter named \'ending_before\'
  -- 
  -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getTreasuryOutboundPaymentsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getTreasuryOutboundPaymentsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | queryFinancial_account: Represents the parameter named \'financial_account\'
  -- 
  -- Returns objects associated with this FinancialAccount.
  , getTreasuryOutboundPaymentsParametersQueryFinancialAccount :: Data.Text.Internal.Text
  -- | queryLimit: Represents the parameter named \'limit\'
  -- 
  -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
  , getTreasuryOutboundPaymentsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | queryStarting_after: Represents the parameter named \'starting_after\'
  -- 
  -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , getTreasuryOutboundPaymentsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | queryStatus: Represents the parameter named \'status\'
  -- 
  -- Only return OutboundPayments that have the given status: \`processing\`, \`failed\`, \`posted\`, \`returned\`, or \`canceled\`.
  , getTreasuryOutboundPaymentsParametersQueryStatus :: (GHC.Maybe.Maybe GetTreasuryOutboundPaymentsParametersQueryStatus')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryOutboundPaymentsParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCustomer" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundPaymentsParametersQueryCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundPaymentsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundPaymentsParametersQueryExpand obj) : ["queryFinancial_account" Data.Aeson.Types.ToJSON..= getTreasuryOutboundPaymentsParametersQueryFinancialAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundPaymentsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundPaymentsParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundPaymentsParametersQueryStatus obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCustomer" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundPaymentsParametersQueryCustomer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundPaymentsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundPaymentsParametersQueryExpand obj) : ["queryFinancial_account" Data.Aeson.Types.ToJSON..= getTreasuryOutboundPaymentsParametersQueryFinancialAccount obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundPaymentsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundPaymentsParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStatus" Data.Aeson.Types.ToJSON..=)) (getTreasuryOutboundPaymentsParametersQueryStatus obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryOutboundPaymentsParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTreasuryOutboundPaymentsParameters" (\obj -> ((((((GHC.Base.pure GetTreasuryOutboundPaymentsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCustomer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryFinancial_account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStatus"))}
-- | Create a new 'GetTreasuryOutboundPaymentsParameters' with all required fields.
mkGetTreasuryOutboundPaymentsParameters :: Data.Text.Internal.Text -- ^ 'getTreasuryOutboundPaymentsParametersQueryFinancialAccount'
  -> GetTreasuryOutboundPaymentsParameters
mkGetTreasuryOutboundPaymentsParameters getTreasuryOutboundPaymentsParametersQueryFinancialAccount = GetTreasuryOutboundPaymentsParameters{getTreasuryOutboundPaymentsParametersQueryCustomer = GHC.Maybe.Nothing,
                                                                                                                                           getTreasuryOutboundPaymentsParametersQueryEndingBefore = GHC.Maybe.Nothing,
                                                                                                                                           getTreasuryOutboundPaymentsParametersQueryExpand = GHC.Maybe.Nothing,
                                                                                                                                           getTreasuryOutboundPaymentsParametersQueryFinancialAccount = getTreasuryOutboundPaymentsParametersQueryFinancialAccount,
                                                                                                                                           getTreasuryOutboundPaymentsParametersQueryLimit = GHC.Maybe.Nothing,
                                                                                                                                           getTreasuryOutboundPaymentsParametersQueryStartingAfter = GHC.Maybe.Nothing,
                                                                                                                                           getTreasuryOutboundPaymentsParametersQueryStatus = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @paths.\/v1\/treasury\/outbound_payments.GET.parameters.properties.queryStatus@ in the specification.
-- 
-- Represents the parameter named \'status\'
-- 
-- Only return OutboundPayments that have the given status: \`processing\`, \`failed\`, \`posted\`, \`returned\`, or \`canceled\`.
data GetTreasuryOutboundPaymentsParametersQueryStatus' =
   GetTreasuryOutboundPaymentsParametersQueryStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | GetTreasuryOutboundPaymentsParametersQueryStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | GetTreasuryOutboundPaymentsParametersQueryStatus'EnumCanceled -- ^ Represents the JSON value @"canceled"@
  | GetTreasuryOutboundPaymentsParametersQueryStatus'EnumFailed -- ^ Represents the JSON value @"failed"@
  | GetTreasuryOutboundPaymentsParametersQueryStatus'EnumPosted -- ^ Represents the JSON value @"posted"@
  | GetTreasuryOutboundPaymentsParametersQueryStatus'EnumProcessing -- ^ Represents the JSON value @"processing"@
  | GetTreasuryOutboundPaymentsParametersQueryStatus'EnumReturned -- ^ Represents the JSON value @"returned"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryOutboundPaymentsParametersQueryStatus'
    where {toJSON (GetTreasuryOutboundPaymentsParametersQueryStatus'Other val) = val;
           toJSON (GetTreasuryOutboundPaymentsParametersQueryStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (GetTreasuryOutboundPaymentsParametersQueryStatus'EnumCanceled) = "canceled";
           toJSON (GetTreasuryOutboundPaymentsParametersQueryStatus'EnumFailed) = "failed";
           toJSON (GetTreasuryOutboundPaymentsParametersQueryStatus'EnumPosted) = "posted";
           toJSON (GetTreasuryOutboundPaymentsParametersQueryStatus'EnumProcessing) = "processing";
           toJSON (GetTreasuryOutboundPaymentsParametersQueryStatus'EnumReturned) = "returned"}
instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryOutboundPaymentsParametersQueryStatus'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "canceled" -> GetTreasuryOutboundPaymentsParametersQueryStatus'EnumCanceled
                                             | val GHC.Classes.== "failed" -> GetTreasuryOutboundPaymentsParametersQueryStatus'EnumFailed
                                             | val GHC.Classes.== "posted" -> GetTreasuryOutboundPaymentsParametersQueryStatus'EnumPosted
                                             | val GHC.Classes.== "processing" -> GetTreasuryOutboundPaymentsParametersQueryStatus'EnumProcessing
                                             | val GHC.Classes.== "returned" -> GetTreasuryOutboundPaymentsParametersQueryStatus'EnumReturned
                                             | GHC.Base.otherwise -> GetTreasuryOutboundPaymentsParametersQueryStatus'Other val)}
-- | Represents a response of the operation 'getTreasuryOutboundPayments'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetTreasuryOutboundPaymentsResponseError' is used.
data GetTreasuryOutboundPaymentsResponse =
   GetTreasuryOutboundPaymentsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetTreasuryOutboundPaymentsResponse200 GetTreasuryOutboundPaymentsResponseBody200 -- ^ Successful response.
  | GetTreasuryOutboundPaymentsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/v1\/treasury\/outbound_payments.GET.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data GetTreasuryOutboundPaymentsResponseBody200 = GetTreasuryOutboundPaymentsResponseBody200 {
  -- | data: Details about each object.
  getTreasuryOutboundPaymentsResponseBody200Data :: ([Treasury'outboundPayment])
  -- | has_more: True if this list has another page of items after this one that can be fetched.
  , getTreasuryOutboundPaymentsResponseBody200HasMore :: GHC.Types.Bool
  -- | url: The URL where this list can be accessed.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  -- * Must match pattern \'^\/v1\/treasury\/outbound_payments\'
  , getTreasuryOutboundPaymentsResponseBody200Url :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetTreasuryOutboundPaymentsResponseBody200
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getTreasuryOutboundPaymentsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getTreasuryOutboundPaymentsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getTreasuryOutboundPaymentsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getTreasuryOutboundPaymentsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getTreasuryOutboundPaymentsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getTreasuryOutboundPaymentsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetTreasuryOutboundPaymentsResponseBody200
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetTreasuryOutboundPaymentsResponseBody200" (\obj -> ((GHC.Base.pure GetTreasuryOutboundPaymentsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))}
-- | Create a new 'GetTreasuryOutboundPaymentsResponseBody200' with all required fields.
mkGetTreasuryOutboundPaymentsResponseBody200 :: [Treasury'outboundPayment] -- ^ 'getTreasuryOutboundPaymentsResponseBody200Data'
  -> GHC.Types.Bool -- ^ 'getTreasuryOutboundPaymentsResponseBody200HasMore'
  -> Data.Text.Internal.Text -- ^ 'getTreasuryOutboundPaymentsResponseBody200Url'
  -> GetTreasuryOutboundPaymentsResponseBody200
mkGetTreasuryOutboundPaymentsResponseBody200 getTreasuryOutboundPaymentsResponseBody200Data getTreasuryOutboundPaymentsResponseBody200HasMore getTreasuryOutboundPaymentsResponseBody200Url = GetTreasuryOutboundPaymentsResponseBody200{getTreasuryOutboundPaymentsResponseBody200Data = getTreasuryOutboundPaymentsResponseBody200Data,
                                                                                                                                                                                                                                         getTreasuryOutboundPaymentsResponseBody200HasMore = getTreasuryOutboundPaymentsResponseBody200HasMore,
                                                                                                                                                                                                                                         getTreasuryOutboundPaymentsResponseBody200Url = getTreasuryOutboundPaymentsResponseBody200Url}
