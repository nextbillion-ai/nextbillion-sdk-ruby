# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Geocode
      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::GeocodeRetrieveParams} for more details.
      #
      # Geocode
      #
      # @overload retrieve(key:, q:, at: nil, in_: nil, lang: nil, limit: nil, request_options: {})
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param q [String] Specify the free-text search query.
      #
      # @param at [String] Specify the center of the search context expressed as coordinates.
      #
      # @param in_ [String] Search within a geographic area. This is a hard filter. Results will be returned
      #
      # @param lang [String] Select the language to be used for result rendering from a list of [BCP 47](http
      #
      # @param limit [Integer] Sets the maximum number of results to be returned.
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::GeocodeRetrieveResponse]
      #
      # @see Nextbillionai::Models::GeocodeRetrieveParams
      def retrieve(params)
        parsed, options = Nextbillionai::GeocodeRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "geocode",
          query: parsed.transform_keys(in_: "in"),
          model: Nextbillionai::Models::GeocodeRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::GeocodeBatchCreateParams} for more details.
      #
      # Batch Geocode
      #
      # @overload batch_create(key:, body:, request_options: {})
      #
      # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
      #
      # @param body [Array<Nextbillionai::Models::GeocodeBatchCreateParams::Body>] Body param:
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::GeocodeBatchCreateResponse]
      #
      # @see Nextbillionai::Models::GeocodeBatchCreateParams
      def batch_create(params)
        parsed, options = Nextbillionai::GeocodeBatchCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "geocode/batch",
          query: parsed.except(:body),
          body: parsed[:body],
          model: Nextbillionai::Models::GeocodeBatchCreateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::GeocodeStructuredRetrieveParams} for more details.
      #
      # Structured Geocode
      #
      # @overload structured_retrieve(country_code:, key:, at: nil, city: nil, county: nil, house_number: nil, in_: nil, limit: nil, postal_code: nil, state: nil, street: nil, request_options: {})
      #
      # @param country_code [String] Specify a valid [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_al
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param at [String] Specify the center of the search context expressed as coordinates.
      #
      # @param city [String] Specify the city in which the place being searched should be located.
      #
      # @param county [String] Specify the county division of the state in which the place being searched shoul
      #
      # @param house_number [String] Specify the house number of the place being searched.
      #
      # @param in_ [String] Search within a geographic area. This is a hard filter. Results will be returned
      #
      # @param limit [Integer] Sets the maximum number of results to be returned.
      #
      # @param postal_code [String] Specify the postal code in which the place being searched should be located.
      #
      # @param state [String] Specify the state division of the country in which the place being searched shou
      #
      # @param street [String] Specify the name of the street in which the place being searched should be locat
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::GeocodeStructuredRetrieveResponse]
      #
      # @see Nextbillionai::Models::GeocodeStructuredRetrieveParams
      def structured_retrieve(params)
        parsed, options = Nextbillionai::GeocodeStructuredRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "geocode/structured",
          query: parsed.transform_keys(
            country_code: "countryCode",
            house_number: "houseNumber",
            in_: "in",
            postal_code: "postalCode"
          ),
          model: Nextbillionai::Models::GeocodeStructuredRetrieveResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Nextbillionai::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
