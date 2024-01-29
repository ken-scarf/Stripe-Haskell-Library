-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema AccountAnnualRevenue
module StripeAPI.Types.AccountAnnualRevenue where

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

-- | Defines the object schema located at @components.schemas.account_annual_revenue@ in the specification.
-- 
-- 
data AccountAnnualRevenue = AccountAnnualRevenue {
  -- | amount: A non-negative integer representing the amount in the [smallest currency unit](https:\/\/stripe.com\/docs\/currencies\#zero-decimal).
  accountAnnualRevenueAmount :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | currency: Three-letter [ISO currency code](https:\/\/www.iso.org\/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https:\/\/stripe.com\/docs\/currencies).
  , accountAnnualRevenueCurrency :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | fiscal_year_end: The close-out date of the preceding fiscal year in ISO 8601 format. E.g. 2023-12-31 for the 31st of December, 2023.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , accountAnnualRevenueFiscalYearEnd :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON AccountAnnualRevenue
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (accountAnnualRevenueAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (accountAnnualRevenueCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fiscal_year_end" Data.Aeson.Types.ToJSON..=)) (accountAnnualRevenueFiscalYearEnd obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("amount" Data.Aeson.Types.ToJSON..=)) (accountAnnualRevenueAmount obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("currency" Data.Aeson.Types.ToJSON..=)) (accountAnnualRevenueCurrency obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("fiscal_year_end" Data.Aeson.Types.ToJSON..=)) (accountAnnualRevenueFiscalYearEnd obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON AccountAnnualRevenue
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "AccountAnnualRevenue" (\obj -> ((GHC.Base.pure AccountAnnualRevenue GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "amount")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "currency")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "fiscal_year_end"))}
-- | Create a new 'AccountAnnualRevenue' with all required fields.
mkAccountAnnualRevenue :: AccountAnnualRevenue
mkAccountAnnualRevenue = AccountAnnualRevenue{accountAnnualRevenueAmount = GHC.Maybe.Nothing,
                                              accountAnnualRevenueCurrency = GHC.Maybe.Nothing,
                                              accountAnnualRevenueFiscalYearEnd = GHC.Maybe.Nothing}
