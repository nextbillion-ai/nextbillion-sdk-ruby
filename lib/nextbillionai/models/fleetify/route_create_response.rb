# frozen_string_literal: true

module Nextbillionai
  module Models
    module Fleetify
      # @see Nextbillionai::Resources::Fleetify::Routes#create
      class RouteCreateResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute data
        #   An array of objects containing the details of each step in the dispatched route.
        #   Each object represents a single step.
        #
        #   @return [Nextbillionai::Models::Fleetify::RouteCreateResponse::Data, nil]
        optional :data, -> { Nextbillionai::Models::Fleetify::RouteCreateResponse::Data }

        # @!attribute status
        #   Returns the status code of the response.
        #
        #   @return [Integer, nil]
        optional :status, Integer

        # @!method initialize(data: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Fleetify::RouteCreateResponse} for more details.
        #
        #   @param data [Nextbillionai::Models::Fleetify::RouteCreateResponse::Data] An array of objects containing the details of each step in the dispatched route.
        #
        #   @param status [Integer] Returns the status code of the response.

        # @see Nextbillionai::Models::Fleetify::RouteCreateResponse#data
        class Data < Nextbillionai::Internal::Type::BaseModel
          # @!attribute id
          #   Returns the unique ID of the dispatched route.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #   Returns the UNIX timestamp, in seconds precision, at which this route dispatch
          #   request was created.
          #
          #   @return [Integer, nil]
          optional :created_at, Integer

          # @!attribute distance
          #   Returns the total route distance, in meters, for informative display in the
          #   driver app. It is the same as the value provided for `distance` field in the
          #   input request.
          #
          #   @return [Integer, nil]
          optional :distance, Integer

          # @!attribute document_snapshot
          #   Returns the details of the document that was specified in the input for
          #   collecting the proof-of-completion for all steps in the dispatched routes. Each
          #   object represents a new field in the document.
          #
          #   @return [Array<Object>, nil]
          optional :document_snapshot,
                   Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Internal::Type::Unknown]

          # @!attribute driver
          #   An object returning the details of the driver to whom the route was dispatched.
          #
          #   @return [Nextbillionai::Models::Fleetify::RouteCreateResponse::Data::Driver, nil]
          optional :driver, -> { Nextbillionai::Models::Fleetify::RouteCreateResponse::Data::Driver }

          # @!attribute ro_request_id
          #   Returns the route optimization request ID which was used to dispatch the route.
          #   An empty string is returned if the corresponding input was not provided.
          #
          #   @return [String, nil]
          optional :ro_request_id, String

          # @!attribute routing
          #   An object returning the routing characteristics that are used to generate the
          #   route and turn-by-turn navigation steps for the dispatched route. The route and
          #   navigation steps are available when driver uses the in-app navigation.
          #
          #   Please note the routing characteristics returned here are the same as those
          #   configured in the input request. The fields which were not specified in the
          #   input will be returned as blanks.
          #
          #   @return [Nextbillionai::Models::Fleetify::RoutingResponse, nil]
          optional :routing, -> { Nextbillionai::Fleetify::RoutingResponse }

          # @!attribute short_id
          #   Returns a shorter unique ID of the dispatched route for easier referencing and
          #   displaying purposes.
          #
          #   @return [String, nil]
          optional :short_id, String

          # @!attribute steps
          #   An array of objects containing the details of all steps to be performed as part
          #   of the dispatched route. Each object represents a single step during the route.
          #
          #   @return [Array<Nextbillionai::Models::Fleetify::Routes::RouteStepsResponse>, nil]
          optional :steps,
                   -> {
                     Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Fleetify::Routes::RouteStepsResponse]
                   }

          # @!attribute total_steps
          #   Returns the total number of steps in the dispatched route.
          #
          #   @return [Integer, nil]
          optional :total_steps, Integer

          # @!attribute updated_at
          #   Returns the UNIX timestamp, in seconds precision, at which this route dispatch
          #   request was updated.
          #
          #   @return [Integer, nil]
          optional :updated_at, Integer

          # @!attribute vehicle_id
          #   Returns the ID of the vehicle to which the route was dispatched. The vehicle ID
          #   returned here is the same as the one used in the route optimization request for
          #   the given vehicle. An empty string is returned if the `ro_request_id` was not
          #   provided in the input.
          #
          #   @return [String, nil]
          optional :vehicle_id, String

          # @!method initialize(id: nil, created_at: nil, distance: nil, document_snapshot: nil, driver: nil, ro_request_id: nil, routing: nil, short_id: nil, steps: nil, total_steps: nil, updated_at: nil, vehicle_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Fleetify::RouteCreateResponse::Data} for more details.
          #
          #   An array of objects containing the details of each step in the dispatched route.
          #   Each object represents a single step.
          #
          #   @param id [String] Returns the unique ID of the dispatched route.
          #
          #   @param created_at [Integer] Returns the UNIX timestamp, in seconds precision, at which this route dispatch r
          #
          #   @param distance [Integer] Returns the total route distance, in meters, for informative display in the driv
          #
          #   @param document_snapshot [Array<Object>] Returns the details of the document that was specified in the input for collecti
          #
          #   @param driver [Nextbillionai::Models::Fleetify::RouteCreateResponse::Data::Driver] An object returning the details of the driver to whom the route was dispatched.
          #
          #   @param ro_request_id [String] Returns the route optimization request ID which was used to dispatch the route.
          #
          #   @param routing [Nextbillionai::Models::Fleetify::RoutingResponse] An object returning the routing characteristics that are used to generate the ro
          #
          #   @param short_id [String] Returns a shorter unique ID of the dispatched route for easier referencing and d
          #
          #   @param steps [Array<Nextbillionai::Models::Fleetify::Routes::RouteStepsResponse>] An array of objects containing the details of all steps to be performed as part
          #
          #   @param total_steps [Integer] Returns the total number of steps in the dispatched route.
          #
          #   @param updated_at [Integer] Returns the UNIX timestamp, in seconds precision, at which this route dispatch r
          #
          #   @param vehicle_id [String] Returns the ID of the vehicle to which the route was dispatched. The vehicle ID

          # @see Nextbillionai::Models::Fleetify::RouteCreateResponse::Data#driver
          class Driver < Nextbillionai::Internal::Type::BaseModel
            # @!attribute id
            #   Returns the ID of the driver as specified in the
            #   [NextBillion.ai](http://NextBillion.ai) Cloud Console.
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute email
            #   Returns the email of the driver as specified in the
            #   [NextBillion.ai](http://NextBillion.ai) Cloud Console.
            #
            #   @return [String, nil]
            optional :email, String

            # @!attribute fullname
            #   Returns the full name of the driver as specified in
            #   [NextBillion.ai](http://NextBillion.ai) Cloud Console.
            #
            #   @return [String, nil]
            optional :fullname, String

            # @!method initialize(id: nil, email: nil, fullname: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Fleetify::RouteCreateResponse::Data::Driver} for more
            #   details.
            #
            #   An object returning the details of the driver to whom the route was dispatched.
            #
            #   @param id [String] Returns the ID of the driver as specified in the [NextBillion.ai](http://NextBil
            #
            #   @param email [String] Returns the email of the driver as specified in the [NextBillion.ai](http://Next
            #
            #   @param fullname [String] Returns the full name of the driver as specified in [NextBillion.ai](http://Next
          end
        end
      end
    end
  end
end
