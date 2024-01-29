{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation getRadarValueListItems
module StripeAPI.Operations.GetRadarValueListItems where

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

-- | > GET /v1/radar/value_list_items
--
-- \<p>Returns a list of \<code>ValueListItem\<\/code> objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.\<\/p>
getRadarValueListItems ::
  forall m.
  (StripeAPI.Common.MonadHTTP m) =>
  -- | Contains all available parameters of this operation (query and path parameters)
  GetRadarValueListItemsParameters ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response GetRadarValueListItemsResponse)
getRadarValueListItems parameters =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either GetRadarValueListItemsResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                               | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetRadarValueListItemsResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            GetRadarValueListItemsResponseBody200
                                                      )
                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   GetRadarValueListItemsResponseDefault
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
    ( StripeAPI.Common.doCallWithConfigurationM
        (Data.Text.toUpper GHC.Base.$ Data.Text.pack "GET")
        (Data.Text.pack "/v1/radar/value_list_items")
        [ StripeAPI.Common.QueryParameter (Data.Text.pack "created") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getRadarValueListItemsParametersQueryCreated parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "ending_before") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getRadarValueListItemsParametersQueryEndingBefore parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "expand") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getRadarValueListItemsParametersQueryExpand parameters) (Data.Text.pack "deepObject") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "limit") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getRadarValueListItemsParametersQueryLimit parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "starting_after") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getRadarValueListItemsParametersQueryStartingAfter parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "value") (Data.Aeson.Types.ToJSON.toJSON Data.Functor.<$> getRadarValueListItemsParametersQueryValue parameters) (Data.Text.pack "form") GHC.Types.True,
          StripeAPI.Common.QueryParameter (Data.Text.pack "value_list") (GHC.Maybe.Just GHC.Base.$ Data.Aeson.Types.ToJSON.toJSON (getRadarValueListItemsParametersQueryValueList parameters)) (Data.Text.pack "form") GHC.Types.True
        ]
    )

