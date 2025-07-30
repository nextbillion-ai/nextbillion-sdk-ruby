# frozen_string_literal: true

module Nextbillionai
  module Models
    module Fleetify
      # @see Nextbillionai::Resources::Fleetify::Routes#redispatch
      class RouteRedispatchResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute data
        #   An array of objects containing the details of each step in the dispatched route.
        #   Each object represents a single step.
        #
        #   @return [Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data, nil]
        optional :data, -> { Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data }

        # @!attribute message
        #   Returns the error message in case of a failed request. If the request is
        #   successful, this field is not present in the response.
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute status
        #   Returns the status code of the response.
        #
        #   @return [Integer, nil]
        optional :status, Integer

        # @!method initialize(data: nil, message: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Fleetify::RouteRedispatchResponse} for more details.
        #
        #   @param data [Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data] An array of objects containing the details of each step in the dispatched route.
        #
        #   @param message [String] Returns the error message in case of a failed request. If the request is success
        #
        #   @param status [Integer] Returns the status code of the response.

        # @see Nextbillionai::Models::Fleetify::RouteRedispatchResponse#data
        class Data < Nextbillionai::Internal::Type::BaseModel
          # @!attribute id
          #   Returns the unique ID of the route.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute completed_steps
          #   Returns the number of steps already completed in the route.
          #
          #   @return [Integer, nil]
          optional :completed_steps, Integer

          # @!attribute completion
          #   Returns the completion status of the route.
          #
          #   @return [Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Completion, nil]
          optional :completion, -> { Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Completion }

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
          #   @return [Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Driver, nil]
          optional :driver, -> { Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Driver }

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
          #   Returns a shorter unique ID of the route for easier referencing and displaying
          #   purposes.
          #
          #   @return [String, nil]
          optional :short_id, String

          # @!attribute steps
          #
          #   @return [Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps, nil]
          optional :steps, -> { Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps }

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

          # @!method initialize(id: nil, completed_steps: nil, completion: nil, created_at: nil, distance: nil, document_snapshot: nil, driver: nil, ro_request_id: nil, routing: nil, short_id: nil, steps: nil, total_steps: nil, updated_at: nil, vehicle_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data} for more
          #   details.
          #
          #   An array of objects containing the details of each step in the dispatched route.
          #   Each object represents a single step.
          #
          #   @param id [String] Returns the unique ID of the route.
          #
          #   @param completed_steps [Integer] Returns the number of steps already completed in the route.
          #
          #   @param completion [Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Completion] Returns the completion status of the route.
          #
          #   @param created_at [Integer] Returns the UNIX timestamp, in seconds precision, at which this route dispatch r
          #
          #   @param distance [Integer] Returns the total route distance, in meters, for informative display in the driv
          #
          #   @param document_snapshot [Array<Object>] Returns the details of the document that was specified in the input for collecti
          #
          #   @param driver [Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Driver] An object returning the details of the driver to whom the route was dispatched.
          #
          #   @param ro_request_id [String] Returns the route optimization request ID which was used to dispatch the route.
          #
          #   @param routing [Nextbillionai::Models::Fleetify::RoutingResponse] An object returning the routing characteristics that are used to generate the ro
          #
          #   @param short_id [String] Returns a shorter unique ID of the route for easier referencing and displaying p
          #
          #   @param steps [Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps]
          #
          #   @param total_steps [Integer] Returns the total number of steps in the dispatched route.
          #
          #   @param updated_at [Integer] Returns the UNIX timestamp, in seconds precision, at which this route dispatch r
          #
          #   @param vehicle_id [String] Returns the ID of the vehicle to which the route was dispatched. The vehicle ID

          # @see Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data#completion
          class Completion < Nextbillionai::Internal::Type::BaseModel
            # @!attribute status
            #   Returns the status of the route. It can take one of the following values -
            #   "scheduled", "completed".
            #
            #   @return [Symbol, Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Completion::Status, nil]
            optional :status,
                     enum: -> { Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Completion::Status }

            # @!method initialize(status: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Completion} for
            #   more details.
            #
            #   Returns the completion status of the route.
            #
            #   @param status [Symbol, Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Completion::Status] Returns the status of the route. It can take one of the following values - "sche

            # Returns the status of the route. It can take one of the following values -
            # "scheduled", "completed".
            #
            # @see Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Completion#status
            module Status
              extend Nextbillionai::Internal::Type::Enum

              SCHEDULED = :"`scheduled`"
              COMPLETED = :"`completed`"

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data#driver
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
            #   {Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Driver} for
            #   more details.
            #
            #   An object returning the details of the driver to whom the route was dispatched.
            #
            #   @param id [String] Returns the ID of the driver as specified in the [NextBillion.ai](http://NextBil
            #
            #   @param email [String] Returns the email of the driver as specified in the [NextBillion.ai](http://Next
            #
            #   @param fullname [String] Returns the full name of the driver as specified in [NextBillion.ai](http://Next
          end

          # @see Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data#steps
          class Steps < Nextbillionai::Internal::Type::BaseModel
            # @!attribute id
            #   Returns the unique ID of the step.
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute address
            #   Returns the postal address where the step is executed. Its value is the same as
            #   that specified in the input request when configuring the step details.
            #
            #   @return [String, nil]
            optional :address, String

            # @!attribute arrival
            #   Returns the scheduled arrival time of the driver at the step as an UNIX
            #   timestamp, in seconds precision. It is the same as that specified in the input
            #   request while configuring the step details.
            #
            #   The timestamp returned here is only for informative display on the driver's app
            #   and it does not impact or get affected by the route generated.
            #
            #   @return [Integer, nil]
            optional :arrival, Integer

            # @!attribute completion
            #   Returns the completion status of the step.
            #
            #   @return [Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps::Completion, nil]
            optional :completion,
                     -> { Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps::Completion }

            # @!attribute created_at
            #   Returns the UNIX timestamp, in seconds precision, at which this step was
            #   created.
            #
            #   @return [Integer, nil]
            optional :created_at, Integer

            # @!attribute document_snapshot
            #   Returns the details of the document that was used for collecting the proof of
            #   completion for the step. In case no document template ID was provided for the
            #   given step, then a `null` value is returned. Each object represents a new field
            #   in the document.
            #
            #   @return [Array<Object>, nil]
            optional :document_snapshot,
                     Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Internal::Type::Unknown]

            # @!attribute duration
            #   Returns the duration for `layover` or `break` type steps.
            #
            #   @return [Integer, nil]
            optional :duration, Integer

            # @!attribute location
            #   Returns the location coordinates where the step is executed.
            #
            #   @return [Array<Float>, nil]
            optional :location, Nextbillionai::Internal::Type::ArrayOf[Float]

            # @!attribute meta
            #   An object returning custom details about the step that were configured in the
            #   input request while configuring the step details. The information returned here
            #   will be available for display on the Driver's app under step details.
            #
            #   @return [Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps::Meta, nil]
            optional :meta, -> { Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps::Meta }

            # @!attribute short_id
            #   Returns a unique short ID of the step for easier referencing and displaying
            #   purposes.
            #
            #   @return [String, nil]
            optional :short_id, String

            # @!attribute type
            #   Returns the step type. It can belong to one of the following: `start`, `job` ,
            #   `pickup`, `delivery`, `break`, `layover` , and `end`. For any given step, it
            #   would be the same as that specified in the input request while configuring the
            #   step details.
            #
            #   @return [String, nil]
            optional :type, String

            # @!attribute updated_at
            #   Returns the UNIX timestamp, in seconds precision, at which this step was last
            #   updated.
            #
            #   @return [Integer, nil]
            optional :updated_at, Integer

            # @!method initialize(id: nil, address: nil, arrival: nil, completion: nil, created_at: nil, document_snapshot: nil, duration: nil, location: nil, meta: nil, short_id: nil, type: nil, updated_at: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps} for more
            #   details.
            #
            #   @param id [String] Returns the unique ID of the step.
            #
            #   @param address [String] Returns the postal address where the step is executed. Its value is the same as
            #
            #   @param arrival [Integer] Returns the scheduled arrival time of the driver at the step as an UNIX timestam
            #
            #   @param completion [Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps::Completion] Returns the completion status of the step.
            #
            #   @param created_at [Integer] Returns the UNIX timestamp, in seconds precision, at which this step was created
            #
            #   @param document_snapshot [Array<Object>] Returns the details of the document that was used for collecting the proof of co
            #
            #   @param duration [Integer] Returns the duration for `layover` or `break` type steps.
            #
            #   @param location [Array<Float>] Returns the location coordinates where the step is executed.
            #
            #   @param meta [Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps::Meta] An object returning custom details about the step that were configured in the in
            #
            #   @param short_id [String] Returns a unique short ID of the step for easier referencing and displaying purp
            #
            #   @param type [String] Returns the step type. It can belong to one of the following: `start`, `job` , `
            #
            #   @param updated_at [Integer] Returns the UNIX timestamp, in seconds precision, at which this step was last up

            # @see Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps#completion
            class Completion < Nextbillionai::Internal::Type::BaseModel
              # @!attribute status
              #   Returns the status of the step. It can take one of the following values -
              #   "scheduled", "completed".
              #
              #   @return [String, nil]
              optional :status, String

              # @!method initialize(status: nil)
              #   Some parameter documentations has been truncated, see
              #   {Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps::Completion}
              #   for more details.
              #
              #   Returns the completion status of the step.
              #
              #   @param status [String] Returns the status of the step. It can take one of the following values - "sched
            end

            # @see Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps#meta
            class Meta < Nextbillionai::Internal::Type::BaseModel
              # @!attribute customer_name
              #   Returns the customer name associated with the step. It can configured in the
              #   input request using the `metadata` attribute of the step.
              #
              #   @return [String, nil]
              optional :customer_name, String

              # @!attribute customer_phone_number
              #   Returns the customer's phone number associated with the step. It can configured
              #   in the input request using the `metadata` attribute of the step.
              #
              #   @return [String, nil]
              optional :customer_phone_number, String

              # @!attribute instructions
              #   Returns the custom instructions to carry out while performing the task. These
              #   instructions can be provided at the time of configuring the step details in the
              #   input request.
              #
              #   @return [String, nil]
              optional :instructions, String

              # @!method initialize(customer_name: nil, customer_phone_number: nil, instructions: nil)
              #   Some parameter documentations has been truncated, see
              #   {Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps::Meta}
              #   for more details.
              #
              #   An object returning custom details about the step that were configured in the
              #   input request while configuring the step details. The information returned here
              #   will be available for display on the Driver's app under step details.
              #
              #   @param customer_name [String] Returns the customer name associated with the step. It can configured in the inp
              #
              #   @param customer_phone_number [String] Returns the customer's phone number associated with the step. It can configured
              #
              #   @param instructions [String] Returns the custom instructions to carry out while performing the task. These in
            end
          end
        end
      end
    end
  end
end
