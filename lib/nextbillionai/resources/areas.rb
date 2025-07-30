# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Areas
      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::AreaListParams} for more details.
      #
      # Get available areas
      #
      # @overload list(key:, request_options: {})
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Nextbillionai::Models::AreaListResponseItem>]
      #
      # @see Nextbillionai::Models::AreaListParams
      def list(params)
        parsed, options = Nextbillionai::AreaListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "areas",
          query: parsed,
          model: Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::AreaListResponseItem],
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
