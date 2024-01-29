{-# LANGUAGE MultiWayIf #-}
-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.
{-# LANGUAGE OverloadedStrings #-}

-- | Contains the types generated from the schema AccountServiceResourceTreasuryStatusDetails
module StripeAPI.Types.AccountServiceResourceTreasuryStatusDetails where

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
import {-# SOURCE #-} StripeAPI.Types.AccountServiceResourceTreasuryClosedStatusDetails
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.account_service_resource_treasury_status_details@ in the specification.
data AccountServiceResourceTreasuryStatusDetails = AccountServiceResourceTreasuryStatusDetails
  { -- | closed: Details related to the closure of this FinancialAccount
    accountServiceResourceTreasuryStatusDetailsClosed :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable AccountServiceResourceTreasuryStatusDetailsClosed'NonNullable))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON AccountServiceResourceTreasuryStatusDetails where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("closed" Data.Aeson.Types.ToJSON..=)) (accountServiceResourceTreasuryStatusDetailsClosed obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("closed" Data.Aeson.Types.ToJSON..=)) (accountServiceResourceTreasuryStatusDetailsClosed obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON AccountServiceResourceTreasuryStatusDetails where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountServiceResourceTreasuryStatusDetails" (\obj -> GHC.Base.pure AccountServiceResourceTreasuryStatusDetails GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "closed"))

-- | Create a new 'AccountServiceResourceTreasuryStatusDetails' with all required fields.
mkAccountServiceResourceTreasuryStatusDetails :: AccountServiceResourceTreasuryStatusDetails
mkAccountServiceResourceTreasuryStatusDetails = AccountServiceResourceTreasuryStatusDetails {accountServiceResourceTreasuryStatusDetailsClosed = GHC.Maybe.Nothing}

-- | Defines the object schema located at @components.schemas.account_service_resource_treasury_status_details.properties.closed.anyOf@ in the specification.
--
-- Details related to the closure of this FinancialAccount
data AccountServiceResourceTreasuryStatusDetailsClosed'NonNullable = AccountServiceResourceTreasuryStatusDetailsClosed'NonNullable
  { -- | reasons: The array that contains reasons for a FinancialAccount closure.
    accountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons :: (GHC.Maybe.Maybe ([AccountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons']))
  }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON AccountServiceResourceTreasuryStatusDetailsClosed'NonNullable where
  toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reasons" Data.Aeson.Types.ToJSON..=)) (accountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons obj) : GHC.Base.mempty))
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("reasons" Data.Aeson.Types.ToJSON..=)) (accountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons obj) : GHC.Base.mempty)))

instance Data.Aeson.Types.FromJSON.FromJSON AccountServiceResourceTreasuryStatusDetailsClosed'NonNullable where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountServiceResourceTreasuryStatusDetailsClosed'NonNullable" (\obj -> GHC.Base.pure AccountServiceResourceTreasuryStatusDetailsClosed'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "reasons"))

-- | Create a new 'AccountServiceResourceTreasuryStatusDetailsClosed'NonNullable' with all required fields.
mkAccountServiceResourceTreasuryStatusDetailsClosed'NonNullable :: AccountServiceResourceTreasuryStatusDetailsClosed'NonNullable
mkAccountServiceResourceTreasuryStatusDetailsClosed'NonNullable = AccountServiceResourceTreasuryStatusDetailsClosed'NonNullable {accountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons = GHC.Maybe.Nothing}

-- | Defines the enum schema located at @components.schemas.account_service_resource_treasury_status_details.properties.closed.anyOf.properties.reasons.items@ in the specification.
data AccountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons'
  = -- | This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
    AccountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons'Other Data.Aeson.Types.Internal.Value
  | -- | This constructor can be used to send values to the server which are not present in the specification yet.
    AccountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons'Typed Data.Text.Internal.Text
  | -- | Represents the JSON value @"account_rejected"@
    AccountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons'EnumAccountRejected
  | -- | Represents the JSON value @"closed_by_platform"@
    AccountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons'EnumClosedByPlatform
  | -- | Represents the JSON value @"other"@
    AccountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons'EnumOther
  deriving (GHC.Show.Show, GHC.Classes.Eq)

instance Data.Aeson.Types.ToJSON.ToJSON AccountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons' where
  toJSON (AccountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons'Other val) = val
  toJSON (AccountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
  toJSON (AccountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons'EnumAccountRejected) = "account_rejected"
  toJSON (AccountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons'EnumClosedByPlatform) = "closed_by_platform"
  toJSON (AccountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons'EnumOther) = "other"

instance Data.Aeson.Types.FromJSON.FromJSON AccountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons' where
  parseJSON val =
    GHC.Base.pure
      ( if
          | val GHC.Classes.== "account_rejected" -> AccountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons'EnumAccountRejected
          | val GHC.Classes.== "closed_by_platform" -> AccountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons'EnumClosedByPlatform
          | val GHC.Classes.== "other" -> AccountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons'EnumOther
          | GHC.Base.otherwise -> AccountServiceResourceTreasuryStatusDetailsClosed'NonNullableReasons'Other val
      )
