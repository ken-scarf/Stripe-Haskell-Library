-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postTerminalLocations
module StripeAPI.Operations.PostTerminalLocations where

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

-- | > POST /v1/terminal/locations
-- 
-- \<p>Creates a new \<code>Location\<\/code> object.
-- For further details, including which address fields are required in each country, see the \<a href=\"\/docs\/terminal\/fleet\/locations\">Manage locations\<\/a> guide.\<\/p>
postTerminalLocations :: forall m . StripeAPI.Common.MonadHTTP m => PostTerminalLocationsRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostTerminalLocationsResponse) -- ^ Monadic computation which returns the result of the operation
postTerminalLocations body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostTerminalLocationsResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostTerminalLocationsResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                  Terminal'location)
                                                                                                                                                                             | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostTerminalLocationsResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                    Error)
                                                                                                                                                                             | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") "/v1/terminal/locations" GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/terminal\/locations.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostTerminalLocationsRequestBody = PostTerminalLocationsRequestBody {
  -- | address: The full address of the location.
  postTerminalLocationsRequestBodyAddress :: PostTerminalLocationsRequestBodyAddress'
  -- | configuration_overrides: The ID of a configuration that will be used to customize all readers in this location.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 1000
  , postTerminalLocationsRequestBodyConfigurationOverrides :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | display_name: A name for the location.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 1000
  , postTerminalLocationsRequestBodyDisplayName :: Data.Text.Internal.Text
  -- | expand: Specifies which fields in the response should be expanded.
  , postTerminalLocationsRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
  , postTerminalLocationsRequestBodyMetadata :: (GHC.Maybe.Maybe PostTerminalLocationsRequestBodyMetadata'Variants)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostTerminalLocationsRequestBody
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["address" Data.Aeson.Types.ToJSON..= postTerminalLocationsRequestBodyAddress obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("configuration_overrides" Data.Aeson.Types.ToJSON..=)) (postTerminalLocationsRequestBodyConfigurationOverrides obj) : ["display_name" Data.Aeson.Types.ToJSON..= postTerminalLocationsRequestBodyDisplayName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTerminalLocationsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postTerminalLocationsRequestBodyMetadata obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["address" Data.Aeson.Types.ToJSON..= postTerminalLocationsRequestBodyAddress obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("configuration_overrides" Data.Aeson.Types.ToJSON..=)) (postTerminalLocationsRequestBodyConfigurationOverrides obj) : ["display_name" Data.Aeson.Types.ToJSON..= postTerminalLocationsRequestBodyDisplayName obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postTerminalLocationsRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postTerminalLocationsRequestBodyMetadata obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostTerminalLocationsRequestBody
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTerminalLocationsRequestBody" (\obj -> ((((GHC.Base.pure PostTerminalLocationsRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "configuration_overrides")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "display_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata"))}
-- | Create a new 'PostTerminalLocationsRequestBody' with all required fields.
mkPostTerminalLocationsRequestBody :: PostTerminalLocationsRequestBodyAddress' -- ^ 'postTerminalLocationsRequestBodyAddress'
  -> Data.Text.Internal.Text -- ^ 'postTerminalLocationsRequestBodyDisplayName'
  -> PostTerminalLocationsRequestBody
mkPostTerminalLocationsRequestBody postTerminalLocationsRequestBodyAddress postTerminalLocationsRequestBodyDisplayName = PostTerminalLocationsRequestBody{postTerminalLocationsRequestBodyAddress = postTerminalLocationsRequestBodyAddress,
                                                                                                                                                          postTerminalLocationsRequestBodyConfigurationOverrides = GHC.Maybe.Nothing,
                                                                                                                                                          postTerminalLocationsRequestBodyDisplayName = postTerminalLocationsRequestBodyDisplayName,
                                                                                                                                                          postTerminalLocationsRequestBodyExpand = GHC.Maybe.Nothing,
                                                                                                                                                          postTerminalLocationsRequestBodyMetadata = GHC.Maybe.Nothing}
-- | Defines the object schema located at @paths.\/v1\/terminal\/locations.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.address@ in the specification.
-- 
-- The full address of the location.
data PostTerminalLocationsRequestBodyAddress' = PostTerminalLocationsRequestBodyAddress' {
  -- | city
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  postTerminalLocationsRequestBodyAddress'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | country
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTerminalLocationsRequestBodyAddress'Country :: Data.Text.Internal.Text
  -- | line1
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTerminalLocationsRequestBodyAddress'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | line2
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTerminalLocationsRequestBodyAddress'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | postal_code
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTerminalLocationsRequestBodyAddress'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | state
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , postTerminalLocationsRequestBodyAddress'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostTerminalLocationsRequestBodyAddress'
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (postTerminalLocationsRequestBodyAddress'City obj) : ["country" Data.Aeson.Types.ToJSON..= postTerminalLocationsRequestBodyAddress'Country obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (postTerminalLocationsRequestBodyAddress'Line1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (postTerminalLocationsRequestBodyAddress'Line2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (postTerminalLocationsRequestBodyAddress'PostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (postTerminalLocationsRequestBodyAddress'State obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("city" Data.Aeson.Types.ToJSON..=)) (postTerminalLocationsRequestBodyAddress'City obj) : ["country" Data.Aeson.Types.ToJSON..= postTerminalLocationsRequestBodyAddress'Country obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line1" Data.Aeson.Types.ToJSON..=)) (postTerminalLocationsRequestBodyAddress'Line1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("line2" Data.Aeson.Types.ToJSON..=)) (postTerminalLocationsRequestBodyAddress'Line2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("postal_code" Data.Aeson.Types.ToJSON..=)) (postTerminalLocationsRequestBodyAddress'PostalCode obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("state" Data.Aeson.Types.ToJSON..=)) (postTerminalLocationsRequestBodyAddress'State obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostTerminalLocationsRequestBodyAddress'
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostTerminalLocationsRequestBodyAddress'" (\obj -> (((((GHC.Base.pure PostTerminalLocationsRequestBodyAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "state"))}
-- | Create a new 'PostTerminalLocationsRequestBodyAddress'' with all required fields.
mkPostTerminalLocationsRequestBodyAddress' :: Data.Text.Internal.Text -- ^ 'postTerminalLocationsRequestBodyAddress'Country'
  -> PostTerminalLocationsRequestBodyAddress'
mkPostTerminalLocationsRequestBodyAddress' postTerminalLocationsRequestBodyAddress'Country = PostTerminalLocationsRequestBodyAddress'{postTerminalLocationsRequestBodyAddress'City = GHC.Maybe.Nothing,
                                                                                                                                      postTerminalLocationsRequestBodyAddress'Country = postTerminalLocationsRequestBodyAddress'Country,
                                                                                                                                      postTerminalLocationsRequestBodyAddress'Line1 = GHC.Maybe.Nothing,
                                                                                                                                      postTerminalLocationsRequestBodyAddress'Line2 = GHC.Maybe.Nothing,
                                                                                                                                      postTerminalLocationsRequestBodyAddress'PostalCode = GHC.Maybe.Nothing,
                                                                                                                                      postTerminalLocationsRequestBodyAddress'State = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/v1\/terminal\/locations.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
-- 
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostTerminalLocationsRequestBodyMetadata'Variants =
   PostTerminalLocationsRequestBodyMetadata'EmptyString -- ^ Represents the JSON value @""@
  | PostTerminalLocationsRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostTerminalLocationsRequestBodyMetadata'Variants
    where {toJSON (PostTerminalLocationsRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (PostTerminalLocationsRequestBodyMetadata'EmptyString) = ""}
instance Data.Aeson.Types.FromJSON.FromJSON PostTerminalLocationsRequestBodyMetadata'Variants
    where {parseJSON val = if | val GHC.Classes.== "" -> GHC.Base.pure PostTerminalLocationsRequestBodyMetadata'EmptyString
                              | GHC.Base.otherwise -> case (PostTerminalLocationsRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
                                                      {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                                                       Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Represents a response of the operation 'postTerminalLocations'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostTerminalLocationsResponseError' is used.
data PostTerminalLocationsResponse =
   PostTerminalLocationsResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostTerminalLocationsResponse200 Terminal'location -- ^ Successful response.
  | PostTerminalLocationsResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)
