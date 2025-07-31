# frozen_string_literal: true

module Nextbillionai
  module Models
    module DistanceMatrix
      # @see Nextbillionai::Resources::DistanceMatrix::Json#retrieve
      class JsonRetrieveParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        # @!attribute destinations
        #   "destinations" are the ending coordinates of your route. Ensure that
        #   "destinations" are routable land locations. Multiple "destinations" should be
        #   separated by a pipe symbol "|".
        #
        #   @return [String]
        required :destinations, String

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute origins
        #   "origins" are the starting point of your route. Ensure that "origins" are
        #   routable land locations. Multiple "origins" should be separated by a pipe symbol
        #   "|".
        #
        #   @return [String]
        required :origins, String

        # @!attribute approaches
        #   A semicolon-separated list indicating the side of the road from which the route
        #   will approach "destinations". When set to "unrestricted" a route can arrive at a
        #   destination from either side of the road. When set to "curb" the route will
        #   arrive at a destination on the driving side of the region. Please note the
        #   number of values provided must be equal to the number of "destinations".
        #   However, you can skip a coordinate and show its position in the list with the
        #   ";" separator. The values provided for the "approaches" parameter are effective
        #   for the "destinations" value at the same index. Example: "curb;;curb" will apply
        #   curbside restriction on the "destinations" points provided at the first and
        #   third index.
        #
        #   @return [Symbol, Nextbillionai::Models::DistanceMatrix::JsonRetrieveParams::Approaches, nil]
        optional :approaches, enum: -> { Nextbillionai::DistanceMatrix::JsonRetrieveParams::Approaches }

        # @!attribute avoid
        #   Setting this will ensure the route avoids ferries, tolls, highways or nothing.
        #   Multiple values should be separated by a pipe (|). If "none" is provided along
        #   with other values, an error is returned as a valid route is not feasible. Please
        #   note that when this parameter is not provided in the input, ferries are set to
        #   be avoided by default. When this parameter is provided, only the mentioned
        #   objects are avoided.
        #
        #   @return [Symbol, Nextbillionai::Models::DistanceMatrix::JsonRetrieveParams::Avoid, nil]
        optional :avoid, enum: -> { Nextbillionai::DistanceMatrix::JsonRetrieveParams::Avoid }

        # @!attribute bearings
        #   Limits the search to segments with given bearing in degrees towards true north
        #   in clockwise direction. Each "bearing" should be in the format of
        #   "degree,range", where the "degree" should be a value between \[0, 360\] and
        #   "range" should be a value between \[0, 180\]. Please note that the number of
        #   "bearings" should be equal to the sum of the number of points in "origins" and
        #   "destinations". If a route can approach a destination from any direction, the
        #   bearing for that point can be specified as "0,180".
        #
        #   @return [String, nil]
        optional :bearings, String

        # @!attribute mode
        #   Set which driving mode the service should use to determine the "distance" and
        #   "duration" values. For example, if you use "car", the API will return the
        #   duration and distance of a route that a car can take. Using "truck" will return
        #   the same for a route a truck can use, taking into account appropriate truck
        #   routing restrictions.
        #
        #   When "mode=truck", following are the default dimensions that are used:
        #
        #   \- truck_height = 214 centimeters
        #
        #   \- truck_width = 183 centimeters
        #
        #   \- truck_length = 519 centimeters
        #
        #   \- truck_weight = 5000 kg
        #
        #   Please use the Distance Matrix Flexible version if you want to use custom truck
        #   dimensions.
        #
        #   Note: Only the "car" profile is enabled by default. Please note that customized
        #   profiles (including "truck") might not be available for all regions. Please
        #   contact your [NextBillion.ai](http://NextBillion.ai) account manager, sales
        #   representative or reach out at
        #   [support@nextbillion.ai](mailto:support@nextbillion.ai) in case you need
        #   additional profiles.
        #
        #   @return [Symbol, Nextbillionai::Models::DistanceMatrix::JsonRetrieveParams::Mode, nil]
        optional :mode, enum: -> { Nextbillionai::DistanceMatrix::JsonRetrieveParams::Mode }

        # @!attribute route_failed_prompt
        #   A prompt to modify the response in case no feasible route is available for a
        #   given pair of origin and destination. When set to "true", a value of "-1" is
        #   returned for those pairs in which:
        #
        #   \- Either origin or the destination can not be snapped to a nearest road. Please
        #   note that if all the origins and destinations in a request can't be snapped to
        #   their nearest roads, a 4xx error is returned instead, as the entire request
        #   failed.
        #
        #   \- Both origin and destination can be snapped to the nearest road, but the
        #   service can't find a valid route between them. However, a value of "0" is
        #   returned if both the origin and destination are snapped to the same location.
        #
        #   "false" is the default value. In this case, a "0" value is returned for all the
        #   above cases. A 4xx error is returned, in this case as well, when all origins and
        #   destinations in the request can't be snapped to their nearest road.
        #
        #   @return [Boolean, nil]
        optional :route_failed_prompt, Nextbillionai::Internal::Type::Boolean

        # @!method initialize(destinations:, key:, origins:, approaches: nil, avoid: nil, bearings: nil, mode: nil, route_failed_prompt: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::DistanceMatrix::JsonRetrieveParams} for more details.
        #
        #   @param destinations [String] "destinations" are the ending coordinates of your route. Ensure that "destinatio
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param origins [String] "origins" are the starting point of your route. Ensure that "origins" are routab
        #
        #   @param approaches [Symbol, Nextbillionai::Models::DistanceMatrix::JsonRetrieveParams::Approaches] A semicolon-separated list indicating the side of the road from which the route
        #
        #   @param avoid [Symbol, Nextbillionai::Models::DistanceMatrix::JsonRetrieveParams::Avoid] Setting this will ensure the route avoids ferries, tolls, highways or nothing. M
        #
        #   @param bearings [String] Limits the search to segments with given bearing in degrees towards true north i
        #
        #   @param mode [Symbol, Nextbillionai::Models::DistanceMatrix::JsonRetrieveParams::Mode] Set which driving mode the service should use to determine the "distance" and "d
        #
        #   @param route_failed_prompt [Boolean] A prompt to modify the response in case no feasible route is available for a giv
        #
        #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

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
          extend Nextbillionai::Internal::Type::Enum

          CAR = :car
          TRUCK = :truck

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
