# typed: strong

module Nextbillionai
  module Resources
    class Navigation
      # Nextbillion.ai’s Navigation API is a service that computes a route between 2
      # places, and also returns detailed turn by turn instructions for the route.
      #
      # The Navigation API can be used as an input into your Navigation app.
      # Alternatively, you can directly use Nextbillion.ai’s Navigation SDK for a
      # complete turn by turn navigation experience.
      sig do
        params(
          key: String,
          altcount: Integer,
          alternatives: T::Boolean,
          approaches:
            Nextbillionai::NavigationRetrieveRouteParams::Approaches::OrSymbol,
          avoid: Nextbillionai::NavigationRetrieveRouteParams::Avoid::OrSymbol,
          bearings: String,
          destination: String,
          geometry:
            Nextbillionai::NavigationRetrieveRouteParams::Geometry::OrSymbol,
          lang: String,
          mode: Nextbillionai::NavigationRetrieveRouteParams::Mode::OrSymbol,
          origin: String,
          original_shape: String,
          original_shape_type:
            Nextbillionai::NavigationRetrieveRouteParams::OriginalShapeType::OrSymbol,
          overview:
            Nextbillionai::NavigationRetrieveRouteParams::Overview::OrSymbol,
          waypoints: String,
          request_options: Nextbillionai::RequestOptions::OrHash
        ).returns(Nextbillionai::Models::NavigationRetrieveRouteResponse)
      end
      def retrieve_route(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # Sets the number of alternative routes to return. It is effective only when
        # "alternatives" is "true". Please note that adding alternative route count does
        # not guarantee matching number of routes to be returned if potential alternative
        # routes do not exist.
        altcount: nil,
        # When "true" the API will return alternate routes. The "alternatives" is
        # effective only when there are no "waypoints" included in the request. You can
        # set the number of alternate routes to be returned in the "altcount" property.
        alternatives: nil,
        # A semicolon-separated list indicating the side of the road from which to
        # approach "waypoints" in a requested route. When set to "unrestricted" a route
        # can arrive at the waypoint from either side of the road and when set to "curb"
        # the route will arrive at the waypoint on the driving side of the region. Please
        # note the number of values provided must be one more than the number of
        # "waypoints". The last value of "approaches" will determine the approach for the
        # "destination". However, you can skip a coordinate and show its position in the
        # list with the ";" separator.
        approaches: nil,
        # Setting this will ensure the route avoids ferries, tolls, highways or nothing.
        # Multiple values should be separated by a pipe (|). If "none" is provided along
        # with other values, an error is returned as a valid route is not feasible. Please
        # note that when this parameter is not provided in the input, ferries are set to
        # be avoided by default. When this parameter is provided, only the mentioned
        # objects are avoided.
        avoid: nil,
        # Limits the search to road segments with given bearing, in degrees, towards true
        # north in clockwise direction. Each "bearings" should be in the format of
        # "degree,range", where the "degree" should be a value between \[0, 360\] and
        # "range" should be a value between \[0, 180\]. Please note that the number of
        # "bearings" should be two more than the number of "waypoints". This is to account
        # for the bearing of "origin" and "destination". If a route can approach a
        # "waypoint" or the "destination" from any direction, the bearing for that point
        # can be specified as "0,180".
        bearings: nil,
        # "destination" is the ending point of your route. Ensure that the "destination"
        # is a routable land location. Please note that this parameter is mandatory if the
        # "original_shape" parameter is not given.
        destination: nil,
        # Sets the output format of the route geometry in the response. On providing
        # “polyline“ and “polyline6“ as input, respective encoded geometry is returned.
        # However, when “geojson“ is provided as the input value, “polyline“ encoded
        # geometry is returned in the response along with the geojson details of the
        # route.
        geometry: nil,
        # Select the language to be used for result rendering from a list of
        # [BCP 47](https://en.wikipedia.org/wiki/IETF_language_tag) compliant language
        # codes.
        lang: nil,
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
        mode: nil,
        # "origin" is the starting point of your route. Ensure that "origin" is a routable
        # land location. Please note that this parameter is mandatory if the geometry
        # parameter is not given.
        origin: nil,
        # Takes a route geometry as input and returns the navigation information for that
        # route. Accepts "polyline" and "polyline6" encoded geometry as input.
        # "original_shape_type" becomes mandatory when "original_shape" is used. If this
        # parameter is provided, the only other parameters which will be considered are
        # "original_shape_type", "lang", "geometry". The rest of the parameters in the
        # input request will be ignored. Please note overview verbosity will always be
        # "full" when using this parameter.
        original_shape: nil,
        # Specify the encoding format of route geometry provided in the request using
        # "original_shape" parameter. Please note that an error is returned when this
        # parameter is not specified while an input is added to "original_shape"
        # parameter.
        original_shape_type: nil,
        # Specify the verbosity of route geometry. When set to "full", the most detailed
        # geometry available is returned. When set to "simplified", a simplified version
        # of the full geometry is returned. No overview geometry is returned when set to
        # "false".
        overview: nil,
        # "waypoints" are coordinates along the route between the "origin" and
        # "destination". It is a pipe-separated list of coordinate pairs. Please note that
        # the route returned will arrive at the "waypoints" in the sequence they are
        # provided in the input request. Please note that the maximum number of waypoints
        # that can be provided in a single request is 50 when using GET method and 200
        # with POST method.
        waypoints: nil,
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