-- | Defines the object schema located at @paths.\/v1\/radar\/value_list_items.GET.parameters@ in the specification.
data GetRadarValueListItemsParameters = GetRadarValueListItemsParameters
  { -- | queryCreated: Represents the parameter named \'created\'
    getRadarValueListItemsParametersQueryCreated :: (GHC.Maybe.Maybe GetRadarValueListItemsParametersQueryCreated'Variants),
    -- | queryEnding_before: Represents the parameter named \'ending_before\'
    --
    -- A cursor for use in pagination. \`ending_before\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with \`obj_bar\`, your subsequent call can include \`ending_before=obj_bar\` in order to fetch the previous page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getRadarValueListItemsParametersQueryEndingBefore :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryExpand: Represents the parameter named \'expand\'
    --
    -- Specifies which fields in the response should be expanded.
    getRadarValueListItemsParametersQueryExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | queryLimit: Represents the parameter named \'limit\'
    --
    -- A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    getRadarValueListItemsParametersQueryLimit :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | queryStarting_after: Represents the parameter named \'starting_after\'
    --
    -- A cursor for use in pagination. \`starting_after\` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with \`obj_foo\`, your subsequent call can include \`starting_after=obj_foo\` in order to fetch the next page of the list.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getRadarValueListItemsParametersQueryStartingAfter :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryValue: Represents the parameter named \'value\'
    --
    -- Return items belonging to the parent list whose value matches the specified value (using an \"is like\" match).
    --
    -- Constraints:
    --
    -- * Maximum length of 800
    getRadarValueListItemsParametersQueryValue :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | queryValue_list: Represents the parameter named \'value_list\'
    --
    -- Identifier for the parent value list this item belongs to.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    getRadarValueListItemsParametersQueryValueList :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetRadarValueListItemsParameters where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getRadarValueListItemsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getRadarValueListItemsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getRadarValueListItemsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getRadarValueListItemsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getRadarValueListItemsParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryValue" Data.Aeson.Types.ToJSON..=)) (getRadarValueListItemsParametersQueryValue obj) : ["queryValue_list" Data.Aeson.Types.ToJSON..= getRadarValueListItemsParametersQueryValueList obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryCreated" Data.Aeson.Types.ToJSON..=)) (getRadarValueListItemsParametersQueryCreated obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryEnding_before" Data.Aeson.Types.ToJSON..=)) (getRadarValueListItemsParametersQueryEndingBefore obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryExpand" Data.Aeson.Types.ToJSON..=)) (getRadarValueListItemsParametersQueryExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryLimit" Data.Aeson.Types.ToJSON..=)) (getRadarValueListItemsParametersQueryLimit obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryStarting_after" Data.Aeson.Types.ToJSON..=)) (getRadarValueListItemsParametersQueryStartingAfter obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("queryValue" Data.Aeson.Types.ToJSON..=)) (getRadarValueListItemsParametersQueryValue obj) : ["queryValue_list" Data.Aeson.Types.ToJSON..= getRadarValueListItemsParametersQueryValueList obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetRadarValueListItemsParameters where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRadarValueListItemsParameters" (\obj -> ((((((GHC.Base.pure GetRadarValueListItemsParameters GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryCreated")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryEnding_before")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryExpand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryLimit")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryStarting_after")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "queryValue")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "queryValue_list"))

-- | Create a new 'GetRadarValueListItemsParameters' with all required fields.
mkGetRadarValueListItemsParameters ::
  -- | 'getRadarValueListItemsParametersQueryValueList'
  Data.Text.Internal.Text ->
  GetRadarValueListItemsParameters
mkGetRadarValueListItemsParameters getRadarValueListItemsParametersQueryValueList =
  GetRadarValueListItemsParameters
    { getRadarValueListItemsParametersQueryCreated = GHC.Maybe.Nothing,
      getRadarValueListItemsParametersQueryEndingBefore = GHC.Maybe.Nothing,
      getRadarValueListItemsParametersQueryExpand = GHC.Maybe.Nothing,
      getRadarValueListItemsParametersQueryLimit = GHC.Maybe.Nothing,
      getRadarValueListItemsParametersQueryStartingAfter = GHC.Maybe.Nothing,
      getRadarValueListItemsParametersQueryValue = GHC.Maybe.Nothing,
      getRadarValueListItemsParametersQueryValueList = getRadarValueListItemsParametersQueryValueList
    }

-- | Defines the object schema located at @paths.\/v1\/radar\/value_list_items.GET.parameters.properties.queryCreated.anyOf@ in the specification.
data GetRadarValueListItemsParametersQueryCreated'OneOf1 = GetRadarValueListItemsParametersQueryCreated'OneOf1
  { -- | gt
    getRadarValueListItemsParametersQueryCreated'OneOf1Gt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | gte
    getRadarValueListItemsParametersQueryCreated'OneOf1Gte :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lt
    getRadarValueListItemsParametersQueryCreated'OneOf1Lt :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | lte
    getRadarValueListItemsParametersQueryCreated'OneOf1Lte :: (GHC.Maybe.Maybe GHC.Types.Int)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetRadarValueListItemsParametersQueryCreated'OneOf1 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getRadarValueListItemsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getRadarValueListItemsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getRadarValueListItemsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getRadarValueListItemsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gt" Data.Aeson.Types.ToJSON..=)) (getRadarValueListItemsParametersQueryCreated'OneOf1Gt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("gte" Data.Aeson.Types.ToJSON..=)) (getRadarValueListItemsParametersQueryCreated'OneOf1Gte obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lt" Data.Aeson.Types.ToJSON..=)) (getRadarValueListItemsParametersQueryCreated'OneOf1Lt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("lte" Data.Aeson.Types.ToJSON..=)) (getRadarValueListItemsParametersQueryCreated'OneOf1Lte obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetRadarValueListItemsParametersQueryCreated'OneOf1 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRadarValueListItemsParametersQueryCreated'OneOf1" (\obj -> (((GHC.Base.pure GetRadarValueListItemsParametersQueryCreated'OneOf1 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "gte")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lt")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "lte"))

-- | Create a new 'GetRadarValueListItemsParametersQueryCreated'OneOf1' with all required fields.
mkGetRadarValueListItemsParametersQueryCreated'OneOf1 :: GetRadarValueListItemsParametersQueryCreated'OneOf1
mkGetRadarValueListItemsParametersQueryCreated'OneOf1 =
  GetRadarValueListItemsParametersQueryCreated'OneOf1
    { getRadarValueListItemsParametersQueryCreated'OneOf1Gt = GHC.Maybe.Nothing,
      getRadarValueListItemsParametersQueryCreated'OneOf1Gte = GHC.Maybe.Nothing,
      getRadarValueListItemsParametersQueryCreated'OneOf1Lt = GHC.Maybe.Nothing,
      getRadarValueListItemsParametersQueryCreated'OneOf1Lte = GHC.Maybe.Nothing
    }

-- | Defines the oneOf schema located at @paths.\/v1\/radar\/value_list_items.GET.parameters.properties.queryCreated.anyOf@ in the specification.
--
-- Represents the parameter named \'created\'
data GetRadarValueListItemsParametersQueryCreated'Variants
  = GetRadarValueListItemsParametersQueryCreated'GetRadarValueListItemsParametersQueryCreated'OneOf1 GetRadarValueListItemsParametersQueryCreated'OneOf1
  | GetRadarValueListItemsParametersQueryCreated'Int GHC.Types.Int
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON GetRadarValueListItemsParametersQueryCreated'Variants where
  toJSON (GetRadarValueListItemsParametersQueryCreated'GetRadarValueListItemsParametersQueryCreated'OneOf1 a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (GetRadarValueListItemsParametersQueryCreated'Int a) = Data.Aeson.Types.ToJSON.toJSON a

instance Data.Aeson.Types.FromJSON.FromJSON GetRadarValueListItemsParametersQueryCreated'Variants where
  parseJSON val = case (GetRadarValueListItemsParametersQueryCreated'GetRadarValueListItemsParametersQueryCreated'OneOf1 Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((GetRadarValueListItemsParametersQueryCreated'Int Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
    Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
    Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Represents a response of the operation 'getRadarValueListItems'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'GetRadarValueListItemsResponseError' is used.
data GetRadarValueListItemsResponse
  = -- | Means either no matching case available or a parse error
    GetRadarValueListItemsResponseError GHC.Base.String
  | -- | Successful response.
    GetRadarValueListItemsResponse200 GetRadarValueListItemsResponseBody200
  | -- | Error response.
    GetRadarValueListItemsResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)

-- | Defines the object schema located at @paths.\/v1\/radar\/value_list_items.GET.responses.200.content.application\/json.schema@ in the specification.
data GetRadarValueListItemsResponseBody200 = GetRadarValueListItemsResponseBody200
  { -- | data
    getRadarValueListItemsResponseBody200Data :: ([Radar'valueListItem]),
    -- | has_more: True if this list has another page of items after this one that can be fetched.
    getRadarValueListItemsResponseBody200HasMore :: GHC.Types.Bool,
    -- | url: The URL where this list can be accessed.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    -- * Must match pattern \'^\/v1\/radar\/value_list_items\'
    getRadarValueListItemsResponseBody200Url :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON GetRadarValueListItemsResponseBody200 where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getRadarValueListItemsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getRadarValueListItemsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getRadarValueListItemsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["data" Data.Aeson.Types.ToJSON..= getRadarValueListItemsResponseBody200Data obj] : ["has_more" Data.Aeson.Types.ToJSON..= getRadarValueListItemsResponseBody200HasMore obj] : ["url" Data.Aeson.Types.ToJSON..= getRadarValueListItemsResponseBody200Url obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "list"] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON GetRadarValueListItemsResponseBody200 where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "GetRadarValueListItemsResponseBody200" (\obj -> ((GHC.Base.pure GetRadarValueListItemsResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "has_more")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "url"))

-- | Create a new 'GetRadarValueListItemsResponseBody200' with all required fields.
mkGetRadarValueListItemsResponseBody200 ::
  -- | 'getRadarValueListItemsResponseBody200Data'
  [Radar'valueListItem] ->
  -- | 'getRadarValueListItemsResponseBody200HasMore'
  GHC.Types.Bool ->
  -- | 'getRadarValueListItemsResponseBody200Url'
  Data.Text.Internal.Text ->
  GetRadarValueListItemsResponseBody200
mkGetRadarValueListItemsResponseBody200 getRadarValueListItemsResponseBody200Data getRadarValueListItemsResponseBody200HasMore getRadarValueListItemsResponseBody200Url =
  GetRadarValueListItemsResponseBody200
    { getRadarValueListItemsResponseBody200Data = getRadarValueListItemsResponseBody200Data,
      getRadarValueListItemsResponseBody200HasMore = getRadarValueListItemsResponseBody200HasMore,
      getRadarValueListItemsResponseBody200Url = getRadarValueListItemsResponseBody200Url
    }
