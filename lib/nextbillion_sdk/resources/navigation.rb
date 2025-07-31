# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Navigation
      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::NavigationRetrieveRouteParams} for more details.
      #
      # Nextbillion.ai’s Navigation API is a service that computes a route between 2
      # places, and also returns detailed turn by turn instructions for the route.
      #
      # The Navigation API can be used as an input into your Navigation app.
      # Alternatively, you can directly use Nextbillion.ai’s Navigation SDK for a
      # complete turn by turn navigation experience.
      #
      # @overload retrieve_route(key:, altcount: nil, alternatives: nil, approaches: nil, avoid: nil, bearings: nil, destination: nil, geometry: nil, lang: nil, mode: nil, origin: nil, original_shape: nil, original_shape_type: nil, overview: nil, waypoints: nil, request_options: {})
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param altcount [Integer] Sets the number of alternative routes to return. It is effective only when "alte
      #
      # @param alternatives [Boolean] When "true" the API will return alternate routes. The "alternatives" is effectiv
      #
      # @param approaches [Symbol, NextbillionSDK::Models::NavigationRetrieveRouteParams::Approaches] A semicolon-separated list indicating the side of the road from which to approac
      #
      # @param avoid [Symbol, NextbillionSDK::Models::NavigationRetrieveRouteParams::Avoid] Setting this will ensure the route avoids ferries, tolls, highways or nothing. M
      #
      # @param bearings [String] Limits the search to road segments with given bearing, in degrees, towards true
      #
      # @param destination [String] "destination" is the ending point of your route. Ensure that the "destination" i
      #
      # @param geometry [Symbol, NextbillionSDK::Models::NavigationRetrieveRouteParams::Geometry] Sets the output format of the route geometry in the response. On providing “poly
      #
      # @param lang [String] Select the language to be used for result rendering from a list of [BCP 47](http
      #
      # @param mode [Symbol, NextbillionSDK::Models::NavigationRetrieveRouteParams::Mode] Set which driving mode the service should use to determine a route. For example,
      #
      # @param origin [String] "origin" is the starting point of your route. Ensure that "origin" is a routable
      #
      # @param original_shape [String] Takes a route geometry as input and returns the navigation information for that
      #
      # @param original_shape_type [Symbol, NextbillionSDK::Models::NavigationRetrieveRouteParams::OriginalShapeType] Specify the encoding format of route geometry provided in the request using "ori
      #
      # @param overview [Symbol, NextbillionSDK::Models::NavigationRetrieveRouteParams::Overview] Specify the verbosity of route geometry. When set to "full", the most detailed g
      #
      # @param waypoints [String] "waypoints" are coordinates along the route between the "origin" and "destinatio
      #
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [NextbillionSDK::Models::NavigationRetrieveRouteResponse]
      #
      # @see NextbillionSDK::Models::NavigationRetrieveRouteParams
      def retrieve_route(params)
        parsed, options = NextbillionSDK::NavigationRetrieveRouteParams.dump_request(params)
        @client.request(
          method: :get,
          path: "navigation/json",
          query: parsed,
          model: NextbillionSDK::Models::NavigationRetrieveRouteResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [NextbillionSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
