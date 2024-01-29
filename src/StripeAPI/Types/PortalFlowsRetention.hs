-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PortalFlowsRetention
module StripeAPI.Types.PortalFlowsRetention where

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
import {-# SOURCE #-} StripeAPI.Types.PortalFlowsCouponOffer

-- | Defines the object schema located at @components.schemas.portal_flows_retention@ in the specification.
-- 
-- 
data PortalFlowsRetention = PortalFlowsRetention {
  -- | coupon_offer: Configuration when \`retention.type=coupon_offer\`.
  portalFlowsRetentionCouponOffer :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable PortalFlowsRetentionCouponOffer'NonNullable))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PortalFlowsRetention
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("coupon_offer" Data.Aeson.Types.ToJSON..=)) (portalFlowsRetentionCouponOffer obj) : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "coupon_offer"] : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("coupon_offer" Data.Aeson.Types.ToJSON..=)) (portalFlowsRetentionCouponOffer obj) : ["type" Data.Aeson.Types.ToJSON..= Data.Aeson.Types.Internal.String "coupon_offer"] : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PortalFlowsRetention
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PortalFlowsRetention" (\obj -> GHC.Base.pure PortalFlowsRetention GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "coupon_offer"))}
-- | Create a new 'PortalFlowsRetention' with all required fields.
mkPortalFlowsRetention :: PortalFlowsRetention
mkPortalFlowsRetention = PortalFlowsRetention{portalFlowsRetentionCouponOffer = GHC.Maybe.Nothing}
-- | Defines the object schema located at @components.schemas.portal_flows_retention.properties.coupon_offer.anyOf@ in the specification.
-- 
-- Configuration when \\\`retention.type=coupon_offer\\\`.
data PortalFlowsRetentionCouponOffer'NonNullable = PortalFlowsRetentionCouponOffer'NonNullable {
  -- | coupon: The ID of the coupon to be offered.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  portalFlowsRetentionCouponOffer'NonNullableCoupon :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PortalFlowsRetentionCouponOffer'NonNullable
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("coupon" Data.Aeson.Types.ToJSON..=)) (portalFlowsRetentionCouponOffer'NonNullableCoupon obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("coupon" Data.Aeson.Types.ToJSON..=)) (portalFlowsRetentionCouponOffer'NonNullableCoupon obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PortalFlowsRetentionCouponOffer'NonNullable
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PortalFlowsRetentionCouponOffer'NonNullable" (\obj -> GHC.Base.pure PortalFlowsRetentionCouponOffer'NonNullable GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "coupon"))}
-- | Create a new 'PortalFlowsRetentionCouponOffer'NonNullable' with all required fields.
mkPortalFlowsRetentionCouponOffer'NonNullable :: PortalFlowsRetentionCouponOffer'NonNullable
mkPortalFlowsRetentionCouponOffer'NonNullable = PortalFlowsRetentionCouponOffer'NonNullable{portalFlowsRetentionCouponOffer'NonNullableCoupon = GHC.Maybe.Nothing}