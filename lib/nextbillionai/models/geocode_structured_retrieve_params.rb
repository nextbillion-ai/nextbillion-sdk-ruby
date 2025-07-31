# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Geocode#structured_retrieve
    class GeocodeStructuredRetrieveParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      # @!attribute country_code
      #   Specify a valid
      #   [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country
      #   code in which the place being searched should be located. Please note that this
      #   is a case-sensitive field and the country code should be in all uppercase.
      #
      #   @return [String]
      required :country_code, String

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute at
      #   Specify the center of the search context expressed as coordinates.
      #
      #   Please note that one of "at", "in=circle" or "in=bbox" should be provided for
      #   relevant results.
      #
      #   @return [String, nil]
      optional :at, String

      # @!attribute city
      #   Specify the city in which the place being searched should be located.
      #
      #   @return [String, nil]
      optional :city, String

      # @!attribute county
      #   Specify the county division of the state in which the place being searched
      #   should be located.
      #
      #   @return [String, nil]
      optional :county, String

      # @!attribute house_number
      #   Specify the house number of the place being searched.
      #
      #   @return [String, nil]
      optional :house_number, String

      # @!attribute in_
      #   Search within a geographic area. This is a hard filter. Results will be returned
      #   if they are located within the specified area.
      #
      #   A geographic area can be
      #
      #   - a circular area, provided as latitude, longitude, and radius (an integer with
      #     meters as unit)
      #
      #     Format: circle:{latitude},{longitude};r={radius}
      #
      #   - a bounding box, provided as _west longitude_, _south latitude_, _east
      #     longitude_, _north latitude_
      #
      #     Format: bbox:{west longitude},{south latitude},{east longitude},{north
      #     latitude}
      #
      #   Please provide one of 'at', 'in=circle' or 'in=bbox' input for a relevant
      #   result.
      #
      #   @return [String, nil]
      optional :in_, String

      # @!attribute limit
      #   Sets the maximum number of results to be returned.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute postal_code
      #   Specify the postal code in which the place being searched should be located.
      #
      #   @return [String, nil]
      optional :postal_code, String

      # @!attribute state
      #   Specify the state division of the country in which the place being searched
      #   should be located.
      #
      #   @return [String, nil]
      optional :state, String

      # @!attribute street
      #   Specify the name of the street in which the place being searched should be
      #   located.
      #
      #   @return [String, nil]
      optional :street, String

      # @!method initialize(country_code:, key:, at: nil, city: nil, county: nil, house_number: nil, in_: nil, limit: nil, postal_code: nil, state: nil, street: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::GeocodeStructuredRetrieveParams} for more details.
      #
      #   @param country_code [String] Specify a valid [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param at [String] Specify the center of the search context expressed as coordinates.
      #
      #   @param city [String] Specify the city in which the place being searched should be located.
      #
      #   @param county [String] Specify the county division of the state in which the place being searched shoul
      #
      #   @param house_number [String] Specify the house number of the place being searched.
      #
      #   @param in_ [String] Search within a geographic area. This is a hard filter. Results will be returned
      #
      #   @param limit [Integer] Sets the maximum number of results to be returned.
      #
      #   @param postal_code [String] Specify the postal code in which the place being searched should be located.
      #
      #   @param state [String] Specify the state division of the country in which the place being searched shou
      #
      #   @param street [String] Specify the name of the street in which the place being searched should be locat
      #
      #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
