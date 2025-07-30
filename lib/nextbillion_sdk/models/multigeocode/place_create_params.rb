# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Multigeocode
      # @see NextbillionSDK::Resources::Multigeocode::Place#create
      class PlaceCreateParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute place
        #   This parameter represents the place details, including geographical information,
        #   address and other related information.
        #
        #   @return [Array<NextbillionSDK::Models::Multigeocode::PlaceCreateParams::Place>]
        required :place,
                 -> {
                   NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Multigeocode::PlaceCreateParams::Place]
                 }

        # @!attribute data_source
        #   It contains information about the dataset that returns the specific result
        #
        #   @return [NextbillionSDK::Models::Multigeocode::PlaceCreateParams::DataSource, nil]
        optional :data_source,
                 -> { NextbillionSDK::Multigeocode::PlaceCreateParams::DataSource },
                 api_name: :dataSource

        # @!attribute force
        #   When 2 places are located within 100 meters of each other and have more than 90%
        #   of matching attributes (at least 11 out of 12 attributes in the “place” object),
        #   they will be considered duplicates and any requests to add such a new place
        #   would be rejected. Set force=true to override this duplicate check. You can use
        #   this to create closely located POIs. For instance, places inside a mall,
        #   university or a government building etc.
        #
        #   @return [Boolean, nil]
        optional :force, NextbillionSDK::Internal::Type::Boolean

        # @!attribute score
        #   Search score of the place. This is calculated based on how ‘richly’ the place is
        #   defined. For instance, a place with - street name, city, state and country
        #   attributes set might be ranked lower than a place which has values of - house,
        #   building, street name, city, state and country attributes set. The score
        #   determines the rank of the place among search results. You can also use this
        #   field to set a custom score as per its relevance to rank it among the search
        #   results from multiple data sources.
        #
        #   @return [Integer, nil]
        optional :score, Integer

        # @!method initialize(key:, place:, data_source: nil, force: nil, score: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Multigeocode::PlaceCreateParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param place [Array<NextbillionSDK::Models::Multigeocode::PlaceCreateParams::Place>] This parameter represents the place details, including geographical information,
        #
        #   @param data_source [NextbillionSDK::Models::Multigeocode::PlaceCreateParams::DataSource] It contains information about the dataset that returns the specific result
        #
        #   @param force [Boolean] When 2 places are located within 100 meters of each other and have more than 90%
        #
        #   @param score [Integer] Search score of the place. This is calculated based on how ‘richly’ the place is
        #
        #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]

        class Place < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute geopoint
          #   This parameter represents the geographical coordinates of the place. It includes
          #   the latitude and longitude values.
          #
          #   @return [NextbillionSDK::Models::Multigeocode::PlaceCreateParams::Place::Geopoint]
          required :geopoint, -> { NextbillionSDK::Multigeocode::PlaceCreateParams::Place::Geopoint }

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
          #   Country of the search context provided as comma-separated
          #   [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country
          #   codes.
          #
          #   Note: Country codes should be provided in uppercase.
          #
          #   @return [String, nil]
          optional :country, String

          # @!attribute district
          #   This parameter represents the district of the place.
          #
          #   @return [String, nil]
          optional :district, String

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
          #   @return [NextbillionSDK::Models::Multigeocode::PlaceCreateParams::Place::Poi, nil]
          optional :poi, -> { NextbillionSDK::Multigeocode::PlaceCreateParams::Place::Poi }

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

          # @!method initialize(geopoint:, address: nil, building: nil, city: nil, country: nil, district: nil, house: nil, poi: nil, postal_code: nil, state: nil, street: nil, sub_district: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Multigeocode::PlaceCreateParams::Place} for more
          #   details.
          #
          #   @param geopoint [NextbillionSDK::Models::Multigeocode::PlaceCreateParams::Place::Geopoint] This parameter represents the geographical coordinates of the place. It includes
          #
          #   @param address [String] This parameter represents the complete address of the place, including the stree
          #
          #   @param building [String] This parameter represents additional building information if applicable.
          #
          #   @param city [String] This parameter represents the city or town of the place.
          #
          #   @param country [String] Country of the search context provided as comma-separated [ISO 3166-1 alpha-3](h
          #
          #   @param district [String] This parameter represents the district of the place.
          #
          #   @param house [String] This parameter represents the house or building number of the place.
          #
          #   @param poi [NextbillionSDK::Models::Multigeocode::PlaceCreateParams::Place::Poi] This parameter represents a point of interest within the place. A Point of Inter
          #
          #   @param postal_code [String] This parameter represents the postal code or ZIP code of the place.
          #
          #   @param state [String] This parameter represents the state or region of the place.
          #
          #   @param street [String] This parameter represents the street name of the place.
          #
          #   @param sub_district [String] This parameter represents the sub-district or locality of the place.

          # @see NextbillionSDK::Models::Multigeocode::PlaceCreateParams::Place#geopoint
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

          # @see NextbillionSDK::Models::Multigeocode::PlaceCreateParams::Place#poi
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

        class DataSource < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute ref_id
          #   This parameter represents the unique reference ID associated with the data
          #   source.
          #
          #   @return [String, nil]
          optional :ref_id, String, api_name: :refId

          # @!attribute source
          #   This parameter represents the source of the data.
          #
          #   @return [String, nil]
          optional :source, String

          # @!attribute status
          #   This parameter indicates if a place is searchable.
          #
          #   @return [Symbol, NextbillionSDK::Models::Multigeocode::PlaceCreateParams::DataSource::Status, nil]
          optional :status, enum: -> { NextbillionSDK::Multigeocode::PlaceCreateParams::DataSource::Status }

          # @!method initialize(ref_id: nil, source: nil, status: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Multigeocode::PlaceCreateParams::DataSource} for more
          #   details.
          #
          #   It contains information about the dataset that returns the specific result
          #
          #   @param ref_id [String] This parameter represents the unique reference ID associated with the data sourc
          #
          #   @param source [String] This parameter represents the source of the data.
          #
          #   @param status [Symbol, NextbillionSDK::Models::Multigeocode::PlaceCreateParams::DataSource::Status] This parameter indicates if a place is searchable.

          # This parameter indicates if a place is searchable.
          #
          # @see NextbillionSDK::Models::Multigeocode::PlaceCreateParams::DataSource#status
          module Status
            extend NextbillionSDK::Internal::Type::Enum

            ENABLE = :enable
            DISABLE = :disable

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
