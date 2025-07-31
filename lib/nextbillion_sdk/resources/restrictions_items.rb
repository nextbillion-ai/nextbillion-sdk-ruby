# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class RestrictionsItems
      # Get restriction items by bbox
      #
      # @overload list(max_lat:, max_lon:, min_lat:, min_lon:, group_id: nil, mode: nil, restriction_type: nil, source: nil, state: nil, status: nil, request_options: {})
      #
      # @param max_lat [Float]
      # @param max_lon [Float]
      # @param min_lat [Float]
      # @param min_lon [Float]
      # @param group_id [Float]
      # @param mode [Symbol, NextbillionSDK::Models::RestrictionsItemListParams::Mode]
      # @param restriction_type [Symbol, NextbillionSDK::Models::RestrictionsItemListParams::RestrictionType]
      # @param source [String]
      # @param state [Symbol, NextbillionSDK::Models::RestrictionsItemListParams::State]
      # @param status [Symbol, NextbillionSDK::Models::RestrictionsItemListParams::Status]
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<NextbillionSDK::Models::RestrictionsItemListResponseItem>]
      #
      # @see NextbillionSDK::Models::RestrictionsItemListParams
      def list(params)
        parsed, options = NextbillionSDK::RestrictionsItemListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "restrictions_items",
          query: parsed,
          model: NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::RestrictionsItemListResponseItem],
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
