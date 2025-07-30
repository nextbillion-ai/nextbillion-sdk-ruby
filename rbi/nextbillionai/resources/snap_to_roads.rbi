# typed: strong

module Nextbillionai
  module Resources
    class SnapToRoads
      # Nextbillion.ai Snap To Roads API takes a series of locations along a route, and
      # returns the new locations on this route that are snapped to the best-matched
      # roads where the trip took place. You can set various parameters, such as
      # timestamps or radius, to optimize the result.
      sig do
        params(
          key: String,
          path: String,
          approaches: Nextbillionai::SnapToRoadSnapParams::Approaches::OrSymbol,
          avoid: Nextbillionai::SnapToRoadSnapParams::Avoid::OrSymbol,
          geometry: Nextbillionai::SnapToRoadSnapParams::Geometry::OrSymbol,
          mode: Nextbillionai::SnapToRoadSnapParams::Mode::OrSymbol,
          option: Nextbillionai::SnapToRoadSnapParams::Option::OrSymbol,
          radiuses: String,
          road_info: Nextbillionai::SnapToRoadSnapParams::RoadInfo::OrSymbol,
          timestamps: String,
          tolerate_outlier: T::Boolean,
          request_options: Nextbillionai::RequestOptions::OrHash
        ).returns(Nextbillionai::Models::SnapToRoadSnapResponse)
      end
      def snap(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # Pipe-separated list of coordinate points along a path which would be snapped to
        # a road.
        path:,
        # A semicolon-separated list indicating the side of the road from which to
        # approach the locations on the snapped route. When set to "unrestricted" a route
        # can arrive at the snapped location from either side of the road and when set to
        # "curb" the route will arrive at the snapped location on the driving side of the
        # region. Please note the number of values provided must be equal to the number of
        # coordinate points provided in the "path" parameter. However, you can skip a
        # coordinate and show its position in the list with the ";" separator.
        approaches: nil,
        # Setting this will ensure the route avoids ferries, tolls, highways or nothing.
        # Multiple values should be separated by a pipe (|). If "none" is provided along
        # with other values, an error is returned as a valid route is not feasible. Please
        # note that when this parameter is not provided in the input, ferries are set to
        # be avoided by default. When this parameter is provided, only the mentioned
        # objects are avoided.
        avoid: nil,
        # Sets the output format of the route geometry in the response. Only the
        # "polyline" or "polyline6" encoded "geometry" of the snapped path is returned in
        # the response depending on the value provided in the input. When "geojson" is
        # selected as the input value, "polyline6" encoded geometry of the snapped path is
        # returned along with a "geojson" object.
        geometry: nil,
        # Set which driving mode the service should use to determine a route. For example,
        # if you use "car", the API will return a route that a car can take. Using "truck"
        # will return a route a truck can use, taking into account appropriate truck
        # routing restrictions.
        #
        # Note: Only the "car" profile is enabled by default. Please note that customized
        # profiles (including "truck") might not be available for all regions. Please
        # contact your [NextBillion.ai](http://NextBillion.ai) account manager, sales
        # representative or reach out at
        # [support@nextbillion.ai](mailto:support@nextbillion.ai) in case you need
        # additional profiles.
        mode: nil,
        # Include this parameter in the request to return segment-wise speed information
        # of the route returned in the response.
        #
        # Please note that returning speed information is a function of "road_info"
        # parameter, which is effective only when "option=flexible". However, the
        # resultant route might not contain all the locations provided in "path" input.
        option: nil,
        # Pipe separated radiuses, in meters (m), up to which a coordinate point can be
        # snapped. Please note, if no valid road is available within the specified radius,
        # the API would snap the points to nearest, most viable road. When using this
        # parameter, it is recommended to specify as many radius values as the number of
        # points in "path" parameter. If the same number of "radiuses" are not provided,
        # the API will use the default radius value of 25 meters for all locations.
        radiuses: nil,
        # Use this parameter to receive segment-wise maximum speed information of the
        # route in the response. "max_speed" is the only allowed value.
        road_info: nil,
        # Pipe-separated UNIX epoch timestamp in seconds for each location. If used, the
        # number of timestamps must be equal to the number of coordinate points in the
        # "path" parameter. The "timestamps" must increase monotonically starting from the
        # first timestamp. This means that each subsequent timestamp should either be more
        # than or equal to the preceding one.
        timestamps: nil,
        # Enable it to ignore locations outside the service boundary. When "true", the
        # service would ignore "path" coordinates points falling outside the accessible
        # area, which otherwise would cause an error when this parameter is "false".
        tolerate_outlier: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Nextbillionai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
