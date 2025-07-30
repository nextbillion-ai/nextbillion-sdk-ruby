# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Navigation#retrieve_route
    class NavigationRetrieveRouteParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute altcount
      #   Sets the number of alternative routes to return. It is effective only when
      #   "alternatives" is "true". Please note that adding alternative route count does
      #   not guarantee matching number of routes to be returned if potential alternative
      #   routes do not exist.
      #
      #   @return [Integer, nil]
      optional :altcount, Integer

      # @!attribute alternatives
      #   When "true" the API will return alternate routes. The "alternatives" is
      #   effective only when there are no "waypoints" included in the request. You can
      #   set the number of alternate routes to be returned in the "altcount" property.
      #
      #   @return [Boolean, nil]
      optional :alternatives, Nextbillionai::Internal::Type::Boolean

      # @!attribute approaches
      #   A semicolon-separated list indicating the side of the road from which to
      #   approach "waypoints" in a requested route. When set to "unrestricted" a route
      #   can arrive at the waypoint from either side of the road and when set to "curb"
      #   the route will arrive at the waypoint on the driving side of the region. Please
      #   note the number of values provided must be one more than the number of
      #   "waypoints". The last value of "approaches" will determine the approach for the
      #   "destination". However, you can skip a coordinate and show its position in the
      #   list with the ";" separator.
      #
      #   @return [Symbol, Nextbillionai::Models::NavigationRetrieveRouteParams::Approaches, nil]
      optional :approaches, enum: -> { Nextbillionai::NavigationRetrieveRouteParams::Approaches }

      # @!attribute avoid
      #   Setting this will ensure the route avoids ferries, tolls, highways or nothing.
      #   Multiple values should be separated by a pipe (|). If "none" is provided along
      #   with other values, an error is returned as a valid route is not feasible. Please
      #   note that when this parameter is not provided in the input, ferries are set to
      #   be avoided by default. When this parameter is provided, only the mentioned
      #   objects are avoided.
      #
      #   @return [Symbol, Nextbillionai::Models::NavigationRetrieveRouteParams::Avoid, nil]
      optional :avoid, enum: -> { Nextbillionai::NavigationRetrieveRouteParams::Avoid }

      # @!attribute bearings
      #   Limits the search to road segments with given bearing, in degrees, towards true
      #   north in clockwise direction. Each "bearings" should be in the format of
      #   "degree,range", where the "degree" should be a value between \[0, 360\] and
      #   "range" should be a value between \[0, 180\]. Please note that the number of
      #   "bearings" should be two more than the number of "waypoints". This is to account
      #   for the bearing of "origin" and "destination". If a route can approach a
      #   "waypoint" or the "destination" from any direction, the bearing for that point
      #   can be specified as "0,180".
      #
      #   @return [String, nil]
      optional :bearings, String

      # @!attribute destination
      #   "destination" is the ending point of your route. Ensure that the "destination"
      #   is a routable land location. Please note that this parameter is mandatory if the
      #   "original_shape" parameter is not given.
      #
      #   @return [String, nil]
      optional :destination, String

      # @!attribute geometry
      #   Sets the output format of the route geometry in the response. On providing
      #   “polyline“ and “polyline6“ as input, respective encoded geometry is returned.
      #   However, when “geojson“ is provided as the input value, “polyline“ encoded
      #   geometry is returned in the response along with the geojson details of the
      #   route.
      #
      #   @return [Symbol, Nextbillionai::Models::NavigationRetrieveRouteParams::Geometry, nil]
      optional :geometry, enum: -> { Nextbillionai::NavigationRetrieveRouteParams::Geometry }

      # @!attribute lang
      #   Select the language to be used for result rendering from a list of
      #   [BCP 47](https://en.wikipedia.org/wiki/IETF_language_tag) compliant language
      #   codes.
      #
      #   @return [String, nil]
      optional :lang, String

      # @!attribute mode
      #   Set which driving mode the service should use to determine a route. For example,
      #   if you use "car", the API will return a route that a car can take. Using "truck"
      #   will return a route a truck can use, taking into account appropriate truck
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
      #   Please use the Navigation Flexible version if you want to use custom truck
      #   dimensions.
      #
      #   Note: Only the "car" profile is enabled by default. Please note that customized
      #   profiles (including "truck") might not be available for all regions. Please
      #   contact your [NextBillion.ai](http://NextBillion.ai) account manager, sales
      #   representative or reach out at
      #   [support@nextbillion.ai](mailto:support@nextbillion.ai) in case you need
      #   additional profiles.
      #
      #   @return [Symbol, Nextbillionai::Models::NavigationRetrieveRouteParams::Mode, nil]
      optional :mode, enum: -> { Nextbillionai::NavigationRetrieveRouteParams::Mode }

      # @!attribute origin
      #   "origin" is the starting point of your route. Ensure that "origin" is a routable
      #   land location. Please note that this parameter is mandatory if the geometry
      #   parameter is not given.
      #
      #   @return [String, nil]
      optional :origin, String

      # @!attribute original_shape
      #   Takes a route geometry as input and returns the navigation information for that
      #   route. Accepts "polyline" and "polyline6" encoded geometry as input.
      #   "original_shape_type" becomes mandatory when "original_shape" is used. If this
      #   parameter is provided, the only other parameters which will be considered are
      #   "original_shape_type", "lang", "geometry". The rest of the parameters in the
      #   input request will be ignored. Please note overview verbosity will always be
      #   "full" when using this parameter.
      #
      #   @return [String, nil]
      optional :original_shape, String

      # @!attribute original_shape_type
      #   Specify the encoding format of route geometry provided in the request using
      #   "original_shape" parameter. Please note that an error is returned when this
      #   parameter is not specified while an input is added to "original_shape"
      #   parameter.
      #
      #   @return [Symbol, Nextbillionai::Models::NavigationRetrieveRouteParams::OriginalShapeType, nil]
      optional :original_shape_type,
               enum: -> { Nextbillionai::NavigationRetrieveRouteParams::OriginalShapeType }

      # @!attribute overview
      #   Specify the verbosity of route geometry. When set to "full", the most detailed
      #   geometry available is returned. When set to "simplified", a simplified version
      #   of the full geometry is returned. No overview geometry is returned when set to
      #   "false".
      #
      #   @return [Symbol, Nextbillionai::Models::NavigationRetrieveRouteParams::Overview, nil]
      optional :overview, enum: -> { Nextbillionai::NavigationRetrieveRouteParams::Overview }

      # @!attribute waypoints
      #   "waypoints" are coordinates along the route between the "origin" and
      #   "destination". It is a pipe-separated list of coordinate pairs. Please note that
      #   the route returned will arrive at the "waypoints" in the sequence they are
      #   provided in the input request. Please note that the maximum number of waypoints
      #   that can be provided in a single request is 50 when using GET method and 200
      #   with POST method.
      #
      #   @return [String, nil]
      optional :waypoints, String

      # @!method initialize(key:, altcount: nil, alternatives: nil, approaches: nil, avoid: nil, bearings: nil, destination: nil, geometry: nil, lang: nil, mode: nil, origin: nil, original_shape: nil, original_shape_type: nil, overview: nil, waypoints: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::NavigationRetrieveRouteParams} for more details.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param altcount [Integer] Sets the number of alternative routes to return. It is effective only when "alte
      #
      #   @param alternatives [Boolean] When "true" the API will return alternate routes. The "alternatives" is effectiv
      #
      #   @param approaches [Symbol, Nextbillionai::Models::NavigationRetrieveRouteParams::Approaches] A semicolon-separated list indicating the side of the road from which to approac
      #
      #   @param avoid [Symbol, Nextbillionai::Models::NavigationRetrieveRouteParams::Avoid] Setting this will ensure the route avoids ferries, tolls, highways or nothing. M
      #
      #   @param bearings [String] Limits the search to road segments with given bearing, in degrees, towards true
      #
      #   @param destination [String] "destination" is the ending point of your route. Ensure that the "destination" i
      #
      #   @param geometry [Symbol, Nextbillionai::Models::NavigationRetrieveRouteParams::Geometry] Sets the output format of the route geometry in the response. On providing “poly
      #
      #   @param lang [String] Select the language to be used for result rendering from a list of [BCP 47](http
      #
      #   @param mode [Symbol, Nextbillionai::Models::NavigationRetrieveRouteParams::Mode] Set which driving mode the service should use to determine a route. For example,
      #
      #   @param origin [String] "origin" is the starting point of your route. Ensure that "origin" is a routable
      #
      #   @param original_shape [String] Takes a route geometry as input and returns the navigation information for that
      #
      #   @param original_shape_type [Symbol, Nextbillionai::Models::NavigationRetrieveRouteParams::OriginalShapeType] Specify the encoding format of route geometry provided in the request using "ori
      #
      #   @param overview [Symbol, Nextbillionai::Models::NavigationRetrieveRouteParams::Overview] Specify the verbosity of route geometry. When set to "full", the most detailed g
      #
      #   @param waypoints [String] "waypoints" are coordinates along the route between the "origin" and "destinatio
      #
      #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

      # A semicolon-separated list indicating the side of the road from which to
      # approach "waypoints" in a requested route. When set to "unrestricted" a route
      # can arrive at the waypoint from either side of the road and when set to "curb"
      # the route will arrive at the waypoint on the driving side of the region. Please
      # note the number of values provided must be one more than the number of
      # "waypoints". The last value of "approaches" will determine the approach for the
      # "destination". However, you can skip a coordinate and show its position in the
      # list with the ";" separator.
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

      # Sets the output format of the route geometry in the response. On providing
      # “polyline“ and “polyline6“ as input, respective encoded geometry is returned.
      # However, when “geojson“ is provided as the input value, “polyline“ encoded
      # geometry is returned in the response along with the geojson details of the
      # route.
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
      # Please use the Navigation Flexible version if you want to use custom truck
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

      # Specify the encoding format of route geometry provided in the request using
      # "original_shape" parameter. Please note that an error is returned when this
      # parameter is not specified while an input is added to "original_shape"
      # parameter.
      module OriginalShapeType
        extend Nextbillionai::Internal::Type::Enum

        POLYLINE = :polyline
        POLYLINE6 = :polyline6

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Specify the verbosity of route geometry. When set to "full", the most detailed
      # geometry available is returned. When set to "simplified", a simplified version
      # of the full geometry is returned. No overview geometry is returned when set to
      # "false".
      module Overview
        extend Nextbillionai::Internal::Type::Enum

        FULL = :full
        SIMPLIFIED = :simplified
        FALSE = :false

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
