# typed: strong

module NextbillionSDK
  module Models
    class SnapToRoadSnapParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::SnapToRoadSnapParams,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      # Pipe-separated list of coordinate points along a path which would be snapped to
      # a road.
      sig { returns(String) }
      attr_accessor :path

      # A semicolon-separated list indicating the side of the road from which to
      # approach the locations on the snapped route. When set to "unrestricted" a route
      # can arrive at the snapped location from either side of the road and when set to
      # "curb" the route will arrive at the snapped location on the driving side of the
      # region. Please note the number of values provided must be equal to the number of
      # coordinate points provided in the "path" parameter. However, you can skip a
      # coordinate and show its position in the list with the ";" separator.
      sig do
        returns(
          T.nilable(NextbillionSDK::SnapToRoadSnapParams::Approaches::OrSymbol)
        )
      end
      attr_reader :approaches

      sig do
        params(
          approaches: NextbillionSDK::SnapToRoadSnapParams::Approaches::OrSymbol
        ).void
      end
      attr_writer :approaches

      # Setting this will ensure the route avoids ferries, tolls, highways or nothing.
      # Multiple values should be separated by a pipe (|). If "none" is provided along
      # with other values, an error is returned as a valid route is not feasible. Please
      # note that when this parameter is not provided in the input, ferries are set to
      # be avoided by default. When this parameter is provided, only the mentioned
      # objects are avoided.
      sig do
        returns(
          T.nilable(NextbillionSDK::SnapToRoadSnapParams::Avoid::OrSymbol)
        )
      end
      attr_reader :avoid

      sig do
        params(
          avoid: NextbillionSDK::SnapToRoadSnapParams::Avoid::OrSymbol
        ).void
      end
      attr_writer :avoid

      # Sets the output format of the route geometry in the response. Only the
      # "polyline" or "polyline6" encoded "geometry" of the snapped path is returned in
      # the response depending on the value provided in the input. When "geojson" is
      # selected as the input value, "polyline6" encoded geometry of the snapped path is
      # returned along with a "geojson" object.
      sig do
        returns(
          T.nilable(NextbillionSDK::SnapToRoadSnapParams::Geometry::OrSymbol)
        )
      end
      attr_reader :geometry

      sig do
        params(
          geometry: NextbillionSDK::SnapToRoadSnapParams::Geometry::OrSymbol
        ).void
      end
      attr_writer :geometry

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
      sig do
        returns(T.nilable(NextbillionSDK::SnapToRoadSnapParams::Mode::OrSymbol))
      end
      attr_reader :mode

      sig do
        params(mode: NextbillionSDK::SnapToRoadSnapParams::Mode::OrSymbol).void
      end
      attr_writer :mode

      # Include this parameter in the request to return segment-wise speed information
      # of the route returned in the response.
      #
      # Please note that returning speed information is a function of "road_info"
      # parameter, which is effective only when "option=flexible". However, the
      # resultant route might not contain all the locations provided in "path" input.
      sig do
        returns(
          T.nilable(NextbillionSDK::SnapToRoadSnapParams::Option::OrSymbol)
        )
      end
      attr_reader :option

      sig do
        params(
          option: NextbillionSDK::SnapToRoadSnapParams::Option::OrSymbol
        ).void
      end
      attr_writer :option

      # Pipe separated radiuses, in meters (m), up to which a coordinate point can be
      # snapped. Please note, if no valid road is available within the specified radius,
      # the API would snap the points to nearest, most viable road. When using this
      # parameter, it is recommended to specify as many radius values as the number of
      # points in "path" parameter. If the same number of "radiuses" are not provided,
      # the API will use the default radius value of 25 meters for all locations.
      sig { returns(T.nilable(String)) }
      attr_reader :radiuses

      sig { params(radiuses: String).void }
      attr_writer :radiuses

      # Use this parameter to receive segment-wise maximum speed information of the
      # route in the response. "max_speed" is the only allowed value.
      sig do
        returns(
          T.nilable(NextbillionSDK::SnapToRoadSnapParams::RoadInfo::OrSymbol)
        )
      end
      attr_reader :road_info

      sig do
        params(
          road_info: NextbillionSDK::SnapToRoadSnapParams::RoadInfo::OrSymbol
        ).void
      end
      attr_writer :road_info

      # Pipe-separated UNIX epoch timestamp in seconds for each location. If used, the
      # number of timestamps must be equal to the number of coordinate points in the
      # "path" parameter. The "timestamps" must increase monotonically starting from the
      # first timestamp. This means that each subsequent timestamp should either be more
      # than or equal to the preceding one.
      sig { returns(T.nilable(String)) }
      attr_reader :timestamps

      sig { params(timestamps: String).void }
      attr_writer :timestamps

      # Enable it to ignore locations outside the service boundary. When "true", the
      # service would ignore "path" coordinates points falling outside the accessible
      # area, which otherwise would cause an error when this parameter is "false".
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :tolerate_outlier

      sig { params(tolerate_outlier: T::Boolean).void }
      attr_writer :tolerate_outlier

      sig do
        params(
          key: String,
          path: String,
          approaches:
            NextbillionSDK::SnapToRoadSnapParams::Approaches::OrSymbol,
          avoid: NextbillionSDK::SnapToRoadSnapParams::Avoid::OrSymbol,
          geometry: NextbillionSDK::SnapToRoadSnapParams::Geometry::OrSymbol,
          mode: NextbillionSDK::SnapToRoadSnapParams::Mode::OrSymbol,
          option: NextbillionSDK::SnapToRoadSnapParams::Option::OrSymbol,
          radiuses: String,
          road_info: NextbillionSDK::SnapToRoadSnapParams::RoadInfo::OrSymbol,
          timestamps: String,
          tolerate_outlier: T::Boolean,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            key: String,
            path: String,
            approaches:
              NextbillionSDK::SnapToRoadSnapParams::Approaches::OrSymbol,
            avoid: NextbillionSDK::SnapToRoadSnapParams::Avoid::OrSymbol,
            geometry: NextbillionSDK::SnapToRoadSnapParams::Geometry::OrSymbol,
            mode: NextbillionSDK::SnapToRoadSnapParams::Mode::OrSymbol,
            option: NextbillionSDK::SnapToRoadSnapParams::Option::OrSymbol,
            radiuses: String,
            road_info: NextbillionSDK::SnapToRoadSnapParams::RoadInfo::OrSymbol,
            timestamps: String,
            tolerate_outlier: T::Boolean,
            request_options: NextbillionSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # A semicolon-separated list indicating the side of the road from which to
      # approach the locations on the snapped route. When set to "unrestricted" a route
      # can arrive at the snapped location from either side of the road and when set to
      # "curb" the route will arrive at the snapped location on the driving side of the
      # region. Please note the number of values provided must be equal to the number of
      # coordinate points provided in the "path" parameter. However, you can skip a
      # coordinate and show its position in the list with the ";" separator.
      module Approaches
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, NextbillionSDK::SnapToRoadSnapParams::Approaches)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UNRESTRICTED =
          T.let(
            :unrestricted,
            NextbillionSDK::SnapToRoadSnapParams::Approaches::TaggedSymbol
          )
        CURB =
          T.let(
            :curb,
            NextbillionSDK::SnapToRoadSnapParams::Approaches::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::SnapToRoadSnapParams::Approaches::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Setting this will ensure the route avoids ferries, tolls, highways or nothing.
      # Multiple values should be separated by a pipe (|). If "none" is provided along
      # with other values, an error is returned as a valid route is not feasible. Please
      # note that when this parameter is not provided in the input, ferries are set to
      # be avoided by default. When this parameter is provided, only the mentioned
      # objects are avoided.
      module Avoid
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, NextbillionSDK::SnapToRoadSnapParams::Avoid)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TOLL =
          T.let(
            :toll,
            NextbillionSDK::SnapToRoadSnapParams::Avoid::TaggedSymbol
          )
        FERRY =
          T.let(
            :ferry,
            NextbillionSDK::SnapToRoadSnapParams::Avoid::TaggedSymbol
          )
        HIGHWAY =
          T.let(
            :highway,
            NextbillionSDK::SnapToRoadSnapParams::Avoid::TaggedSymbol
          )
        NONE =
          T.let(
            :none,
            NextbillionSDK::SnapToRoadSnapParams::Avoid::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[NextbillionSDK::SnapToRoadSnapParams::Avoid::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sets the output format of the route geometry in the response. Only the
      # "polyline" or "polyline6" encoded "geometry" of the snapped path is returned in
      # the response depending on the value provided in the input. When "geojson" is
      # selected as the input value, "polyline6" encoded geometry of the snapped path is
      # returned along with a "geojson" object.
      module Geometry
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, NextbillionSDK::SnapToRoadSnapParams::Geometry)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        POLYLINE =
          T.let(
            :polyline,
            NextbillionSDK::SnapToRoadSnapParams::Geometry::TaggedSymbol
          )
        POLYLINE6 =
          T.let(
            :polyline6,
            NextbillionSDK::SnapToRoadSnapParams::Geometry::TaggedSymbol
          )
        GEOJSON =
          T.let(
            :geojson,
            NextbillionSDK::SnapToRoadSnapParams::Geometry::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::SnapToRoadSnapParams::Geometry::TaggedSymbol
            ]
          )
        end
        def self.values
        end
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
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, NextbillionSDK::SnapToRoadSnapParams::Mode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CAR =
          T.let(:car, NextbillionSDK::SnapToRoadSnapParams::Mode::TaggedSymbol)
        TRUCK =
          T.let(
            :truck,
            NextbillionSDK::SnapToRoadSnapParams::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[NextbillionSDK::SnapToRoadSnapParams::Mode::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Include this parameter in the request to return segment-wise speed information
      # of the route returned in the response.
      #
      # Please note that returning speed information is a function of "road_info"
      # parameter, which is effective only when "option=flexible". However, the
      # resultant route might not contain all the locations provided in "path" input.
      module Option
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, NextbillionSDK::SnapToRoadSnapParams::Option)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FLEXIBLE =
          T.let(
            :flexible,
            NextbillionSDK::SnapToRoadSnapParams::Option::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[NextbillionSDK::SnapToRoadSnapParams::Option::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Use this parameter to receive segment-wise maximum speed information of the
      # route in the response. "max_speed" is the only allowed value.
      module RoadInfo
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, NextbillionSDK::SnapToRoadSnapParams::RoadInfo)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MAX_SPEED =
          T.let(
            :max_speed,
            NextbillionSDK::SnapToRoadSnapParams::RoadInfo::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::SnapToRoadSnapParams::RoadInfo::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
