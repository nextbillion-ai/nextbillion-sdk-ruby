# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Areas
      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::AreaListParams} for more details.
      #
      # Get available areas
      #
      # @overload list(key:, request_options: {})
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<NextbillionSDK::Models::AreaListResponseItem>]
      #
      # @see NextbillionSDK::Models::AreaListParams
      def list(params)
        parsed, options = NextbillionSDK::AreaListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "areas",
          query: parsed,
          model: NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::AreaListResponseItem],
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
