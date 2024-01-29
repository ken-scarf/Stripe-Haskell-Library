-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation getClimateOrdersOrder
module StripeAPI.Operations.GetClimateOrdersOrder where

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

-- | > GET /v1/climate/orders/{order}
-- 
-- \<p>Retrieves the details of a Climate order object with the given ID.\<\/p>
getClimateOrdersOrder :: forall m . StripeAPI.Common.MonadHTTP m => GetClimateOrdersOrderParameters -- ^ Contains all available parameters of this operation (query and path parameters)
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetClimateOrdersOrderResponse) -- ^ Monadic computation which returns the result of the operation
getClimateOrdersOrder parameters = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetClimateOrdersOrderResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetClimateOrdersOrderResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                        Climate'order)
                                                                                                                                                                                   | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetClimateOrdersOrderResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                                   | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "GET") ("/v1/climate/orders/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel (getClimateOrdersOrderParametersPathOrder parameters))) GHC.Base.<> "")) [StripeAPI.Common.QueryParameter (Data.Text.Internal.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getClimateOrdersOrderParametersQueryExpand parameters) (Data.Text.Internal.pack "deepObject") GHC.Types.True])
-- | Defines the object schema located at @paths.\/v1\/climate\/orders\/{order}.GET.parameters@ in the specification.
-- 
-- 
data GetClimateOrdersOrderParameters = GetClimateOrdersOrderParameters {
  -- | pathOrder: Represents the parameter named \'order\'
  -- 
  -- Unique identifier of the order.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  getClimateOrdersOrderParametersPathOrder :: Data.Text.Internal.Text
  -- | queryExpand: Represents the parameter named \'expand\'
  -- 
  -- Specifies which fields in the response should be expanded.
  , getClimateOrdersOrderParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON GetClimateOrdersOrderParameters
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathOrder" Data.Aeson.Types.ToJSON..= getClimateOrdersOrderParametersPathOrder obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getClimateOrdersOrderParametersQueryExpand obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathOrder" Data.Aeson.Types.ToJSON..= getClimateOrdersOrderParametersPathOrder obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getClimateOrdersOrderParametersQueryExpand obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON GetClimateOrdersOrderParameters
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "GetClimateOrdersOrderParameters" (\obj -> (GHC.Base.pure GetClimateOrdersOrderParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathOrder")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand"))}
-- | Create a new 'GetClimateOrdersOrderParameters' with all required fields.
mkGetClimateOrdersOrderParameters :: Data.Text.Internal.Text -- ^ 'getClimateOrdersOrderParametersPathOrder'
  -> GetClimateOrdersOrderParameters
mkGetClimateOrdersOrderParameters getClimateOrdersOrderParametersPathOrder = GetClimateOrdersOrderParameters{getClimateOrdersOrderParametersPathOrder = getClimateOrdersOrderParametersPathOrder,
                                                                                                             getClimateOrdersOrderParametersQueryExpand = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'getClimateOrdersOrder'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetClimateOrdersOrderResponseError' is used.
data GetClimateOrdersOrderResponse =
   GetClimateOrdersOrderResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | GetClimateOrdersOrderResponse200 Climate'order -- ^ Successful response.
  | GetClimateOrdersOrderResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)