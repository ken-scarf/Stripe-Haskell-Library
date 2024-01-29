-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema OutboundPaymentsPaymentMethodDetailsFinancialAccount
module StripeAPI.Types.OutboundPaymentsPaymentMethodDetailsFinancialAccount where

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

-- | Defines the object schema located at @components.schemas.outbound_payments_payment_method_details_financial_account@ in the specification.
-- 
-- 
data OutboundPaymentsPaymentMethodDetailsFinancialAccount = OutboundPaymentsPaymentMethodDetailsFinancialAccount {
  -- | id: Token of the FinancialAccount.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  outboundPaymentsPaymentMethodDetailsFinancialAccountId :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON OutboundPaymentsPaymentMethodDetailsFinancialAccount
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["id" Data.Aeson.Types.ToJSON..= outboundPaymentsPaymentMethodDetailsFinancialAccountId obj] : ["network" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "stripe"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["id" Data.Aeson.Types.ToJSON..= outboundPaymentsPaymentMethodDetailsFinancialAccountId obj] : ["network" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "stripe"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON OutboundPaymentsPaymentMethodDetailsFinancialAccount
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "OutboundPaymentsPaymentMethodDetailsFinancialAccount" (\obj -> GHC.Base.pure OutboundPaymentsPaymentMethodDetailsFinancialAccount GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id"))}
-- | Create a new 'OutboundPaymentsPaymentMethodDetailsFinancialAccount' with all required fields.
mkOutboundPaymentsPaymentMethodDetailsFinancialAccount :: Data.Text.Internal.Text -- ^ 'outboundPaymentsPaymentMethodDetailsFinancialAccountId'
  -> OutboundPaymentsPaymentMethodDetailsFinancialAccount
mkOutboundPaymentsPaymentMethodDetailsFinancialAccount outboundPaymentsPaymentMethodDetailsFinancialAccountId = OutboundPaymentsPaymentMethodDetailsFinancialAccount{outboundPaymentsPaymentMethodDetailsFinancialAccountId = outboundPaymentsPaymentMethodDetailsFinancialAccountId}
