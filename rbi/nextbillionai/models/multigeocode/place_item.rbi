# typed: strong

module Nextbillionai
  module Models
    module Multigeocode
      class PlaceItem < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Multigeocode::PlaceItem,
              Nextbillionai::Internal::AnyHash
            )
          end

        # This parameter represents the complete address of the place, including the
        # street, city, state, postal code and country.
        sig { returns(T.nilable(String)) }
        attr_reader :address

        sig { params(address: String).void }
        attr_writer :address

        # This parameter represents additional building information if applicable.
        sig { returns(T.nilable(String)) }
        attr_reader :building

        sig { params(building: String).void }
        attr_writer :building

        # This parameter represents the city or town of the place.
        sig { returns(T.nilable(String)) }
        attr_reader :city

        sig { params(city: String).void }
        attr_writer :city

        # This parameter represents the country of the place.
        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { params(country: String).void }
        attr_writer :country

        # This parameter represents the district of the place.
        sig { returns(T.nilable(String)) }
        attr_reader :district

        sig { params(district: String).void }
        attr_writer :district

        # This parameter represents the geographical coordinates of the place. It includes
        # the latitude and longitude values.
        sig do
          returns(T.nilable(Nextbillionai::Multigeocode::PlaceItem::Geopoint))
        end
        attr_reader :geopoint

        sig do
          params(
            geopoint: Nextbillionai::Multigeocode::PlaceItem::Geopoint::OrHash
          ).void
        end
        attr_writer :geopoint

        # This parameter represents the house or building number of the place.
        sig { returns(T.nilable(String)) }
        attr_reader :house

        sig { params(house: String).void }
        attr_writer :house

        # This parameter represents a point of interest within the place. A Point of
        # Interest (POI) refers to a specific location or area that is of interest to
        # individuals for various reasons. It could be a landmark, tourist attraction,
        # business, or any other location that people might find important or intriguing.
        sig { returns(T.nilable(Nextbillionai::Multigeocode::PlaceItem::Poi)) }
        attr_reader :poi

        sig do
          params(poi: Nextbillionai::Multigeocode::PlaceItem::Poi::OrHash).void
        end
        attr_writer :poi

        # This parameter represents the postal code or ZIP code of the place.
        sig { returns(T.nilable(String)) }
        attr_reader :postal_code

        sig { params(postal_code: String).void }
        attr_writer :postal_code

        # This parameter represents the state or region of the place.
        sig { returns(T.nilable(String)) }
        attr_reader :state

        sig { params(state: String).void }
        attr_writer :state

        # This parameter represents the street name of the place.
        sig { returns(T.nilable(String)) }
        attr_reader :street

        sig { params(street: String).void }
        attr_writer :street

        # This parameter represents the sub-district or locality of the place.
        sig { returns(T.nilable(String)) }
        attr_reader :sub_district

        sig { params(sub_district: String).void }
        attr_writer :sub_district

        sig do
          params(
            address: String,
            building: String,
            city: String,
            country: String,
            district: String,
            geopoint: Nextbillionai::Multigeocode::PlaceItem::Geopoint::OrHash,
            house: String,
            poi: Nextbillionai::Multigeocode::PlaceItem::Poi::OrHash,
            postal_code: String,
            state: String,
            street: String,
            sub_district: String
          ).returns(T.attached_class)
        end
        def self.new(
          # This parameter represents the complete address of the place, including the
          # street, city, state, postal code and country.
          address: nil,
          # This parameter represents additional building information if applicable.
          building: nil,
          # This parameter represents the city or town of the place.
          city: nil,
          # This parameter represents the country of the place.
          country: nil,
          # This parameter represents the district of the place.
          district: nil,
          # This parameter represents the geographical coordinates of the place. It includes
          # the latitude and longitude values.
          geopoint: nil,
          # This parameter represents the house or building number of the place.
          house: nil,
          # This parameter represents a point of interest within the place. A Point of
          # Interest (POI) refers to a specific location or area that is of interest to
          # individuals for various reasons. It could be a landmark, tourist attraction,
          # business, or any other location that people might find important or intriguing.
          poi: nil,
          # This parameter represents the postal code or ZIP code of the place.
          postal_code: nil,
          # This parameter represents the state or region of the place.
          state: nil,
          # This parameter represents the street name of the place.
          street: nil,
          # This parameter represents the sub-district or locality of the place.
          sub_district: nil
        )
        end

        sig do
          override.returns(
            {
              address: String,
              building: String,
              city: String,
              country: String,
              district: String,
              geopoint: Nextbillionai::Multigeocode::PlaceItem::Geopoint,
              house: String,
              poi: Nextbillionai::Multigeocode::PlaceItem::Poi,
              postal_code: String,
              state: String,
              street: String,
              sub_district: String
            }
          )
        end
        def to_hash
        end

        class Geopoint < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Multigeocode::PlaceItem::Geopoint,
                Nextbillionai::Internal::AnyHash
              )
            end

          # This parameter represents the latitude value of the place.
          sig { returns(T.nilable(Float)) }
          attr_reader :lat

          sig { params(lat: Float).void }
          attr_writer :lat

          # This parameter represents the longitude value of the place.
          sig { returns(T.nilable(Float)) }
          attr_reader :lng

          sig { params(lng: Float).void }
          attr_writer :lng

          # This parameter represents the geographical coordinates of the place. It includes
          # the latitude and longitude values.
          sig { params(lat: Float, lng: Float).returns(T.attached_class) }
          def self.new(
            # This parameter represents the latitude value of the place.
            lat: nil,
            # This parameter represents the longitude value of the place.
            lng: nil
          )
          end

          sig { override.returns({ lat: Float, lng: Float }) }
          def to_hash
          end
        end

        class Poi < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Multigeocode::PlaceItem::Poi,
                Nextbillionai::Internal::AnyHash
              )
            end

          # A title that describes the point of interest.
          sig { returns(T.nilable(String)) }
          attr_reader :title

          sig { params(title: String).void }
          attr_writer :title

          # This parameter represents a point of interest within the place. A Point of
          # Interest (POI) refers to a specific location or area that is of interest to
          # individuals for various reasons. It could be a landmark, tourist attraction,
          # business, or any other location that people might find important or intriguing.
          sig { params(title: String).returns(T.attached_class) }
          def self.new(
            # A title that describes the point of interest.
            title: nil
          )
          end

          sig { override.returns({ title: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
