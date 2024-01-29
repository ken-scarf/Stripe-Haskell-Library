-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentMethodDomainResourcePaymentMethodStatus
module StripeAPI.Types.PaymentMethodDomainResourcePaymentMethodStatus where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString
import qualified Data.ByteString as Data.ByteString.Internal
import qualified Data.Foldable
import qualified Data.Functor
import qualified Data.Maybe
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodDomainResourcePaymentMethodStatusDetails

-- | Defines the object schema located at @components.schemas.payment_method_domain_resource_payment_method_status@ in the specification.
-- 
-- Indicates the status of a specific payment method on a payment method domain.
data PaymentMethodDomainResourcePaymentMethodStatus = PaymentMethodDomainResourcePaymentMethodStatus {
  -- | status: The status of the payment method on the domain.
  paymentMethodDomainResourcePaymentMethodStatusStatus :: PaymentMethodDomainResourcePaymentMethodStatusStatus'
  -- | status_details: Contains additional details about the status of a payment method for a specific payment method domain.
  , paymentMethodDomainResourcePaymentMethodStatusStatusDetails :: (GHC.Maybe.Maybe PaymentMethodDomainResourcePaymentMethodStatusDetails)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDomainResourcePaymentMethodStatus
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["status" Data.Aeson.Types.ToJSON..= paymentMethodDomainResourcePaymentMethodStatusStatus obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status_details" Data.Aeson.Types.ToJSON..=)) (paymentMethodDomainResourcePaymentMethodStatusStatusDetails obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["status" Data.Aeson.Types.ToJSON..= paymentMethodDomainResourcePaymentMethodStatusStatus obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status_details" Data.Aeson.Types.ToJSON..=)) (paymentMethodDomainResourcePaymentMethodStatusStatusDetails obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDomainResourcePaymentMethodStatus
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodDomainResourcePaymentMethodStatus" (\obj -> (GHC.Base.pure PaymentMethodDomainResourcePaymentMethodStatus GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "status_details"))}
-- | Create a new 'PaymentMethodDomainResourcePaymentMethodStatus' with all required fields.
mkPaymentMethodDomainResourcePaymentMethodStatus :: PaymentMethodDomainResourcePaymentMethodStatusStatus' -- ^ 'paymentMethodDomainResourcePaymentMethodStatusStatus'
  -> PaymentMethodDomainResourcePaymentMethodStatus
mkPaymentMethodDomainResourcePaymentMethodStatus paymentMethodDomainResourcePaymentMethodStatusStatus = PaymentMethodDomainResourcePaymentMethodStatus{paymentMethodDomainResourcePaymentMethodStatusStatus = paymentMethodDomainResourcePaymentMethodStatusStatus,
                                                                                                                                                       paymentMethodDomainResourcePaymentMethodStatusStatusDetails = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.payment_method_domain_resource_payment_method_status.properties.status@ in the specification.
-- 
-- The status of the payment method on the domain.
data PaymentMethodDomainResourcePaymentMethodStatusStatus' =
   PaymentMethodDomainResourcePaymentMethodStatusStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PaymentMethodDomainResourcePaymentMethodStatusStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PaymentMethodDomainResourcePaymentMethodStatusStatus'EnumActive -- ^ Represents the JSON value @"active"@
  | PaymentMethodDomainResourcePaymentMethodStatusStatus'EnumInactive -- ^ Represents the JSON value @"inactive"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodDomainResourcePaymentMethodStatusStatus'
    where {toJSON (PaymentMethodDomainResourcePaymentMethodStatusStatus'Other val) = val;
           toJSON (PaymentMethodDomainResourcePaymentMethodStatusStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (PaymentMethodDomainResourcePaymentMethodStatusStatus'EnumActive) = "active";
           toJSON (PaymentMethodDomainResourcePaymentMethodStatusStatus'EnumInactive) = "inactive"}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodDomainResourcePaymentMethodStatusStatus'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "active" -> PaymentMethodDomainResourcePaymentMethodStatusStatus'EnumActive
                                             | val GHC.Classes.== "inactive" -> PaymentMethodDomainResourcePaymentMethodStatusStatus'EnumInactive
                                             | GHC.Base.otherwise -> PaymentMethodDomainResourcePaymentMethodStatusStatus'Other val)}