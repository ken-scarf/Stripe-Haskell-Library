{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postSkus
module StripeAPI.Operations.PostSkus where

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

-- | > POST /v1/skus
--
-- \<p>Creates a new SKU associated with a product.\<\/p>
postSkus ::
  forall m.
  (StripeAPI.Common.MonadHTTP m) =>
  -- | The request body to send
  PostSkusRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostSkusResponse)
postSkus body =
  GHC.Base.fmap
    ( \response_0 ->
        GHC.Base.fmap
          ( Data.Either.either PostSkusResponseError GHC.Base.id
              GHC.Base.. ( \response body ->
                             if
                               | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSkusResponse200
                                     Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                          Data.Either.Either
                                                            GHC.Base.String
                                                            Sku
                                                      )
                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                   PostSkusResponseDefault
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
    (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/v1/skus") GHC.Base.mempty (GHC.Maybe.Just body) StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/skus.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostSkusRequestBody = PostSkusRequestBody
  { -- | active: Whether the SKU is available for purchase. Default to \`true\`.
    postSkusRequestBodyActive :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | attributes: A dictionary of attributes and values for the attributes defined by the product. If, for example, a product\'s attributes are \`[\"size\", \"gender\"]\`, a valid SKU has the following dictionary of attributes: \`{\"size\": \"Medium\", \"gender\": \"Unisex\"}\`.
    postSkusRequestBodyAttributes :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
    postSkusRequestBodyCurrency :: Data.Text.Internal.Text,
    -- | expand: Specifies which fields in the response should be expanded.
    postSkusRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | id: The identifier for the SKU. Must be unique. If not provided, an identifier will be randomly generated.
    postSkusRequestBodyId :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | image: The URL of an image for this SKU, meant to be displayable to the customer.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postSkusRequestBodyImage :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | inventory: Description of the SKU\'s inventory.
    postSkusRequestBodyInventory :: PostSkusRequestBodyInventory',
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postSkusRequestBodyMetadata :: (GHC.Maybe.Maybe Data.Aeson.Types.Internal.Object),
    -- | package_dimensions: The dimensions of this SKU for shipping purposes.
    postSkusRequestBodyPackageDimensions :: (GHC.Maybe.Maybe PostSkusRequestBodyPackageDimensions'),
    -- | price: The cost of the item as a nonnegative integer in the smallest currency unit (that is, 100 cents to charge \$1.00, or 100 to charge ¥100, Japanese Yen being a zero-decimal currency).
    postSkusRequestBodyPrice :: GHC.Types.Int,
    -- | product: The ID of the product this SKU is associated with. Must be a product with type \`good\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postSkusRequestBodyProduct :: Data.Text.Internal.Text
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSkusRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("active" Data.Aeson.Types.ToJSON..=)) (postSkusRequestBodyActive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("attributes" Data.Aeson.Types.ToJSON..=)) (postSkusRequestBodyAttributes obj) : ["currency" Data.Aeson.Types.ToJSON..= postSkusRequestBodyCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postSkusRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (postSkusRequestBodyId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("image" Data.Aeson.Types.ToJSON..=)) (postSkusRequestBodyImage obj) : ["inventory" Data.Aeson.Types.ToJSON..= postSkusRequestBodyInventory obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postSkusRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("package_dimensions" Data.Aeson.Types.ToJSON..=)) (postSkusRequestBodyPackageDimensions obj) : ["price" Data.Aeson.Types.ToJSON..= postSkusRequestBodyPrice obj] : ["product" Data.Aeson.Types.ToJSON..= postSkusRequestBodyProduct obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("active" Data.Aeson.Types.ToJSON..=)) (postSkusRequestBodyActive obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("attributes" Data.Aeson.Types.ToJSON..=)) (postSkusRequestBodyAttributes obj) : ["currency" Data.Aeson.Types.ToJSON..= postSkusRequestBodyCurrency obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postSkusRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (postSkusRequestBodyId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("image" Data.Aeson.Types.ToJSON..=)) (postSkusRequestBodyImage obj) : ["inventory" Data.Aeson.Types.ToJSON..= postSkusRequestBodyInventory obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postSkusRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("package_dimensions" Data.Aeson.Types.ToJSON..=)) (postSkusRequestBodyPackageDimensions obj) : ["price" Data.Aeson.Types.ToJSON..= postSkusRequestBodyPrice obj] : ["product" Data.Aeson.Types.ToJSON..= postSkusRequestBodyProduct obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSkusRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSkusRequestBody" (\obj -> ((((((((((GHC.Base.pure PostSkusRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "active")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "attributes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "image")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "inventory")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "package_dimensions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "price")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "product"))

-- | Create a new 'PostSkusRequestBody' with all required fields.
mkPostSkusRequestBody ::
  -- | 'postSkusRequestBodyCurrency'
  Data.Text.Internal.Text ->
  -- | 'postSkusRequestBodyInventory'
  PostSkusRequestBodyInventory' ->
  -- | 'postSkusRequestBodyPrice'
  GHC.Types.Int ->
  -- | 'postSkusRequestBodyProduct'
  Data.Text.Internal.Text ->
  PostSkusRequestBody
mkPostSkusRequestBody postSkusRequestBodyCurrency postSkusRequestBodyInventory postSkusRequestBodyPrice postSkusRequestBodyProduct =
  PostSkusRequestBody
    { postSkusRequestBodyActive = GHC.Maybe.Nothing,
      postSkusRequestBodyAttributes = GHC.Maybe.Nothing,
      postSkusRequestBodyCurrency = postSkusRequestBodyCurrency,
      postSkusRequestBodyExpand = GHC.Maybe.Nothing,
      postSkusRequestBodyId = GHC.Maybe.Nothing,
      postSkusRequestBodyImage = GHC.Maybe.Nothing,
      postSkusRequestBodyInventory = postSkusRequestBodyInventory,
      postSkusRequestBodyMetadata = GHC.Maybe.Nothing,
      postSkusRequestBodyPackageDimensions = GHC.Maybe.Nothing,
      postSkusRequestBodyPrice = postSkusRequestBodyPrice,
      postSkusRequestBodyProduct = postSkusRequestBodyProduct
    }

-- | Defines the object schema located at @paths.\/v1\/skus.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.inventory@ in the specification.
--
-- Description of the SKU\'s inventory.
data PostSkusRequestBodyInventory' = PostSkusRequestBodyInventory'
  { -- | quantity
    postSkusRequestBodyInventory'Quantity :: (GHC.Maybe.Maybe GHC.Types.Int),
    -- | type
    postSkusRequestBodyInventory'Type :: PostSkusRequestBodyInventory'Type',
    -- | value
    postSkusRequestBodyInventory'Value :: (GHC.Maybe.Maybe PostSkusRequestBodyInventory'Value')
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSkusRequestBodyInventory' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("quantity" Data.Aeson.Types.ToJSON..=)) (postSkusRequestBodyInventory'Quantity obj) : ["type" Data.Aeson.Types.ToJSON..= postSkusRequestBodyInventory'Type obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("value" Data.Aeson.Types.ToJSON..=)) (postSkusRequestBodyInventory'Value obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("quantity" Data.Aeson.Types.ToJSON..=)) (postSkusRequestBodyInventory'Quantity obj) : ["type" Data.Aeson.Types.ToJSON..= postSkusRequestBodyInventory'Type obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("value" Data.Aeson.Types.ToJSON..=)) (postSkusRequestBodyInventory'Value obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSkusRequestBodyInventory' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSkusRequestBodyInventory'" (\obj -> ((GHC.Base.pure PostSkusRequestBodyInventory' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "quantity")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "value"))

-- | Create a new 'PostSkusRequestBodyInventory'' with all required fields.
mkPostSkusRequestBodyInventory' ::
  -- | 'postSkusRequestBodyInventory'Type'
  PostSkusRequestBodyInventory'Type' ->
  PostSkusRequestBodyInventory'
mkPostSkusRequestBodyInventory' postSkusRequestBodyInventory'Type =
  PostSkusRequestBodyInventory'
    { postSkusRequestBodyInventory'Quantity = GHC.Maybe.Nothing,
      postSkusRequestBodyInventory'Type = postSkusRequestBodyInventory'Type,
      postSkusRequestBodyInventory'Value = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @paths.\/v1\/skus.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.inventory.properties.type@ in the specification.
data PostSkusRequestBodyInventory'Type'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostSkusRequestBodyInventory'Type'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostSkusRequestBodyInventory'Type'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"bucket"@
    PostSkusRequestBodyInventory'Type'EnumBucket
  | -- | Represents the JSON value @"finite"@
    PostSkusRequestBodyInventory'Type'EnumFinite
  | -- | Represents the JSON value @"infinite"@
    PostSkusRequestBodyInventory'Type'EnumInfinite
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostSkusRequestBodyInventory'Type' where
  toJSON (PostSkusRequestBodyInventory'Type'Other val) = val
  toJSON (PostSkusRequestBodyInventory'Type'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostSkusRequestBodyInventory'Type'EnumBucket) = "bucket"
  toJSON (PostSkusRequestBodyInventory'Type'EnumFinite) = "finite"
  toJSON (PostSkusRequestBodyInventory'Type'EnumInfinite) = "infinite"

instance Data.Aeson.Types.FromJSON.FromJSON PostSkusRequestBodyInventory'Type' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "bucket" -> PostSkusRequestBodyInventory'Type'EnumBucket
          | val GHC.Classes.== "finite" -> PostSkusRequestBodyInventory'Type'EnumFinite
          | val GHC.Classes.== "infinite" -> PostSkusRequestBodyInventory'Type'EnumInfinite
          | GHC.Base.otherwise -> PostSkusRequestBodyInventory'Type'Other val
      )

-- | Defines the enum schema located at @paths.\/v1\/skus.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.inventory.properties.value@ in the specification.
data PostSkusRequestBodyInventory'Value'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostSkusRequestBodyInventory'Value'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostSkusRequestBodyInventory'Value'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @""@
    PostSkusRequestBodyInventory'Value'EnumEmptyString
  | -- | Represents the JSON value @"in_stock"@
    PostSkusRequestBodyInventory'Value'EnumInStock
  | -- | Represents the JSON value @"limited"@
    PostSkusRequestBodyInventory'Value'EnumLimited
  | -- | Represents the JSON value @"out_of_stock"@
    PostSkusRequestBodyInventory'Value'EnumOutOfStock
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostSkusRequestBodyInventory'Value' where
  toJSON (PostSkusRequestBodyInventory'Value'Other val) = val
  toJSON (PostSkusRequestBodyInventory'Value'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostSkusRequestBodyInventory'Value'EnumEmptyString) = ""
  toJSON (PostSkusRequestBodyInventory'Value'EnumInStock) = "in_stock"
  toJSON (PostSkusRequestBodyInventory'Value'EnumLimited) = "limited"
  toJSON (PostSkusRequestBodyInventory'Value'EnumOutOfStock) = "out_of_stock"

instance Data.Aeson.Types.FromJSON.FromJSON PostSkusRequestBodyInventory'Value' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "" -> PostSkusRequestBodyInventory'Value'EnumEmptyString
          | val GHC.Classes.== "in_stock" -> PostSkusRequestBodyInventory'Value'EnumInStock
          | val GHC.Classes.== "limited" -> PostSkusRequestBodyInventory'Value'EnumLimited
          | val GHC.Classes.== "out_of_stock" -> PostSkusRequestBodyInventory'Value'EnumOutOfStock
          | GHC.Base.otherwise -> PostSkusRequestBodyInventory'Value'Other val
      )

-- | Defines the object schema located at @paths.\/v1\/skus.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.package_dimensions@ in the specification.
--
-- The dimensions of this SKU for shipping purposes.
data PostSkusRequestBodyPackageDimensions' = PostSkusRequestBodyPackageDimensions'
  { -- | height
    postSkusRequestBodyPackageDimensions'Height :: GHC.Types.Double,
    -- | length
    postSkusRequestBodyPackageDimensions'Length :: GHC.Types.Double,
    -- | weight
    postSkusRequestBodyPackageDimensions'Weight :: GHC.Types.Double,
    -- | width
    postSkusRequestBodyPackageDimensions'Width :: GHC.Types.Double
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostSkusRequestBodyPackageDimensions' where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["height" Data.Aeson.Types.ToJSON..= postSkusRequestBodyPackageDimensions'Height obj] : ["length" Data.Aeson.Types.ToJSON..= postSkusRequestBodyPackageDimensions'Length obj] : ["weight" Data.Aeson.Types.ToJSON..= postSkusRequestBodyPackageDimensions'Weight obj] : ["width" Data.Aeson.Types.ToJSON..= postSkusRequestBodyPackageDimensions'Width obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["height" Data.Aeson.Types.ToJSON..= postSkusRequestBodyPackageDimensions'Height obj] : ["length" Data.Aeson.Types.ToJSON..= postSkusRequestBodyPackageDimensions'Length obj] : ["weight" Data.Aeson.Types.ToJSON..= postSkusRequestBodyPackageDimensions'Weight obj] : ["width" Data.Aeson.Types.ToJSON..= postSkusRequestBodyPackageDimensions'Width obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostSkusRequestBodyPackageDimensions' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSkusRequestBodyPackageDimensions'" (\obj -> (((GHC.Base.pure PostSkusRequestBodyPackageDimensions' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "length")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "weight")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "width"))

-- | Create a new 'PostSkusRequestBodyPackageDimensions'' with all required fields.
mkPostSkusRequestBodyPackageDimensions' ::
  -- | 'postSkusRequestBodyPackageDimensions'Height'
  GHC.Types.Double ->
  -- | 'postSkusRequestBodyPackageDimensions'Length'
  GHC.Types.Double ->
  -- | 'postSkusRequestBodyPackageDimensions'Weight'
  GHC.Types.Double ->
  -- | 'postSkusRequestBodyPackageDimensions'Width'
  GHC.Types.Double ->
  PostSkusRequestBodyPackageDimensions'
mkPostSkusRequestBodyPackageDimensions' postSkusRequestBodyPackageDimensions'Height postSkusRequestBodyPackageDimensions'Length postSkusRequestBodyPackageDimensions'Weight postSkusRequestBodyPackageDimensions'Width =
  PostSkusRequestBodyPackageDimensions'
    { postSkusRequestBodyPackageDimensions'Height = postSkusRequestBodyPackageDimensions'Height,
      postSkusRequestBodyPackageDimensions'Length = postSkusRequestBodyPackageDimensions'Length,
      postSkusRequestBodyPackageDimensions'Weight = postSkusRequestBodyPackageDimensions'Weight,
      postSkusRequestBodyPackageDimensions'Width = postSkusRequestBodyPackageDimensions'Width
    }

-- | Represents a response of the operation 'postSkus'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSkusResponseError' is used.
data PostSkusResponse
  = -- | Means either no matching case available or a parse error
    PostSkusResponseError GHC.Base.String
  | -- | Successful response.
    PostSkusResponse200 Sku
  | -- | Error response.
    PostSkusResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
