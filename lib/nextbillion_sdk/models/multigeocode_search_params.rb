# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::Multigeocode#search
    class MultigeocodeSearchParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute at
      #   Specify the center of the search context expressed as coordinates.
      #
      #   @return [NextbillionSDK::Models::MultigeocodeSearchParams::At]
      required :at, -> { NextbillionSDK::MultigeocodeSearchParams::At }

      # @!attribute query
      #   A free-form, complete or incomplete string to be searched. It allows searching
      #   for places using keywords or names.
      #
      #   @return [String]
      required :query, String

      # @!attribute city
      #   Specifies the primary city of the place.
      #
      #   @return [String, nil]
      optional :city, String

      # @!attribute country
      #   Country of the search context provided as comma-separated
      #   [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country
      #   codes.
      #   Note: Country codes should be provided in uppercase.
      #
      #   @return [String, nil]
      optional :country, String

      # @!attribute district
      #   Specifies the district of the search place.
      #
      #   @return [String, nil]
      optional :district, String

      # @!attribute limit
      #   Sets the maximum number of results to be returned.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute radius
      #   Filters the results to places within the specified radius from the 'at'
      #   location.
      #
      #   Note: Supports 'meter' (m) and 'kilometer' (km) units. If no radius is given,
      #   the search method returns as many results as specified in `limit`.
      #
      #   @return [String, nil]
      optional :radius, String

      # @!attribute state
      #   Specifies the state of the search place.
      #
      #   @return [String, nil]
      optional :state, String

      # @!attribute street
      #   Specifies the street name of the search place.
      #
      #   @return [String, nil]
      optional :street, String

      # @!attribute sub_district
      #   Specifies the subDistrict of the search place.
      #
      #   @return [String, nil]
      optional :sub_district, String, api_name: :subDistrict

      # @!method initialize(key:, at:, query:, city: nil, country: nil, district: nil, limit: nil, radius: nil, state: nil, street: nil, sub_district: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::MultigeocodeSearchParams} for more details.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param at [NextbillionSDK::Models::MultigeocodeSearchParams::At] Specify the center of the search context expressed as coordinates.
      #
      #   @param query [String] A free-form, complete or incomplete string to be searched. It allows searching f
      #
      #   @param city [String] Specifies the primary city of the place.
      #
      #   @param country [String] Country of the search context provided as comma-separated [ISO 3166-1 alpha-3](h
      #
      #   @param district [String] Specifies the district of the search place.
      #
      #   @param limit [Integer] Sets the maximum number of results to be returned.
      #
      #   @param radius [String] Filters the results to places within the specified radius from the 'at' location
      #
      #   @param state [String] Specifies the state of the search place.
      #
      #   @param street [String] Specifies the street name of the search place.
      #
      #   @param sub_district [String] Specifies the subDistrict of the search place.
      #
      #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]

      class At < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute lat
        #   Latitude coordinate of the location
        #
        #   @return [Float]
        required :lat, Float

        # @!attribute lng
        #   Longitude coordinate of the location.
        #
        #   @return [Float]
        required :lng, Float

        # @!method initialize(lat:, lng:)
        #   Specify the center of the search context expressed as coordinates.
        #
        #   @param lat [Float] Latitude coordinate of the location
        #
        #   @param lng [Float] Longitude coordinate of the location.
      end
    end
  end
end
