# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Fleetify
      module Routes
        # @see NextbillionSDK::Resources::Fleetify::Routes::Steps#update
        class StepUpdateParams < NextbillionSDK::Internal::Type::BaseModel
          extend NextbillionSDK::Internal::Type::RequestParameters::Converter
          include NextbillionSDK::Internal::Type::RequestParameters

          # @!attribute route_id
          #
          #   @return [String]
          required :route_id, String

          # @!attribute key
          #   A key is a unique identifier that is required to authenticate a request to the
          #   API.
          #
          #   @return [String]
          required :key, String

          # @!attribute arrival
          #   Specify the scheduled arrival time of the driver, as an UNIX timestamp in
          #   seconds, at the step. Please note that:
          #
          #   - Arrival time for each step should be equal to or greater than the previous
          #     step.
          #   - Past times can not be provided.
          #   - The time provided is used only for informative display on the driver app and
          #     it does not impact or get affected by the route generated.
          #
          #   @return [Integer]
          required :arrival, Integer

          # @!attribute position
          #   Specify the new position of the step. Provide a position different from the
          #   current position of the step to update sequence in which the step get completed.
          #
          #   @return [Integer]
          required :position, Integer

          # @!attribute address
          #   Specify the postal address for the step.
          #
          #   @return [String, nil]
          optional :address, String

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
          #   @return [Symbol, NextbillionSDK::Models::Fleetify::Routes::RouteStepCompletionMode, nil]
          optional :completion_mode, enum: -> { NextbillionSDK::Fleetify::Routes::RouteStepCompletionMode }

          # @!attribute document_template_id
          #   Update the ID of the document template to be used for collecting proof of
          #   completion for the step. If an empty string "" is provided, the current document
          #   template associated to the step will be removed.
          #
          #   @return [String, nil]
          optional :document_template_id, String

          # @!attribute duration
          #   Specify the duration of the layover or break type steps, in seconds. Please note
          #   it is mandatory when step type is either "layover" or "break".
          #
          #   @return [Integer, nil]
          optional :duration, Integer

          # @!attribute geofence_config
          #   Specify the configurations of the geofence which will be used to detect presence
          #   of the driver and complete the tasks automatically. Please note that this
          #   attribute is required when completion_mode is either "geofence" or
          #   "geofence_manual_fallback".
          #
          #   @return [NextbillionSDK::Models::Fleetify::Routes::RouteStepGeofenceConfig, nil]
          optional :geofence_config, -> { NextbillionSDK::Fleetify::Routes::RouteStepGeofenceConfig }

          # @!attribute location
          #   Specify the location coordinates where the steps should be performed in
          #   [latitude, longitude].
          #
          #   @return [Array<Float>, nil]
          optional :location, NextbillionSDK::Internal::Type::ArrayOf[Float]

          # @!attribute meta
          #   An object to specify any additional details about the task to be associated with
          #   the step in the response. The information provided here will be available on the
          #   Driver's app under step details. This attribute can be used to provide context
          #   about or instructions to the driver for performing the task
          #
          #   @return [NextbillionSDK::Models::Fleetify::Routes::StepUpdateParams::Meta, nil]
          optional :meta, -> { NextbillionSDK::Fleetify::Routes::StepUpdateParams::Meta }

          # @!attribute type
          #   Specify the step type. It can belong to one of the following: start, job ,
          #   pickup, delivery, end. A duration is mandatory when the step type is either
          #   layover or a break.
          #
          #   @return [Symbol, NextbillionSDK::Models::Fleetify::Routes::StepUpdateParams::Type, nil]
          optional :type, enum: -> { NextbillionSDK::Fleetify::Routes::StepUpdateParams::Type }

          # @!method initialize(route_id:, key:, arrival:, position:, address: nil, completion_mode: nil, document_template_id: nil, duration: nil, geofence_config: nil, location: nil, meta: nil, type: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Fleetify::Routes::StepUpdateParams} for more details.
          #
          #   @param route_id [String]
          #
          #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
          #
          #   @param arrival [Integer] Specify the scheduled arrival time of the driver, as an UNIX timestamp in second
          #
          #   @param position [Integer] Specify the new position of the step. Provide a position different from the curr
          #
          #   @param address [String] Specify the postal address for the step.
          #
          #   @param completion_mode [Symbol, NextbillionSDK::Models::Fleetify::Routes::RouteStepCompletionMode] Specify the mode of completion to be used for the step. Currently, following val
          #
          #   @param document_template_id [String] Update the ID of the document template to be used for collecting proof of comple
          #
          #   @param duration [Integer] Specify the duration of the layover or break type steps, in seconds. Please note
          #
          #   @param geofence_config [NextbillionSDK::Models::Fleetify::Routes::RouteStepGeofenceConfig] Specify the configurations of the geofence which will be used to detect presence
          #
          #   @param location [Array<Float>] Specify the location coordinates where the steps should be performed in [latitud
          #
          #   @param meta [NextbillionSDK::Models::Fleetify::Routes::StepUpdateParams::Meta] An object to specify any additional details about the task to be associated with
          #
          #   @param type [Symbol, NextbillionSDK::Models::Fleetify::Routes::StepUpdateParams::Type] Specify the step type. It can belong to one of the following: start, job , picku
          #
          #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]

          class Meta < NextbillionSDK::Internal::Type::BaseModel
            # @!attribute customer_name
            #   Specify the name of the customer for which the step has to be performed.
            #
            #   @return [String, nil]
            optional :customer_name, String

            # @!attribute customer_phone_number
            #   Specify the phone number of the person to be contacted when at step location.
            #
            #   @return [String, nil]
            optional :customer_phone_number, String

            # @!attribute instructions
            #   Specify custom instructions to be carried out while performing the step.
            #
            #   @return [String, nil]
            optional :instructions, String

            # @!method initialize(customer_name: nil, customer_phone_number: nil, instructions: nil)
            #   An object to specify any additional details about the task to be associated with
            #   the step in the response. The information provided here will be available on the
            #   Driver's app under step details. This attribute can be used to provide context
            #   about or instructions to the driver for performing the task
            #
            #   @param customer_name [String] Specify the name of the customer for which the step has to be performed.
            #
            #   @param customer_phone_number [String] Specify the phone number of the person to be contacted when at step location.
            #
            #   @param instructions [String] Specify custom instructions to be carried out while performing the step.
          end

          # Specify the step type. It can belong to one of the following: start, job ,
          # pickup, delivery, end. A duration is mandatory when the step type is either
          # layover or a break.
          module Type
            extend NextbillionSDK::Internal::Type::Enum

            START = :start
            JOB = :job
            PICKUP = :pickup
            DELIVERY = :delivery
            BREAK = :break
            LAYOVER = :layover
            END_ = :end

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
