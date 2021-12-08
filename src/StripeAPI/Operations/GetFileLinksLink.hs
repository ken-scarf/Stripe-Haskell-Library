{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getFileLinksLink
module StripeAPI.Operations.GetFileLinksLink where

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

-- | > GET /v1/file_links/{link}
--
-- \<p>Retrieves the file link with the given ID.\<\/p>
getFileLinksLink ::
  forall m.
  StripeAPI.Common.MonadHTTP m =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetFileLinksLinkParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetFileLinksLinkResponse)
getFileLinksLink parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetFileLinksLinkResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetFileLinksLinkResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            FileLink
                                                      )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetFileLinksLinkResponseDefault
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
    (StripeAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET") (Data.Text.pack ("/v1/file_links/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel (getFileLinksLinkParametersPathLink parameters))) GHC.Base.++ ""))) [StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getFileLinksLinkParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True])

-- | Defines the object schema located at @paths.\/v1\/file_links\/{link}.GET.parameters@ in the specification.
data GetFileLinksLinkParameters = GetFileLinksLinkParameters
  { -- | pathLink: Represents the parameter named \'link\'
    getFileLinksLinkParametersPathLink :: Data.Text.Internal.Text,
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getFileLinksLinkParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetFileLinksLinkParameters where
  toJSON obj = Data.Aeson.Types.Internal.object ("pathLink" Data.Aeson.Types.ToJSON..= getFileLinksLinkParametersPathLink obj : "queryExpand" Data.Aeson.Types.ToJSON..= getFileLinksLinkParametersQueryExpand obj : GHC.Base.mempty)
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("pathLink" Data.Aeson.Types.ToJSON..= getFileLinksLinkParametersPathLink obj) GHC.Base.<> ("queryExpand" Data.Aeson.Types.ToJSON..= getFileLinksLinkParametersQueryExpand obj))

instance Data.Aeson.Types.FromJSON.FromJSON GetFileLinksLinkParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetFileLinksLinkParameters" (\obj -> (GHC.Base.pure GetFileLinksLinkParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "pathLink")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "queryExpand"))

-- | Create a new 'GetFileLinksLinkParameters' with all required fields.
mkGetFileLinksLinkParameters ::
  -- | 'getFileLinksLinkParametersPathLink'
  Data.Text.Internal.Text ->
  GetFileLinksLinkParameters
mkGetFileLinksLinkParameters getFileLinksLinkParametersPathLink =
  GetFileLinksLinkParameters
    { getFileLinksLinkParametersPathLink = getFileLinksLinkParametersPathLink,
      getFileLinksLinkParametersQueryExpand = GHC.Maybe.Nothing
    }

-- | Represents a response of the operation 'getFileLinksLink'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetFileLinksLinkResponseError' is used.
data GetFileLinksLinkResponse
  = -- | Means either no matching case available or a parse error
    GetFileLinksLinkResponseError GHC.Base.String
  | -- | Successful response.
    GetFileLinksLinkResponse200 FileLink
  | -- | Error response.
    GetFileLinksLinkResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
