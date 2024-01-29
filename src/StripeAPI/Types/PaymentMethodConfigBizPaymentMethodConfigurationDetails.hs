-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PaymentMethodConfigBizPaymentMethodConfigurationDetails
module StripeAPI.Types.PaymentMethodConfigBizPaymentMethodConfigurationDetails where

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

-- | Defines the object schema located at @components.schemas.payment_method_config_biz_payment_method_configuration_details@ in the specification.
-- 
-- 
data PaymentMethodConfigBizPaymentMethodConfigurationDetails = PaymentMethodConfigBizPaymentMethodConfigurationDetails {
  -- | id: ID of the payment method configuration used.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  paymentMethodConfigBizPaymentMethodConfigurationDetailsId :: Data.Text.Internal.Text
  -- | parent: ID of the parent payment method configuration used.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , paymentMethodConfigBizPaymentMethodConfigurationDetailsParent :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PaymentMethodConfigBizPaymentMethodConfigurationDetails
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["id" Data.Aeson.Types.ToJSON..= paymentMethodConfigBizPaymentMethodConfigurationDetailsId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("parent" Data.Aeson.Types.ToJSON..=)) (paymentMethodConfigBizPaymentMethodConfigurationDetailsParent obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["id" Data.Aeson.Types.ToJSON..= paymentMethodConfigBizPaymentMethodConfigurationDetailsId obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("parent" Data.Aeson.Types.ToJSON..=)) (paymentMethodConfigBizPaymentMethodConfigurationDetailsParent obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PaymentMethodConfigBizPaymentMethodConfigurationDetails
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PaymentMethodConfigBizPaymentMethodConfigurationDetails" (\obj -> (GHC.Base.pure PaymentMethodConfigBizPaymentMethodConfigurationDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "parent"))}
-- | Create a new 'PaymentMethodConfigBizPaymentMethodConfigurationDetails' with all required fields.
mkPaymentMethodConfigBizPaymentMethodConfigurationDetails :: Data.Text.Internal.Text -- ^ 'paymentMethodConfigBizPaymentMethodConfigurationDetailsId'
  -> PaymentMethodConfigBizPaymentMethodConfigurationDetails
mkPaymentMethodConfigBizPaymentMethodConfigurationDetails paymentMethodConfigBizPaymentMethodConfigurationDetailsId = PaymentMethodConfigBizPaymentMethodConfigurationDetails{paymentMethodConfigBizPaymentMethodConfigurationDetailsId = paymentMethodConfigBizPaymentMethodConfigurationDetailsId,
                                                                                                                                                                              paymentMethodConfigBizPaymentMethodConfigurationDetailsParent = GHC.Maybe.Nothing}
