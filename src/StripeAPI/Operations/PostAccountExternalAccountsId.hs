{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postAccountExternalAccountsId
module StripeAPI.Operations.PostAccountExternalAccountsId where

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

-- | > POST /v1/account/external_accounts/{id}
--
-- \<p>Updates the metadata, account holder name, account holder type of a bank account belonging to a \<a href=\"\/docs\/connect\/custom-accounts\">Custom account\<\/a>, and optionally sets it as the default for its currency. Other bank account details are not editable by design.\<\/p>
--
-- \<p>You can re-enable a disabled bank account by performing an update call without providing any arguments or changes.\<\/p>
postAccountExternalAccountsId ::
  forall m.
  (StripeAPI.Common.MonadHTTP m) =>
  -- | id
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostAccountExternalAccountsIdRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostAccountExternalAccountsIdResponse)
postAccountExternalAccountsId
  id
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostAccountExternalAccountsIdResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostAccountExternalAccountsIdResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              ExternalAccount
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostAccountExternalAccountsIdResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/account/external_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/account\/external_accounts\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostAccountExternalAccountsIdRequestBody = PostAccountExternalAccountsIdRequestBody
  { -- | account_holder_name: The name of the person or business that owns the bank account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountExternalAccountsIdRequestBodyAccountHolderName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | account_holder_type: The type of entity that holds the account. This can be either \`individual\` or \`company\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountExternalAccountsIdRequestBodyAccountHolderType :: (GHC.Maybe.Maybe PostAccountExternalAccountsIdRequestBodyAccountHolderType'),
    -- | account_type: The bank account type. This can only be \`checking\` or \`savings\` in most countries. In Japan, this can only be \`futsu\` or \`toza\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountExternalAccountsIdRequestBodyAccountType :: (GHC.Maybe.Maybe PostAccountExternalAccountsIdRequestBodyAccountType'),
    -- | address_city: City\/District\/Suburb\/Town\/Village.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountExternalAccountsIdRequestBodyAddressCity :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_country: Billing address country, if provided when creating card.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountExternalAccountsIdRequestBodyAddressCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_line1: Address line 1 (Street address\/PO Box\/Company name).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountExternalAccountsIdRequestBodyAddressLine1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_line2: Address line 2 (Apartment\/Suite\/Unit\/Building).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountExternalAccountsIdRequestBodyAddressLine2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_state: State\/County\/Province\/Region.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountExternalAccountsIdRequestBodyAddressState :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_zip: ZIP or postal code.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountExternalAccountsIdRequestBodyAddressZip :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | default_for_currency: When set to true, this becomes the default external account for its currency.
    postAccountExternalAccountsIdRequestBodyDefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | exp_month: Two digit number representing the card’s expiration month.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountExternalAccountsIdRequestBodyExpMonth :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | exp_year: Four digit number representing the card’s expiration year.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountExternalAccountsIdRequestBodyExpYear :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | expand: Specifies which fields in the response should be expanded.
    postAccountExternalAccountsIdRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postAccountExternalAccountsIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountExternalAccountsIdRequestBodyMetadata'Variants),
    -- | name: Cardholder name.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountExternalAccountsIdRequestBodyName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountExternalAccountsIdRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_name" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyAccountHolderName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_type" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyAccountHolderType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyAccountType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_city" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyAddressCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_country" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyAddressCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_line1" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyAddressLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_line2" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyAddressLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_state" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyAddressState obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_zip" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyAddressZip obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_for_currency" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyDefaultForCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_month" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyExpMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_year" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyExpYear obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyName obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_name" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyAccountHolderName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_type" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyAccountHolderType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyAccountType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_city" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyAddressCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_country" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyAddressCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_line1" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyAddressLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_line2" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyAddressLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_state" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyAddressState obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_zip" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyAddressZip obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_for_currency" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyDefaultForCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_month" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyExpMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_year" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyExpYear obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (postAccountExternalAccountsIdRequestBodyName obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountExternalAccountsIdRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountExternalAccountsIdRequestBody" (\obj -> ((((((((((((((GHC.Base.pure PostAccountExternalAccountsIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name"))

-- | Create a new 'PostAccountExternalAccountsIdRequestBody' with all required fields.
mkPostAccountExternalAccountsIdRequestBody :: PostAccountExternalAccountsIdRequestBody
mkPostAccountExternalAccountsIdRequestBody =
  PostAccountExternalAccountsIdRequestBody
    { postAccountExternalAccountsIdRequestBodyAccountHolderName = GHC.Maybe.Nothing,
      postAccountExternalAccountsIdRequestBodyAccountHolderType = GHC.Maybe.Nothing,
      postAccountExternalAccountsIdRequestBodyAccountType = GHC.Maybe.Nothing,
      postAccountExternalAccountsIdRequestBodyAddressCity = GHC.Maybe.Nothing,
      postAccountExternalAccountsIdRequestBodyAddressCountry = GHC.Maybe.Nothing,
      postAccountExternalAccountsIdRequestBodyAddressLine1 = GHC.Maybe.Nothing,
      postAccountExternalAccountsIdRequestBodyAddressLine2 = GHC.Maybe.Nothing,
      postAccountExternalAccountsIdRequestBodyAddressState = GHC.Maybe.Nothing,
      postAccountExternalAccountsIdRequestBodyAddressZip = GHC.Maybe.Nothing,
      postAccountExternalAccountsIdRequestBodyDefaultForCurrency = GHC.Maybe.Nothing,
      postAccountExternalAccountsIdRequestBodyExpMonth = GHC.Maybe.Nothing,
      postAccountExternalAccountsIdRequestBodyExpYear = GHC.Maybe.Nothing,
      postAccountExternalAccountsIdRequestBodyExpand = GHC.Maybe.Nothing,
      postAccountExternalAccountsIdRequestBodyMetadata = GHC.Maybe.Nothing,
      postAccountExternalAccountsIdRequestBodyName = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @paths.\/v1\/account\/external_accounts\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.account_holder_type@ in the specification.
--
-- The type of entity that holds the account. This can be either \`individual\` or \`company\`.
data PostAccountExternalAccountsIdRequestBodyAccountHolderType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostAccountExternalAccountsIdRequestBodyAccountHolderType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostAccountExternalAccountsIdRequestBodyAccountHolderType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @""@
    PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumEmptyString
  | -- | Represents the JSON value @"company"@
    PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumCompany
  | -- | Represents the JSON value @"individual"@
    PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumIndividual
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountExternalAccountsIdRequestBodyAccountHolderType' where
  toJSON (PostAccountExternalAccountsIdRequestBodyAccountHolderType'Other val) = val
  toJSON (PostAccountExternalAccountsIdRequestBodyAccountHolderType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumEmptyString) = ""
  toJSON (PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumCompany) = "company"
  toJSON (PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumIndividual) = "individual"

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountExternalAccountsIdRequestBodyAccountHolderType' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "" -> PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumEmptyString
          | val GHC.Classes.== "company" -> PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumCompany
          | val GHC.Classes.== "individual" -> PostAccountExternalAccountsIdRequestBodyAccountHolderType'EnumIndividual
          | GHC.Base.otherwise -> PostAccountExternalAccountsIdRequestBodyAccountHolderType'Other val
      )

-- | Defines the enum schema located at @paths.\/v1\/account\/external_accounts\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.account_type@ in the specification.
--
-- The bank account type. This can only be \`checking\` or \`savings\` in most countries. In Japan, this can only be \`futsu\` or \`toza\`.
data PostAccountExternalAccountsIdRequestBodyAccountType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostAccountExternalAccountsIdRequestBodyAccountType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostAccountExternalAccountsIdRequestBodyAccountType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"checking"@
    PostAccountExternalAccountsIdRequestBodyAccountType'EnumChecking
  | -- | Represents the JSON value @"futsu"@
    PostAccountExternalAccountsIdRequestBodyAccountType'EnumFutsu
  | -- | Represents the JSON value @"savings"@
    PostAccountExternalAccountsIdRequestBodyAccountType'EnumSavings
  | -- | Represents the JSON value @"toza"@
    PostAccountExternalAccountsIdRequestBodyAccountType'EnumToza
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountExternalAccountsIdRequestBodyAccountType' where
  toJSON (PostAccountExternalAccountsIdRequestBodyAccountType'Other val) = val
  toJSON (PostAccountExternalAccountsIdRequestBodyAccountType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostAccountExternalAccountsIdRequestBodyAccountType'EnumChecking) = "checking"
  toJSON (PostAccountExternalAccountsIdRequestBodyAccountType'EnumFutsu) = "futsu"
  toJSON (PostAccountExternalAccountsIdRequestBodyAccountType'EnumSavings) = "savings"
  toJSON (PostAccountExternalAccountsIdRequestBodyAccountType'EnumToza) = "toza"

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountExternalAccountsIdRequestBodyAccountType' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "checking" -> PostAccountExternalAccountsIdRequestBodyAccountType'EnumChecking
          | val GHC.Classes.== "futsu" -> PostAccountExternalAccountsIdRequestBodyAccountType'EnumFutsu
          | val GHC.Classes.== "savings" -> PostAccountExternalAccountsIdRequestBodyAccountType'EnumSavings
          | val GHC.Classes.== "toza" -> PostAccountExternalAccountsIdRequestBodyAccountType'EnumToza
          | GHC.Base.otherwise -> PostAccountExternalAccountsIdRequestBodyAccountType'Other val
      )

-- | Defines the oneOf schema located at @paths.\/v1\/account\/external_accounts\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
--
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostAccountExternalAccountsIdRequestBodyMetadata'Variants
  = -- | Represents the JSON value @""@
    PostAccountExternalAccountsIdRequestBodyMetadata'EmptyString
  | PostAccountExternalAccountsIdRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountExternalAccountsIdRequestBodyMetadata'Variants where
  toJSON (PostAccountExternalAccountsIdRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostAccountExternalAccountsIdRequestBodyMetadata'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountExternalAccountsIdRequestBodyMetadata'Variants where
  parseJSON val =
    if
      | val GHC.Classes.== "" -> GHC.Base.pure PostAccountExternalAccountsIdRequestBodyMetadata'EmptyString
      | GHC.Base.otherwise -> case (PostAccountExternalAccountsIdRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
          Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
          Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Represents a response of the operation 'postAccountExternalAccountsId'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAccountExternalAccountsIdResponseError' is used.
data PostAccountExternalAccountsIdResponse
  = -- | Means either no matching case available or a parse error
    PostAccountExternalAccountsIdResponseError GHC.Base.String
  | -- | Successful response.
    PostAccountExternalAccountsIdResponse200 ExternalAccount
  | -- | Error response.
    PostAccountExternalAccountsIdResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
