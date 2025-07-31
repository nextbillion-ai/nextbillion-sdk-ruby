# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Browse
      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::BrowseSearchParams} for more details.
      #
      # Browse a search area using a free text query
      #
      # @overload search(key:, at: nil, categories: nil, in_: nil, lang: nil, limit: nil, request_options: {})
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param at [String] Specify the center of the search context expressed as coordinates.
      #
      # @param categories [String] This is a category filter consisting of a comma-separated list of categories. Pl
      #
      # @param in_ [String] Search within a geographic area. This is a hard filter. Results will be returned
      #
      # @param lang [String] Select the language to be used for result rendering from a list of [BCP 47](http
      #
      # @param limit [Integer] Sets the maximum number of results to be returned.
      #
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [NextbillionSDK::Models::BrowseSearchResponse]
      #
      # @see NextbillionSDK::Models::BrowseSearchParams
      def search(params)
        parsed, options = NextbillionSDK::BrowseSearchParams.dump_request(params)
        @client.request(
          method: :get,
          path: "browse",
          query: parsed.transform_keys(in_: "in"),
          model: NextbillionSDK::Models::BrowseSearchResponse,
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
