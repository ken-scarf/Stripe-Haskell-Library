{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the different functions to run the operation postAccountBankAccountsId
module StripeAPI.Operations.PostAccountBankAccountsId where

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

-- | > POST /v1/account/bank_accounts/{id}
--
-- \<p>Updates the metadata, account holder name, account holder type of a bank account belonging to a \<a href=\"\/docs\/connect\/custom-accounts\">Custom account\<\/a>, and optionally sets it as the default for its currency. Other bank account details are not editable by design.\<\/p>
--
-- \<p>You can re-enable a disabled bank account by performing an update call without providing any arguments or changes.\<\/p>
postAccountBankAccountsId ::
  forall m.
  (StripeAPI.Common.MonadHTTP m) =>
  -- | id
  Data.Text.Internal.Text ->
  -- | The request body to send
  GHC.Maybe.Maybe PostAccountBankAccountsIdRequestBody ->
  -- | Monadic computation which returns the result of the operation
  StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostAccountBankAccountsIdResponse)
postAccountBankAccountsId
  id
  body =
    GHC.Base.fmap
      ( \response_0 ->
          GHC.Base.fmap
            ( Data.Either.either PostAccountBankAccountsIdResponseError GHC.Base.id
                GHC.Base.. ( \response body ->
                               if
                                 | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostAccountBankAccountsIdResponse200
                                       Data.Functor.<$> ( Data.Aeson.eitherDecodeStrict body ::
                                                            Data.Either.Either
                                                              GHC.Base.String
                                                              ExternalAccount
                                                        )
                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) ->
                                     PostAccountBankAccountsIdResponseDefault
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
      (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack ("/v1/account/bank_accounts/" GHC.Base.++ (Data.ByteString.Char8.unpack (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (Data.ByteString.Char8.pack GHC.Base.$ StripeAPI.Common.stringifyModel id)) GHC.Base.++ ""))) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)

-- | Defines the object schema located at @paths.\/v1\/account\/bank_accounts\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
data PostAccountBankAccountsIdRequestBody = PostAccountBankAccountsIdRequestBody
  { -- | account_holder_name: The name of the person or business that owns the bank account.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountBankAccountsIdRequestBodyAccountHolderName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | account_holder_type: The type of entity that holds the account. This can be either \`individual\` or \`company\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountBankAccountsIdRequestBodyAccountHolderType :: (GHC.Maybe.Maybe PostAccountBankAccountsIdRequestBodyAccountHolderType'),
    -- | account_type: The bank account type. This can only be \`checking\` or \`savings\` in most countries. In Japan, this can only be \`futsu\` or \`toza\`.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountBankAccountsIdRequestBodyAccountType :: (GHC.Maybe.Maybe PostAccountBankAccountsIdRequestBodyAccountType'),
    -- | address_city: City\/District\/Suburb\/Town\/Village.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountBankAccountsIdRequestBodyAddressCity :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_country: Billing address country, if provided when creating card.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountBankAccountsIdRequestBodyAddressCountry :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_line1: Address line 1 (Street address\/PO Box\/Company name).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountBankAccountsIdRequestBodyAddressLine1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_line2: Address line 2 (Apartment\/Suite\/Unit\/Building).
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountBankAccountsIdRequestBodyAddressLine2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_state: State\/County\/Province\/Region.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountBankAccountsIdRequestBodyAddressState :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | address_zip: ZIP or postal code.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountBankAccountsIdRequestBodyAddressZip :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | default_for_currency: When set to true, this becomes the default external account for its currency.
    postAccountBankAccountsIdRequestBodyDefaultForCurrency :: (GHC.Maybe.Maybe GHC.Types.Bool),
    -- | exp_month: Two digit number representing the card’s expiration month.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountBankAccountsIdRequestBodyExpMonth :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | exp_year: Four digit number representing the card’s expiration year.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountBankAccountsIdRequestBodyExpYear :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
    -- | expand: Specifies which fields in the response should be expanded.
    postAccountBankAccountsIdRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text])),
    -- | metadata: Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
    postAccountBankAccountsIdRequestBodyMetadata :: (GHC.Maybe.Maybe PostAccountBankAccountsIdRequestBodyMetadata'Variants),
    -- | name: Cardholder name.
    --
    -- Constraints:
    --
    -- * Maximum length of 5000
    postAccountBankAccountsIdRequestBodyName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountBankAccountsIdRequestBody where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_name" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyAccountHolderName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_type" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyAccountHolderType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyAccountType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_city" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyAddressCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_country" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyAddressCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_line1" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyAddressLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_line2" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyAddressLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_state" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyAddressState obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_zip" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyAddressZip obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_for_currency" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyDefaultForCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_month" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyExpMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_year" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyExpYear obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyName obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_name" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyAccountHolderName obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_holder_type" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyAccountHolderType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account_type" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyAccountType obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_city" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyAddressCity obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_country" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyAddressCountry obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_line1" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyAddressLine1 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_line2" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyAddressLine2 obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_state" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyAddressState obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("address_zip" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyAddressZip obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("default_for_currency" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyDefaultForCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_month" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyExpMonth obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("exp_year" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyExpYear obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyExpand obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("metadata" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyMetadata obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("name" Data.Aeson.Types.ToJSON..=)) (postAccountBankAccountsIdRequestBodyName obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountBankAccountsIdRequestBody where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "PostAccountBankAccountsIdRequestBody" (\obj -> ((((((((((((((GHC.Base.pure PostAccountBankAccountsIdRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_holder_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_holder_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_state")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "address_zip")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "default_for_currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "exp_month")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "exp_year")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "metadata")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "name"))

-- | Create a new 'PostAccountBankAccountsIdRequestBody' with all required fields.
mkPostAccountBankAccountsIdRequestBody :: PostAccountBankAccountsIdRequestBody
mkPostAccountBankAccountsIdRequestBody =
  PostAccountBankAccountsIdRequestBody
    { postAccountBankAccountsIdRequestBodyAccountHolderName = GHC.Maybe.Nothing,
      postAccountBankAccountsIdRequestBodyAccountHolderType = GHC.Maybe.Nothing,
      postAccountBankAccountsIdRequestBodyAccountType = GHC.Maybe.Nothing,
      postAccountBankAccountsIdRequestBodyAddressCity = GHC.Maybe.Nothing,
      postAccountBankAccountsIdRequestBodyAddressCountry = GHC.Maybe.Nothing,
      postAccountBankAccountsIdRequestBodyAddressLine1 = GHC.Maybe.Nothing,
      postAccountBankAccountsIdRequestBodyAddressLine2 = GHC.Maybe.Nothing,
      postAccountBankAccountsIdRequestBodyAddressState = GHC.Maybe.Nothing,
      postAccountBankAccountsIdRequestBodyAddressZip = GHC.Maybe.Nothing,
      postAccountBankAccountsIdRequestBodyDefaultForCurrency = GHC.Maybe.Nothing,
      postAccountBankAccountsIdRequestBodyExpMonth = GHC.Maybe.Nothing,
      postAccountBankAccountsIdRequestBodyExpYear = GHC.Maybe.Nothing,
      postAccountBankAccountsIdRequestBodyExpand = GHC.Maybe.Nothing,
      postAccountBankAccountsIdRequestBodyMetadata = GHC.Maybe.Nothing,
      postAccountBankAccountsIdRequestBodyName = GHC.Maybe.Nothing
    }

-- | Defines the enum schema located at @paths.\/v1\/account\/bank_accounts\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.account_holder_type@ in the specification.
--
-- The type of entity that holds the account. This can be either \`individual\` or \`company\`.
data PostAccountBankAccountsIdRequestBodyAccountHolderType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostAccountBankAccountsIdRequestBodyAccountHolderType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostAccountBankAccountsIdRequestBodyAccountHolderType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @""@
    PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumEmptyString
  | -- | Represents the JSON value @"company"@
    PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumCompany
  | -- | Represents the JSON value @"individual"@
    PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumIndividual
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountBankAccountsIdRequestBodyAccountHolderType' where
  toJSON (PostAccountBankAccountsIdRequestBodyAccountHolderType'Other val) = val
  toJSON (PostAccountBankAccountsIdRequestBodyAccountHolderType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumEmptyString) = ""
  toJSON (PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumCompany) = "company"
  toJSON (PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumIndividual) = "individual"

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountBankAccountsIdRequestBodyAccountHolderType' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "" -> PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumEmptyString
          | val GHC.Classes.== "company" -> PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumCompany
          | val GHC.Classes.== "individual" -> PostAccountBankAccountsIdRequestBodyAccountHolderType'EnumIndividual
          | GHC.Base.otherwise -> PostAccountBankAccountsIdRequestBodyAccountHolderType'Other val
      )

-- | Defines the enum schema located at @paths.\/v1\/account\/bank_accounts\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.account_type@ in the specification.
--
-- The bank account type. This can only be \`checking\` or \`savings\` in most countries. In Japan, this can only be \`futsu\` or \`toza\`.
data PostAccountBankAccountsIdRequestBodyAccountType'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    PostAccountBankAccountsIdRequestBodyAccountType'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    PostAccountBankAccountsIdRequestBodyAccountType'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"checking"@
    PostAccountBankAccountsIdRequestBodyAccountType'EnumChecking
  | -- | Represents the JSON value @"futsu"@
    PostAccountBankAccountsIdRequestBodyAccountType'EnumFutsu
  | -- | Represents the JSON value @"savings"@
    PostAccountBankAccountsIdRequestBodyAccountType'EnumSavings
  | -- | Represents the JSON value @"toza"@
    PostAccountBankAccountsIdRequestBodyAccountType'EnumToza
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountBankAccountsIdRequestBodyAccountType' where
  toJSON (PostAccountBankAccountsIdRequestBodyAccountType'Other val) = val
  toJSON (PostAccountBankAccountsIdRequestBodyAccountType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (PostAccountBankAccountsIdRequestBodyAccountType'EnumChecking) = "checking"
  toJSON (PostAccountBankAccountsIdRequestBodyAccountType'EnumFutsu) = "futsu"
  toJSON (PostAccountBankAccountsIdRequestBodyAccountType'EnumSavings) = "savings"
  toJSON (PostAccountBankAccountsIdRequestBodyAccountType'EnumToza) = "toza"

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountBankAccountsIdRequestBodyAccountType' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "checking" -> PostAccountBankAccountsIdRequestBodyAccountType'EnumChecking
          | val GHC.Classes.== "futsu" -> PostAccountBankAccountsIdRequestBodyAccountType'EnumFutsu
          | val GHC.Classes.== "savings" -> PostAccountBankAccountsIdRequestBodyAccountType'EnumSavings
          | val GHC.Classes.== "toza" -> PostAccountBankAccountsIdRequestBodyAccountType'EnumToza
          | GHC.Base.otherwise -> PostAccountBankAccountsIdRequestBodyAccountType'Other val
      )

-- | Defines the oneOf schema located at @paths.\/v1\/account\/bank_accounts\/{id}.POST.requestBody.content.application\/x-www-form-urlencoded.schema.properties.metadata.anyOf@ in the specification.
--
-- Set of [key-value pairs](https:\/\/stripe.com\/docs\/api\/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to \`metadata\`.
data PostAccountBankAccountsIdRequestBodyMetadata'Variants
  = -- | Represents the JSON value @""@
    PostAccountBankAccountsIdRequestBodyMetadata'EmptyString
  | PostAccountBankAccountsIdRequestBodyMetadata'Object Data.Aeson.Types.Internal.Object
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON PostAccountBankAccountsIdRequestBodyMetadata'Variants where
  toJSON (PostAccountBankAccountsIdRequestBodyMetadata'Object a) = Data.Aeson.Types.ToJSON.toJSON a
  toJSON (PostAccountBankAccountsIdRequestBodyMetadata'EmptyString) = ""

instance Data.Aeson.Types.FromJSON.FromJSON PostAccountBankAccountsIdRequestBodyMetadata'Variants where
  parseJSON val =
    if
      | val GHC.Classes.== "" -> GHC.Base.pure PostAccountBankAccountsIdRequestBodyMetadata'EmptyString
      | GHC.Base.otherwise -> case (PostAccountBankAccountsIdRequestBodyMetadata'Object Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched" of
          Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
          Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a

-- | Represents a response of the operation 'postAccountBankAccountsId'.
--
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostAccountBankAccountsIdResponseError' is used.
data PostAccountBankAccountsIdResponse
  = -- | Means either no matching case available or a parse error
    PostAccountBankAccountsIdResponseError GHC.Base.String
  | -- | Successful response.
    PostAccountBankAccountsIdResponse200 ExternalAccount
  | -- | Error response.
    PostAccountBankAccountsIdResponseDefault Error
  deriving (GHC.Show.Show, GHC.Classes.Eq)
