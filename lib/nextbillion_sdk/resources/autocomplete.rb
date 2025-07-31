# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Autocomplete
      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::AutocompleteSuggestParams} for more details.
      #
      # Autocomplete
      #
      # @overload suggest(key:, q:, at: nil, in_: nil, lang: nil, limit: nil, request_options: {})
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
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [NextbillionSDK::Models::AutocompleteSuggestResponse]
      #
      # @see NextbillionSDK::Models::AutocompleteSuggestParams
      def suggest(params)
        parsed, options = NextbillionSDK::AutocompleteSuggestParams.dump_request(params)
        @client.request(
          method: :get,
          path: "autocomplete",
          query: parsed.transform_keys(in_: "in"),
          model: NextbillionSDK::Models::AutocompleteSuggestResponse,
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
