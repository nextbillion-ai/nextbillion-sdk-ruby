# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Fleetify
      class Routes
        # @return [Nextbillionai::Resources::Fleetify::Routes::Steps]
        attr_reader :steps

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Fleetify::RouteCreateParams} for more details.
        #
        # Dispatch a new route
        #
        # @overload create(key:, driver_email:, steps:, distance: nil, document_template_id: nil, ro_request_id: nil, routing: nil, request_options: {})
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param driver_email [String] Body param: Specify the e-mail address of the driver who should receive the rout
        #
        # @param steps [Array<Nextbillionai::Models::Fleetify::Routes::RouteStepsRequest>] Body param: An array of objects to collect the details about the intermediate st
        #
        # @param distance [Integer] Body param: Specify the total distance, in meters, for an informative display in
        #
        # @param document_template_id [String] Body param: Specify the ID of the document template that should be used to colle
        #
        # @param ro_request_id [String] Body param: Specify the Route Optimization request ID. When this ID is provided,
        #
        # @param routing [Nextbillionai::Models::Fleetify::RouteCreateParams::Routing] Body param: The `routing` object allows defining the routing characteristics tha
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Fleetify::RouteCreateResponse]
        #
        # @see Nextbillionai::Models::Fleetify::RouteCreateParams
        def create(params)
          parsed, options = Nextbillionai::Fleetify::RouteCreateParams.dump_request(params)
          query_params = [:key]
          @client.request(
            method: :post,
            path: "fleetify/routes",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: Nextbillionai::Models::Fleetify::RouteCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Fleetify::RouteRedispatchParams} for more details.
        #
        # Re-dispatch route
        #
        # @overload redispatch(route_id, key:, operations:, distance: nil, request_options: {})
        #
        # @param route_id [String] Path param: Provide the ID of a previously dispatched route which needs to be mo
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param operations [Array<Nextbillionai::Models::Fleetify::RouteRedispatchParams::Operation>] Body param: A collection of objects with details of the steps to be modified. Ea
        #
        # @param distance [Float] Body param: Specify the distance of the route.
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Fleetify::RouteRedispatchResponse]
        #
        # @see Nextbillionai::Models::Fleetify::RouteRedispatchParams
        def redispatch(route_id, params)
          parsed, options = Nextbillionai::Fleetify::RouteRedispatchParams.dump_request(params)
          query_params = [:key]
          @client.request(
            method: :post,
            path: ["fleetify/routes/%1$s/redispatch", route_id],
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: Nextbillionai::Models::Fleetify::RouteRedispatchResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Nextbillionai::Client]
        def initialize(client:)
          @client = client
          @steps = Nextbillionai::Resources::Fleetify::Routes::Steps.new(client: client)
        end
      end
    end
  end
end
