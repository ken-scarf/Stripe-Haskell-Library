-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema FinancialConnections_Transaction
module StripeAPI.Types.FinancialConnections_Transaction where

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
import {-# SOURCE #-} StripeAPI.Types.BankConnectionsResourceTransactionResourceStatusTransitions

-- | Defines the object schema located at @components.schemas.financial_connections.transaction@ in the specification.
-- 
-- A Transaction represents a real transaction that affects a Financial Connections Account balance.
data FinancialConnections'transaction = FinancialConnections'transaction {
  -- | account: The ID of the Financial Connections Account this transaction belongs to.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  financialConnections'transactionAccount :: Data.Text.Internal.Text
  -- | amount: The amount of this transaction, in cents (or local equivalent).
  , financialConnections'transactionAmount :: GHC.Types.Int
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , financialConnections'transactionCurrency :: Data.Text.Internal.Text
  -- | description: The description of this transaction.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , financialConnections'transactionDescription :: Data.Text.Internal.Text
  -- | id: Unique identifier for the object.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , financialConnections'transactionId :: Data.Text.Internal.Text
  -- | livemode: Has the value \`true\` if the object exists in live mode or the value \`false\` if the object exists in test mode.
  , financialConnections'transactionLivemode :: GHC.Types.Bool
  -- | status: The status of the transaction.
  , financialConnections'transactionStatus :: FinancialConnections'transactionStatus'
  -- | status_transitions: 
  , financialConnections'transactionStatusTransitions :: BankConnectionsResourceTransactionResourceStatusTransitions
  -- | transacted_at: Time at which the transaction was transacted. Measured in seconds since the Unix epoch.
  , financialConnections'transactionTransactedAt :: GHC.Types.Int
  -- | transaction_refresh: The token of the transaction refresh that last updated or created this transaction.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , financialConnections'transactionTransactionRefresh :: Data.Text.Internal.Text
  -- | updated: Time at which the object was last updated. Measured in seconds since the Unix epoch.
  , financialConnections'transactionUpdated :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FinancialConnections'transaction
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["account" Data.Aeson.Types.ToJSON..= financialConnections'transactionAccount obj] : ["amount" Data.Aeson.Types.ToJSON..= financialConnections'transactionAmount obj] : ["currency" Data.Aeson.Types.ToJSON..= financialConnections'transactionCurrency obj] : ["description" Data.Aeson.Types.ToJSON..= financialConnections'transactionDescription obj] : ["id" Data.Aeson.Types.ToJSON..= financialConnections'transactionId obj] : ["livemode" Data.Aeson.Types.ToJSON..= financialConnections'transactionLivemode obj] : ["status" Data.Aeson.Types.ToJSON..= financialConnections'transactionStatus obj] : ["status_transitions" Data.Aeson.Types.ToJSON..= financialConnections'transactionStatusTransitions obj] : ["transacted_at" Data.Aeson.Types.ToJSON..= financialConnections'transactionTransactedAt obj] : ["transaction_refresh" Data.Aeson.Types.ToJSON..= financialConnections'transactionTransactionRefresh obj] : ["updated" Data.Aeson.Types.ToJSON..= financialConnections'transactionUpdated obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "financial_connections.transaction"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["account" Data.Aeson.Types.ToJSON..= financialConnections'transactionAccount obj] : ["amount" Data.Aeson.Types.ToJSON..= financialConnections'transactionAmount obj] : ["currency" Data.Aeson.Types.ToJSON..= financialConnections'transactionCurrency obj] : ["description" Data.Aeson.Types.ToJSON..= financialConnections'transactionDescription obj] : ["id" Data.Aeson.Types.ToJSON..= financialConnections'transactionId obj] : ["livemode" Data.Aeson.Types.ToJSON..= financialConnections'transactionLivemode obj] : ["status" Data.Aeson.Types.ToJSON..= financialConnections'transactionStatus obj] : ["status_transitions" Data.Aeson.Types.ToJSON..= financialConnections'transactionStatusTransitions obj] : ["transacted_at" Data.Aeson.Types.ToJSON..= financialConnections'transactionTransactedAt obj] : ["transaction_refresh" Data.Aeson.Types.ToJSON..= financialConnections'transactionTransactionRefresh obj] : ["updated" Data.Aeson.Types.ToJSON..= financialConnections'transactionUpdated obj] : ["object" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "financial_connections.transaction"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON FinancialConnections'transaction
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "FinancialConnections'transaction" (\obj -> ((((((((((GHC.Base.pure FinancialConnections'transaction GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "livemode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status_transitions")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "transacted_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "transaction_refresh")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "updated"))}
-- | Create a new 'FinancialConnections'transaction' with all required fields.
mkFinancialConnections'transaction :: Data.Text.Internal.Text -- ^ 'financialConnections'transactionAccount'
  -> GHC.Types.Int -- ^ 'financialConnections'transactionAmount'
  -> Data.Text.Internal.Text -- ^ 'financialConnections'transactionCurrency'
  -> Data.Text.Internal.Text -- ^ 'financialConnections'transactionDescription'
  -> Data.Text.Internal.Text -- ^ 'financialConnections'transactionId'
  -> GHC.Types.Bool -- ^ 'financialConnections'transactionLivemode'
  -> FinancialConnections'transactionStatus' -- ^ 'financialConnections'transactionStatus'
  -> BankConnectionsResourceTransactionResourceStatusTransitions -- ^ 'financialConnections'transactionStatusTransitions'
  -> GHC.Types.Int -- ^ 'financialConnections'transactionTransactedAt'
  -> Data.Text.Internal.Text -- ^ 'financialConnections'transactionTransactionRefresh'
  -> GHC.Types.Int -- ^ 'financialConnections'transactionUpdated'
  -> FinancialConnections'transaction
mkFinancialConnections'transaction financialConnections'transactionAccount financialConnections'transactionAmount financialConnections'transactionCurrency financialConnections'transactionDescription financialConnections'transactionId financialConnections'transactionLivemode financialConnections'transactionStatus financialConnections'transactionStatusTransitions financialConnections'transactionTransactedAt financialConnections'transactionTransactionRefresh financialConnections'transactionUpdated = FinancialConnections'transaction{financialConnections'transactionAccount = financialConnections'transactionAccount,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       financialConnections'transactionAmount = financialConnections'transactionAmount,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       financialConnections'transactionCurrency = financialConnections'transactionCurrency,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       financialConnections'transactionDescription = financialConnections'transactionDescription,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       financialConnections'transactionId = financialConnections'transactionId,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       financialConnections'transactionLivemode = financialConnections'transactionLivemode,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       financialConnections'transactionStatus = financialConnections'transactionStatus,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       financialConnections'transactionStatusTransitions = financialConnections'transactionStatusTransitions,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       financialConnections'transactionTransactedAt = financialConnections'transactionTransactedAt,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       financialConnections'transactionTransactionRefresh = financialConnections'transactionTransactionRefresh,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       financialConnections'transactionUpdated = financialConnections'transactionUpdated}
-- | Defines the enum schema located at @components.schemas.financial_connections.transaction.properties.status@ in the specification.
-- 
-- The status of the transaction.
data FinancialConnections'transactionStatus' =
   FinancialConnections'transactionStatus'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | FinancialConnections'transactionStatus'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | FinancialConnections'transactionStatus'EnumPending -- ^ Represents the JSON value @"pending"@
  | FinancialConnections'transactionStatus'EnumPosted -- ^ Represents the JSON value @"posted"@
  | FinancialConnections'transactionStatus'EnumVoid -- ^ Represents the JSON value @"void"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FinancialConnections'transactionStatus'
    where {toJSON (FinancialConnections'transactionStatus'Other val) = val;
           toJSON (FinancialConnections'transactionStatus'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (FinancialConnections'transactionStatus'EnumPending) = "pending";
           toJSON (FinancialConnections'transactionStatus'EnumPosted) = "posted";
           toJSON (FinancialConnections'transactionStatus'EnumVoid) = "void"}
instance Data.Aeson.Types.FromJSON.FromJSON FinancialConnections'transactionStatus'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "pending" -> FinancialConnections'transactionStatus'EnumPending
                                             | val GHC.Classes.== "posted" -> FinancialConnections'transactionStatus'EnumPosted
                                             | val GHC.Classes.== "void" -> FinancialConnections'transactionStatus'EnumVoid
                                             | GHC.Base.otherwise -> FinancialConnections'transactionStatus'Other val)}
