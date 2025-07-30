# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::Mdm#create_distance_matrix
    class MdmCreateDistanceMatrixParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute option
      #   Use this option to switch to truck-specific routing or time based routing or if
      #   you want to choose between the fastest and shortest route types.
      #
      #   @return [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::Option]
      required :option, enum: -> { NextbillionSDK::MdmCreateDistanceMatrixParams::Option }

      # @!attribute origins
      #   origins are the starting point of your route. Ensure that origins are routable
      #   land locations. Multiple origins should be separated by a pipe symbol (|).
      #
      #   **Format:** latitude_1,longitude_1|latitude_2,longitude_2|…
      #
      #   @return [String]
      required :origins, String

      # @!attribute spliter
      #   Specify a spliter to split the matrix by. It accepts 2 values:
      #
      #   - od_number_spliter:
      #
      #   - straight_distance_spliter:
      #
      #   Please note it is an internal, debug field only.
      #
      #   _debug field. choose specific spliter to split matrix._
      #
      #   @return [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::Spliter, nil]
      optional :spliter, enum: -> { NextbillionSDK::MdmCreateDistanceMatrixParams::Spliter }

      # @!attribute area
      #   Provide the country that the coordinates belong to.
      #
      #   _the input coordinates area._
      #
      #   @return [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::Area, nil]
      optional :area, enum: -> { NextbillionSDK::MdmCreateDistanceMatrixParams::Area }

      # @!attribute avoid
      #   Setting this will ensure the route avoids the object(s) specified as input.
      #   Multiple values should be separated by a pipe (|). If none is provided along
      #   with other values, an error is returned as a valid route is not feasible.
      #
      #   - **Note:**
      #
      #     - This parameter is effective only when route_type=fastest.
      #     - When this parameter is not provided in the input, ferries are set to be
      #       avoided by default. When avoid input is provided, only the mentioned objects
      #       are avoided.
      #     - When using avoid=bbox users also need to specify the boundaries of the
      #       bounding box to be avoid. Multiple bounding boxes can be specified
      #       simultaneously. Please note that bounding box is a hard filter and if it
      #       blocks all possible routes between given locations, a 4xx error is returned.
      #
      #       - **Format:** bbox: min_latitude,min_longtitude,max_latitude,max_longitude.
      #       - **Example:** avoid=bbox: 34.0635,-118.2547, 34.0679,-118.2478 | bbox:
      #         34.0521,-118.2342, 34.0478,-118.2437
      #
      #     - When using avoid=sharp_turn, default range of permissible turn angles is
      #       \[120,240\].
      #
      #   @return [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::Avoid, nil]
      optional :avoid, enum: -> { NextbillionSDK::MdmCreateDistanceMatrixParams::Avoid }

      # @!attribute cross_border
      #   Specify if crossing an international border is expected for operations near
      #   border areas. When set to false, the API will prohibit routes going back & forth
      #   between countries. Consequently, routes within the same country will be
      #   preferred if they are feasible for the given set of destination or waypoints .
      #   When set to true, the routes will be allowed to go back & forth between
      #   countries as needed.
      #
      #   This feature is available in North America region only. Please get in touch with
      #   [support@nextbillion.ai](mailto:support@nextbillion.ai) to enquire/enable other
      #   areas.
      #
      #   @return [Boolean, nil]
      optional :cross_border, NextbillionSDK::Internal::Type::Boolean

      # @!attribute departure_time
      #   This is a number in UNIX epoch timestamp in seconds format that can be used to
      #   provide the departure time. The response will return the distance and duration
      #   of the route based on typical traffic for at the given start time.If no input is
      #   provided for this parameter then the traffic conditions at the time of making
      #   the request are considered.
      #
      #   Please note that when route_type is set to shortest then the departure_time will
      #   be ineffective as the service will return the result for the shortest path
      #   possible irrespective of the traffic conditions.
      #
      #   @return [Integer, nil]
      optional :departure_time, Integer

      # @!attribute destinations
      #   destinations are the ending coordinates of your route. Ensure that destinations
      #   are routable land locations. Multiple destinations should be separated by a pipe
      #   symbol (|).
      #
      #   In case destinations are not provided or if it is left empty, then the input
      #   value of origins will be copied to destinations to create the OD matrix pairs.
      #
      #   **Format:** latitude_1,longitude_1|latitude_2,longitude_2|…
      #
      #   @return [String, nil]
      optional :destinations, String

      # @!attribute destinations_approach
      #   Specify the side of the road from which to approach destinations points. Please
      #   note that the given approach will be applied to all the destinations.
      #
      #   @return [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::DestinationsApproach, nil]
      optional :destinations_approach,
               enum: -> { NextbillionSDK::MdmCreateDistanceMatrixParams::DestinationsApproach }

      # @!attribute hazmat_type
      #   Specify the type of hazardous material being carried and the service will avoid
      #   roads which are not suitable for the type of goods specified. Multiple values
      #   can be separated using a pipe operator | .
      #
      #   Please note that this parameter is effective only when mode=truck.
      #
      #   @return [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::HazmatType, nil]
      optional :hazmat_type, enum: -> { NextbillionSDK::MdmCreateDistanceMatrixParams::HazmatType }

      # @!attribute mode
      #   Set which driving mode the service should use to determine a route.
      #
      #   For example, if you use car, the API will return a route that a car can take.
      #   Using truck will return a route a truck can use, taking into account appropriate
      #   truck routing restrictions.
      #
      #   @return [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::Mode, nil]
      optional :mode, enum: -> { NextbillionSDK::MdmCreateDistanceMatrixParams::Mode }

      # @!attribute origins_approach
      #   Specify the side of the road from which to approach origins points. Please note
      #   that the given approach will be applied to all the points provided as origins.
      #
      #   @return [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::OriginsApproach, nil]
      optional :origins_approach, enum: -> { NextbillionSDK::MdmCreateDistanceMatrixParams::OriginsApproach }

      # @!attribute route_type
      #   Set the route type that needs to be returned. Please note that route_type is
      #   effective only when option=flexible.
      #
      #   @return [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::RouteType, nil]
      optional :route_type, enum: -> { NextbillionSDK::MdmCreateDistanceMatrixParams::RouteType }

      # @!attribute truck_axle_load
      #   Specify the total load per axle (including the weight of trailers and shipped
      #   goods) of the truck, in tonnes. When used, the service will return routes which
      #   are legally allowed to carry the load specified per axle.
      #
      #   Please note this parameter is effective only when mode=truck.
      #
      #   @return [Float, nil]
      optional :truck_axle_load, Float

      # @!attribute truck_size
      #   This defines the dimensions of a truck in centimeters (cm) in the format of
      #   "height,width,length". This parameter is effective only when mode=truck and
      #   option=flexible. Maximum dimensions are as follows:
      #
      #   Height = 1000 cm Width = 5000 cm Length = 5000 cm
      #
      #   @return [String, nil]
      optional :truck_size, String

      # @!attribute truck_weight
      #   This parameter defines the weight of the truck including trailers and shipped
      #   goods in kilograms (kg). This parameter is effective only when mode=truck and
      #   option=flexible.
      #
      #   @return [Integer, nil]
      optional :truck_weight, Integer

      # @!method initialize(key:, option:, origins:, spliter: nil, area: nil, avoid: nil, cross_border: nil, departure_time: nil, destinations: nil, destinations_approach: nil, hazmat_type: nil, mode: nil, origins_approach: nil, route_type: nil, truck_axle_load: nil, truck_size: nil, truck_weight: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::MdmCreateDistanceMatrixParams} for more details.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param option [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::Option] Use this option to switch to truck-specific routing or time based routing or if
      #
      #   @param origins [String] origins are the starting point of your route. Ensure that origins are routable l
      #
      #   @param spliter [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::Spliter] Specify a spliter to split the matrix by. It accepts 2 values:
      #
      #   @param area [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::Area] Provide the country that the coordinates belong to.
      #
      #   @param avoid [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::Avoid] Setting this will ensure the route avoids the object(s) specified as input. Mult
      #
      #   @param cross_border [Boolean] Specify if crossing an international border is expected for operations near bord
      #
      #   @param departure_time [Integer] This is a number in UNIX epoch timestamp in seconds format that can be used to p
      #
      #   @param destinations [String] destinations are the ending coordinates of your route. Ensure that destinations
      #
      #   @param destinations_approach [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::DestinationsApproach] Specify the side of the road from which to approach destinations points. Please
      #
      #   @param hazmat_type [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::HazmatType] Specify the type of hazardous material being carried and the service will avoid
      #
      #   @param mode [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::Mode] Set which driving mode the service should use to determine a route.
      #
      #   @param origins_approach [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::OriginsApproach] Specify the side of the road from which to approach origins points. Please note
      #
      #   @param route_type [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::RouteType] Set the route type that needs to be returned. Please note that route_type is eff
      #
      #   @param truck_axle_load [Float] Specify the total load per axle (including the weight of trailers and shipped go
      #
      #   @param truck_size [String] This defines the dimensions of a truck in centimeters (cm) in the format of "hei
      #
      #   @param truck_weight [Integer] This parameter defines the weight of the truck including trailers and shipped go
      #
      #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]

      # Use this option to switch to truck-specific routing or time based routing or if
      # you want to choose between the fastest and shortest route types.
      module Option
        extend NextbillionSDK::Internal::Type::Enum

        FLEXIBLE = :flexible

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Specify a spliter to split the matrix by. It accepts 2 values:
      #
      # - od_number_spliter:
      #
      # - straight_distance_spliter:
      #
      # Please note it is an internal, debug field only.
      #
      # _debug field. choose specific spliter to split matrix._
      module Spliter
        extend NextbillionSDK::Internal::Type::Enum

        OD_NUMBER_SPLITER = :od_number_spliter
        STRAIGHT_DISTANCE_SPLITER = :straight_distance_spliter
        LOCATION_SPLITER = :location_spliter

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Provide the country that the coordinates belong to.
      #
      # _the input coordinates area._
      module Area
        extend NextbillionSDK::Internal::Type::Enum

        SINGAPORE = :singapore
        USA = :usa
        INDIA = :india

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Setting this will ensure the route avoids the object(s) specified as input.
      # Multiple values should be separated by a pipe (|). If none is provided along
      # with other values, an error is returned as a valid route is not feasible.
      #
      # - **Note:**
      #
      #   - This parameter is effective only when route_type=fastest.
      #   - When this parameter is not provided in the input, ferries are set to be
      #     avoided by default. When avoid input is provided, only the mentioned objects
      #     are avoided.
      #   - When using avoid=bbox users also need to specify the boundaries of the
      #     bounding box to be avoid. Multiple bounding boxes can be specified
      #     simultaneously. Please note that bounding box is a hard filter and if it
      #     blocks all possible routes between given locations, a 4xx error is returned.
      #
      #     - **Format:** bbox: min_latitude,min_longtitude,max_latitude,max_longitude.
      #     - **Example:** avoid=bbox: 34.0635,-118.2547, 34.0679,-118.2478 | bbox:
      #       34.0521,-118.2342, 34.0478,-118.2437
      #
      #   - When using avoid=sharp_turn, default range of permissible turn angles is
      #     \[120,240\].
      module Avoid
        extend NextbillionSDK::Internal::Type::Enum

        TOLL = :toll
        FERRY = :ferry
        HIGHWAY = :highway
        SHARP_TURN = :sharp_turn
        SERVICE_ROAD = :service_road
        BBOX = :bbox
        LEFT_TURN = :left_turn
        RIGHT_TURN = :right_turn
        NONE = :none

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Specify the side of the road from which to approach destinations points. Please
      # note that the given approach will be applied to all the destinations.
      module DestinationsApproach
        extend NextbillionSDK::Internal::Type::Enum

        UNRESTRICTED = :unrestricted
        CURB = :curb

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Specify the type of hazardous material being carried and the service will avoid
      # roads which are not suitable for the type of goods specified. Multiple values
      # can be separated using a pipe operator | .
      #
      # Please note that this parameter is effective only when mode=truck.
      module HazmatType
        extend NextbillionSDK::Internal::Type::Enum

        GENERAL = :general
        CIRCUMSTANTIAL = :circumstantial
        EXPLOSIVE = :explosive
        HARMFUL_TO_WATER = :harmful_to_water

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Set which driving mode the service should use to determine a route.
      #
      # For example, if you use car, the API will return a route that a car can take.
      # Using truck will return a route a truck can use, taking into account appropriate
      # truck routing restrictions.
      module Mode
        extend NextbillionSDK::Internal::Type::Enum

        CAR = :car
        TRUCK = :truck

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Specify the side of the road from which to approach origins points. Please note
      # that the given approach will be applied to all the points provided as origins.
      module OriginsApproach
        extend NextbillionSDK::Internal::Type::Enum

        UNRESTRICTED = :unrestricted
        CURB = :curb

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Set the route type that needs to be returned. Please note that route_type is
      # effective only when option=flexible.
      module RouteType
        extend NextbillionSDK::Internal::Type::Enum

        FASTEST = :fastest
        SHORTEST = :shortest

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
