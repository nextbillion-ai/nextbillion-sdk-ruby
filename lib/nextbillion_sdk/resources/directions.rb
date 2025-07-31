# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Directions
      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::DirectionComputeRouteParams} for more details.
      #
      # Directions API is a service that computes a route with given coordinates.
      #
      # @overload compute_route(destination:, origin:, altcount: nil, alternatives: nil, approaches: nil, avoid: nil, bearings: nil, cross_border: nil, departure_time: nil, drive_time_limits: nil, emission_class: nil, exclude: nil, geometry: nil, hazmat_type: nil, mode: nil, option: nil, overview: nil, rest_times: nil, road_info: nil, route_type: nil, steps: nil, truck_axle_load: nil, truck_size: nil, truck_weight: nil, turn_angle_range: nil, waypoints: nil, request_options: {})
      #
      # @param destination [String]
      #
      # @param origin [String]
      #
      # @param altcount [Integer] Sets the number of alternative routes to return. It is effective only when alter
      #
      # @param alternatives [Boolean] When true the API will return alternate routes.
      #
      # @param approaches [String] A semicolon-separated list indicating the side of the road from which to approac
      #
      # @param avoid [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::Avoid] When option=fast (by default):
      #
      # @param bearings [String] Limits the search to road segments with given bearing, in degrees, towards true
      #
      # @param cross_border [Boolean] Requires option=flexible.
      #
      # @param departure_time [Integer] Requires option=flexible.
      #
      # @param drive_time_limits [String] Requires option=flexible.
      #
      # @param emission_class [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::EmissionClass] Requires option=flexible.
      #
      # @param exclude [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::Exclude] Requires option=flexible.
      #
      # @param geometry [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::Geometry] Sets the output format of the route geometry in the response.
      #
      # @param hazmat_type [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::HazmatType] Requires option=flexible.
      #
      # @param mode [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::Mode] Set the driving mode the service should use to determine a route. In "car" mode,
      #
      # @param option [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::Option] The option parameter specifies the version of the directions service to use. Set
      #
      # @param overview [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::Overview] Specify the verbosity of route geometry.
      #
      # @param rest_times [String] Requires option=flexible.
      #
      # @param road_info [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::RoadInfo] Requires option=flexible.
      #
      # @param route_type [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::RouteType] Requires option=flexible.
      #
      # @param steps [Boolean] Set this to true to receive additional details about the routes and each of its
      #
      # @param truck_axle_load [Float] Requires option=flexible.
      #
      # @param truck_size [String] Requires option=flexible.
      #
      # @param truck_weight [Integer] Requires option=flexible.
      #
      # @param turn_angle_range [Integer] Requires option=flexible.
      #
      # @param waypoints [String] Pipe-separated list of coordinate pairs
      #
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [NextbillionSDK::Models::DirectionComputeRouteResponse]
      #
      # @see NextbillionSDK::Models::DirectionComputeRouteParams
      def compute_route(params)
        parsed, options = NextbillionSDK::DirectionComputeRouteParams.dump_request(params)
        @client.request(
          method: :post,
          path: "directions/json",
          body: parsed,
          model: NextbillionSDK::Models::DirectionComputeRouteResponse,
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
