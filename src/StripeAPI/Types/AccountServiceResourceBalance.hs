{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema AccountServiceResourceBalance
module StripeAPI.Types.AccountServiceResourceBalance where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
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
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.account_service_resource_balance@ in the specification.
--
-- Balance information for the FinancialAccount
data AccountServiceResourceBalance = AccountServiceResourceBalance
  { -- | cash: Funds the user can spend right now.
    accountServiceResourceBalanceCash :: Data.Aeson.Types.Internal.Object,
    -- | inbound_pending: Funds not spendable yet, but will become available at a later time.
    accountServiceResourceBalanceInboundPending :: Data.Aeson.Types.Internal.Object,
    -- | outbound_pending: Funds in the account, but not spendable because they are being held for pending outbound flows.
    accountServiceResourceBalanceOutboundPending :: Data.Aeson.Types.Internal.Object
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON AccountServiceResourceBalance where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["cash" Data.Aeson.Types.ToJSON..= accountServiceResourceBalanceCash obj] : ["inbound_pending" Data.Aeson.Types.ToJSON..= accountServiceResourceBalanceInboundPending obj] : ["outbound_pending" Data.Aeson.Types.ToJSON..= accountServiceResourceBalanceOutboundPending obj] : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["cash" Data.Aeson.Types.ToJSON..= accountServiceResourceBalanceCash obj] : ["inbound_pending" Data.Aeson.Types.ToJSON..= accountServiceResourceBalanceInboundPending obj] : ["outbound_pending" Data.Aeson.Types.ToJSON..= accountServiceResourceBalanceOutboundPending obj] : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON AccountServiceResourceBalance where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountServiceResourceBalance" (\obj -> ((GHC.Base.pure AccountServiceResourceBalance GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "cash")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "inbound_pending")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "outbound_pending"))

-- | Create a new 'AccountServiceResourceBalance' with all required fields.
mkAccountServiceResourceBalance ::
  -- | 'accountServiceResourceBalanceCash'
  Data.Aeson.Types.Internal.Object ->
  -- | 'accountServiceResourceBalanceInboundPending'
  Data.Aeson.Types.Internal.Object ->
  -- | 'accountServiceResourceBalanceOutboundPending'
  Data.Aeson.Types.Internal.Object ->
  AccountServiceResourceBalance
mkAccountServiceResourceBalance accountServiceResourceBalanceCash accountServiceResourceBalanceInboundPending accountServiceResourceBalanceOutboundPending =
  AccountServiceResourceBalance
    { accountServiceResourceBalanceCash = accountServiceResourceBalanceCash,
      accountServiceResourceBalanceInboundPending = accountServiceResourceBalanceInboundPending,
      accountServiceResourceBalanceOutboundPending = accountServiceResourceBalanceOutboundPending
    }