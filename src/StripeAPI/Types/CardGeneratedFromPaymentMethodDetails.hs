-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema CardGeneratedFromPaymentMethodDetails
module StripeAPI.Types.CardGeneratedFromPaymentMethodDetails where

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
import {-# SOURCE #-} StripeAPI.Types.PaymentMethodDetailsCardPresent

-- | Defines the object schema located at @components.schemas.card_generated_from_payment_method_details@ in the specification.
-- 
-- 
data CardGeneratedFromPaymentMethodDetails = CardGeneratedFromPaymentMethodDetails {
  -- | card_present: 
  cardGeneratedFromPaymentMethodDetailsCardPresent :: (GHC.Maybe.Maybe PaymentMethodDetailsCardPresent)
  -- | type: The type of payment method transaction-specific details from the transaction that generated this \`card\` payment method. Always \`card_present\`.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , cardGeneratedFromPaymentMethodDetailsType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON CardGeneratedFromPaymentMethodDetails
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card_present" Data.Aeson.Types.ToJSON..=)) (cardGeneratedFromPaymentMethodDetailsCardPresent obj) : ["type" Data.Aeson.Types.ToJSON..= cardGeneratedFromPaymentMethodDetailsType obj] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("card_present" Data.Aeson.Types.ToJSON..=)) (cardGeneratedFromPaymentMethodDetailsCardPresent obj) : ["type" Data.Aeson.Types.ToJSON..= cardGeneratedFromPaymentMethodDetailsType obj] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON CardGeneratedFromPaymentMethodDetails
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "CardGeneratedFromPaymentMethodDetails" (\obj -> (GHC.Base.pure CardGeneratedFromPaymentMethodDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "card_present")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))}
-- | Create a new 'CardGeneratedFromPaymentMethodDetails' with all required fields.
mkCardGeneratedFromPaymentMethodDetails :: Data.Text.Internal.Text -- ^ 'cardGeneratedFromPaymentMethodDetailsType'
  -> CardGeneratedFromPaymentMethodDetails
mkCardGeneratedFromPaymentMethodDetails cardGeneratedFromPaymentMethodDetailsType = CardGeneratedFromPaymentMethodDetails{cardGeneratedFromPaymentMethodDetailsCardPresent = GHC.Maybe.Nothing,
                                                                                                                          cardGeneratedFromPaymentMethodDetailsType = cardGeneratedFromPaymentMethodDetailsType}
