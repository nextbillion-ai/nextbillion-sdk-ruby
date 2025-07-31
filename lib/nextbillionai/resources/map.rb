# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Map
      # Road Segments
      #
      # @overload create_segment(request_options: {})
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Nextbillionai::Models::MapCreateSegmentParams
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
      # @param client [Nextbillionai::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
