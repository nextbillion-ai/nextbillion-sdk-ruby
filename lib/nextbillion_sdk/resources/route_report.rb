# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class RouteReport
      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::RouteReportCreateParams} for more details.
      #
      # Route Report
      #
      # @overload create(key:, original_shape:, original_shape_type:, request_options: {})
      #
      # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
      #
      # @param original_shape [String] Body param: Takes a route geometry as input and returns the route details. Accep
      #
      # @param original_shape_type [Symbol, NextbillionSDK::Models::RouteReportCreateParams::OriginalShapeType] Body param: Specify the encoding type of route geometry provided in `original_sh
      #
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [NextbillionSDK::Models::RouteReportCreateResponse]
      #
      # @see NextbillionSDK::Models::RouteReportCreateParams
      def create(params)
        parsed, options = NextbillionSDK::RouteReportCreateParams.dump_request(params)
        query_params = [:key]
        @client.request(
          method: :post,
          path: "route_report",
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: NextbillionSDK::Models::RouteReportCreateResponse,
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
