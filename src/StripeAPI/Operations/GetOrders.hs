{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DeriveGeneric #-}

module StripeAPI.Operations.GetOrders where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Generics
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

-- | No summary provided
--
-- GET /v1/orders
getOrders :: forall m s . (StripeAPI.Common.MonadHTTP m,
                           StripeAPI.Common.SecurityScheme s) =>
             StripeAPI.Common.Configuration s ->
             GHC.Maybe.Maybe GHC.Base.String ->
             GHC.Maybe.Maybe GHC.Base.String ->
             GHC.Maybe.Maybe GHC.Base.String ->
             GHC.Maybe.Maybe GHC.Base.String ->
             GHC.Maybe.Maybe GHC.Base.String ->
             GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
             GHC.Maybe.Maybe GHC.Base.String ->
             GHC.Maybe.Maybe GHC.Base.String ->
             GHC.Maybe.Maybe GHC.Base.String ->
             GHC.Maybe.Maybe GHC.Base.String ->
             GetOrdersRequestBody ->
             m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                   (Network.HTTP.Client.Types.Response GetOrdersResponse))
getOrders config
          created
          customer
          endingBefore
          expand
          ids
          limit
          startingAfter
          status
          statusTransitions
          upstreamIds
          body = GHC.Base.fmap (GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either GetOrdersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetOrdersResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                             GetOrdersResponseBody200)
                                                                                                                                                                    | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetOrdersResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                    | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0)) (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/orders") ((Data.Text.pack "created",
                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "customer",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 StripeAPI.Common.stringifyModel Data.Functor.<$> customer) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "ids",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> ids) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : ((Data.Text.pack "status",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> status) : ((Data.Text.pack "status_transitions",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> statusTransitions) : ((Data.Text.pack "upstream_ids",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               StripeAPI.Common.stringifyModel Data.Functor.<$> upstreamIds) : [])))))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getOrdersRaw :: forall m s . (StripeAPI.Common.MonadHTTP m,
                              StripeAPI.Common.SecurityScheme s) =>
                StripeAPI.Common.Configuration s ->
                GHC.Maybe.Maybe GHC.Base.String ->
                GHC.Maybe.Maybe GHC.Base.String ->
                GHC.Maybe.Maybe GHC.Base.String ->
                GHC.Maybe.Maybe GHC.Base.String ->
                GHC.Maybe.Maybe GHC.Base.String ->
                GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                GHC.Maybe.Maybe GHC.Base.String ->
                GHC.Maybe.Maybe GHC.Base.String ->
                GHC.Maybe.Maybe GHC.Base.String ->
                GHC.Maybe.Maybe GHC.Base.String ->
                GetOrdersRequestBody ->
                m (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                      (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getOrdersRaw config
             created
             customer
             endingBefore
             expand
             ids
             limit
             startingAfter
             status
             statusTransitions
             upstreamIds
             body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/orders") ((Data.Text.pack "created",
                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "customer",
                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> customer) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "ids",
                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> ids) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                           StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : ((Data.Text.pack "status",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> status) : ((Data.Text.pack "status_transitions",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> statusTransitions) : ((Data.Text.pack "upstream_ids",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        StripeAPI.Common.stringifyModel Data.Functor.<$> upstreamIds) : [])))))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getOrdersM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                            StripeAPI.Common.SecurityScheme s) =>
              GHC.Maybe.Maybe GHC.Base.String ->
              GHC.Maybe.Maybe GHC.Base.String ->
              GHC.Maybe.Maybe GHC.Base.String ->
              GHC.Maybe.Maybe GHC.Base.String ->
              GHC.Maybe.Maybe GHC.Base.String ->
              GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
              GHC.Maybe.Maybe GHC.Base.String ->
              GHC.Maybe.Maybe GHC.Base.String ->
              GHC.Maybe.Maybe GHC.Base.String ->
              GHC.Maybe.Maybe GHC.Base.String ->
              GetOrdersRequestBody ->
              Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                 m
                                                 (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                     (Network.HTTP.Client.Types.Response GetOrdersResponse))
getOrdersM created
           customer
           endingBefore
           expand
           ids
           limit
           startingAfter
           status
           statusTransitions
           upstreamIds
           body = GHC.Base.fmap (GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either GetOrdersResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> GetOrdersResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                              GetOrdersResponseBody200)
                                                                                                                                                                     | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> GetOrdersResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                Error)
                                                                                                                                                                     | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2)) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/orders") ((Data.Text.pack "created",
                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "customer",
                                                                                                                                                                                                                                                                                                                                                                                                                                                            StripeAPI.Common.stringifyModel Data.Functor.<$> customer) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "ids",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> ids) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : ((Data.Text.pack "status",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> status) : ((Data.Text.pack "status_transitions",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    StripeAPI.Common.stringifyModel Data.Functor.<$> statusTransitions) : ((Data.Text.pack "upstream_ids",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          StripeAPI.Common.stringifyModel Data.Functor.<$> upstreamIds) : [])))))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
