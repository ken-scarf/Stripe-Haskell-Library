{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getQuotesQuotePdf
module StripeAPI.Operations.GetQuotesQuotePdf where

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

-- | > GET /v1/quotes/{quote}/pdf
--
-- \<p>Download the PDF for a finalized quote\<\/p>
getQuotesQuotePdf ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetQuotesQuotePdfParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetQuotesQuotePdfResponse)
getQuotesQuotePdf parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetQuotesQuotePdfResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> Data.Either.Right GetQuotesQuotePdfResponse200
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetQuotesQuotePdfResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/quotes/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getQuotesQuotePdfParametersPathQuote parameters))) GHC.Base.++ "/pdf"))) [StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getQuotesQuotePdfParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True])

-- | Defines the object schema located at @paths.\/v1\/quotes\/{quote}\/pdf.GET.parameters@ in the specification.
data GetQuotesQuotePdfParameters = GetQuotesQuotePdfParameters
  { -- | pathQuote: Represents the parameter named \'quote\'
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getQuotesQuotePdfParametersPathQuote :: Data.Text.Internal.Text,
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getQuotesQuotePdfParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetQuotesQuotePdfParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["pathQuote" Data.Aeson.Types.ToJSON..= getQuotesQuotePdfParametersPathQuote obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getQuotesQuotePdfParametersQueryExpand obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["pathQuote" Data.Aeson.Types.ToJSON..= getQuotesQuotePdfParametersPathQuote obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getQuotesQuotePdfParametersQueryExpand obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetQuotesQuotePdfParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetQuotesQuotePdfParameters" (\obj -> (GHC.Base.pure GetQuotesQuotePdfParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathQuote")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand"))

-- | Create a new 'GetQuotesQuotePdfParameters' with all required fields.
mkGetQuotesQuotePdfParameters ::
  -- | 'getQuotesQuotePdfParametersPathQuote'
  Data.Text.Internal.Text ->
  GetQuotesQuotePdfParameters
mkGetQuotesQuotePdfParameters getQuotesQuotePdfParametersPathQuote =
  GetQuotesQuotePdfParameters
    { getQuotesQuotePdfParametersPathQuote = getQuotesQuotePdfParametersPathQuote,
      getQuotesQuotePdfParametersQueryExpand = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getQuotesQuotePdf'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetQuotesQuotePdfResponseError' is used.
data GetQuotesQuotePdfResponse
  = -- | Means either no matching case available or a parse error
    GetQuotesQuotePdfResponseError GHC.Base.String
  | -- | Successful response.
    GetQuotesQuotePdfResponse200
  | -- | Error response.
    GetQuotesQuotePdfResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)