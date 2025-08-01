# frozen_string_literal: true

module Nextbillionai
  module Models
    module Fleetify
      # @see Nextbillionai::Resources::Fleetify::Routes#create
      class RouteCreateParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute driver_email
        #   Specify the e-mail address of the driver who should receive the route. The
        #   e-mail address must be registered in
        #   [NextBillion.ai Cloud Console](https://console.nextbillion.ai/).
        #
        #   @return [String]
        required :driver_email, String

        # @!attribute steps
        #   An array of objects to collect the details about the intermediate steps in the
        #   route to be dispatched. Each object corresponds to a single step. The array must
        #   begin with a start-type step and end with an end-type step, to form a valid
        #   route.
        #
        #   @return [Array<Nextbillionai::Models::Fleetify::Routes::RouteStepsRequest>]
        required :steps,
                 -> {
                   Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Fleetify::Routes::RouteStepsRequest]
                 }

        # @!attribute distance
        #   Specify the total distance, in meters, for an informative display in Driver's
        #   app. The distance specified here has no effect on the actual route that the
        #   service generates.
        #
        #   @return [Integer, nil]
        optional :distance, Integer

        # @!attribute document_template_id
        #   Specify the ID of the document template that should be used to collect proof of
        #   completion for all steps in the route. In order to complete each route step, the
        #   driver will need to submit a form generated by the rules defined in the given
        #   document template. Use the
        #   [Documents API](https://docs.nextbillion.ai/docs/dispatches/documents-api) to
        #   create, read and manage document templates.
        #
        #   Please note that the document template ID assigned to a route does not apply to
        #   following step types - start, end, break, layover.
        #
        #   @return [String, nil]
        optional :document_template_id, String

        # @!attribute ro_request_id
        #   Specify the Route Optimization request ID. When this ID is provided, all other
        #   fields will be ignored (including the required fields) and the route
        #   optimization result will be used to form the routes and corresponding steps.
        #
        #   Please note that:
        #
        #   - The driver's email ID must be provided in input vehicle.metadata as user_email
        #     such that the route optimization result must contain a valid driver email,
        #     step's arrival time, etc., to make a successful dispatch.
        #   - Document Template for collecting proof of delivery or completion can not be
        #     specified when using this field to dispatch a route.
        #   - In case of an error at any part among the routes, the API will immediately
        #     return the error with the index of the specific route or route step.
        #   - On a successful dispatch, the API returns the last route, if there are many,
        #     in the response payload.
        #
        #   @return [String, nil]
        optional :ro_request_id, String

        # @!attribute routing
        #   The routing object allows defining the routing characteristics that should be
        #   used to generate a route when the Driver uses the in-app navigation. Only car
        #   mode is supported currently.
        #
        #   @return [Nextbillionai::Models::Fleetify::RouteCreateParams::Routing, nil]
        optional :routing, -> { Nextbillionai::Fleetify::RouteCreateParams::Routing }

        # @!method initialize(key:, driver_email:, steps:, distance: nil, document_template_id: nil, ro_request_id: nil, routing: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Fleetify::RouteCreateParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param driver_email [String] Specify the e-mail address of the driver who should receive the route. The e-mai
        #
        #   @param steps [Array<Nextbillionai::Models::Fleetify::Routes::RouteStepsRequest>] An array of objects to collect the details about the intermediate steps in the r
        #
        #   @param distance [Integer] Specify the total distance, in meters, for an informative display in Driver's ap
        #
        #   @param document_template_id [String] Specify the ID of the document template that should be used to collect proof of
        #
        #   @param ro_request_id [String] Specify the Route Optimization request ID. When this ID is provided, all other f
        #
        #   @param routing [Nextbillionai::Models::Fleetify::RouteCreateParams::Routing] The routing object allows defining the routing characteristics that should be us
        #
        #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

        class Routing < Nextbillionai::Internal::Type::BaseModel
          # @!attribute approaches
          #   Specify the side of the road from which the route should approach the step
          #   location. When set to unrestricted a route can arrive at the step location from
          #   either side of the road and when set to curb the route will arrive at the step
          #   location only from the driving side of the region. Use a semi-colon ; to specify
          #   approach configurations for multiple steps.
          #
          #   @return [Symbol, Nextbillionai::Models::Fleetify::RouteCreateParams::Routing::Approaches, nil]
          optional :approaches, enum: -> { Nextbillionai::Fleetify::RouteCreateParams::Routing::Approaches }

          # @!attribute avoid
          #   Setting this will ensure the generated route avoids the object(s) specified in
          #   the input. Multiple values should be separated by a pipe (|). If none is
          #   provided along with other values, an error is returned as a valid route is not
          #   feasible.
          #
          #   @return [Symbol, Nextbillionai::Models::Fleetify::RouteCreateParams::Routing::Avoid, nil]
          optional :avoid, enum: -> { Nextbillionai::Fleetify::RouteCreateParams::Routing::Avoid }

          # @!attribute hazmat_type
          #   Specify the type of hazardous material being carried and the dispatch service
          #   will avoid roads which are not suitable for the type of goods specified.
          #   Multiple values can be separated using a pipe operator | .
          #
          #   Please note that this parameter is effective only when mode=truck.
          #
          #   @return [Symbol, Nextbillionai::Models::Fleetify::RouteCreateParams::Routing::HazmatType, nil]
          optional :hazmat_type, enum: -> { Nextbillionai::Fleetify::RouteCreateParams::Routing::HazmatType }

          # @!attribute mode
          #   Specify the driving mode that the service should use to determine a route
          #
          #   @return [Symbol, Nextbillionai::Models::Fleetify::RouteCreateParams::Routing::Mode, nil]
          optional :mode, enum: -> { Nextbillionai::Fleetify::RouteCreateParams::Routing::Mode }

          # @!attribute truck_axle_load
          #   Specify the total load per axle (including the weight of trailers and shipped
          #   goods) of the truck, in tonnes. When specified, the dispatched route uses only
          #   those roads which can be used by a truck to carry the specified load per axle.
          #
          #   Please note this parameter is effective only when mode=truck.
          #
          #   @return [Integer, nil]
          optional :truck_axle_load, Integer

          # @!attribute truck_size
          #   Specify the dimensions of a truck, in centimeters (cm), in the format of
          #   <height, width, length>. When specified, the dispatched route uses only those
          #   roads which allow trucks with specified dimensions.
          #
          #   Please note this parameter is effective only when mode=truck. Also, the maximum
          #   dimensions that can be specified are as follows:
          #
          #   Height = 1000 cm
          #   Width = 5000 cm
          #   Length = 5000 cm
          #
          #   @return [String, nil]
          optional :truck_size, String

          # @!attribute truck_weight
          #   Specify the weight of the truck, including trailers and shipped goods, in
          #   kilograms (kg). When specified, the dispatched route uses only those roads which
          #   allow trucks with specified weight.
          #
          #   Please note this parameter is effective only when mode=truck. Also, the maximum
          #   weight that can be specified for a truck is 100,000 kgs.
          #
          #   @return [Integer, nil]
          optional :truck_weight, Integer

          # @!method initialize(approaches: nil, avoid: nil, hazmat_type: nil, mode: nil, truck_axle_load: nil, truck_size: nil, truck_weight: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Fleetify::RouteCreateParams::Routing} for more details.
          #
          #   The routing object allows defining the routing characteristics that should be
          #   used to generate a route when the Driver uses the in-app navigation. Only car
          #   mode is supported currently.
          #
          #   @param approaches [Symbol, Nextbillionai::Models::Fleetify::RouteCreateParams::Routing::Approaches] Specify the side of the road from which the route should approach the step locat
          #
          #   @param avoid [Symbol, Nextbillionai::Models::Fleetify::RouteCreateParams::Routing::Avoid] Setting this will ensure the generated route avoids the object(s) specified in t
          #
          #   @param hazmat_type [Symbol, Nextbillionai::Models::Fleetify::RouteCreateParams::Routing::HazmatType] Specify the type of hazardous material being carried and the dispatch service wi
          #
          #   @param mode [Symbol, Nextbillionai::Models::Fleetify::RouteCreateParams::Routing::Mode] Specify the driving mode that the service should use to determine a route
          #
          #   @param truck_axle_load [Integer] Specify the total load per axle (including the weight of trailers and shipped go
          #
          #   @param truck_size [String] Specify the dimensions of a truck, in centimeters (cm), in the format of <height
          #
          #   @param truck_weight [Integer] Specify the weight of the truck, including trailers and shipped goods, in kilogr

          # Specify the side of the road from which the route should approach the step
          # location. When set to unrestricted a route can arrive at the step location from
          # either side of the road and when set to curb the route will arrive at the step
          # location only from the driving side of the region. Use a semi-colon ; to specify
          # approach configurations for multiple steps.
          #
          # @see Nextbillionai::Models::Fleetify::RouteCreateParams::Routing#approaches
          module Approaches
            extend Nextbillionai::Internal::Type::Enum

            UNRESTRICTED = :unrestricted
            CURB = :curb

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Setting this will ensure the generated route avoids the object(s) specified in
          # the input. Multiple values should be separated by a pipe (|). If none is
          # provided along with other values, an error is returned as a valid route is not
          # feasible.
          #
          # @see Nextbillionai::Models::Fleetify::RouteCreateParams::Routing#avoid
          module Avoid
            extend Nextbillionai::Internal::Type::Enum

            TOLL = :toll
            HIGHWAY = :highway
            FERRY = :ferry
            SHARP_TURN = :sharp_turn
            UTURN = :uturn
            LEFT_TURN = :left_turn
            RIGHT_TURN = :right_turn
            SERVICE_ROAD = :service_road
            NONE = :none

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Specify the type of hazardous material being carried and the dispatch service
          # will avoid roads which are not suitable for the type of goods specified.
          # Multiple values can be separated using a pipe operator | .
          #
          # Please note that this parameter is effective only when mode=truck.
          #
          # @see Nextbillionai::Models::Fleetify::RouteCreateParams::Routing#hazmat_type
          module HazmatType
            extend Nextbillionai::Internal::Type::Enum

            GENERAL = :general
            CIRCUMSTANTIAL = :circumstantial
            EXPLOSIVE = :explosive
            HARMFUL_TO_WATER = :harmful_to_water

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Specify the driving mode that the service should use to determine a route
          #
          # @see Nextbillionai::Models::Fleetify::RouteCreateParams::Routing#mode
          module Mode
            extend Nextbillionai::Internal::Type::Enum

            CAR = :car

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
