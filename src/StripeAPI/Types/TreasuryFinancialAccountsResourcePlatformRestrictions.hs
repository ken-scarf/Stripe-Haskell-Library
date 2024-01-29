-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TreasuryFinancialAccountsResourcePlatformRestrictions
module StripeAPI.Types.TreasuryFinancialAccountsResourcePlatformRestrictions where

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

-- | Defines the object schema located at @components.schemas.treasury_financial_accounts_resource_platform_restrictions@ in the specification.
-- 
-- Restrictions that a Connect Platform has placed on this FinancialAccount.
data TreasuryFinancialAccountsResourcePlatformRestrictions = TreasuryFinancialAccountsResourcePlatformRestrictions {
  -- | inbound_flows: Restricts all inbound money movement.
  treasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows'NonNullable))
  -- | outbound_flows: Restricts all outbound money movement.
  , treasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TreasuryFinancialAccountsResourcePlatformRestrictions
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("inbound_flows" Data.Aeson.Types.ToJSON..=)) (treasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("outbound_flows" Data.Aeson.Types.ToJSON..=)) (treasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("inbound_flows" Data.Aeson.Types.ToJSON..=)) (treasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("outbound_flows" Data.Aeson.Types.ToJSON..=)) (treasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON TreasuryFinancialAccountsResourcePlatformRestrictions
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "TreasuryFinancialAccountsResourcePlatformRestrictions" (\obj -> (GHC.Base.pure TreasuryFinancialAccountsResourcePlatformRestrictions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "inbound_flows")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "outbound_flows"))}
-- | Create a new 'TreasuryFinancialAccountsResourcePlatformRestrictions' with all required fields.
mkTreasuryFinancialAccountsResourcePlatformRestrictions :: TreasuryFinancialAccountsResourcePlatformRestrictions
mkTreasuryFinancialAccountsResourcePlatformRestrictions = TreasuryFinancialAccountsResourcePlatformRestrictions{treasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows = GHC.Maybe.Nothing,
                                                                                                                treasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.treasury_financial_accounts_resource_platform_restrictions.properties.inbound_flows@ in the specification.
-- 
-- Restricts all inbound money movement.
data TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows'NonNullable =
   TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows'NonNullableEnumRestricted -- ^ Represents the JSON value @"restricted"@
  | TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows'NonNullableEnumUnrestricted -- ^ Represents the JSON value @"unrestricted"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows'NonNullable
    where {toJSON (TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows'NonNullableOther val) = val;
           toJSON (TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows'NonNullableEnumRestricted) = "restricted";
           toJSON (TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows'NonNullableEnumUnrestricted) = "unrestricted"}
instance Data.Aeson.Types.FromJSON.FromJSON TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "restricted" -> TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows'NonNullableEnumRestricted
                                             | val GHC.Classes.== "unrestricted" -> TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows'NonNullableEnumUnrestricted
                                             | GHC.Base.otherwise -> TreasuryFinancialAccountsResourcePlatformRestrictionsInboundFlows'NonNullableOther val)}
-- | Defines the enum schema located at @components.schemas.treasury_financial_accounts_resource_platform_restrictions.properties.outbound_flows@ in the specification.
-- 
-- Restricts all outbound money movement.
data TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows'NonNullable =
   TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows'NonNullableEnumRestricted -- ^ Represents the JSON value @"restricted"@
  | TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows'NonNullableEnumUnrestricted -- ^ Represents the JSON value @"unrestricted"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows'NonNullable
    where {toJSON (TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows'NonNullableOther val) = val;
           toJSON (TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows'NonNullableEnumRestricted) = "restricted";
           toJSON (TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows'NonNullableEnumUnrestricted) = "unrestricted"}
instance Data.Aeson.Types.FromJSON.FromJSON TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "restricted" -> TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows'NonNullableEnumRestricted
                                             | val GHC.Classes.== "unrestricted" -> TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows'NonNullableEnumUnrestricted
                                             | GHC.Base.otherwise -> TreasuryFinancialAccountsResourcePlatformRestrictionsOutboundFlows'NonNullableOther val)}