# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::Directions#compute_route
    class DirectionComputeRouteParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      # @!attribute destination
      #
      #   @return [String]
      required :destination, String

      # @!attribute origin
      #
      #   @return [String]
      required :origin, String

      # @!attribute altcount
      #   Sets the number of alternative routes to return. It is effective only when
      #   alternatives=true. Default to 3.
      #
      #   Please note that adding alternative route count does not guarantee matching
      #   number of routes to be returned if potential alternative routes do not exist.
      #
      #   @return [Integer, nil]
      optional :altcount, Integer

      # @!attribute alternatives
      #   When true the API will return alternate routes.
      #
      #   The alternatives is effective only when there are no waypoints included in the
      #   request.
      #
      #   You can set the number of alternate routes to be returned in the altcount
      #   property.
      #
      #   @return [Boolean, nil]
      optional :alternatives, NextbillionSDK::Internal::Type::Boolean

      # @!attribute approaches
      #   A semicolon-separated list indicating the side of the road from which to
      #   approach waypoints in a requested route.
      #
      #   When set to unrestricted a route can arrive at the waypoint from either side of
      #   the road and when set to curb the route will arrive at the waypoint on the
      #   driving side of the region.
      #
      #   Please note the number of values provided must be one more than the number of
      #   waypoints. The last value of approaches will determine the approach for the
      #   destination. However, you can skip a coordinate and show its position in the
      #   list with the ; separator.
      #
      #   @return [String, nil]
      optional :approaches, String

      # @!attribute avoid
      #   When option=fast (by default):
      #
      #   Setting this will ensure the route avoids ferries, tolls, highways or nothing.
      #   Multiple values should be separated by a pipe "|". If none is provided along
      #   with other values, an error is returned as a valid route is not feasible.
      #
      #   Please note that when this parameter is not provided in the input, ferries are
      #   set to be avoided by default. When this parameter is provided, only the
      #   mentioned objects are avoided.
      #
      #   When option=flexible:
      #
      #   Set this parameter to find alternative routes that bypass specified objects. Use
      #   a pipe "|" to separate multiple values. This is a flexible filter; if no
      #   alternative routes exist, the service will still provide a route that includes
      #   the objects. For a strict filter, consider using the exclude parameter.
      #
      #   \- This parameter is effective only when route_type=fastest.
      #   \- Following objects are exceptions to the flexible filtering behavior of avoid
      #   parameter: bbox, tunnel and geofence_id. When used, the service will return an
      #   error in case there are no alternative routes available.
      #   \- When using avoid=bbox users also need to specify the boundaries of the
      #   bounding box to be avoided. Multiple bounding boxes can be specified
      #   simultaneously. The perimeter of a bounding box can not exceed 500 KM. Format:
      #   bbox=min_latitude,min_longtitude,max_latitude,max_longitude. Example:
      #   avoid=bbox: 34.0635,-118.2547, 34.0679,-118.2478 | bbox: 34.0521,-118.2342,
      #   34.0478,-118.2437
      #   \- When using avoid=sharp_turn, default range of permissible turn angles is
      #   \[120,240\] in the clockwise direction from the current road. In order to
      #   override default range, please use turn_angle_range parameter.
      #   \- When using avoid=geofence_id, only the the geofences created using
      #   [NextBillion.ai](http://NextBillion.ai) Geofence API are valid.
      #   \- When this parameter is not provided in the input, ferry routes are set to be
      #   avoided by default. When this parameter is provided, only the mentioned
      #   object(s) are avoided.
      #   \- If none is provided along with other values, an error is returned as a valid
      #   route is not feasible.
      #
      #   @return [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::Avoid, nil]
      optional :avoid, enum: -> { NextbillionSDK::DirectionComputeRouteParams::Avoid }

      # @!attribute bearings
      #   Limits the search to road segments with given bearing, in degrees, towards true
      #   north in clockwise direction. Each bearings should be in the format of
      #   degree,range, where the degree should be a value between \[0, 360\] and range
      #   should be a value between \[0, 180\].
      #
      #   Please note that the number of bearings should be two more than the number of
      #   waypoints. This is to account for the bearing of origin and destination. If a
      #   route can approach a waypoint or the destination from any direction, the bearing
      #   for that point can be specified as "0,180".
      #
      #   @return [String, nil]
      optional :bearings, String

      # @!attribute cross_border
      #   Requires option=flexible.
      #
      #   Specify if crossing an international border is expected for operations near
      #   border areas. When set to false, the API will prohibit routes crossing the
      #   borders. When set to true, the service will return routes which cross the
      #   borders between countries, if required for the given set destination and
      #   waypoints.
      #
      #   This feature is available in North America region only. Please get in touch with
      #   [support@nextbillion.ai](mailto:support@nextbillion.ai) to enquire/enable other
      #   areas.
      #
      #   @return [Boolean, nil]
      optional :cross_border, NextbillionSDK::Internal::Type::Boolean

      # @!attribute departure_time
      #   Requires option=flexible.
      #
      #   Use this parameter to set a departure time, expressed as UNIX epoch timestamp in
      #   seconds, for calculating the isochrone contour. The response will consider the
      #   typical traffic conditions at the given time and return a contour which can be
      #   reached under those traffic conditions.
      #
      #   Please note that if no input is provided for this parameter then the traffic
      #   conditions at the time of making the request are considered.
      #
      #   @return [Integer, nil]
      optional :departure_time, Integer

      # @!attribute drive_time_limits
      #   Requires option=flexible.
      #
      #   An array of durations, in seconds, for which the driver can drive continuously
      #   before taking a rest. Multiple drive time limits can be separated by a comma
      #   character ",". After driving for the given duration the driver will take a rest
      #   for a fixed period, specified in rest_times . Once the rest duration is over,
      #   the subsequent driving duration starts and the process continues until all drive
      #   times and rest periods are exhausted or if the driver reaches the destination.
      #   This feature is useful in complying with Hours of Service regulations and
      #   calculates actual ETAs with regulated driving periods.
      #
      #   As an example, a drive_time_limits=\[500, 300\] means that driver can drive for
      #   500 seconds before the first rest period and then drive for another 300 seconds
      #   before taking a rest next time.
      #
      #   \- If the trip duration is smaller than the first input of drive_time_limits,
      #   then there will be no rest actions scheduled by the service.
      #   \- If the trip duration is larger than the scheduled time, then a "warning" is
      #   returned in the response - along with details of last leg of the trip - to
      #   indicate the same.
      #
      #   @return [String, nil]
      optional :drive_time_limits, String

      # @!attribute emission_class
      #   Requires option=flexible.
      #
      #   Specify the emission class to which the vehicle (engine) belongs to. The service
      #   will use this setting to generate routes that are permissible for that engine
      #   class. Only the emission classifications in the EU regions are supported
      #   currently. Please reach out to
      #   [support@nextbillion.ai](mailto:support@nextbillion.ai) to enable for your
      #   region.
      #
      #   @return [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::EmissionClass, nil]
      optional :emission_class, enum: -> { NextbillionSDK::DirectionComputeRouteParams::EmissionClass }

      # @!attribute exclude
      #   Requires option=flexible.
      #
      #   This parameter serves as a mandatory filter, ensuring the service returns only
      #   those routes that strictly avoid the object(s) indicated. Multiple values should
      #   be separated by a pipe `|`). If no routes can be found that exclude the
      #   specified object(s), the service will return an error. For a less strict
      #   filtering approach, consider using the avoid parameter.
      #
      #   \- This parameter is effective only when route_type=fastest.
      #   \- When using exclude=sharp_turn, default range of permissible turn angles is
      #   \[120,240\]. In order to override default range, please use turn_angle_range
      #   parameter.
      #   \- If none is provided along with other values, an error is returned as a valid
      #   route is not feasible.
      #
      #   @return [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::Exclude, nil]
      optional :exclude, enum: -> { NextbillionSDK::DirectionComputeRouteParams::Exclude }

      # @!attribute geometry
      #   Sets the output format of the route geometry in the response.
      #
      #   On providing polyline and polyline6 as input, respective encoded geometry is
      #   returned. However, when geojson is provided as the input value, polyline encoded
      #   geometry is returned in the response along with the geojson details of the
      #   route.
      #
      #   @return [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::Geometry, nil]
      optional :geometry, enum: -> { NextbillionSDK::DirectionComputeRouteParams::Geometry }

      # @!attribute hazmat_type
      #   Requires option=flexible.
      #
      #   Specify the type of hazardous material being carried and the service will avoid
      #   roads which are not suitable for the type of goods specified. Multiple values
      #   can be separated using a pipe operator "|".
      #
      #   Please note that this parameter is effective only when mode=truck.
      #
      #   @return [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::HazmatType, nil]
      optional :hazmat_type, enum: -> { NextbillionSDK::DirectionComputeRouteParams::HazmatType }

      # @!attribute mode
      #   Set the driving mode the service should use to determine a route. In "car" mode,
      #   the API will return a route that a car can take. Using "truck" mode will return
      #   a route a truck can use, taking into account appropriate truck routing
      #   restrictions.
      #
      #   When mode=truck, following are the default dimensions that are used:
      #
      #   \- truck_height = 214 centimeters
      #   \- truck_width = 183 centimeters
      #   \- truck_length = 519 centimeters
      #   \- truck_weight = 5000 kg
      #
      #   When option=flexible, you can use custom truck dimensions with truck_weight and
      #   truck_size parameters.
      #
      #   Note: Only the car profile is enabled by default. Please note that customized
      #   profiles (including truck) might not be available for all regions. Please
      #   contact your [NextBillion.ai](http://NextBillion.ai) account manager, sales
      #   representative or reach out at
      #   [support@nextbillion.ai](mailto:support@nextbillion.ai) in case you need
      #   additional profiles.
      #
      #   @return [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::Mode, nil]
      optional :mode, enum: -> { NextbillionSDK::DirectionComputeRouteParams::Mode }

      # @!attribute option
      #   The option parameter specifies the version of the directions service to use.
      #   Setting option=flexible activates the Flexible API, which supports advanced
      #   features like truck routing, time-based routing, route type selection
      #   (fastest/shortest), and segment-wise speed limits. If not set, the API defaults
      #   to the Fast version for real-time routing.
      #
      #   @return [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::Option, nil]
      optional :option, enum: -> { NextbillionSDK::DirectionComputeRouteParams::Option }

      # @!attribute overview
      #   Specify the verbosity of route geometry.
      #
      #   When set to full, the most detailed geometry available is returned. When set to
      #   simplified, a simplified version of the full geometry is returned. No overview
      #   geometry is returned when set to false.
      #
      #   @return [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::Overview, nil]
      optional :overview, enum: -> { NextbillionSDK::DirectionComputeRouteParams::Overview }

      # @!attribute rest_times
      #   Requires option=flexible.
      #
      #   An array of durations, in seconds, for which the driver should rest after
      #   completing the corresponding continuous driving interval (provided in
      #   drive_time_limits). Multiple rest times can be separated by a comma character
      #   ",". Ideally, the number of rest_times provided should be equal to the number of
      #   drive_time_limits provided for proper scheduling of driver breaks.
      #
      #   As an example, a rest_times=\[500, 300\] means that driver can rest for 500
      #   seconds after the first continuous driving session and rest for 300 seconds
      #   after the next continuous driving session.
      #
      #   \- If the number of rest_times provided are less than the number of
      #   drive_time_limits, the service will schedule a rest period of "0" seconds after
      #   each such drive time period which does not have a corresponding entry in
      #   rest_times.
      #   \- If the number of rest_times provided is more than the number of drive times
      #   provided, the additional rest times are never applied.
      #
      #   @return [String, nil]
      optional :rest_times, String

      # @!attribute road_info
      #   Requires option=flexible.
      #
      #   Use this parameter to receive additional information about the road segments
      #   returned in the response. Currently, following inputs are supported:
      #
      #   \- max_speed : segment-wise maximum speed information of roads in the
      #   response.
      #   \- toll_distance : returns the total distance travelled on the road segments
      #   having tolls.
      #   \- toll_cost: returns the range of toll charges, in local currency, that can be
      #   incurred for the suggested route.
      #
      #   @return [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::RoadInfo, nil]
      optional :road_info, enum: -> { NextbillionSDK::DirectionComputeRouteParams::RoadInfo }

      # @!attribute route_type
      #   Requires option=flexible.
      #
      #   Set the route type that needs to be returned.
      #
      #   @return [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::RouteType, nil]
      optional :route_type, enum: -> { NextbillionSDK::DirectionComputeRouteParams::RouteType }

      # @!attribute steps
      #   Set this to true to receive additional details about the routes and each of its
      #   legs (details of geometry, start & end locations) in the response.
      #
      #   @return [Boolean, nil]
      optional :steps, NextbillionSDK::Internal::Type::Boolean

      # @!attribute truck_axle_load
      #   Requires option=flexible.
      #
      #   Specify the total load per axle (including the weight of trailers and shipped
      #   goods) of the truck, in tonnes. When used, the service will return routes which
      #   are legally allowed to carry the load specified per axle.
      #
      #   Please note this parameter is effective only when mode=truck.
      #
      #   @return [Float, nil]
      optional :truck_axle_load, Float

      # @!attribute truck_size
      #   Requires option=flexible.
      #
      #   This defines the dimensions of a truck in centimeters (CM). This parameter is
      #   effective only when the mode=truck. Maximum dimensions are as follows:
      #
      #   \- Height = 1000 cm
      #   \- Width = 5000 cm
      #   \- Length = 5000 cm
      #
      #   @return [String, nil]
      optional :truck_size, String

      # @!attribute truck_weight
      #   Requires option=flexible.
      #
      #   This parameter defines the weight of the truck including trailers and shipped
      #   goods in kilograms (KG). This parameter is effective only when mode=truck.
      #
      #   @return [Integer, nil]
      optional :truck_weight, Integer

      # @!attribute turn_angle_range
      #   Requires option=flexible.
      #
      #   Specify the turn angles that can be taken safely by the vehicle. The permissible
      #   turn angles are calculated as \[0 + turn_angle_range , 360 - turn_angle_range\].
      #   Please note that this parameter is effective only when avoid=sharp_turn.
      #
      #   It is worth highlighting here that providing smaller angles might lead to 4xx
      #   errors as route engine might not be able find routes satisfying the smaller turn
      #   angle criteria for all turns in the route.
      #
      #   @return [Integer, nil]
      optional :turn_angle_range, Integer

      # @!attribute waypoints
      #   Pipe-separated list of coordinate pairs
      #
      #   @return [String, nil]
      optional :waypoints, String

      # @!method initialize(destination:, origin:, altcount: nil, alternatives: nil, approaches: nil, avoid: nil, bearings: nil, cross_border: nil, departure_time: nil, drive_time_limits: nil, emission_class: nil, exclude: nil, geometry: nil, hazmat_type: nil, mode: nil, option: nil, overview: nil, rest_times: nil, road_info: nil, route_type: nil, steps: nil, truck_axle_load: nil, truck_size: nil, truck_weight: nil, turn_angle_range: nil, waypoints: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::DirectionComputeRouteParams} for more details.
      #
      #   @param destination [String]
      #
      #   @param origin [String]
      #
      #   @param altcount [Integer] Sets the number of alternative routes to return. It is effective only when alter
      #
      #   @param alternatives [Boolean] When true the API will return alternate routes.
      #
      #   @param approaches [String] A semicolon-separated list indicating the side of the road from which to approac
      #
      #   @param avoid [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::Avoid] When option=fast (by default):
      #
      #   @param bearings [String] Limits the search to road segments with given bearing, in degrees, towards true
      #
      #   @param cross_border [Boolean] Requires option=flexible.
      #
      #   @param departure_time [Integer] Requires option=flexible.
      #
      #   @param drive_time_limits [String] Requires option=flexible.
      #
      #   @param emission_class [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::EmissionClass] Requires option=flexible.
      #
      #   @param exclude [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::Exclude] Requires option=flexible.
      #
      #   @param geometry [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::Geometry] Sets the output format of the route geometry in the response.
      #
      #   @param hazmat_type [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::HazmatType] Requires option=flexible.
      #
      #   @param mode [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::Mode] Set the driving mode the service should use to determine a route. In "car" mode,
      #
      #   @param option [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::Option] The option parameter specifies the version of the directions service to use. Set
      #
      #   @param overview [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::Overview] Specify the verbosity of route geometry.
      #
      #   @param rest_times [String] Requires option=flexible.
      #
      #   @param road_info [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::RoadInfo] Requires option=flexible.
      #
      #   @param route_type [Symbol, NextbillionSDK::Models::DirectionComputeRouteParams::RouteType] Requires option=flexible.
      #
      #   @param steps [Boolean] Set this to true to receive additional details about the routes and each of its
      #
      #   @param truck_axle_load [Float] Requires option=flexible.
      #
      #   @param truck_size [String] Requires option=flexible.
      #
      #   @param truck_weight [Integer] Requires option=flexible.
      #
      #   @param turn_angle_range [Integer] Requires option=flexible.
      #
      #   @param waypoints [String] Pipe-separated list of coordinate pairs
      #
      #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]

      # When option=fast (by default):
      #
      # Setting this will ensure the route avoids ferries, tolls, highways or nothing.
      # Multiple values should be separated by a pipe "|". If none is provided along
      # with other values, an error is returned as a valid route is not feasible.
      #
      # Please note that when this parameter is not provided in the input, ferries are
      # set to be avoided by default. When this parameter is provided, only the
      # mentioned objects are avoided.
      #
      # When option=flexible:
      #
      # Set this parameter to find alternative routes that bypass specified objects. Use
      # a pipe "|" to separate multiple values. This is a flexible filter; if no
      # alternative routes exist, the service will still provide a route that includes
      # the objects. For a strict filter, consider using the exclude parameter.
      #
      # \- This parameter is effective only when route_type=fastest.
      # \- Following objects are exceptions to the flexible filtering behavior of avoid
      # parameter: bbox, tunnel and geofence_id. When used, the service will return an
      # error in case there are no alternative routes available.
      # \- When using avoid=bbox users also need to specify the boundaries of the
      # bounding box to be avoided. Multiple bounding boxes can be specified
      # simultaneously. The perimeter of a bounding box can not exceed 500 KM. Format:
      # bbox=min_latitude,min_longtitude,max_latitude,max_longitude. Example:
      # avoid=bbox: 34.0635,-118.2547, 34.0679,-118.2478 | bbox: 34.0521,-118.2342,
      # 34.0478,-118.2437
      # \- When using avoid=sharp_turn, default range of permissible turn angles is
      # \[120,240\] in the clockwise direction from the current road. In order to
      # override default range, please use turn_angle_range parameter.
      # \- When using avoid=geofence_id, only the the geofences created using
      # [NextBillion.ai](http://NextBillion.ai) Geofence API are valid.
      # \- When this parameter is not provided in the input, ferry routes are set to be
      # avoided by default. When this parameter is provided, only the mentioned
      # object(s) are avoided.
      # \- If none is provided along with other values, an error is returned as a valid
      # route is not feasible.
      module Avoid
        extend NextbillionSDK::Internal::Type::Enum

        TOLL = :toll
        FERRY = :ferry
        HIGHWAY = :highway
        NONE = :none
        SHARP_TURN = :sharp_turn
        UTURN = :uturn
        SERVICE_ROAD = :service_road
        LEFT_TURN = :left_turn
        RIGHT_TURN = :right_turn
        BBOX = :bbox
        GEOFENCE_ID = :geofence_id
        TUNNEL = :tunnel

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Requires option=flexible.
      #
      # Specify the emission class to which the vehicle (engine) belongs to. The service
      # will use this setting to generate routes that are permissible for that engine
      # class. Only the emission classifications in the EU regions are supported
      # currently. Please reach out to
      # [support@nextbillion.ai](mailto:support@nextbillion.ai) to enable for your
      # region.
      module EmissionClass
        extend NextbillionSDK::Internal::Type::Enum

        EURO0 = :euro0
        EURO1 = :euro1
        EURO2 = :euro2
        EURO3 = :euro3
        EURO4 = :euro4
        EURO5 = :euro5
        EURO6 = :euro6
        EURO7 = :euro7
        EURO8 = :euro8
        EURO9 = :euro9

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Requires option=flexible.
      #
      # This parameter serves as a mandatory filter, ensuring the service returns only
      # those routes that strictly avoid the object(s) indicated. Multiple values should
      # be separated by a pipe `|`). If no routes can be found that exclude the
      # specified object(s), the service will return an error. For a less strict
      # filtering approach, consider using the avoid parameter.
      #
      # \- This parameter is effective only when route_type=fastest.
      # \- When using exclude=sharp_turn, default range of permissible turn angles is
      # \[120,240\]. In order to override default range, please use turn_angle_range
      # parameter.
      # \- If none is provided along with other values, an error is returned as a valid
      # route is not feasible.
      module Exclude
        extend NextbillionSDK::Internal::Type::Enum

        TOLL = :toll
        FERRY = :ferry
        HIGHWAY = :highway
        SERVICE_ROAD = :service_road
        UTURN = :uturn
        SHARP_TURN = :sharp_turn
        LEFT_TURN = :left_turn
        RIGHT_TURN = :right_turn
        NONE = :none

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sets the output format of the route geometry in the response.
      #
      # On providing polyline and polyline6 as input, respective encoded geometry is
      # returned. However, when geojson is provided as the input value, polyline encoded
      # geometry is returned in the response along with the geojson details of the
      # route.
      module Geometry
        extend NextbillionSDK::Internal::Type::Enum

        POLYLINE = :polyline
        POLYLINE6 = :polyline6
        GEOJSON = :geojson

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Requires option=flexible.
      #
      # Specify the type of hazardous material being carried and the service will avoid
      # roads which are not suitable for the type of goods specified. Multiple values
      # can be separated using a pipe operator "|".
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

      # Set the driving mode the service should use to determine a route. In "car" mode,
      # the API will return a route that a car can take. Using "truck" mode will return
      # a route a truck can use, taking into account appropriate truck routing
      # restrictions.
      #
      # When mode=truck, following are the default dimensions that are used:
      #
      # \- truck_height = 214 centimeters
      # \- truck_width = 183 centimeters
      # \- truck_length = 519 centimeters
      # \- truck_weight = 5000 kg
      #
      # When option=flexible, you can use custom truck dimensions with truck_weight and
      # truck_size parameters.
      #
      # Note: Only the car profile is enabled by default. Please note that customized
      # profiles (including truck) might not be available for all regions. Please
      # contact your [NextBillion.ai](http://NextBillion.ai) account manager, sales
      # representative or reach out at
      # [support@nextbillion.ai](mailto:support@nextbillion.ai) in case you need
      # additional profiles.
      module Mode
        extend NextbillionSDK::Internal::Type::Enum

        CAR = :car
        TRUCK = :truck

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The option parameter specifies the version of the directions service to use.
      # Setting option=flexible activates the Flexible API, which supports advanced
      # features like truck routing, time-based routing, route type selection
      # (fastest/shortest), and segment-wise speed limits. If not set, the API defaults
      # to the Fast version for real-time routing.
      module Option
        extend NextbillionSDK::Internal::Type::Enum

        FAST = :fast
        FLEXIBLE = :flexible

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Specify the verbosity of route geometry.
      #
      # When set to full, the most detailed geometry available is returned. When set to
      # simplified, a simplified version of the full geometry is returned. No overview
      # geometry is returned when set to false.
      module Overview
        extend NextbillionSDK::Internal::Type::Enum

        FULL = :full
        SIMPLIFIED = :simplified
        FALSE = :false

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Requires option=flexible.
      #
      # Use this parameter to receive additional information about the road segments
      # returned in the response. Currently, following inputs are supported:
      #
      # \- max_speed : segment-wise maximum speed information of roads in the
      # response.
      # \- toll_distance : returns the total distance travelled on the road segments
      # having tolls.
      # \- toll_cost: returns the range of toll charges, in local currency, that can be
      # incurred for the suggested route.
      module RoadInfo
        extend NextbillionSDK::Internal::Type::Enum

        MAX_SPEED = :max_speed
        TOLL_DISTANCE = :toll_distance
        TOLL_COST = :toll_cost

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Requires option=flexible.
      #
      # Set the route type that needs to be returned.
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
