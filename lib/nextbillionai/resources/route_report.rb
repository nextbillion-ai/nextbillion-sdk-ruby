# frozen_string_literal: true

module Nextbillionai
  module Resources
    class RouteReport
      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::RouteReportCreateParams} for more details.
      #
      # Route Report
      #
      # @overload create(key:, original_shape:, original_shape_type:, request_options: {})
      #
      # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
      #
      # @param original_shape [String] Body param: Takes a route geometry as input and returns the route details. Accep
      #
      # @param original_shape_type [Symbol, Nextbillionai::Models::RouteReportCreateParams::OriginalShapeType] Body param: Specify the encoding type of route geometry provided in original_sha
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::RouteReportCreateResponse]
      #
      # @see Nextbillionai::Models::RouteReportCreateParams
      def create(params)
        parsed, options = Nextbillionai::RouteReportCreateParams.dump_request(params)
        query_params = [:key]
        @client.request(
          method: :post,
          path: "route_report",
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: Nextbillionai::Models::RouteReportCreateResponse,
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
