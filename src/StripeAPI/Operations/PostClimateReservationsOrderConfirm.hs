-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postClimateReservationsOrderConfirm
module StripeAPI.Operations.PostClimateReservationsOrderConfirm where

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

-- | > POST /v1/climate/reservations/{order}/confirm
-- 
-- \<p>Confirms a Climate order. When you confirm your order, we immediately deduct the funds from your
-- Stripe balance.\<\/p>
postClimateReservationsOrderConfirm :: forall m . StripeAPI.Common.MonadHTTP m => Data.Text.Internal.Text -- ^ order: Unique identifier of the order. | Constraints: Maximum length of 5000
  -> GHC.Maybe.Maybe PostClimateReservationsOrderConfirmRequestBody -- ^ The request body to send
  -> StripeAPI.Common.ClientT m (Network.HTTP.Client.Types.Response PostClimateReservationsOrderConfirmResponse) -- ^ Monadic computation which returns the result of the operation
postClimateReservationsOrderConfirm order
                                    body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostClimateReservationsOrderConfirmResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostClimateReservationsOrderConfirmResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            Climate'order)
                                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostClimateReservationsOrderConfirmResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (StripeAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.Internal.pack "POST") ("/v1/climate/reservations/" GHC.Base.<> (StripeAPI.Common.byteToText (Network.HTTP.Types.URI.urlEncode GHC.Types.True GHC.Base.$ (StripeAPI.Common.textToByte GHC.Base.$ StripeAPI.Common.stringifyModel order)) GHC.Base.<> "/confirm")) GHC.Base.mempty body StripeAPI.Common.RequestBodyEncodingFormData)
-- | Defines the object schema located at @paths.\/v1\/climate\/reservations\/{order}\/confirm.POST.requestBody.content.application\/x-www-form-urlencoded.schema@ in the specification.
-- 
-- 
data PostClimateReservationsOrderConfirmRequestBody = PostClimateReservationsOrderConfirmRequestBody {
  -- | expand: Specifies which fields in the response should be expanded.
  postClimateReservationsOrderConfirmRequestBodyExpand :: (GHC.Maybe.Maybe ([Data.Text.Internal.Text]))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostClimateReservationsOrderConfirmRequestBody
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postClimateReservationsOrderConfirmRequestBodyExpand obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("expand" Data.Aeson.Types.ToJSON..=)) (postClimateReservationsOrderConfirmRequestBodyExpand obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PostClimateReservationsOrderConfirmRequestBody
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PostClimateReservationsOrderConfirmRequestBody" (\obj -> GHC.Base.pure PostClimateReservationsOrderConfirmRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "expand"))}
-- | Create a new 'PostClimateReservationsOrderConfirmRequestBody' with all required fields.
mkPostClimateReservationsOrderConfirmRequestBody :: PostClimateReservationsOrderConfirmRequestBody
mkPostClimateReservationsOrderConfirmRequestBody = PostClimateReservationsOrderConfirmRequestBody{postClimateReservationsOrderConfirmRequestBodyExpand = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postClimateReservationsOrderConfirm'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostClimateReservationsOrderConfirmResponseError' is used.
data PostClimateReservationsOrderConfirmResponse =
   PostClimateReservationsOrderConfirmResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostClimateReservationsOrderConfirmResponse200 Climate'order -- ^ Successful response.
  | PostClimateReservationsOrderConfirmResponseDefault Error -- ^ Error response.
  deriving (GHC.Show.Show, GHC.Classes.Eq)