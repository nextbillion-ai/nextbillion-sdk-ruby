# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Fleetify
      module Routes
        class RouteStepsResponse < NextbillionSDK::Internal::Type::BaseModel
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
          #
          #   @return [NextbillionSDK::Models::Fleetify::Routes::RouteStepsResponse::Completion, nil]
          optional :completion, -> { NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Completion }

          # @!attribute created_at
          #   Represents the timestamp of the creation in seconds since the Unix epoch.
          #   Example: `1738743999`.
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
                   NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Internal::Type::Unknown]

          # @!attribute duration
          #   Returns the duration for `layover` or `break` type steps.
          #
          #   @return [Integer, nil]
          optional :duration, Integer

          # @!attribute location
          #   Returns the location coordinates where the step is executed.
          #
          #   @return [Array<Float>, nil]
          optional :location, NextbillionSDK::Internal::Type::ArrayOf[Float]

          # @!attribute meta
          #   An object returning custom details about the step that were configured in the
          #   input request while configuring the step details. The information returned here
          #   will be available for display on the Driver's app under step details.
          #
          #   @return [NextbillionSDK::Models::Fleetify::Routes::RouteStepsResponse::Meta, nil]
          optional :meta, -> { NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Meta }

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
          #   Represents the timestamp of the last update in seconds since the Unix epoch.
          #   Example: `1738743999`.
          #
          #   @return [Integer, nil]
          optional :updated_at, Integer

          # @!method initialize(id: nil, address: nil, arrival: nil, completion: nil, created_at: nil, document_snapshot: nil, duration: nil, location: nil, meta: nil, short_id: nil, type: nil, updated_at: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Fleetify::Routes::RouteStepsResponse} for more details.
          #
          #   @param id [String] Returns the unique ID of the step.
          #
          #   @param address [String] Returns the postal address where the step is executed. Its value is the same as
          #
          #   @param arrival [Integer] Returns the scheduled arrival time of the driver at the step as an UNIX timestam
          #
          #   @param completion [NextbillionSDK::Models::Fleetify::Routes::RouteStepsResponse::Completion]
          #
          #   @param created_at [Integer] Represents the timestamp of the creation in seconds since the Unix epoch. Exampl
          #
          #   @param document_snapshot [Array<Object>] Returns the details of the document that was used for collecting the proof of co
          #
          #   @param duration [Integer] Returns the duration for `layover` or `break` type steps.
          #
          #   @param location [Array<Float>] Returns the location coordinates where the step is executed.
          #
          #   @param meta [NextbillionSDK::Models::Fleetify::Routes::RouteStepsResponse::Meta] An object returning custom details about the step that were configured in the in
          #
          #   @param short_id [String] Returns a unique short ID of the step for easier referencing and displaying purp
          #
          #   @param type [String] Returns the step type. It can belong to one of the following: `start`, `job` , `
          #
          #   @param updated_at [Integer] Represents the timestamp of the last update in seconds since the Unix epoch. Exa

          # @see NextbillionSDK::Models::Fleetify::Routes::RouteStepsResponse#completion
          class Completion < NextbillionSDK::Internal::Type::BaseModel
            # @!attribute completed_at
            #   Represents the timestamp of the completion in seconds since the Unix epoch.
            #   Example: `1738743999`.
            #
            #   @return [Integer, nil]
            optional :completed_at, Integer

            # @!attribute completed_by_mode
            #   Specify the mode of completion to be used for the step. Currently, following
            #   values are allowed:
            #
            #   - `manual`: Steps must be marked as completed manually through the Driver App.
            #   - `geofence`: Steps are marked as completed automatically based on the entry
            #     conditions and geofence specified.
            #   - `geofence_manual_fallback`: Steps will be marked as completed automatically
            #     based on geofence and entry condition configurations but there will also be a
            #     provision for manually updating the status in case, geofence detection fails.
            #
            #   @return [Symbol, NextbillionSDK::Models::Fleetify::Routes::RouteStepCompletionMode, nil]
            optional :completed_by_mode,
                     enum: -> {
                       NextbillionSDK::Fleetify::Routes::RouteStepCompletionMode
                     }

            # @!attribute completion_mode
            #   Specify the mode of completion to be used for the step. Currently, following
            #   values are allowed:
            #
            #   - `manual`: Steps must be marked as completed manually through the Driver App.
            #   - `geofence`: Steps are marked as completed automatically based on the entry
            #     conditions and geofence specified.
            #   - `geofence_manual_fallback`: Steps will be marked as completed automatically
            #     based on geofence and entry condition configurations but there will also be a
            #     provision for manually updating the status in case, geofence detection fails.
            #
            #   @return [Symbol, NextbillionSDK::Models::Fleetify::Routes::RouteStepCompletionMode, nil]
            optional :completion_mode, enum: -> { NextbillionSDK::Fleetify::Routes::RouteStepCompletionMode }

            # @!attribute document
            #   A key-value map storing form submission data, where keys correspond to field
            #   labels and values can be of any type depend on the type of according document
            #   item.
            #
            #   @return [Object, nil]
            optional :document, NextbillionSDK::Internal::Type::Unknown

            # @!attribute document_modified_at
            #   Represents the timestamp of the last doc modification in seconds since the Unix
            #   epoch. Example: `1738743999`.
            #
            #   @return [Integer, nil]
            optional :document_modified_at, Integer

            # @!attribute geofence_config
            #   Specify the configurations of the geofence which will be used to detect presence
            #   of the driver and complete the tasks automatically. Please note that this
            #   attribute is required when `completion_mode` is either "geofence" or
            #   "geofence_manual_fallback".
            #
            #   @return [NextbillionSDK::Models::Fleetify::Routes::RouteStepGeofenceConfig, nil]
            optional :geofence_config, -> { NextbillionSDK::Fleetify::Routes::RouteStepGeofenceConfig }

            # @!attribute status
            #   Status of the step.
            #
            #   @return [Symbol, NextbillionSDK::Models::Fleetify::Routes::RouteStepsResponse::Completion::Status, nil]
            optional :status,
                     enum: -> {
                       NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Completion::Status
                     }

            # @!method initialize(completed_at: nil, completed_by_mode: nil, completion_mode: nil, document: nil, document_modified_at: nil, geofence_config: nil, status: nil)
            #   Some parameter documentations has been truncated, see
            #   {NextbillionSDK::Models::Fleetify::Routes::RouteStepsResponse::Completion} for
            #   more details.
            #
            #   @param completed_at [Integer] Represents the timestamp of the completion in seconds since the Unix epoch. Exam
            #
            #   @param completed_by_mode [Symbol, NextbillionSDK::Models::Fleetify::Routes::RouteStepCompletionMode] Specify the mode of completion to be used for the step. Currently, following val
            #
            #   @param completion_mode [Symbol, NextbillionSDK::Models::Fleetify::Routes::RouteStepCompletionMode] Specify the mode of completion to be used for the step. Currently, following val
            #
            #   @param document [Object] A key-value map storing form submission data, where keys correspond to field lab
            #
            #   @param document_modified_at [Integer] Represents the timestamp of the last doc modification in seconds since the Unix
            #
            #   @param geofence_config [NextbillionSDK::Models::Fleetify::Routes::RouteStepGeofenceConfig] Specify the configurations of the geofence which will be used to detect presence
            #
            #   @param status [Symbol, NextbillionSDK::Models::Fleetify::Routes::RouteStepsResponse::Completion::Status] Status of the step.

            # Status of the step.
            #
            # @see NextbillionSDK::Models::Fleetify::Routes::RouteStepsResponse::Completion#status
            module Status
              extend NextbillionSDK::Internal::Type::Enum

              SCHEDULED = :scheduled
              COMPLETED = :completed
              CANCELED = :canceled

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see NextbillionSDK::Models::Fleetify::Routes::RouteStepsResponse#meta
          class Meta < NextbillionSDK::Internal::Type::BaseModel
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
            #   {NextbillionSDK::Models::Fleetify::Routes::RouteStepsResponse::Meta} for more
            #   details.
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

      RouteStepsResponse = Routes::RouteStepsResponse
    end
  end
end
