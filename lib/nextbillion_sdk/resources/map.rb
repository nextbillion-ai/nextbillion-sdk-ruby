# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Map
      # Road Segments
      #
      # @overload create_segment(request_options: {})
      #
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see NextbillionSDK::Models::MapCreateSegmentParams
      def create_segment(params = {})
        @client.request(
          method: :post,
          path: "map/segments",
          model: NilClass,
          options: params[:request_options]
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
