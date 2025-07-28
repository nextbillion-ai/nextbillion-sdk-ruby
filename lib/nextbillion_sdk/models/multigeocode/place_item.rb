# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Multigeocode
      class PlaceItem < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute address
        #   This parameter represents the complete address of the place, including the
        #   street, city, state, postal code and country.
        #
        #   @return [String, nil]
        optional :address, String

        # @!attribute building
        #   This parameter represents additional building information if applicable.
        #
        #   @return [String, nil]
        optional :building, String

        # @!attribute city
        #   This parameter represents the city or town of the place.
        #
        #   @return [String, nil]
        optional :city, String

        # @!attribute country
        #   This parameter represents the country of the place.
        #
        #   @return [String, nil]
        optional :country, String

        # @!attribute district
        #   This parameter represents the district of the place.
        #
        #   @return [String, nil]
        optional :district, String

        # @!attribute geopoint
        #   This parameter represents the geographical coordinates of the place. It includes
        #   the latitude and longitude values.
        #
        #   @return [NextbillionSDK::Models::Multigeocode::PlaceItem::Geopoint, nil]
        optional :geopoint, -> { NextbillionSDK::Multigeocode::PlaceItem::Geopoint }

        # @!attribute house
        #   This parameter represents the house or building number of the place.
        #
        #   @return [String, nil]
        optional :house, String

        # @!attribute poi
        #   This parameter represents a point of interest within the place. A Point of
        #   Interest (POI) refers to a specific location or area that is of interest to
        #   individuals for various reasons. It could be a landmark, tourist attraction,
        #   business, or any other location that people might find important or intriguing.
        #
        #   @return [NextbillionSDK::Models::Multigeocode::PlaceItem::Poi, nil]
        optional :poi, -> { NextbillionSDK::Multigeocode::PlaceItem::Poi }

        # @!attribute postal_code
        #   This parameter represents the postal code or ZIP code of the place.
        #
        #   @return [String, nil]
        optional :postal_code, String, api_name: :postalCode

        # @!attribute state
        #   This parameter represents the state or region of the place.
        #
        #   @return [String, nil]
        optional :state, String

        # @!attribute street
        #   This parameter represents the street name of the place.
        #
        #   @return [String, nil]
        optional :street, String

        # @!attribute sub_district
        #   This parameter represents the sub-district or locality of the place.
        #
        #   @return [String, nil]
        optional :sub_district, String, api_name: :subDistrict

        # @!method initialize(address: nil, building: nil, city: nil, country: nil, district: nil, geopoint: nil, house: nil, poi: nil, postal_code: nil, state: nil, street: nil, sub_district: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Multigeocode::PlaceItem} for more details.
        #
        #   @param address [String] This parameter represents the complete address of the place, including the stree
        #
        #   @param building [String] This parameter represents additional building information if applicable.
        #
        #   @param city [String] This parameter represents the city or town of the place.
        #
        #   @param country [String] This parameter represents the country of the place.
        #
        #   @param district [String] This parameter represents the district of the place.
        #
        #   @param geopoint [NextbillionSDK::Models::Multigeocode::PlaceItem::Geopoint] This parameter represents the geographical coordinates of the place. It includes
        #
        #   @param house [String] This parameter represents the house or building number of the place.
        #
        #   @param poi [NextbillionSDK::Models::Multigeocode::PlaceItem::Poi] This parameter represents a point of interest within the place. A Point of Inter
        #
        #   @param postal_code [String] This parameter represents the postal code or ZIP code of the place.
        #
        #   @param state [String] This parameter represents the state or region of the place.
        #
        #   @param street [String] This parameter represents the street name of the place.
        #
        #   @param sub_district [String] This parameter represents the sub-district or locality of the place.

        # @see NextbillionSDK::Models::Multigeocode::PlaceItem#geopoint
        class Geopoint < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute lat
          #   This parameter represents the latitude value of the place.
          #
          #   @return [Float, nil]
          optional :lat, Float

          # @!attribute lng
          #   This parameter represents the longitude value of the place.
          #
          #   @return [Float, nil]
          optional :lng, Float

          # @!method initialize(lat: nil, lng: nil)
          #   This parameter represents the geographical coordinates of the place. It includes
          #   the latitude and longitude values.
          #
          #   @param lat [Float] This parameter represents the latitude value of the place.
          #
          #   @param lng [Float] This parameter represents the longitude value of the place.
        end

        # @see NextbillionSDK::Models::Multigeocode::PlaceItem#poi
        class Poi < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute title
          #   A title that describes the point of interest.
          #
          #   @return [String, nil]
          optional :title, String

          # @!method initialize(title: nil)
          #   This parameter represents a point of interest within the place. A Point of
          #   Interest (POI) refers to a specific location or area that is of interest to
          #   individuals for various reasons. It could be a landmark, tourist attraction,
          #   business, or any other location that people might find important or intriguing.
          #
          #   @param title [String] A title that describes the point of interest.
        end
      end
    end
  end
end