getOrdersRawM :: forall m s . (StripeAPI.Common.MonadHTTP m,
                               StripeAPI.Common.SecurityScheme s) =>
                 GHC.Maybe.Maybe GHC.Base.String ->
                 GHC.Maybe.Maybe GHC.Base.String ->
                 GHC.Maybe.Maybe GHC.Base.String ->
                 GHC.Maybe.Maybe GHC.Base.String ->
                 GHC.Maybe.Maybe GHC.Base.String ->
                 GHC.Maybe.Maybe GHC.Integer.Type.Integer ->
                 GHC.Maybe.Maybe GHC.Base.String ->
                 GHC.Maybe.Maybe GHC.Base.String ->
                 GHC.Maybe.Maybe GHC.Base.String ->
                 GHC.Maybe.Maybe GHC.Base.String ->
                 GetOrdersRequestBody ->
                 Control.Monad.Trans.Reader.ReaderT (StripeAPI.Common.Configuration s)
                                                    m
                                                    (Data.Either.Either Network.HTTP.Client.Types.HttpException
                                                                        (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString))
getOrdersRawM created
              customer
              endingBefore
              expand
              ids
              limit
              startingAfter
              status
              statusTransitions
              upstreamIds
              body = GHC.Base.id (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper (Data.Text.pack "GET")) (Data.Text.pack "/v1/orders") ((Data.Text.pack "created",
                                                                                                                                                         StripeAPI.Common.stringifyModel Data.Functor.<$> created) : ((Data.Text.pack "customer",
                                                                                                                                                                                                                     StripeAPI.Common.stringifyModel Data.Functor.<$> customer) : ((Data.Text.pack "ending_before",
                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> endingBefore) : ((Data.Text.pack "expand",
                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> expand) : ((Data.Text.pack "ids",
                                                                                                                                                                                                                                                                                                                                                                                                              StripeAPI.Common.stringifyModel Data.Functor.<$> ids) : ((Data.Text.pack "limit",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      StripeAPI.Common.stringifyModel Data.Functor.<$> limit) : ((Data.Text.pack "starting_after",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                StripeAPI.Common.stringifyModel Data.Functor.<$> startingAfter) : ((Data.Text.pack "status",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  StripeAPI.Common.stringifyModel Data.Functor.<$> status) : ((Data.Text.pack "status_transitions",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             StripeAPI.Common.stringifyModel Data.Functor.<$> statusTransitions) : ((Data.Text.pack "upstream_ids",
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   StripeAPI.Common.stringifyModel Data.Functor.<$> upstreamIds) : [])))))))))) body StripeAPI.Common.RequestBodyEncodingFormData)
data GetOrdersRequestBody
    = GetOrdersRequestBody {}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetOrdersRequestBody
    where toJSON obj = Data.Aeson.object []
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "string" ("string" :: GHC.Base.String))
instance Data.Aeson.Types.FromJSON.FromJSON GetOrdersRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetOrdersRequestBody" (\obj -> GHC.Base.pure GetOrdersRequestBody)

data GetOrdersResponse
    = GetOrdersResponseError GHC.Base.String
    | GetOrdersResponse200 GetOrdersResponseBody200
    | GetOrdersResponseDefault Error
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetOrdersResponseBody200
    = GetOrdersResponseBody200 {getOrdersResponseBody200Data :: ([] Order),
                                getOrdersResponseBody200HasMore :: GHC.Types.Bool,
                                getOrdersResponseBody200Object :: GetOrdersResponseBody200Object',
                                getOrdersResponseBody200Url :: GHC.Base.String}
    deriving (GHC.Show.Show, GHC.Classes.Eq)
data GetOrdersResponseBody200Object'
    = GetOrdersResponseBody200Object'EnumOther Data.Aeson.Types.Internal.Value
    | GetOrdersResponseBody200Object'EnumTyped GHC.Base.String
    | GetOrdersResponseBody200Object'EnumStringList
    deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.ToJSON GetOrdersResponseBody200Object'
    where toJSON (GetOrdersResponseBody200Object'EnumOther patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetOrdersResponseBody200Object'EnumTyped patternName) = Data.Aeson.Types.ToJSON.toJSON patternName
          toJSON (GetOrdersResponseBody200Object'EnumStringList) = Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list"
instance Data.Aeson.FromJSON GetOrdersResponseBody200Object'
    where parseJSON val = GHC.Base.pure (if val GHC.Classes.== (Data.Aeson.Types.Internal.String GHC.Base.$ Data.Text.pack "list")
                                          then GetOrdersResponseBody200Object'EnumStringList
                                          else GetOrdersResponseBody200Object'EnumOther val)
instance Data.Aeson.ToJSON GetOrdersResponseBody200
    where toJSON obj = Data.Aeson.object ((Data.Aeson..=) "data" (getOrdersResponseBody200Data obj) : (Data.Aeson..=) "has_more" (getOrdersResponseBody200HasMore obj) : (Data.Aeson..=) "object" (getOrdersResponseBody200Object obj) : (Data.Aeson..=) "url" (getOrdersResponseBody200Url obj) : [])
          toEncoding obj = Data.Aeson.pairs ((Data.Aeson..=) "data" (getOrdersResponseBody200Data obj) GHC.Base.<> ((Data.Aeson..=) "has_more" (getOrdersResponseBody200HasMore obj) GHC.Base.<> ((Data.Aeson..=) "object" (getOrdersResponseBody200Object obj) GHC.Base.<> (Data.Aeson..=) "url" (getOrdersResponseBody200Url obj))))
instance Data.Aeson.Types.FromJSON.FromJSON GetOrdersResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "GetOrdersResponseBody200" (\obj -> (((GHC.Base.pure GetOrdersResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "object")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))