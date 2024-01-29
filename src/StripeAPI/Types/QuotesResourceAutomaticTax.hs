-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema QuotesResourceAutomaticTax
module StripeAPI.Types.QuotesResourceAutomaticTax where

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
import {-# SOURCE #-} StripeAPI.Types.Account
import {-# SOURCE #-} StripeAPI.Types.ConnectAccountReference

-- | Defines the object schema located at @components.schemas.quotes_resource_automatic_tax@ in the specification.
-- 
-- 
data QuotesResourceAutomaticTax = QuotesResourceAutomaticTax {
  -- | enabled: Automatically calculate taxes
  quotesResourceAutomaticTaxEnabled :: GHC.Types.Bool
  -- | liability: The account that\'s liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
  , quotesResourceAutomaticTaxLiability :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable QuotesResourceAutomaticTaxLiability'NonNullable))
  -- | status: The status of the most recent automated tax calculation for this quote.
  , quotesResourceAutomaticTaxStatus :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable QuotesResourceAutomaticTaxStatus'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON QuotesResourceAutomaticTax
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= quotesResourceAutomaticTaxEnabled obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("liability" Data.Aeson.Types.ToJSON..=)) (quotesResourceAutomaticTaxLiability obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status" Data.Aeson.Types.ToJSON..=)) (quotesResourceAutomaticTaxStatus obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (["enabled" Data.Aeson.Types.ToJSON..= quotesResourceAutomaticTaxEnabled obj] : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("liability" Data.Aeson.Types.ToJSON..=)) (quotesResourceAutomaticTaxLiability obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("status" Data.Aeson.Types.ToJSON..=)) (quotesResourceAutomaticTaxStatus obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON QuotesResourceAutomaticTax
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "QuotesResourceAutomaticTax" (\obj -> ((GHC.Base.pure QuotesResourceAutomaticTax GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "enabled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "liability")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "status"))}
-- | Create a new 'QuotesResourceAutomaticTax' with all required fields.
mkQuotesResourceAutomaticTax :: GHC.Types.Bool -- ^ 'quotesResourceAutomaticTaxEnabled'
  -> QuotesResourceAutomaticTax
mkQuotesResourceAutomaticTax quotesResourceAutomaticTaxEnabled = QuotesResourceAutomaticTax{quotesResourceAutomaticTaxEnabled = quotesResourceAutomaticTaxEnabled,
                                                                                            quotesResourceAutomaticTaxLiability = GHC.Maybe.Nothing,
                                                                                            quotesResourceAutomaticTaxStatus = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.quotes_resource_automatic_tax.properties.liability.anyOf@ in the specification.
-- 
-- The account that\\\'s liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
data QuotesResourceAutomaticTaxLiability'NonNullable = QuotesResourceAutomaticTaxLiability'NonNullable {
  -- | account: The connected account being referenced when \`type\` is \`account\`.
  quotesResourceAutomaticTaxLiability'NonNullableAccount :: (GHC.Maybe.Maybe QuotesResourceAutomaticTaxLiability'NonNullableAccount'Variants)
  -- | type: Type of the account referenced.
  , quotesResourceAutomaticTaxLiability'NonNullableType :: (GHC.Maybe.Maybe QuotesResourceAutomaticTaxLiability'NonNullableType')
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON QuotesResourceAutomaticTaxLiability'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account" Data.Aeson.Types.ToJSON..=)) (quotesResourceAutomaticTaxLiability'NonNullableAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (quotesResourceAutomaticTaxLiability'NonNullableType obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("account" Data.Aeson.Types.ToJSON..=)) (quotesResourceAutomaticTaxLiability'NonNullableAccount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("type" Data.Aeson.Types.ToJSON..=)) (quotesResourceAutomaticTaxLiability'NonNullableType obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON QuotesResourceAutomaticTaxLiability'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "QuotesResourceAutomaticTaxLiability'NonNullable" (\obj -> (GHC.Base.pure QuotesResourceAutomaticTaxLiability'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "account")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "type"))}
-- | Create a new 'QuotesResourceAutomaticTaxLiability'NonNullable' with all required fields.
mkQuotesResourceAutomaticTaxLiability'NonNullable :: QuotesResourceAutomaticTaxLiability'NonNullable
mkQuotesResourceAutomaticTaxLiability'NonNullable = QuotesResourceAutomaticTaxLiability'NonNullable{quotesResourceAutomaticTaxLiability'NonNullableAccount = GHC.Maybe.Nothing,
                                                                                                    quotesResourceAutomaticTaxLiability'NonNullableType = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @components.schemas.quotes_resource_automatic_tax.properties.liability.anyOf.properties.account.anyOf@ in the specification.
-- 
-- The connected account being referenced when \`type\` is \`account\`.
data QuotesResourceAutomaticTaxLiability'NonNullableAccount'Variants =
   QuotesResourceAutomaticTaxLiability'NonNullableAccount'Text Data.Text.Internal.Text
  | QuotesResourceAutomaticTaxLiability'NonNullableAccount'Account Account
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON QuotesResourceAutomaticTaxLiability'NonNullableAccount'Variants
    where {toJSON (QuotesResourceAutomaticTaxLiability'NonNullableAccount'Text a) = Data.Aeson.Types.ToJSON.toJSON a;
           toJSON (QuotesResourceAutomaticTaxLiability'NonNullableAccount'Account a) = Data.Aeson.Types.ToJSON.toJSON a}
instance Data.Aeson.Types.FromJSON.FromJSON QuotesResourceAutomaticTaxLiability'NonNullableAccount'Variants
    where {parseJSON val = case (QuotesResourceAutomaticTaxLiability'NonNullableAccount'Text Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((QuotesResourceAutomaticTaxLiability'NonNullableAccount'Account Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                           {Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a;
                            Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a}}
-- | Defines the enum schema located at @components.schemas.quotes_resource_automatic_tax.properties.liability.anyOf.properties.type@ in the specification.
-- 
-- Type of the account referenced.
data QuotesResourceAutomaticTaxLiability'NonNullableType' =
   QuotesResourceAutomaticTaxLiability'NonNullableType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | QuotesResourceAutomaticTaxLiability'NonNullableType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | QuotesResourceAutomaticTaxLiability'NonNullableType'EnumAccount -- ^ Represents the JSON value @"account"@
  | QuotesResourceAutomaticTaxLiability'NonNullableType'EnumSelf -- ^ Represents the JSON value @"self"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON QuotesResourceAutomaticTaxLiability'NonNullableType'
    where {toJSON (QuotesResourceAutomaticTaxLiability'NonNullableType'Other val) = val;
           toJSON (QuotesResourceAutomaticTaxLiability'NonNullableType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (QuotesResourceAutomaticTaxLiability'NonNullableType'EnumAccount) = "account";
           toJSON (QuotesResourceAutomaticTaxLiability'NonNullableType'EnumSelf) = "self"}
instance Data.Aeson.Types.FromJSON.FromJSON QuotesResourceAutomaticTaxLiability'NonNullableType'
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "account" -> QuotesResourceAutomaticTaxLiability'NonNullableType'EnumAccount
                                             | val GHC.Classes.== "self" -> QuotesResourceAutomaticTaxLiability'NonNullableType'EnumSelf
                                             | GHC.Base.otherwise -> QuotesResourceAutomaticTaxLiability'NonNullableType'Other val)}
-- | Defines the enum schema located at @components.schemas.quotes_resource_automatic_tax.properties.status@ in the specification.
-- 
-- The status of the most recent automated tax calculation for this quote.
data QuotesResourceAutomaticTaxStatus'NonNullable =
   QuotesResourceAutomaticTaxStatus'NonNullableOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | QuotesResourceAutomaticTaxStatus'NonNullableTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | QuotesResourceAutomaticTaxStatus'NonNullableEnumComplete -- ^ Represents the JSON value @"complete"@
  | QuotesResourceAutomaticTaxStatus'NonNullableEnumFailed -- ^ Represents the JSON value @"failed"@
  | QuotesResourceAutomaticTaxStatus'NonNullableEnumRequiresLocationInputs -- ^ Represents the JSON value @"requires_location_inputs"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON QuotesResourceAutomaticTaxStatus'NonNullable
    where {toJSON (QuotesResourceAutomaticTaxStatus'NonNullableOther val) = val;
           toJSON (QuotesResourceAutomaticTaxStatus'NonNullableTyped val) = Data.Aeson.Types.ToJSON.toJSON val;
           toJSON (QuotesResourceAutomaticTaxStatus'NonNullableEnumComplete) = "complete";
           toJSON (QuotesResourceAutomaticTaxStatus'NonNullableEnumFailed) = "failed";
           toJSON (QuotesResourceAutomaticTaxStatus'NonNullableEnumRequiresLocationInputs) = "requires_location_inputs"}
instance Data.Aeson.Types.FromJSON.FromJSON QuotesResourceAutomaticTaxStatus'NonNullable
    where {parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "complete" -> QuotesResourceAutomaticTaxStatus'NonNullableEnumComplete
                                             | val GHC.Classes.== "failed" -> QuotesResourceAutomaticTaxStatus'NonNullableEnumFailed
                                             | val GHC.Classes.== "requires_location_inputs" -> QuotesResourceAutomaticTaxStatus'NonNullableEnumRequiresLocationInputs
                                             | GHC.Base.otherwise -> QuotesResourceAutomaticTaxStatus'NonNullableOther val)}
