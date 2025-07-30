# typed: strong

module NextbillionSDK
  module Models
    module DistanceMatrix
      class JsonRetrieveParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::DistanceMatrix::JsonRetrieveParams,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # "destinations" are the ending coordinates of your route. Ensure that
        # "destinations" are routable land locations. Multiple "destinations" should be
        # separated by a pipe symbol "|".
        sig { returns(String) }
        attr_accessor :destinations

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # "origins" are the starting point of your route. Ensure that "origins" are
        # routable land locations. Multiple "origins" should be separated by a pipe symbol
        # "|".
        sig { returns(String) }
        attr_accessor :origins

        # A semicolon-separated list indicating the side of the road from which the route
        # will approach "destinations". When set to "unrestricted" a route can arrive at a
        # destination from either side of the road. When set to "curb" the route will
        # arrive at a destination on the driving side of the region. Please note the
        # number of values provided must be equal to the number of "destinations".
        # However, you can skip a coordinate and show its position in the list with the
        # ";" separator. The values provided for the "approaches" parameter are effective
        # for the "destinations" value at the same index. Example: "curb;;curb" will apply
        # curbside restriction on the "destinations" points provided at the first and
        # third index.
        sig do
          returns(
            T.nilable(
              NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Approaches::OrSymbol
            )
          )
        end
        attr_reader :approaches

        sig do
          params(
            approaches:
              NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Approaches::OrSymbol
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
            T.nilable(
              NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Avoid::OrSymbol
            )
          )
        end
        attr_reader :avoid

        sig do
          params(
            avoid:
              NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Avoid::OrSymbol
          ).void
        end
        attr_writer :avoid

        # Limits the search to segments with given bearing in degrees towards true north
        # in clockwise direction. Each "bearing" should be in the format of
        # "degree,range", where the "degree" should be a value between \[0, 360\] and
        # "range" should be a value between \[0, 180\]. Please note that the number of
        # "bearings" should be equal to the sum of the number of points in "origins" and
        # "destinations". If a route can approach a destination from any direction, the
        # bearing for that point can be specified as "0,180".
        sig { returns(T.nilable(String)) }
        attr_reader :bearings

        sig { params(bearings: String).void }
        attr_writer :bearings

        # Set which driving mode the service should use to determine the "distance" and
        # "duration" values. For example, if you use "car", the API will return the
        # duration and distance of a route that a car can take. Using "truck" will return
        # the same for a route a truck can use, taking into account appropriate truck
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
        # Please use the Distance Matrix Flexible version if you want to use custom truck
        # dimensions.
        #
        # Note: Only the "car" profile is enabled by default. Please note that customized
        # profiles (including "truck") might not be available for all regions. Please
        # contact your [NextBillion.ai](http://NextBillion.ai) account manager, sales
        # representative or reach out at
        # [support@nextbillion.ai](mailto:support@nextbillion.ai) in case you need
        # additional profiles.
        sig do
          returns(
            T.nilable(
              NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Mode::OrSymbol
            )
          )
        end
        attr_reader :mode

        sig do
          params(
            mode:
              NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Mode::OrSymbol
          ).void
        end
        attr_writer :mode

        # A prompt to modify the response in case no feasible route is available for a
        # given pair of origin and destination. When set to "true", a value of "-1" is
        # returned for those pairs in which:
        #
        # \- Either origin or the destination can not be snapped to a nearest road. Please
        # note that if all the origins and destinations in a request can't be snapped to
        # their nearest roads, a 4xx error is returned instead, as the entire request
        # failed.
        #
        # \- Both origin and destination can be snapped to the nearest road, but the
        # service can't find a valid route between them. However, a value of "0" is
        # returned if both the origin and destination are snapped to the same location.
        #
        # "false" is the default value. In this case, a "0" value is returned for all the
        # above cases. A 4xx error is returned, in this case as well, when all origins and
        # destinations in the request can't be snapped to their nearest road.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :route_failed_prompt

        sig { params(route_failed_prompt: T::Boolean).void }
        attr_writer :route_failed_prompt

        sig do
          params(
            destinations: String,
            key: String,
            origins: String,
            approaches:
              NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Approaches::OrSymbol,
            avoid:
              NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Avoid::OrSymbol,
            bearings: String,
            mode:
              NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Mode::OrSymbol,
            route_failed_prompt: T::Boolean,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # "destinations" are the ending coordinates of your route. Ensure that
          # "destinations" are routable land locations. Multiple "destinations" should be
          # separated by a pipe symbol "|".
          destinations:,
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # "origins" are the starting point of your route. Ensure that "origins" are
          # routable land locations. Multiple "origins" should be separated by a pipe symbol
          # "|".
          origins:,
          # A semicolon-separated list indicating the side of the road from which the route
          # will approach "destinations". When set to "unrestricted" a route can arrive at a
          # destination from either side of the road. When set to "curb" the route will
          # arrive at a destination on the driving side of the region. Please note the
          # number of values provided must be equal to the number of "destinations".
          # However, you can skip a coordinate and show its position in the list with the
          # ";" separator. The values provided for the "approaches" parameter are effective
          # for the "destinations" value at the same index. Example: "curb;;curb" will apply
          # curbside restriction on the "destinations" points provided at the first and
          # third index.
          approaches: nil,
          # Setting this will ensure the route avoids ferries, tolls, highways or nothing.
          # Multiple values should be separated by a pipe (|). If "none" is provided along
          # with other values, an error is returned as a valid route is not feasible. Please
          # note that when this parameter is not provided in the input, ferries are set to
          # be avoided by default. When this parameter is provided, only the mentioned
          # objects are avoided.
          avoid: nil,
          # Limits the search to segments with given bearing in degrees towards true north
          # in clockwise direction. Each "bearing" should be in the format of
          # "degree,range", where the "degree" should be a value between \[0, 360\] and
          # "range" should be a value between \[0, 180\]. Please note that the number of
          # "bearings" should be equal to the sum of the number of points in "origins" and
          # "destinations". If a route can approach a destination from any direction, the
          # bearing for that point can be specified as "0,180".
          bearings: nil,
          # Set which driving mode the service should use to determine the "distance" and
          # "duration" values. For example, if you use "car", the API will return the
          # duration and distance of a route that a car can take. Using "truck" will return
          # the same for a route a truck can use, taking into account appropriate truck
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
          # Please use the Distance Matrix Flexible version if you want to use custom truck
          # dimensions.
          #
          # Note: Only the "car" profile is enabled by default. Please note that customized
          # profiles (including "truck") might not be available for all regions. Please
          # contact your [NextBillion.ai](http://NextBillion.ai) account manager, sales
          # representative or reach out at
          # [support@nextbillion.ai](mailto:support@nextbillion.ai) in case you need
          # additional profiles.
          mode: nil,
          # A prompt to modify the response in case no feasible route is available for a
          # given pair of origin and destination. When set to "true", a value of "-1" is
          # returned for those pairs in which:
          #
          # \- Either origin or the destination can not be snapped to a nearest road. Please
          # note that if all the origins and destinations in a request can't be snapped to
          # their nearest roads, a 4xx error is returned instead, as the entire request
          # failed.
          #
          # \- Both origin and destination can be snapped to the nearest road, but the
          # service can't find a valid route between them. However, a value of "0" is
          # returned if both the origin and destination are snapped to the same location.
          #
          # "false" is the default value. In this case, a "0" value is returned for all the
          # above cases. A 4xx error is returned, in this case as well, when all origins and
          # destinations in the request can't be snapped to their nearest road.
          route_failed_prompt: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              destinations: String,
              key: String,
              origins: String,
              approaches:
                NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Approaches::OrSymbol,
              avoid:
                NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Avoid::OrSymbol,
              bearings: String,
              mode:
                NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Mode::OrSymbol,
              route_failed_prompt: T::Boolean,
              request_options: NextbillionSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        # A semicolon-separated list indicating the side of the road from which the route
        # will approach "destinations". When set to "unrestricted" a route can arrive at a
        # destination from either side of the road. When set to "curb" the route will
        # arrive at a destination on the driving side of the region. Please note the
        # number of values provided must be equal to the number of "destinations".
        # However, you can skip a coordinate and show its position in the list with the
        # ";" separator. The values provided for the "approaches" parameter are effective
        # for the "destinations" value at the same index. Example: "curb;;curb" will apply
        # curbside restriction on the "destinations" points provided at the first and
        # third index.
        module Approaches
          extend NextbillionSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Approaches
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UNRESTRICTED =
            T.let(
              :unrestricted,
              NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Approaches::TaggedSymbol
            )
          CURB =
            T.let(
              :curb,
              NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Approaches::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Approaches::TaggedSymbol
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
              T.all(
                Symbol,
                NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Avoid
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TOLL =
            T.let(
              :toll,
              NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Avoid::TaggedSymbol
            )
          FERRY =
            T.let(
              :ferry,
              NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Avoid::TaggedSymbol
            )
          HIGHWAY =
            T.let(
              :highway,
              NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Avoid::TaggedSymbol
            )
          NONE =
            T.let(
              :none,
              NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Avoid::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Avoid::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Set which driving mode the service should use to determine the "distance" and
        # "duration" values. For example, if you use "car", the API will return the
        # duration and distance of a route that a car can take. Using "truck" will return
        # the same for a route a truck can use, taking into account appropriate truck
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
        # Please use the Distance Matrix Flexible version if you want to use custom truck
        # dimensions.
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
              T.all(
                Symbol,
                NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Mode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CAR =
            T.let(
              :car,
              NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Mode::TaggedSymbol
            )
          TRUCK =
            T.let(
              :truck,
              NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Mode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                NextbillionSDK::DistanceMatrix::JsonRetrieveParams::Mode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
