# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Optimization
      # @return [Nextbillionai::Resources::Optimization::DriverAssignment]
      attr_reader :driver_assignment

      # @return [Nextbillionai::Resources::Optimization::V2]
      attr_reader :v2

      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::OptimizationComputeParams} for more details.
      #
      # Nextbillion.ai Optimization API computes and returns an optimized route between
      # an origin and destination which have multiple stop points in between. With
      # NextBillion.ai's Route Optimization API you get.
      #
      # Optimized routing between way points
      #
      # Highly accurate ETAs with customized routes
      #
      # Roundtrip optimization with customized destinations
      #
      # A list of all parameters is specified in the next section.
      #
      # @overload compute(coordinates:, key:, approaches: nil, destination: nil, geometries: nil, mode: nil, roundtrip: nil, source: nil, with_geometry: nil, request_options: {})
      #
      # @param coordinates [String] This is a pipe-separated list of coordinates.
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param approaches [Symbol, Nextbillionai::Models::OptimizationComputeParams::Approaches] A semicolon-separated list indicating the side of the road from which to approac
      #
      # @param destination [Symbol, Nextbillionai::Models::OptimizationComputeParams::Destination] Specify the destination coordinate of the returned route. If the input is last,
      #
      # @param geometries [Symbol, Nextbillionai::Models::OptimizationComputeParams::Geometries] Sets the output format of the route geometry in the response.
      #
      # @param mode [Symbol, Nextbillionai::Models::OptimizationComputeParams::Mode] Set which driving mode the service should use to determine a route. For example,
      #
      # @param roundtrip [Boolean] Indicates whether the returned route is a roundtrip.
      #
      # @param source [Symbol, Nextbillionai::Models::OptimizationComputeParams::Source] The coordinate at which to start the returned route. If this is not configured,
      #
      # @param with_geometry [Boolean] Indicates whether the return geometry should be computed or not.
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::OptimizationComputeResponse]
      #
      # @see Nextbillionai::Models::OptimizationComputeParams
      def compute(params)
        parsed, options = Nextbillionai::OptimizationComputeParams.dump_request(params)
        @client.request(
          method: :get,
          path: "optimization/json",
          query: parsed,
          model: Nextbillionai::Models::OptimizationComputeResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::OptimizationReOptimizeParams} for more details.
      #
      # Re-optimization
      #
      # @overload re_optimize(key:, existing_request_id:, job_changes: nil, locations: nil, shipment_changes: nil, vehicle_changes: nil, request_options: {})
      #
      # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
      #
      # @param existing_request_id [String] Body param: Specify the unique request ID that needs to be re-optimized.
      #
      # @param job_changes [Nextbillionai::Models::OptimizationReOptimizeParams::JobChanges] Body param: This section gathers information on modifications to the number of j
      #
      # @param locations [Array<String>] Body param: Provide the list of locations to be used during re-optimization proc
      #
      # @param shipment_changes [Nextbillionai::Models::OptimizationReOptimizeParams::ShipmentChanges] Body param: This section gathers information on modifications to the number of s
      #
      # @param vehicle_changes [Nextbillionai::Models::OptimizationReOptimizeParams::VehicleChanges] Body param: This section gathers information on modifications to the number of v
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::PostResponse]
      #
      # @see Nextbillionai::Models::OptimizationReOptimizeParams
      def re_optimize(params)
        parsed, options = Nextbillionai::OptimizationReOptimizeParams.dump_request(params)
        query_params = [:key]
        @client.request(
          method: :post,
          path: "optimization/re_optimization",
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: Nextbillionai::PostResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Nextbillionai::Client]
      def initialize(client:)
        @client = client
        @driver_assignment = Nextbillionai::Resources::Optimization::DriverAssignment.new(client: client)
        @v2 = Nextbillionai::Resources::Optimization::V2.new(client: client)
      end
    end
  end
end
