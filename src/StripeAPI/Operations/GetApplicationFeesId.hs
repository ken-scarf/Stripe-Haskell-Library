{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getApplicationFeesId
module StripeAPI.Operations.GetApplicationFeesId where

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
import qualified Data.Functor
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

-- | > GET /v1/application_fees/{id}
--
-- \<p>Retrieves the details of an application fee that your account has collected. The same information is returned when refunding the application fee.\<\/p>
getApplicationFeesId ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetApplicationFeesIdParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetApplicationFeesIdResponse)
getApplicationFeesId parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetApplicationFeesIdResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetApplicationFeesIdResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            ApplicationFee
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetApplicationFeesIdResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/application_fees/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getApplicationFeesIdParametersPathId parameters))) GHC.Base.++ ""))) [StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getApplicationFeesIdParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True])

-- | Defines the object schema located at @paths.\/v1\/application_fees\/{id}.GET.parameters@ in the specification.
data GetApplicationFeesIdParameters = GetApplicationFeesIdParameters
  { -- | pathId: Represents the parameter named \'id\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getApplicationFeesIdParametersPathId :: Data.Text.Internal.Text,
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getApplicationFeesIdParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetApplicationFeesIdParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("pathId" Data.Aeson.Types.ToJSON..= getApplicationFeesIdParametersPathId obj : "queryExpand" Data.Aeson.Types.ToJSON..= getApplicationFeesIdParametersQueryExpand obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathId" Data.Aeson.Types.ToJSON..= getApplicationFeesIdParametersPathId obj) GHC.Base.<> ("queryExpand" Data.Aeson.Types.ToJSON..= getApplicationFeesIdParametersQueryExpand obj))

instance Data.Aeson.Types.FromJSON.FromJSON GetApplicationFeesIdParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetApplicationFeesIdParameters" (\obj -> (GHC.Base.pure GetApplicationFeesIdParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathId")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand"))

-- | Create a new 'GetApplicationFeesIdParameters' with all required fields.
mkGetApplicationFeesIdParameters ::
  -- | 'getApplicationFeesIdParametersPathId'
  Data.Text.Internal.Text ->
  GetApplicationFeesIdParameters
mkGetApplicationFeesIdParameters getApplicationFeesIdParametersPathId =
  GetApplicationFeesIdParameters
    { getApplicationFeesIdParametersPathId = getApplicationFeesIdParametersPathId,
      getApplicationFeesIdParametersQueryExpand = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getApplicationFeesId'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetApplicationFeesIdResponseError' is used.
data GetApplicationFeesIdResponse
  = -- | Means either no matching case available or a parse error
    GetApplicationFeesIdResponseError GHC.Base.String
  | -- | Successful response.
    GetApplicationFeesIdResponse200 ApplicationFee
  | -- | Error response.
    GetApplicationFeesIdResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
