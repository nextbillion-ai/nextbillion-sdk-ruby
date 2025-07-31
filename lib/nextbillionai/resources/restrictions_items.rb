# frozen_string_literal: true

module Nextbillionai
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
      # @param mode [Symbol, Nextbillionai::Models::RestrictionsItemListParams::Mode]
      # @param restriction_type [Symbol, Nextbillionai::Models::RestrictionsItemListParams::RestrictionType]
      # @param source [String]
      # @param state [Symbol, Nextbillionai::Models::RestrictionsItemListParams::State]
      # @param status [Symbol, Nextbillionai::Models::RestrictionsItemListParams::Status]
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Nextbillionai::Models::RestrictionsItemListResponseItem>]
      #
      # @see Nextbillionai::Models::RestrictionsItemListParams
      def list(params)
        parsed, options = Nextbillionai::RestrictionsItemListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "restrictions_items",
          query: parsed,
          model: Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::RestrictionsItemListResponseItem],
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
