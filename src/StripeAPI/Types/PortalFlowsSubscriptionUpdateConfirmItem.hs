-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PortalFlowsSubscriptionUpdateConfirmItem
module StripeAPI.Types.PortalFlowsSubscriptionUpdateConfirmItem where

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

-- | Defines the object schema located at @components.schemas.portal_flows_subscription_update_confirm_item@ in the specification.
-- 
-- 
data PortalFlowsSubscriptionUpdateConfirmItem = PortalFlowsSubscriptionUpdateConfirmItem {
  -- | id: The ID of the [subscription item](https:\/\/stripe.com\/docs\/api\/subscriptions\/object\#subscription_object-items-data-id) to be updated.
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  portalFlowsSubscriptionUpdateConfirmItemId :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | price: The price the customer should subscribe to through this flow. The price must also be included in the configuration\'s [\`features.subscription_update.products\`](https:\/\/stripe.com\/docs\/api\/customer_portal\/configuration\#portal_configuration_object-features-subscription_update-products).
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 5000
  , portalFlowsSubscriptionUpdateConfirmItemPrice :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable Data.Text.Internal.Text))
  -- | quantity: [Quantity](https:\/\/stripe.com\/docs\/subscriptions\/quantities) for this item that the customer should subscribe to through this flow.
  , portalFlowsSubscriptionUpdateConfirmItemQuantity :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PortalFlowsSubscriptionUpdateConfirmItem
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (portalFlowsSubscriptionUpdateConfirmItemId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("price" Data.Aeson.Types.ToJSON..=)) (portalFlowsSubscriptionUpdateConfirmItemPrice obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("quantity" Data.Aeson.Types.ToJSON..=)) (portalFlowsSubscriptionUpdateConfirmItemQuantity obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("id" Data.Aeson.Types.ToJSON..=)) (portalFlowsSubscriptionUpdateConfirmItemId obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("price" Data.Aeson.Types.ToJSON..=)) (portalFlowsSubscriptionUpdateConfirmItemPrice obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("quantity" Data.Aeson.Types.ToJSON..=)) (portalFlowsSubscriptionUpdateConfirmItemQuantity obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON PortalFlowsSubscriptionUpdateConfirmItem
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "PortalFlowsSubscriptionUpdateConfirmItem" (\obj -> ((GHC.Base.pure PortalFlowsSubscriptionUpdateConfirmItem GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "price")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "quantity"))}
-- | Create a new 'PortalFlowsSubscriptionUpdateConfirmItem' with all required fields.
mkPortalFlowsSubscriptionUpdateConfirmItem :: PortalFlowsSubscriptionUpdateConfirmItem
mkPortalFlowsSubscriptionUpdateConfirmItem = PortalFlowsSubscriptionUpdateConfirmItem{portalFlowsSubscriptionUpdateConfirmItemId = GHC.Maybe.Nothing,
                                                                                      portalFlowsSubscriptionUpdateConfirmItemPrice = GHC.Maybe.Nothing,
                                                                                      portalFlowsSubscriptionUpdateConfirmItemQuantity = GHC.Maybe.Nothing}