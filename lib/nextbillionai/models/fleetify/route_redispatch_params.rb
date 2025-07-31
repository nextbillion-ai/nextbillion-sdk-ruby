# frozen_string_literal: true

module Nextbillionai
  module Models
    module Fleetify
      # @see Nextbillionai::Resources::Fleetify::Routes#redispatch
      class RouteRedispatchParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute operations
        #   A collection of objects with details of the steps to be modified. Each object
        #   corresponds to a single step.
        #
        #   @return [Array<Nextbillionai::Models::Fleetify::RouteRedispatchParams::Operation>]
        required :operations,
                 -> {
                   Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Fleetify::RouteRedispatchParams::Operation]
                 }

        # @!attribute distance
        #   Specify the distance of the route.
        #
        #   @return [Float, nil]
        optional :distance, Float

        # @!method initialize(key:, operations:, distance: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Fleetify::RouteRedispatchParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param operations [Array<Nextbillionai::Models::Fleetify::RouteRedispatchParams::Operation>] A collection of objects with details of the steps to be modified. Each object co
        #
        #   @param distance [Float] Specify the distance of the route.
        #
        #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

        class Operation < Nextbillionai::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Nextbillionai::Models::Fleetify::RouteRedispatchParams::Operation::Data]
          required :data, -> { Nextbillionai::Fleetify::RouteRedispatchParams::Operation::Data }

          # @!attribute operation
          #   Specify the type of operation to be performed for the step.
          #
          #   @return [Symbol, Nextbillionai::Models::Fleetify::RouteRedispatchParams::Operation::Operation]
          required :operation,
                   enum: -> {
                     Nextbillionai::Fleetify::RouteRedispatchParams::Operation::Operation
                   }

          # @!method initialize(data:, operation:)
          #   @param data [Nextbillionai::Models::Fleetify::RouteRedispatchParams::Operation::Data]
          #
          #   @param operation [Symbol, Nextbillionai::Models::Fleetify::RouteRedispatchParams::Operation::Operation] Specify the type of operation to be performed for the step.

          # @see Nextbillionai::Models::Fleetify::RouteRedispatchParams::Operation#data
          class Data < Nextbillionai::Internal::Type::BaseModel
            # @!attribute completion_mode
            #   Specify the mode of completion to be used for the step. Currently, following
            #   values are allowed:
            #
            #   - manual: Steps must be marked as completed manually through the Driver App.
            #   - geofence: Steps are marked as completed automatically based on the entry
            #     conditions and geofence specified.
            #   - geofence_manual_fallback: Steps will be marked as completed automatically
            #     based on geofence and entry condition configurations but there will also be a
            #     provision for manually updating the status in case, geofence detection fails.
            #
            #   @return [Symbol, Nextbillionai::Models::Fleetify::Routes::RouteStepCompletionMode, nil]
            optional :completion_mode, enum: -> { Nextbillionai::Fleetify::Routes::RouteStepCompletionMode }

            # @!attribute document_template_id
            #   Specify the ID of the document template to be used for collecting proof of
            #   completion for the step. It would be applied to step which not be bind to
            #   document template. Use the
            #   [Documents API](https://docs.nextbillion.ai/docs/dispatches/documents-api) to
            #   create, read and manage the document templates.
            #
            #   Please note that the document template ID can not be assigned to following step
            #   types - start, end, break, layover.
            #
            #   @return [String, nil]
            optional :document_template_id, String

            # @!attribute step
            #
            #   @return [Nextbillionai::Models::Fleetify::Routes::RouteStepsRequest, nil]
            optional :step, -> { Nextbillionai::Fleetify::Routes::RouteStepsRequest }

            # @!attribute step_id
            #   Specify the ID of the step to be updated or deleted. Either one of id or
            #   short_id of the step can be provided. This input will be ignored when operation:
            #   create .
            #
            #   @return [String, nil]
            optional :step_id, String

            # @!method initialize(completion_mode: nil, document_template_id: nil, step: nil, step_id: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Fleetify::RouteRedispatchParams::Operation::Data} for
            #   more details.
            #
            #   @param completion_mode [Symbol, Nextbillionai::Models::Fleetify::Routes::RouteStepCompletionMode] Specify the mode of completion to be used for the step. Currently, following val
            #
            #   @param document_template_id [String] Specify the ID of the document template to be used for collecting proof of compl
            #
            #   @param step [Nextbillionai::Models::Fleetify::Routes::RouteStepsRequest]
            #
            #   @param step_id [String] Specify the ID of the step to be updated or deleted. Either one of id or short_i
          end

          # Specify the type of operation to be performed for the step.
          #
          # @see Nextbillionai::Models::Fleetify::RouteRedispatchParams::Operation#operation
          module Operation
            extend Nextbillionai::Internal::Type::Enum

            CREATE = :create
            UPDATE = :update
            DELETE = :delete

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
