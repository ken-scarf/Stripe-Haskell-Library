{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE OverloadedStrings #-}

-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

-- | Contains the types generated from the schema SourceOwner
module StripeAPI.Types.SourceOwner where

import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
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
import {-# SOURCE #-} StripeAPI.Types.Address
import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe

-- | Defines the object schema located at @components.schemas.source_owner@ in the specification.
data SourceOwner
  = SourceOwner
      { -- | address: Owner\'s address.
        sourceOwnerAddress :: (GHC.Maybe.Maybe SourceOwnerAddress'),
        -- | email: Owner\'s email address.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        sourceOwnerEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | name: Owner\'s full name.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        sourceOwnerName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | phone: Owner\'s phone number (including extension).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        sourceOwnerPhone :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | verified_address: Verified owner\'s address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
        sourceOwnerVerifiedAddress :: (GHC.Maybe.Maybe SourceOwnerVerifiedAddress'),
        -- | verified_email: Verified owner\'s email address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        sourceOwnerVerifiedEmail :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | verified_name: Verified owner\'s full name. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        sourceOwnerVerifiedName :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | verified_phone: Verified owner\'s phone number (including extension). Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        sourceOwnerVerifiedPhone :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceOwner where
  toJSON obj = Data.Aeson.Types.Internal.object ("address" Data.Aeson.Types.ToJSON..= sourceOwnerAddress obj : "email" Data.Aeson.Types.ToJSON..= sourceOwnerEmail obj : "name" Data.Aeson.Types.ToJSON..= sourceOwnerName obj : "phone" Data.Aeson.Types.ToJSON..= sourceOwnerPhone obj : "verified_address" Data.Aeson.Types.ToJSON..= sourceOwnerVerifiedAddress obj : "verified_email" Data.Aeson.Types.ToJSON..= sourceOwnerVerifiedEmail obj : "verified_name" Data.Aeson.Types.ToJSON..= sourceOwnerVerifiedName obj : "verified_phone" Data.Aeson.Types.ToJSON..= sourceOwnerVerifiedPhone obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("address" Data.Aeson.Types.ToJSON..= sourceOwnerAddress obj) GHC.Base.<> (("email" Data.Aeson.Types.ToJSON..= sourceOwnerEmail obj) GHC.Base.<> (("name" Data.Aeson.Types.ToJSON..= sourceOwnerName obj) GHC.Base.<> (("phone" Data.Aeson.Types.ToJSON..= sourceOwnerPhone obj) GHC.Base.<> (("verified_address" Data.Aeson.Types.ToJSON..= sourceOwnerVerifiedAddress obj) GHC.Base.<> (("verified_email" Data.Aeson.Types.ToJSON..= sourceOwnerVerifiedEmail obj) GHC.Base.<> (("verified_name" Data.Aeson.Types.ToJSON..= sourceOwnerVerifiedName obj) GHC.Base.<> ("verified_phone" Data.Aeson.Types.ToJSON..= sourceOwnerVerifiedPhone obj))))))))

instance Data.Aeson.Types.FromJSON.FromJSON SourceOwner where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceOwner" (\obj -> (((((((GHC.Base.pure SourceOwner GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_email")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "verified_phone"))

-- | Create a new 'SourceOwner' with all required fields.
mkSourceOwner :: SourceOwner
mkSourceOwner =
  SourceOwner
    { sourceOwnerAddress = GHC.Maybe.Nothing,
      sourceOwnerEmail = GHC.Maybe.Nothing,
      sourceOwnerName = GHC.Maybe.Nothing,
      sourceOwnerPhone = GHC.Maybe.Nothing,
      sourceOwnerVerifiedAddress = GHC.Maybe.Nothing,
      sourceOwnerVerifiedEmail = GHC.Maybe.Nothing,
      sourceOwnerVerifiedName = GHC.Maybe.Nothing,
      sourceOwnerVerifiedPhone = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.source_owner.properties.address.anyOf@ in the specification.
--
-- Owner\\\'s address.
data SourceOwnerAddress'
  = SourceOwnerAddress'
      { -- | city: City, district, suburb, town, or village.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        sourceOwnerAddress'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        sourceOwnerAddress'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | line1: Address line 1 (e.g., street, PO Box, or company name).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        sourceOwnerAddress'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        sourceOwnerAddress'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | postal_code: ZIP or postal code.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        sourceOwnerAddress'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | state: State, county, province, or region.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        sourceOwnerAddress'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceOwnerAddress' where
  toJSON obj = Data.Aeson.Types.Internal.object ("city" Data.Aeson.Types.ToJSON..= sourceOwnerAddress'City obj : "country" Data.Aeson.Types.ToJSON..= sourceOwnerAddress'Country obj : "line1" Data.Aeson.Types.ToJSON..= sourceOwnerAddress'Line1 obj : "line2" Data.Aeson.Types.ToJSON..= sourceOwnerAddress'Line2 obj : "postal_code" Data.Aeson.Types.ToJSON..= sourceOwnerAddress'PostalCode obj : "state" Data.Aeson.Types.ToJSON..= sourceOwnerAddress'State obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("city" Data.Aeson.Types.ToJSON..= sourceOwnerAddress'City obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= sourceOwnerAddress'Country obj) GHC.Base.<> (("line1" Data.Aeson.Types.ToJSON..= sourceOwnerAddress'Line1 obj) GHC.Base.<> (("line2" Data.Aeson.Types.ToJSON..= sourceOwnerAddress'Line2 obj) GHC.Base.<> (("postal_code" Data.Aeson.Types.ToJSON..= sourceOwnerAddress'PostalCode obj) GHC.Base.<> ("state" Data.Aeson.Types.ToJSON..= sourceOwnerAddress'State obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON SourceOwnerAddress' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceOwnerAddress'" (\obj -> (((((GHC.Base.pure SourceOwnerAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))

-- | Create a new 'SourceOwnerAddress'' with all required fields.
mkSourceOwnerAddress' :: SourceOwnerAddress'
mkSourceOwnerAddress' =
  SourceOwnerAddress'
    { sourceOwnerAddress'City = GHC.Maybe.Nothing,
      sourceOwnerAddress'Country = GHC.Maybe.Nothing,
      sourceOwnerAddress'Line1 = GHC.Maybe.Nothing,
      sourceOwnerAddress'Line2 = GHC.Maybe.Nothing,
      sourceOwnerAddress'PostalCode = GHC.Maybe.Nothing,
      sourceOwnerAddress'State = GHC.Maybe.Nothing
    }

-- | Defines the object schema located at @components.schemas.source_owner.properties.verified_address.anyOf@ in the specification.
--
-- Verified owner\\\'s address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
data SourceOwnerVerifiedAddress'
  = SourceOwnerVerifiedAddress'
      { -- | city: City, district, suburb, town, or village.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        sourceOwnerVerifiedAddress'City :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | country: Two-letter country code ([ISO 3166-1 alpha-2](https:\/\/en.wikipedia.org\/wiki\/ISO_3166-1_alpha-2)).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        sourceOwnerVerifiedAddress'Country :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | line1: Address line 1 (e.g., street, PO Box, or company name).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        sourceOwnerVerifiedAddress'Line1 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | line2: Address line 2 (e.g., apartment, suite, unit, or building).
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        sourceOwnerVerifiedAddress'Line2 :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | postal_code: ZIP or postal code.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        sourceOwnerVerifiedAddress'PostalCode :: (GHC.Maybe.Maybe Data.Text.Internal.Text),
        -- | state: State, county, province, or region.
        --
        -- Constraints:
        --
        -- * Maximum length of 5000
        sourceOwnerVerifiedAddress'State :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
      }
  deriving
    ( GHC.Show.Show,
      GHC.Classes.Eq
    )

instance Data.Aeson.Types.ToJSON.ToJSON SourceOwnerVerifiedAddress' where
  toJSON obj = Data.Aeson.Types.Internal.object ("city" Data.Aeson.Types.ToJSON..= sourceOwnerVerifiedAddress'City obj : "country" Data.Aeson.Types.ToJSON..= sourceOwnerVerifiedAddress'Country obj : "line1" Data.Aeson.Types.ToJSON..= sourceOwnerVerifiedAddress'Line1 obj : "line2" Data.Aeson.Types.ToJSON..= sourceOwnerVerifiedAddress'Line2 obj : "postal_code" Data.Aeson.Types.ToJSON..= sourceOwnerVerifiedAddress'PostalCode obj : "state" Data.Aeson.Types.ToJSON..= sourceOwnerVerifiedAddress'State obj : [])
  toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("city" Data.Aeson.Types.ToJSON..= sourceOwnerVerifiedAddress'City obj) GHC.Base.<> (("country" Data.Aeson.Types.ToJSON..= sourceOwnerVerifiedAddress'Country obj) GHC.Base.<> (("line1" Data.Aeson.Types.ToJSON..= sourceOwnerVerifiedAddress'Line1 obj) GHC.Base.<> (("line2" Data.Aeson.Types.ToJSON..= sourceOwnerVerifiedAddress'Line2 obj) GHC.Base.<> (("postal_code" Data.Aeson.Types.ToJSON..= sourceOwnerVerifiedAddress'PostalCode obj) GHC.Base.<> ("state" Data.Aeson.Types.ToJSON..= sourceOwnerVerifiedAddress'State obj))))))

instance Data.Aeson.Types.FromJSON.FromJSON SourceOwnerVerifiedAddress' where
  parseJSON = Data.Aeson.Types.FromJSON.withObject "SourceOwnerVerifiedAddress'" (\obj -> (((((GHC.Base.pure SourceOwnerVerifiedAddress' GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "city")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "country")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line1")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "line2")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "postal_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "state"))

-- | Create a new 'SourceOwnerVerifiedAddress'' with all required fields.
mkSourceOwnerVerifiedAddress' :: SourceOwnerVerifiedAddress'
mkSourceOwnerVerifiedAddress' =
  SourceOwnerVerifiedAddress'
    { sourceOwnerVerifiedAddress'City = GHC.Maybe.Nothing,
      sourceOwnerVerifiedAddress'Country = GHC.Maybe.Nothing,
      sourceOwnerVerifiedAddress'Line1 = GHC.Maybe.Nothing,
      sourceOwnerVerifiedAddress'Line2 = GHC.Maybe.Nothing,
      sourceOwnerVerifiedAddress'PostalCode = GHC.Maybe.Nothing,
      sourceOwnerVerifiedAddress'State = GHC.Maybe.Nothing
    }