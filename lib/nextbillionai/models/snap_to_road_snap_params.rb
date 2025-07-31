# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::SnapToRoads#snap
    class SnapToRoadSnapParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute path
      #   Pipe-separated list of coordinate points along a path which would be snapped to
      #   a road.
      #
      #   @return [String]
      required :path, String

      # @!attribute approaches
      #   A semicolon-separated list indicating the side of the road from which to
      #   approach the locations on the snapped route. When set to "unrestricted" a route
      #   can arrive at the snapped location from either side of the road and when set to
      #   "curb" the route will arrive at the snapped location on the driving side of the
      #   region. Please note the number of values provided must be equal to the number of
      #   coordinate points provided in the "path" parameter. However, you can skip a
      #   coordinate and show its position in the list with the ";" separator.
      #
      #   @return [Symbol, Nextbillionai::Models::SnapToRoadSnapParams::Approaches, nil]
      optional :approaches, enum: -> { Nextbillionai::SnapToRoadSnapParams::Approaches }

      # @!attribute avoid
      #   Setting this will ensure the route avoids ferries, tolls, highways or nothing.
      #   Multiple values should be separated by a pipe (|). If "none" is provided along
      #   with other values, an error is returned as a valid route is not feasible. Please
      #   note that when this parameter is not provided in the input, ferries are set to
      #   be avoided by default. When this parameter is provided, only the mentioned
      #   objects are avoided.
      #
      #   @return [Symbol, Nextbillionai::Models::SnapToRoadSnapParams::Avoid, nil]
      optional :avoid, enum: -> { Nextbillionai::SnapToRoadSnapParams::Avoid }

      # @!attribute geometry
      #   Sets the output format of the route geometry in the response. Only the
      #   "polyline" or "polyline6" encoded "geometry" of the snapped path is returned in
      #   the response depending on the value provided in the input. When "geojson" is
      #   selected as the input value, "polyline6" encoded geometry of the snapped path is
      #   returned along with a "geojson" object.
      #
      #   @return [Symbol, Nextbillionai::Models::SnapToRoadSnapParams::Geometry, nil]
      optional :geometry, enum: -> { Nextbillionai::SnapToRoadSnapParams::Geometry }

      # @!attribute mode
      #   Set which driving mode the service should use to determine a route. For example,
      #   if you use "car", the API will return a route that a car can take. Using "truck"
      #   will return a route a truck can use, taking into account appropriate truck
      #   routing restrictions.
      #
      #   Note: Only the "car" profile is enabled by default. Please note that customized
      #   profiles (including "truck") might not be available for all regions. Please
      #   contact your [NextBillion.ai](http://NextBillion.ai) account manager, sales
      #   representative or reach out at
      #   [support@nextbillion.ai](mailto:support@nextbillion.ai) in case you need
      #   additional profiles.
      #
      #   @return [Symbol, Nextbillionai::Models::SnapToRoadSnapParams::Mode, nil]
      optional :mode, enum: -> { Nextbillionai::SnapToRoadSnapParams::Mode }

      # @!attribute option
      #   Include this parameter in the request to return segment-wise speed information
      #   of the route returned in the response.
      #
      #   Please note that returning speed information is a function of "road_info"
      #   parameter, which is effective only when "option=flexible". However, the
      #   resultant route might not contain all the locations provided in "path" input.
      #
      #   @return [Symbol, Nextbillionai::Models::SnapToRoadSnapParams::Option, nil]
      optional :option, enum: -> { Nextbillionai::SnapToRoadSnapParams::Option }

      # @!attribute radiuses
      #   Pipe separated radiuses, in meters (m), up to which a coordinate point can be
      #   snapped. Please note, if no valid road is available within the specified radius,
      #   the API would snap the points to nearest, most viable road. When using this
      #   parameter, it is recommended to specify as many radius values as the number of
      #   points in "path" parameter. If the same number of "radiuses" are not provided,
      #   the API will use the default radius value of 25 meters for all locations.
      #
      #   @return [String, nil]
      optional :radiuses, String

      # @!attribute road_info
      #   Use this parameter to receive segment-wise maximum speed information of the
      #   route in the response. "max_speed" is the only allowed value.
      #
      #   @return [Symbol, Nextbillionai::Models::SnapToRoadSnapParams::RoadInfo, nil]
      optional :road_info, enum: -> { Nextbillionai::SnapToRoadSnapParams::RoadInfo }

      # @!attribute timestamps
      #   Pipe-separated UNIX epoch timestamp in seconds for each location. If used, the
      #   number of timestamps must be equal to the number of coordinate points in the
      #   "path" parameter. The "timestamps" must increase monotonically starting from the
      #   first timestamp. This means that each subsequent timestamp should either be more
      #   than or equal to the preceding one.
      #
      #   @return [String, nil]
      optional :timestamps, String

      # @!attribute tolerate_outlier
      #   Enable it to ignore locations outside the service boundary. When "true", the
      #   service would ignore "path" coordinates points falling outside the accessible
      #   area, which otherwise would cause an error when this parameter is "false".
      #
      #   @return [Boolean, nil]
      optional :tolerate_outlier, Nextbillionai::Internal::Type::Boolean

      # @!method initialize(key:, path:, approaches: nil, avoid: nil, geometry: nil, mode: nil, option: nil, radiuses: nil, road_info: nil, timestamps: nil, tolerate_outlier: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::SnapToRoadSnapParams} for more details.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param path [String] Pipe-separated list of coordinate points along a path which would be snapped to
      #
      #   @param approaches [Symbol, Nextbillionai::Models::SnapToRoadSnapParams::Approaches] A semicolon-separated list indicating the side of the road from which to approac
      #
      #   @param avoid [Symbol, Nextbillionai::Models::SnapToRoadSnapParams::Avoid] Setting this will ensure the route avoids ferries, tolls, highways or nothing. M
      #
      #   @param geometry [Symbol, Nextbillionai::Models::SnapToRoadSnapParams::Geometry] Sets the output format of the route geometry in the response. Only the "polyline
      #
      #   @param mode [Symbol, Nextbillionai::Models::SnapToRoadSnapParams::Mode] Set which driving mode the service should use to determine a route. For example,
      #
      #   @param option [Symbol, Nextbillionai::Models::SnapToRoadSnapParams::Option] Include this parameter in the request to return segment-wise speed information o
      #
      #   @param radiuses [String] Pipe separated radiuses, in meters (m), up to which a coordinate point can be sn
      #
      #   @param road_info [Symbol, Nextbillionai::Models::SnapToRoadSnapParams::RoadInfo] Use this parameter to receive segment-wise maximum speed information of the rout
      #
      #   @param timestamps [String] Pipe-separated UNIX epoch timestamp in seconds for each location. If used, the n
      #
      #   @param tolerate_outlier [Boolean] Enable it to ignore locations outside the service boundary. When "true", the ser
      #
      #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

      # A semicolon-separated list indicating the side of the road from which to
      # approach the locations on the snapped route. When set to "unrestricted" a route
      # can arrive at the snapped location from either side of the road and when set to
      # "curb" the route will arrive at the snapped location on the driving side of the
      # region. Please note the number of values provided must be equal to the number of
      # coordinate points provided in the "path" parameter. However, you can skip a
      # coordinate and show its position in the list with the ";" separator.
      module Approaches
        extend Nextbillionai::Internal::Type::Enum

        UNRESTRICTED = :unrestricted
        CURB = :curb

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Setting this will ensure the route avoids ferries, tolls, highways or nothing.
      # Multiple values should be separated by a pipe (|). If "none" is provided along
      # with other values, an error is returned as a valid route is not feasible. Please
      # note that when this parameter is not provided in the input, ferries are set to
      # be avoided by default. When this parameter is provided, only the mentioned
      # objects are avoided.
      module Avoid
        extend Nextbillionai::Internal::Type::Enum

        TOLL = :toll
        FERRY = :ferry
        HIGHWAY = :highway
        NONE = :none

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sets the output format of the route geometry in the response. Only the
      # "polyline" or "polyline6" encoded "geometry" of the snapped path is returned in
      # the response depending on the value provided in the input. When "geojson" is
      # selected as the input value, "polyline6" encoded geometry of the snapped path is
      # returned along with a "geojson" object.
      module Geometry
        extend Nextbillionai::Internal::Type::Enum

        POLYLINE = :polyline
        POLYLINE6 = :polyline6
        GEOJSON = :geojson

        # @!method self.values
        #   @return [Array<Symbol>]
      end

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
      module Mode
        extend Nextbillionai::Internal::Type::Enum

        CAR = :car
        TRUCK = :truck

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Include this parameter in the request to return segment-wise speed information
      # of the route returned in the response.
      #
      # Please note that returning speed information is a function of "road_info"
      # parameter, which is effective only when "option=flexible". However, the
      # resultant route might not contain all the locations provided in "path" input.
      module Option
        extend Nextbillionai::Internal::Type::Enum

        FLEXIBLE = :flexible

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Use this parameter to receive segment-wise maximum speed information of the
      # route in the response. "max_speed" is the only allowed value.
      module RoadInfo
        extend Nextbillionai::Internal::Type::Enum

        MAX_SPEED = :max_speed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
