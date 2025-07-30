# typed: strong

module NextbillionSDK
  module Resources
    class Optimization
      sig { returns(NextbillionSDK::Resources::Optimization::DriverAssignment) }
      attr_reader :driver_assignment

      sig { returns(NextbillionSDK::Resources::Optimization::V2) }
      attr_reader :v2

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
      sig do
        params(
          coordinates: String,
          key: String,
          approaches:
            NextbillionSDK::OptimizationComputeParams::Approaches::OrSymbol,
          destination:
            NextbillionSDK::OptimizationComputeParams::Destination::OrSymbol,
          geometries:
            NextbillionSDK::OptimizationComputeParams::Geometries::OrSymbol,
          mode: NextbillionSDK::OptimizationComputeParams::Mode::OrSymbol,
          roundtrip: T::Boolean,
          source: NextbillionSDK::OptimizationComputeParams::Source::OrSymbol,
          with_geometry: T::Boolean,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(NextbillionSDK::Models::OptimizationComputeResponse)
      end
      def compute(
        # This is a pipe-separated list of coordinates.
        #
        # Minimum 3 pairs of coordinates and Maximum 12 pairs of coordinates are allowed.
        coordinates:,
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # A semicolon-separated list indicating the side of the road from which to
        # approach waypoints in a requested route. If provided, the number of approaches
        # must be the same as the number of coordinates. However, you can skip a
        # coordinate and show its position in the list with the ; separator.
        approaches: nil,
        # Specify the destination coordinate of the returned route. If the input is last,
        # the last coordinate will be the destination.
        destination: nil,
        # Sets the output format of the route geometry in the response.
        #
        # On providing polyline and polyline6 as input, respective encoded geometry is
        # returned. However, when geojson is provided as the input value, polyline encoded
        # geometry is returned in the response along with a geojson details of the route.
        geometries: nil,
        # Set which driving mode the service should use to determine a route. For example,
        # if you use "car", the API will return a route that a car can take. Using "truck"
        # will return a route a truck can use, taking into account appropriate truck
        # routing restrictions.
        #
        # When "mode=truck", following are the default dimensions that are used:
        #
        # \- truck_height = 214 centimeters
        #
        # \- truck_width = 183 centimeters
        #
        # \- truck_length = 519 centimeters
        #
        # \- truck_weight = 5000 kg
        #
        # Please use the Directions Flexible version if you want to use custom truck
        # dimensions.
        #
        # Note: Only the "car" profile is enabled by default. Please note that customized
        # profiles (including "truck") might not be available for all regions. Please
        # contact your [NextBillion.ai](http://NextBillion.ai) account manager, sales
        # representative or reach out at
        # [support@nextbillion.ai](mailto:support@nextbillion.ai) in case you need
        # additional profiles.
        mode: nil,
        # Indicates whether the returned route is a roundtrip.
        roundtrip: nil,
        # The coordinate at which to start the returned route. If this is not configured,
        # the return route’s destination will be the first coordinate.
        source: nil,
        # Indicates whether the return geometry should be computed or not.
        with_geometry: nil,
        request_options: {}
      )
      end

      # Re-optimization
      sig do
        params(
          key: String,
          existing_request_id: String,
          job_changes:
            NextbillionSDK::OptimizationReOptimizeParams::JobChanges::OrHash,
          locations: T::Array[String],
          shipment_changes:
            NextbillionSDK::OptimizationReOptimizeParams::ShipmentChanges::OrHash,
          vehicle_changes:
            NextbillionSDK::OptimizationReOptimizeParams::VehicleChanges::OrHash,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(NextbillionSDK::PostResponse)
      end
      def re_optimize(
        # Query param: A key is a unique identifier that is required to authenticate a
        # request to the API.
        key:,
        # Body param: Specify the unique request ID that needs to be re-optimized.
        existing_request_id:,
        # Body param: This section gathers information on modifications to the number of
        # jobs or their individual requirements for re-optimization. Any job from the
        # original solution not specified here will be re-planned without alteration
        # during the re-optimization process.
        job_changes: nil,
        # Body param: Provide the list of locations to be used during re-optimization
        # process. Please note that
        #
        # - Providing the location input overwrites the list of locations used in the
        #   original request.
        # - The location_indexes associated with all tasks and vehicles (both from the
        #   original and new re-optimization input requests) will follow the updated list
        #   of locations.
        #
        # As a best practice:
        #
        # 1.  Don't provide the locations input when re-optimizing, if the original set
        #     contains all the required location coordinates.
        # 2.  If any new location coordinates are required for re-optimization, copy the
        #     full, original location list and update it in the following manner before
        #     adding it to the re-optimization input:
        #
        #     1.  Ensure to not update the indexes of locations which just need to be
        #         "modified".
        #     2.  Add new location coordinates towards the end of the list.
        locations: nil,
        # Body param: This section gathers information on modifications to the number of
        # shipments or their individual requirements for re-optimization. Any shipment
        # from the original solution not specified here will be re-planned without
        # alteration during the re-optimization process.
        shipment_changes: nil,
        # Body param: This section gathers information on modifications to the number of
        # vehicles or individual vehicle configurations for re-optimizing an existing
        # solution. Any vehicle from the original solution not specified here will be
        # reused without alteration during the re-optimization process.
        vehicle_changes: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: NextbillionSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
