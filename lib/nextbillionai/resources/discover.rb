# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Discover
      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::DiscoverRetrieveParams} for more details.
      #
      # Discover matching places
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
      # @return [Nextbillionai::Models::DiscoverRetrieveResponse]
      #
      # @see Nextbillionai::Models::DiscoverRetrieveParams
      def retrieve(params)
        parsed, options = Nextbillionai::DiscoverRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "discover",
          query: parsed.transform_keys(in_: "in"),
          model: Nextbillionai::Models::DiscoverRetrieveResponse,
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
