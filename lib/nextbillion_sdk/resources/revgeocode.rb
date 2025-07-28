# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Revgeocode
      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::RevgeocodeRetrieveParams} for more details.
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
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [NextbillionSDK::Models::RevgeocodeRetrieveResponse]
      #
      # @see NextbillionSDK::Models::RevgeocodeRetrieveParams
      def retrieve(params)
        parsed, options = NextbillionSDK::RevgeocodeRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "revgeocode",
          query: parsed.transform_keys(in_: "in"),
          model: NextbillionSDK::Models::RevgeocodeRetrieveResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [NextbillionSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
