# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Postalcode#retrieve_coordinates
    class PostalcodeRetrieveCoordinatesParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute at
      #   Location coordinates that you want to get the postal code of. If not providing
      #   postalcode in the request, at becomes mandatory. Please note that only 1 point
      #   can be requested. [See this example](#note).
      #
      #   @return [Nextbillionai::Models::PostalcodeRetrieveCoordinatesParams::At, nil]
      optional :at, -> { Nextbillionai::PostalcodeRetrieveCoordinatesParams::At }

      # @!attribute country
      #   Country containing the postal code or the location. It is mandatory if
      #   postalcode is provided in the request. [See this example](#note).
      #
      #   Please check the [API Query Limits](#api-query-limits) section below for a list
      #   of the countries covered by the Geocode Postcode API. Users can provide either
      #   the name or the alpha-2/3 code as per the
      #   [ISO 3166-1 standard](https://en.wikipedia.org/wiki/ISO_3166-1) of a country
      #   covered by the API as input for this parameter.
      #
      #   @return [String, nil]
      optional :country, String

      # @!attribute format_
      #   Specify the format in which the boundary details of the post code will be
      #   returned. When specified, the boundary details will be returned in the geojson
      #   format. When not specified, the boundary details are returned in general format.
      #
      #   @return [Symbol, Nextbillionai::Models::PostalcodeRetrieveCoordinatesParams::Format, nil]
      optional :format_,
               enum: -> { Nextbillionai::PostalcodeRetrieveCoordinatesParams::Format },
               api_name: :format

      # @!attribute postalcode
      #   Provide the postal code for which the information is needed. At least one of
      #   (postalcode + country) or at needs to be provided. Please note that only 1
      #   postal code can be requested. [See this example](#note).
      #
      #   @return [String, nil]
      optional :postalcode, String

      # @!method initialize(key:, at: nil, country: nil, format_: nil, postalcode: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::PostalcodeRetrieveCoordinatesParams} for more details.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param at [Nextbillionai::Models::PostalcodeRetrieveCoordinatesParams::At] Location coordinates that you want to get the postal code of. If not providing p
      #
      #   @param country [String] Country containing the postal code or the location. It is mandatory if postalcod
      #
      #   @param format_ [Symbol, Nextbillionai::Models::PostalcodeRetrieveCoordinatesParams::Format] Specify the format in which the boundary details of the post code will be return
      #
      #   @param postalcode [String] Provide the postal code for which the information is needed. At least one of (po
      #
      #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

      class At < Nextbillionai::Internal::Type::BaseModel
        # @!attribute lat
        #   Latitude of the location.
        #
        #   @return [Float, nil]
        optional :lat, Float

        # @!attribute lng
        #   Longitude of the location.
        #
        #   @return [Float, nil]
        optional :lng, Float

        # @!method initialize(lat: nil, lng: nil)
        #   Location coordinates that you want to get the postal code of. If not providing
        #   postalcode in the request, at becomes mandatory. Please note that only 1 point
        #   can be requested. [See this example](#note).
        #
        #   @param lat [Float] Latitude of the location.
        #
        #   @param lng [Float] Longitude of the location.
      end

      # Specify the format in which the boundary details of the post code will be
      # returned. When specified, the boundary details will be returned in the geojson
      # format. When not specified, the boundary details are returned in general format.
      module Format
        extend Nextbillionai::Internal::Type::Enum

        GEOJSON = :geojson

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
