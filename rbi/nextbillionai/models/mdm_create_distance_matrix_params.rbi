# typed: strong

module Nextbillionai
  module Models
    class MdmCreateDistanceMatrixParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::MdmCreateDistanceMatrixParams,
            Nextbillionai::Internal::AnyHash
          )
        end

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      # Use this option to switch to truck-specific routing or time based routing or if
      # you want to choose between the fastest and shortest route types.
      sig do
        returns(Nextbillionai::MdmCreateDistanceMatrixParams::Option::OrSymbol)
      end
      attr_accessor :option

      # `origins` are the starting point of your route. Ensure that origins are routable
      # land locations. Multiple origins should be separated by a pipe symbol (|).
      #
      # **Format:** latitude_1,longitude_1|latitude_2,longitude_2|…
      sig { returns(String) }
      attr_accessor :origins

      # Specify a spliter to split the matrix by. It accepts 2 values:
      #
      # - `od_number_spliter`:
      #
      # - `straight_distance_spliter`:
      #
      # Please note it is an internal, debug field only.
      #
      # _debug field. choose specific spliter to split matrix._
      sig do
        returns(
          T.nilable(
            Nextbillionai::MdmCreateDistanceMatrixParams::Spliter::OrSymbol
          )
        )
      end
      attr_reader :spliter

      sig do
        params(
          spliter:
            Nextbillionai::MdmCreateDistanceMatrixParams::Spliter::OrSymbol
        ).void
      end
      attr_writer :spliter

      # Provide the country that the coordinates belong to.
      #
      # _the input coordinates area._
      sig do
        returns(
          T.nilable(
            Nextbillionai::MdmCreateDistanceMatrixParams::Area::OrSymbol
          )
        )
      end
      attr_reader :area

      sig do
        params(
          area: Nextbillionai::MdmCreateDistanceMatrixParams::Area::OrSymbol
        ).void
      end
      attr_writer :area

      # Setting this will ensure the route avoids the object(s) specified as input.
      # Multiple values should be separated by a pipe (|). If `none` is provided along
      # with other values, an error is returned as a valid route is not feasible.
      #
      # - **Note:**
      #
      #   - This parameter is effective only when `route_type=fastest`.
      #   - When this parameter is not provided in the input, ferries are set to be
      #     avoided by default. When `avoid` input is provided, only the mentioned
      #     objects are avoided.
      #   - When using `avoid=bbox` users also need to specify the boundaries of the
      #     bounding box to be avoid. Multiple bounding boxes can be specified
      #     simultaneously. Please note that bounding box is a hard filter and if it
      #     blocks all possible routes between given locations, a 4xx error is returned.
      #
      #     - **Format:** bbox: min_latitude,min_longtitude,max_latitude,max_longitude.
      #     - **Example:** avoid=bbox: 34.0635,-118.2547, 34.0679,-118.2478 | bbox:
      #       34.0521,-118.2342, 34.0478,-118.2437
      #
      #   - When using `avoid=sharp_turn`, default range of permissible turn angles is
      #     \[120,240\].
      sig do
        returns(
          T.nilable(
            Nextbillionai::MdmCreateDistanceMatrixParams::Avoid::OrSymbol
          )
        )
      end
      attr_reader :avoid

      sig do
        params(
          avoid: Nextbillionai::MdmCreateDistanceMatrixParams::Avoid::OrSymbol
        ).void
      end
      attr_writer :avoid

      # Specify if crossing an international border is expected for operations near
      # border areas. When set to false, the API will prohibit routes going back & forth
      # between countries. Consequently, routes within the same country will be
      # preferred if they are feasible for the given set of `destination` or `waypoints`
      # . When set to true, the routes will be allowed to go back & forth between
      # countries as needed.
      #
      # This feature is available in North America region only. Please get in touch with
      # [support@nextbillion.ai](mailto:support@nextbillion.ai) to enquire/enable other
      # areas.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :cross_border

      sig { params(cross_border: T::Boolean).void }
      attr_writer :cross_border

      # This is a number in UNIX epoch timestamp in seconds format that can be used to
      # provide the departure time. The response will return the `distance` and
      # `duration` of the route based on typical traffic for at the given start time.If
      # no input is provided for this parameter then the traffic conditions at the time
      # of making the request are considered.
      #
      # Please note that when `route_type` is set to `shortest` then the
      # `departure_time` will be ineffective as the service will return the result for
      # the shortest path possible irrespective of the traffic conditions.
      sig { returns(T.nilable(Integer)) }
      attr_reader :departure_time

      sig { params(departure_time: Integer).void }
      attr_writer :departure_time

      # `destinations` are the ending coordinates of your route. Ensure that
      # destinations are routable land locations. Multiple destinations should be
      # separated by a pipe symbol (|).
      #
      # In case `destinations` are not provided or if it is left empty, then the input
      # value of `origins` will be copied to `destinations` to create the OD matrix
      # pairs.
      #
      # **Format:** latitude_1,longitude_1|latitude_2,longitude_2|…
      sig { returns(T.nilable(String)) }
      attr_reader :destinations

      sig { params(destinations: String).void }
      attr_writer :destinations

      # Specify the side of the road from which to approach `destinations` points.
      # Please note that the given approach will be applied to all the `destinations`.
      sig do
        returns(
          T.nilable(
            Nextbillionai::MdmCreateDistanceMatrixParams::DestinationsApproach::OrSymbol
          )
        )
      end
      attr_reader :destinations_approach

      sig do
        params(
          destinations_approach:
            Nextbillionai::MdmCreateDistanceMatrixParams::DestinationsApproach::OrSymbol
        ).void
      end
      attr_writer :destinations_approach

      # Specify the type of hazardous material being carried and the service will avoid
      # roads which are not suitable for the type of goods specified. Multiple values
      # can be separated using a pipe operator `|` .
      #
      # Please note that this parameter is effective only when `mode=truck`.
      sig do
        returns(
          T.nilable(
            Nextbillionai::MdmCreateDistanceMatrixParams::HazmatType::OrSymbol
          )
        )
      end
      attr_reader :hazmat_type

      sig do
        params(
          hazmat_type:
            Nextbillionai::MdmCreateDistanceMatrixParams::HazmatType::OrSymbol
        ).void
      end
      attr_writer :hazmat_type

      # Set which driving mode the service should use to determine a route.
      #
      # For example, if you use `car`, the API will return a route that a car can take.
      # Using `truck` will return a route a truck can use, taking into account
      # appropriate truck routing restrictions.
      sig do
        returns(
          T.nilable(
            Nextbillionai::MdmCreateDistanceMatrixParams::Mode::OrSymbol
          )
        )
      end
      attr_reader :mode

      sig do
        params(
          mode: Nextbillionai::MdmCreateDistanceMatrixParams::Mode::OrSymbol
        ).void
      end
      attr_writer :mode

      # Specify the side of the road from which to approach `origins` points. Please
      # note that the given approach will be applied to all the points provided as
      # `origins`.
      sig do
        returns(
          T.nilable(
            Nextbillionai::MdmCreateDistanceMatrixParams::OriginsApproach::OrSymbol
          )
        )
      end
      attr_reader :origins_approach

      sig do
        params(
          origins_approach:
            Nextbillionai::MdmCreateDistanceMatrixParams::OriginsApproach::OrSymbol
        ).void
      end
      attr_writer :origins_approach

      # Set the route type that needs to be returned. Please note that `route_type` is
      # effective only when `option=flexible`.
      sig do
        returns(
          T.nilable(
            Nextbillionai::MdmCreateDistanceMatrixParams::RouteType::OrSymbol
          )
        )
      end
      attr_reader :route_type

      sig do
        params(
          route_type:
            Nextbillionai::MdmCreateDistanceMatrixParams::RouteType::OrSymbol
        ).void
      end
      attr_writer :route_type

      # Specify the total load per axle (including the weight of trailers and shipped
      # goods) of the truck, in tonnes. When used, the service will return routes which
      # are legally allowed to carry the load specified per axle.
      #
      # Please note this parameter is effective only when `mode=truck`.
      sig { returns(T.nilable(Float)) }
      attr_reader :truck_axle_load

      sig { params(truck_axle_load: Float).void }
      attr_writer :truck_axle_load

      # This defines the dimensions of a truck in centimeters (cm) in the format of
      # "height,width,length". This parameter is effective only when `mode=truck` and
      # `option=flexible`. Maximum dimensions are as follows:
      #
      # Height = 1000 cm Width = 5000 cm Length = 5000 cm
      sig { returns(T.nilable(String)) }
      attr_reader :truck_size

      sig { params(truck_size: String).void }
      attr_writer :truck_size

      # This parameter defines the weight of the truck including trailers and shipped
      # goods in kilograms (kg). This parameter is effective only when `mode=truck` and
      # `option=flexible`.
      sig { returns(T.nilable(Integer)) }
      attr_reader :truck_weight

      sig { params(truck_weight: Integer).void }
      attr_writer :truck_weight

      sig do
        params(
          key: String,
          option:
            Nextbillionai::MdmCreateDistanceMatrixParams::Option::OrSymbol,
          origins: String,
          spliter:
            Nextbillionai::MdmCreateDistanceMatrixParams::Spliter::OrSymbol,
          area: Nextbillionai::MdmCreateDistanceMatrixParams::Area::OrSymbol,
          avoid: Nextbillionai::MdmCreateDistanceMatrixParams::Avoid::OrSymbol,
          cross_border: T::Boolean,
          departure_time: Integer,
          destinations: String,
          destinations_approach:
            Nextbillionai::MdmCreateDistanceMatrixParams::DestinationsApproach::OrSymbol,
          hazmat_type:
            Nextbillionai::MdmCreateDistanceMatrixParams::HazmatType::OrSymbol,
          mode: Nextbillionai::MdmCreateDistanceMatrixParams::Mode::OrSymbol,
          origins_approach:
            Nextbillionai::MdmCreateDistanceMatrixParams::OriginsApproach::OrSymbol,
          route_type:
            Nextbillionai::MdmCreateDistanceMatrixParams::RouteType::OrSymbol,
          truck_axle_load: Float,
          truck_size: String,
          truck_weight: Integer,
          request_options: Nextbillionai::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # Use this option to switch to truck-specific routing or time based routing or if
        # you want to choose between the fastest and shortest route types.
        option:,
        # `origins` are the starting point of your route. Ensure that origins are routable
        # land locations. Multiple origins should be separated by a pipe symbol (|).
        #
        # **Format:** latitude_1,longitude_1|latitude_2,longitude_2|…
        origins:,
        # Specify a spliter to split the matrix by. It accepts 2 values:
        #
        # - `od_number_spliter`:
        #
        # - `straight_distance_spliter`:
        #
        # Please note it is an internal, debug field only.
        #
        # _debug field. choose specific spliter to split matrix._
        spliter: nil,
        # Provide the country that the coordinates belong to.
        #
        # _the input coordinates area._
        area: nil,
        # Setting this will ensure the route avoids the object(s) specified as input.
        # Multiple values should be separated by a pipe (|). If `none` is provided along
        # with other values, an error is returned as a valid route is not feasible.
        #
        # - **Note:**
        #
        #   - This parameter is effective only when `route_type=fastest`.
        #   - When this parameter is not provided in the input, ferries are set to be
        #     avoided by default. When `avoid` input is provided, only the mentioned
        #     objects are avoided.
        #   - When using `avoid=bbox` users also need to specify the boundaries of the
        #     bounding box to be avoid. Multiple bounding boxes can be specified
        #     simultaneously. Please note that bounding box is a hard filter and if it
        #     blocks all possible routes between given locations, a 4xx error is returned.
        #
        #     - **Format:** bbox: min_latitude,min_longtitude,max_latitude,max_longitude.
        #     - **Example:** avoid=bbox: 34.0635,-118.2547, 34.0679,-118.2478 | bbox:
        #       34.0521,-118.2342, 34.0478,-118.2437
        #
        #   - When using `avoid=sharp_turn`, default range of permissible turn angles is
        #     \[120,240\].
        avoid: nil,
        # Specify if crossing an international border is expected for operations near
        # border areas. When set to false, the API will prohibit routes going back & forth
        # between countries. Consequently, routes within the same country will be
        # preferred if they are feasible for the given set of `destination` or `waypoints`
        # . When set to true, the routes will be allowed to go back & forth between
        # countries as needed.
        #
        # This feature is available in North America region only. Please get in touch with
        # [support@nextbillion.ai](mailto:support@nextbillion.ai) to enquire/enable other
        # areas.
        cross_border: nil,
        # This is a number in UNIX epoch timestamp in seconds format that can be used to
        # provide the departure time. The response will return the `distance` and
        # `duration` of the route based on typical traffic for at the given start time.If
        # no input is provided for this parameter then the traffic conditions at the time
        # of making the request are considered.
        #
        # Please note that when `route_type` is set to `shortest` then the
        # `departure_time` will be ineffective as the service will return the result for
        # the shortest path possible irrespective of the traffic conditions.
        departure_time: nil,
        # `destinations` are the ending coordinates of your route. Ensure that
        # destinations are routable land locations. Multiple destinations should be
        # separated by a pipe symbol (|).
        #
        # In case `destinations` are not provided or if it is left empty, then the input
        # value of `origins` will be copied to `destinations` to create the OD matrix
        # pairs.
        #
        # **Format:** latitude_1,longitude_1|latitude_2,longitude_2|…
        destinations: nil,
        # Specify the side of the road from which to approach `destinations` points.
        # Please note that the given approach will be applied to all the `destinations`.
        destinations_approach: nil,
        # Specify the type of hazardous material being carried and the service will avoid
        # roads which are not suitable for the type of goods specified. Multiple values
        # can be separated using a pipe operator `|` .
        #
        # Please note that this parameter is effective only when `mode=truck`.
        hazmat_type: nil,
        # Set which driving mode the service should use to determine a route.
        #
        # For example, if you use `car`, the API will return a route that a car can take.
        # Using `truck` will return a route a truck can use, taking into account
        # appropriate truck routing restrictions.
        mode: nil,
        # Specify the side of the road from which to approach `origins` points. Please
        # note that the given approach will be applied to all the points provided as
        # `origins`.
        origins_approach: nil,
        # Set the route type that needs to be returned. Please note that `route_type` is
        # effective only when `option=flexible`.
        route_type: nil,
        # Specify the total load per axle (including the weight of trailers and shipped
        # goods) of the truck, in tonnes. When used, the service will return routes which
        # are legally allowed to carry the load specified per axle.
        #
        # Please note this parameter is effective only when `mode=truck`.
        truck_axle_load: nil,
        # This defines the dimensions of a truck in centimeters (cm) in the format of
        # "height,width,length". This parameter is effective only when `mode=truck` and
        # `option=flexible`. Maximum dimensions are as follows:
        #
        # Height = 1000 cm Width = 5000 cm Length = 5000 cm
        truck_size: nil,
        # This parameter defines the weight of the truck including trailers and shipped
        # goods in kilograms (kg). This parameter is effective only when `mode=truck` and
        # `option=flexible`.
        truck_weight: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            key: String,
            option:
              Nextbillionai::MdmCreateDistanceMatrixParams::Option::OrSymbol,
            origins: String,
            spliter:
              Nextbillionai::MdmCreateDistanceMatrixParams::Spliter::OrSymbol,
            area: Nextbillionai::MdmCreateDistanceMatrixParams::Area::OrSymbol,
            avoid:
              Nextbillionai::MdmCreateDistanceMatrixParams::Avoid::OrSymbol,
            cross_border: T::Boolean,
            departure_time: Integer,
            destinations: String,
            destinations_approach:
              Nextbillionai::MdmCreateDistanceMatrixParams::DestinationsApproach::OrSymbol,
            hazmat_type:
              Nextbillionai::MdmCreateDistanceMatrixParams::HazmatType::OrSymbol,
            mode: Nextbillionai::MdmCreateDistanceMatrixParams::Mode::OrSymbol,
            origins_approach:
              Nextbillionai::MdmCreateDistanceMatrixParams::OriginsApproach::OrSymbol,
            route_type:
              Nextbillionai::MdmCreateDistanceMatrixParams::RouteType::OrSymbol,
            truck_axle_load: Float,
            truck_size: String,
            truck_weight: Integer,
            request_options: Nextbillionai::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Use this option to switch to truck-specific routing or time based routing or if
      # you want to choose between the fastest and shortest route types.
      module Option
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::MdmCreateDistanceMatrixParams::Option)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FLEXIBLE =
          T.let(
            :flexible,
            Nextbillionai::MdmCreateDistanceMatrixParams::Option::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::MdmCreateDistanceMatrixParams::Option::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Specify a spliter to split the matrix by. It accepts 2 values:
      #
      # - `od_number_spliter`:
      #
      # - `straight_distance_spliter`:
      #
      # Please note it is an internal, debug field only.
      #
      # _debug field. choose specific spliter to split matrix._
      module Spliter
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::MdmCreateDistanceMatrixParams::Spliter)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OD_NUMBER_SPLITER =
          T.let(
            :od_number_spliter,
            Nextbillionai::MdmCreateDistanceMatrixParams::Spliter::TaggedSymbol
          )
        STRAIGHT_DISTANCE_SPLITER =
          T.let(
            :straight_distance_spliter,
            Nextbillionai::MdmCreateDistanceMatrixParams::Spliter::TaggedSymbol
          )
        LOCATION_SPLITER =
          T.let(
            :location_spliter,
            Nextbillionai::MdmCreateDistanceMatrixParams::Spliter::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::MdmCreateDistanceMatrixParams::Spliter::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Provide the country that the coordinates belong to.
      #
      # _the input coordinates area._
      module Area
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::MdmCreateDistanceMatrixParams::Area)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SINGAPORE =
          T.let(
            :singapore,
            Nextbillionai::MdmCreateDistanceMatrixParams::Area::TaggedSymbol
          )
        USA =
          T.let(
            :usa,
            Nextbillionai::MdmCreateDistanceMatrixParams::Area::TaggedSymbol
          )
        INDIA =
          T.let(
            :india,
            Nextbillionai::MdmCreateDistanceMatrixParams::Area::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::MdmCreateDistanceMatrixParams::Area::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Setting this will ensure the route avoids the object(s) specified as input.
      # Multiple values should be separated by a pipe (|). If `none` is provided along
      # with other values, an error is returned as a valid route is not feasible.
      #
      # - **Note:**
      #
      #   - This parameter is effective only when `route_type=fastest`.
      #   - When this parameter is not provided in the input, ferries are set to be
      #     avoided by default. When `avoid` input is provided, only the mentioned
      #     objects are avoided.
      #   - When using `avoid=bbox` users also need to specify the boundaries of the
      #     bounding box to be avoid. Multiple bounding boxes can be specified
      #     simultaneously. Please note that bounding box is a hard filter and if it
      #     blocks all possible routes between given locations, a 4xx error is returned.
      #
      #     - **Format:** bbox: min_latitude,min_longtitude,max_latitude,max_longitude.
      #     - **Example:** avoid=bbox: 34.0635,-118.2547, 34.0679,-118.2478 | bbox:
      #       34.0521,-118.2342, 34.0478,-118.2437
      #
      #   - When using `avoid=sharp_turn`, default range of permissible turn angles is
      #     \[120,240\].
      module Avoid
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::MdmCreateDistanceMatrixParams::Avoid)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TOLL =
          T.let(
            :"`toll`",
            Nextbillionai::MdmCreateDistanceMatrixParams::Avoid::TaggedSymbol
          )
        FERRY =
          T.let(
            :"`ferry`",
            Nextbillionai::MdmCreateDistanceMatrixParams::Avoid::TaggedSymbol
          )
        HIGHWAY =
          T.let(
            :"`highway`",
            Nextbillionai::MdmCreateDistanceMatrixParams::Avoid::TaggedSymbol
          )
        SHARP_TURN =
          T.let(
            :"`sharp_turn`",
            Nextbillionai::MdmCreateDistanceMatrixParams::Avoid::TaggedSymbol
          )
        SERVICE_ROAD =
          T.let(
            :"`service_road`",
            Nextbillionai::MdmCreateDistanceMatrixParams::Avoid::TaggedSymbol
          )
        BBOX =
          T.let(
            :"`bbox`",
            Nextbillionai::MdmCreateDistanceMatrixParams::Avoid::TaggedSymbol
          )
        LEFT_TURN =
          T.let(
            :"`left_turn`",
            Nextbillionai::MdmCreateDistanceMatrixParams::Avoid::TaggedSymbol
          )
        RIGHT_TURN =
          T.let(
            :"`right_turn`",
            Nextbillionai::MdmCreateDistanceMatrixParams::Avoid::TaggedSymbol
          )
        NONE =
          T.let(
            :"`none`",
            Nextbillionai::MdmCreateDistanceMatrixParams::Avoid::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::MdmCreateDistanceMatrixParams::Avoid::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Specify the side of the road from which to approach `destinations` points.
      # Please note that the given approach will be applied to all the `destinations`.
      module DestinationsApproach
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Nextbillionai::MdmCreateDistanceMatrixParams::DestinationsApproach
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UNRESTRICTED =
          T.let(
            :"`unrestricted`",
            Nextbillionai::MdmCreateDistanceMatrixParams::DestinationsApproach::TaggedSymbol
          )
        CURB =
          T.let(
            :"`curb`",
            Nextbillionai::MdmCreateDistanceMatrixParams::DestinationsApproach::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::MdmCreateDistanceMatrixParams::DestinationsApproach::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Specify the type of hazardous material being carried and the service will avoid
      # roads which are not suitable for the type of goods specified. Multiple values
      # can be separated using a pipe operator `|` .
      #
      # Please note that this parameter is effective only when `mode=truck`.
      module HazmatType
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Nextbillionai::MdmCreateDistanceMatrixParams::HazmatType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GENERAL =
          T.let(
            :"`general`",
            Nextbillionai::MdmCreateDistanceMatrixParams::HazmatType::TaggedSymbol
          )
        CIRCUMSTANTIAL =
          T.let(
            :"`circumstantial`",
            Nextbillionai::MdmCreateDistanceMatrixParams::HazmatType::TaggedSymbol
          )
        EXPLOSIVE =
          T.let(
            :"`explosive`",
            Nextbillionai::MdmCreateDistanceMatrixParams::HazmatType::TaggedSymbol
          )
        HARMFUL_TO_WATER =
          T.let(
            :"`harmful_to_water`",
            Nextbillionai::MdmCreateDistanceMatrixParams::HazmatType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::MdmCreateDistanceMatrixParams::HazmatType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Set which driving mode the service should use to determine a route.
      #
      # For example, if you use `car`, the API will return a route that a car can take.
      # Using `truck` will return a route a truck can use, taking into account
      # appropriate truck routing restrictions.
      module Mode
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::MdmCreateDistanceMatrixParams::Mode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CAR =
          T.let(
            :"`car`",
            Nextbillionai::MdmCreateDistanceMatrixParams::Mode::TaggedSymbol
          )
        TRUCK =
          T.let(
            :"`truck`",
            Nextbillionai::MdmCreateDistanceMatrixParams::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::MdmCreateDistanceMatrixParams::Mode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Specify the side of the road from which to approach `origins` points. Please
      # note that the given approach will be applied to all the points provided as
      # `origins`.
      module OriginsApproach
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Nextbillionai::MdmCreateDistanceMatrixParams::OriginsApproach
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UNRESTRICTED =
          T.let(
            :"`unrestricted`",
            Nextbillionai::MdmCreateDistanceMatrixParams::OriginsApproach::TaggedSymbol
          )
        CURB =
          T.let(
            :"`curb`",
            Nextbillionai::MdmCreateDistanceMatrixParams::OriginsApproach::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::MdmCreateDistanceMatrixParams::OriginsApproach::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Set the route type that needs to be returned. Please note that `route_type` is
      # effective only when `option=flexible`.
      module RouteType
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Nextbillionai::MdmCreateDistanceMatrixParams::RouteType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FASTEST =
          T.let(
            :"`fastest`",
            Nextbillionai::MdmCreateDistanceMatrixParams::RouteType::TaggedSymbol
          )
        SHORTEST =
          T.let(
            :"`shortest`",
            Nextbillionai::MdmCreateDistanceMatrixParams::RouteType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::MdmCreateDistanceMatrixParams::RouteType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
