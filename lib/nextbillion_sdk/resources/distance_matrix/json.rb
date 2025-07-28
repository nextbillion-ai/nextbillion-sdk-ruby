# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class DistanceMatrix
      class Json
        # asfd
        #
        # @overload create(request_options: {})
        #
        # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see NextbillionSDK::Models::DistanceMatrix::JsonCreateParams
        def create(params = {})
          @client.request(
            method: :post,
            path: "distancematrix/json",
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {NextbillionSDK::Models::DistanceMatrix::JsonRetrieveParams} for more details.
        #
        # Nextbillion.ai Distance Matrix API computes distances and ETAs between a set of
        # origins and destinations — could be for one-to-many or many-to-many scenarios.
        # The API call returns a matrix of ETAs and distances for each origin and
        # destination pair. For example, If the set is Origins {A,B} and Destinations
        # {C,D,E} we can get the following set of results with distance (meters) and time
        # (seconds) for each. The GET method can only handle up to 100 locations (1
        # location is either 1 origin or 1 destination).
        #
        # @overload retrieve(destinations:, key:, origins:, approaches: nil, avoid: nil, bearings: nil, mode: nil, route_failed_prompt: nil, request_options: {})
        #
        # @param destinations [String] "destinations" are the ending coordinates of your route. Ensure that "destinatio
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param origins [String] "origins" are the starting point of your route. Ensure that "origins" are routab
        #
        # @param approaches [Symbol, NextbillionSDK::Models::DistanceMatrix::JsonRetrieveParams::Approaches] A semicolon-separated list indicating the side of the road from which the route
        #
        # @param avoid [Symbol, NextbillionSDK::Models::DistanceMatrix::JsonRetrieveParams::Avoid] Setting this will ensure the route avoids ferries, tolls, highways or nothing. M
        #
        # @param bearings [String] Limits the search to segments with given bearing in degrees towards true north i
        #
        # @param mode [Symbol, NextbillionSDK::Models::DistanceMatrix::JsonRetrieveParams::Mode] Set which driving mode the service should use to determine the "distance" and "d
        #
        # @param route_failed_prompt [Boolean] A prompt to modify the response in case no feasible route is available for a giv
        #
        # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [NextbillionSDK::Models::DistanceMatrix::JsonRetrieveResponse]
        #
        # @see NextbillionSDK::Models::DistanceMatrix::JsonRetrieveParams
        def retrieve(params)
          parsed, options = NextbillionSDK::DistanceMatrix::JsonRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: "distancematrix/json",
            query: parsed,
            model: NextbillionSDK::Models::DistanceMatrix::JsonRetrieveResponse,
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
end
