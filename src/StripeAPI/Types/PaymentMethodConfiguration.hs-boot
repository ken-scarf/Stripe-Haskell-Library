module StripeAPI.Types.PaymentMethodConfiguration where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified StripeAPI.Common
data PaymentMethodConfiguration
instance Show PaymentMethodConfiguration
instance Eq PaymentMethodConfiguration
instance FromJSON PaymentMethodConfiguration
instance ToJSON PaymentMethodConfiguration