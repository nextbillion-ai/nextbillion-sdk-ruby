# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Revgeocode
      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::RevgeocodeRetrieveParams} for more details.
      #
      # Reverse Geocode
      #
      # @overload retrieve(at:, key:, in_: nil, lang: nil, request_options: {})
      #
      # @param at [String] Specify the center of the search context expressed as coordinates.
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param in_ [String] Search within a geographic area. This is a hard filter. Results will be returned
      #
      # @param lang [String] Select the language to be used for result rendering from a list of [BCP 47](http
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::RevgeocodeRetrieveResponse]
      #
      # @see Nextbillionai::Models::RevgeocodeRetrieveParams
      def retrieve(params)
        parsed, options = Nextbillionai::RevgeocodeRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "revgeocode",
          query: parsed.transform_keys(in_: "in"),
          model: Nextbillionai::Models::RevgeocodeRetrieveResponse,
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
