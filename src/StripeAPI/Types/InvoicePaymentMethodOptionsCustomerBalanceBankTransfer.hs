-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InvoicePaymentMethodOptionsCustomerBalanceBankTransfer
module StripeAPI.Types.InvoicePaymentMethodOptionsCustomerBalanceBankTransfer where

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
import {-# SOURCE #-} StripeAPI.Types.InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer

-- | Defines the object schema located at @components.schemas.invoice_payment_method_options_customer_balance_bank_transfer@ in the specification.
-- 
-- 
data InvoicePaymentMethodOptionsCustomerBalanceBankTransfer = InvoicePaymentMethodOptionsCustomerBalanceBankTransfer {
  -- | eu_bank_transfer: 
  invoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer :: (GHC.Maybe.Maybe InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer)
  -- | type: The bank transfer type that can be used for funding. Permitted values include: \`eu_bank_transfer\`, \`gb_bank_transfer\`, \`jp_bank_transfer\`, \`mx_bank_transfer\`, or \`us_bank_transfer\`.
  , invoicePaymentMethodOptionsCustomerBalanceBankTransferType :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InvoicePaymentMethodOptionsCustomerBalanceBankTransfer
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("eu_bank_transfer" Data.Aeson.Types.ToJSON..=)) (invoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (invoicePaymentMethodOptionsCustomerBalanceBankTransferType obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("eu_bank_transfer" Data.Aeson.Types.ToJSON..=)) (invoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (invoicePaymentMethodOptionsCustomerBalanceBankTransferType obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON InvoicePaymentMethodOptionsCustomerBalanceBankTransfer
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "InvoicePaymentMethodOptionsCustomerBalanceBankTransfer" (\obj -> (GHC.Base.pure InvoicePaymentMethodOptionsCustomerBalanceBankTransfer GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "eu_bank_transfer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))}
-- | Create a new 'InvoicePaymentMethodOptionsCustomerBalanceBankTransfer' with all required fields.
mkInvoicePaymentMethodOptionsCustomerBalanceBankTransfer :: InvoicePaymentMethodOptionsCustomerBalanceBankTransfer
mkInvoicePaymentMethodOptionsCustomerBalanceBankTransfer = InvoicePaymentMethodOptionsCustomerBalanceBankTransfer{invoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer = GHC.Maybe.Nothing,
                                                                                                                  invoicePaymentMethodOptionsCustomerBalanceBankTransferType = GHC.Maybe.Nothing}
