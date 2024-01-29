-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions
module StripeAPI.Types.TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions where

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

-- | Defines the object schema located at @components.schemas.treasury_outbound_payments_resource_outbound_payment_resource_status_transitions@ in the specification.
-- 
-- 
data TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions = TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions {
  -- | canceled_at: Timestamp describing when an OutboundPayment changed status to \`canceled\`.
  treasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitionsCanceledAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | failed_at: Timestamp describing when an OutboundPayment changed status to \`failed\`.
  , treasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitionsFailedAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | posted_at: Timestamp describing when an OutboundPayment changed status to \`posted\`.
  , treasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitionsPostedAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  -- | returned_at: Timestamp describing when an OutboundPayment changed status to \`returned\`.
  , treasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitionsReturnedAt :: (GHC.Maybe.Maybe (StripeAPI.Common.Nullable GHC.Types.Int))
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions
    where {toJSON obj = Data.Aeson.Types.Internal.object (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("canceled_at" Data.Aeson.Types.ToJSON..=)) (treasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitionsCanceledAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failed_at" Data.Aeson.Types.ToJSON..=)) (treasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitionsFailedAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("posted_at" Data.Aeson.Types.ToJSON..=)) (treasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitionsPostedAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("returned_at" Data.Aeson.Types.ToJSON..=)) (treasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitionsReturnedAt obj) : GHC.Base.mempty));
           toEncoding obj = Data.Aeson.Encoding.Internal.pairs (GHC.Base.mconcat (Data.Foldable.concat (Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("canceled_at" Data.Aeson.Types.ToJSON..=)) (treasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitionsCanceledAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("failed_at" Data.Aeson.Types.ToJSON..=)) (treasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitionsFailedAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("posted_at" Data.Aeson.Types.ToJSON..=)) (treasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitionsPostedAt obj) : Data.Maybe.maybe GHC.Base.mempty (GHC.Base.pure GHC.Base.. ("returned_at" Data.Aeson.Types.ToJSON..=)) (treasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitionsReturnedAt obj) : GHC.Base.mempty)))}
instance Data.Aeson.Types.FromJSON.FromJSON TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions
    where {parseJSON = Data.Aeson.Types.FromJSON.withObject "TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions" (\obj -> (((GHC.Base.pure TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "canceled_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "failed_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "posted_at")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:! "returned_at"))}
-- | Create a new 'TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions' with all required fields.
mkTreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions :: TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions
mkTreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions = TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions{treasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitionsCanceledAt = GHC.Maybe.Nothing,
                                                                                                                                                      treasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitionsFailedAt = GHC.Maybe.Nothing,
                                                                                                                                                      treasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitionsPostedAt = GHC.Maybe.Nothing,
                                                                                                                                                      treasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitionsReturnedAt = GHC.Maybe.Nothing}