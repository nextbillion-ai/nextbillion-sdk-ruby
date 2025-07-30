# frozen_string_literal: true

module Nextbillionai
  module Resources
    class SnapToRoads
      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::SnapToRoadSnapParams} for more details.
      #
      # Nextbillion.ai Snap To Roads API takes a series of locations along a route, and
      # returns the new locations on this route that are snapped to the best-matched
      # roads where the trip took place. You can set various parameters, such as
      # timestamps or radius, to optimize the result.
      #
      # @overload snap(key:, path:, approaches: nil, avoid: nil, geometry: nil, mode: nil, option: nil, radiuses: nil, road_info: nil, timestamps: nil, tolerate_outlier: nil, request_options: {})
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param path [String] Pipe-separated list of coordinate points along a path which would be snapped to
      #
      # @param approaches [Symbol, Nextbillionai::Models::SnapToRoadSnapParams::Approaches] A semicolon-separated list indicating the side of the road from which to approac
      #
      # @param avoid [Symbol, Nextbillionai::Models::SnapToRoadSnapParams::Avoid] Setting this will ensure the route avoids ferries, tolls, highways or nothing. M
      #
      # @param geometry [Symbol, Nextbillionai::Models::SnapToRoadSnapParams::Geometry] Sets the output format of the route geometry in the response. Only the "polyline
      #
      # @param mode [Symbol, Nextbillionai::Models::SnapToRoadSnapParams::Mode] Set which driving mode the service should use to determine a route. For example,
      #
      # @param option [Symbol, Nextbillionai::Models::SnapToRoadSnapParams::Option] Include this parameter in the request to return segment-wise speed information o
      #
      # @param radiuses [String] Pipe separated radiuses, in meters (m), up to which a coordinate point can be sn
      #
      # @param road_info [Symbol, Nextbillionai::Models::SnapToRoadSnapParams::RoadInfo] Use this parameter to receive segment-wise maximum speed information of the rout
      #
      # @param timestamps [String] Pipe-separated UNIX epoch timestamp in seconds for each location. If used, the n
      #
      # @param tolerate_outlier [Boolean] Enable it to ignore locations outside the service boundary. When "true", the ser
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::SnapToRoadSnapResponse]
      #
      # @see Nextbillionai::Models::SnapToRoadSnapParams
      def snap(params)
        parsed, options = Nextbillionai::SnapToRoadSnapParams.dump_request(params)
        @client.request(
          method: :get,
          path: "snapToRoads/json",
          query: parsed,
          model: Nextbillionai::Models::SnapToRoadSnapResponse,
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
