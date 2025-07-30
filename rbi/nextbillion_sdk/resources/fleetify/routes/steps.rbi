# typed: strong

module NextbillionSDK
  module Resources
    class Fleetify
      class Routes
        class Steps
          # Insert a new step
          sig do
            params(
              route_id: String,
              key: String,
              arrival: Integer,
              location: T::Array[Float],
              position: Integer,
              type:
                NextbillionSDK::Fleetify::Routes::StepCreateParams::Type::OrSymbol,
              address: String,
              completion_mode:
                NextbillionSDK::Fleetify::Routes::RouteStepCompletionMode::OrSymbol,
              document_template_id: String,
              duration: Integer,
              geofence_config:
                NextbillionSDK::Fleetify::Routes::RouteStepGeofenceConfig::OrHash,
              meta:
                NextbillionSDK::Fleetify::Routes::StepCreateParams::Meta::OrHash,
              request_options: NextbillionSDK::RequestOptions::OrHash
            ).returns(
              NextbillionSDK::Models::Fleetify::Routes::StepCreateResponse
            )
          end
          def create(
            # Path param: Provide the ID of a previously dispatched route which needs to be
            # modified. Both the id and short_id of the route are a valid input.
            route_id,
            # Query param: A key is a unique identifier that is required to authenticate a
            # request to the API.
            key:,
            # Body param: Specify the scheduled arrival time of the driver, as an UNIX
            # timestamp in seconds, at the step. Please note that:
            #
            # - Arrival time for each step should be equal to or greater than the previous
            #   step.
            # - Past times can not be provided.
            # - The time provided is used only for informative display on the driver app and
            #   it does not impact or get affected by the route generated.
            arrival:,
            # Body param: Specify the location coordinates where the steps should be performed
            # in [latitude, longitude].
            location:,
            # Body param: Indicates the index at which to insert the step, starting from 0 up
            # to the total number of steps in the route.
            position:,
            # Body param: Specify the step type. It can belong to one of the following: start,
            # job , pickup, delivery, end. A duration is mandatory when the step type is
            # either layover or a break.
            type:,
            # Body param: Specify the postal address for the step.
            address: nil,
            # Body param: Specify the mode of completion to be used for the step. Currently,
            # following values are allowed:
            #
            # - manual: Steps must be marked as completed manually through the Driver App.
            # - geofence: Steps are marked as completed automatically based on the entry
            #   conditions and geofence specified.
            # - geofence_manual_fallback: Steps will be marked as completed automatically
            #   based on geofence and entry condition configurations but there will also be a
            #   provision for manually updating the status in case, geofence detection fails.
            completion_mode: nil,
            # Body param: Specify the ID of the document template to be used for collecting
            # proof of completion for the step. If not specified, the document template
            # specified at the route level will be used for the step. Use the
            # [Documents API](https://docs.nextbillion.ai/docs/dispatches/documents-api) to
            # create, read and manage the document templates.
            #
            # Please note that the document template ID can not be assigned to following step
            # types - start, end, break, layover.
            document_template_id: nil,
            # Body param: Specify the duration of the layover or break type steps, in seconds.
            # Please note it is mandatory when step type is either "layover" or "break".
            duration: nil,
            # Body param: Specify the configurations of the geofence which will be used to
            # detect presence of the driver and complete the tasks automatically. Please note
            # that this attribute is required when completion_mode is either "geofence" or
            # "geofence_manual_fallback".
            geofence_config: nil,
            # Body param: An object to specify any additional details about the task to be
            # associated with the step in the response. The information provided here will be
            # available on the Driver's app under step details. This attribute can be used to
            # provide context about or instructions to the driver for performing the task
            meta: nil,
            request_options: {}
          )
          end

          # Update a step
          sig do
            params(
              step_id: String,
              route_id: String,
              key: String,
              arrival: Integer,
              position: Integer,
              address: String,
              completion_mode:
                NextbillionSDK::Fleetify::Routes::RouteStepCompletionMode::OrSymbol,
              document_template_id: String,
              duration: Integer,
              geofence_config:
                NextbillionSDK::Fleetify::Routes::RouteStepGeofenceConfig::OrHash,
              location: T::Array[Float],
              meta:
                NextbillionSDK::Fleetify::Routes::StepUpdateParams::Meta::OrHash,
              type:
                NextbillionSDK::Fleetify::Routes::StepUpdateParams::Type::OrSymbol,
              request_options: NextbillionSDK::RequestOptions::OrHash
            ).returns(
              NextbillionSDK::Models::Fleetify::Routes::StepUpdateResponse
            )
          end
          def update(
            # Path param: Provide the step ID from a previously dispatched route that you want
            # to update. Both the steps.id and steps.short_id can be used as a valid input for
            # this parameter.
            step_id,
            # Path param: Provide the ID of a previously dispatched route which needs to be
            # modified. Both the id and short_id of the route are a valid input.
            route_id:,
            # Query param: A key is a unique identifier that is required to authenticate a
            # request to the API.
            key:,
            # Body param: Specify the scheduled arrival time of the driver, as an UNIX
            # timestamp in seconds, at the step. Please note that:
            #
            # - Arrival time for each step should be equal to or greater than the previous
            #   step.
            # - Past times can not be provided.
            # - The time provided is used only for informative display on the driver app and
            #   it does not impact or get affected by the route generated.
            arrival:,
            # Body param: Specify the new position of the step. Provide a position different
            # from the current position of the step to update sequence in which the step get
            # completed.
            position:,
            # Body param: Specify the postal address for the step.
            address: nil,
            # Body param: Specify the mode of completion to be used for the step. Currently,
            # following values are allowed:
            #
            # - manual: Steps must be marked as completed manually through the Driver App.
            # - geofence: Steps are marked as completed automatically based on the entry
            #   conditions and geofence specified.
            # - geofence_manual_fallback: Steps will be marked as completed automatically
            #   based on geofence and entry condition configurations but there will also be a
            #   provision for manually updating the status in case, geofence detection fails.
            completion_mode: nil,
            # Body param: Update the ID of the document template to be used for collecting
            # proof of completion for the step. If an empty string "" is provided, the current
            # document template associated to the step will be removed.
            document_template_id: nil,
            # Body param: Specify the duration of the layover or break type steps, in seconds.
            # Please note it is mandatory when step type is either "layover" or "break".
            duration: nil,
            # Body param: Specify the configurations of the geofence which will be used to
            # detect presence of the driver and complete the tasks automatically. Please note
            # that this attribute is required when completion_mode is either "geofence" or
            # "geofence_manual_fallback".
            geofence_config: nil,
            # Body param: Specify the location coordinates where the steps should be performed
            # in [latitude, longitude].
            location: nil,
            # Body param: An object to specify any additional details about the task to be
            # associated with the step in the response. The information provided here will be
            # available on the Driver's app under step details. This attribute can be used to
            # provide context about or instructions to the driver for performing the task
            meta: nil,
            # Body param: Specify the step type. It can belong to one of the following: start,
            # job , pickup, delivery, end. A duration is mandatory when the step type is
            # either layover or a break.
            type: nil,
            request_options: {}
          )
          end

          # Delete a step
          sig do
            params(
              step_id: String,
              route_id: String,
              key: String,
              request_options: NextbillionSDK::RequestOptions::OrHash
            ).returns(
              NextbillionSDK::Models::Fleetify::Routes::StepDeleteResponse
            )
          end
          def delete(
            # Path param: Provide the step ID from a previously dispatched route that you want
            # to update. Both the steps.id and steps.short_id can be used as a valid input for
            # this parameter.
            step_id,
            # Path param: Provide the ID of a previously dispatched route which needs to be
            # modified. Both the id and short_id of the route are a valid input.
            route_id:,
            # Query param: A key is a unique identifier that is required to authenticate a
            # request to the API.
            key:,
            request_options: {}
          )
          end

          # Complete a route step with document submission, or update the document of a
          # completed route step.
          #
          # When all steps are completed, the encapsulating route’s status will change to
          # completed automatically.
          #
          # Either Session Token must be provided to authenticate the request.
          sig do
            params(
              step_id: String,
              route_id: String,
              key: String,
              document: T.anything,
              mode: String,
              status: String,
              request_options: NextbillionSDK::RequestOptions::OrHash
            ).void
          end
          def complete(
            # Path param: Provide the step ID from a previously dispatched route that you want
            # to update. Both the steps.id and steps.short_id can be used as a valid input for
            # this parameter.
            step_id,
            # Path param: Provide the ID of a previously dispatched route which needs to be
            # modified. Both the id and short_id of the route are a valid input.
            route_id:,
            # Query param: A key is a unique identifier that is required to authenticate a
            # request to the API.
            key:,
            # Body param: A key-value map storing form submission data, where keys correspond
            # to field labels and values can be of any type depend on the type of according
            # document item.
            document: nil,
            # Body param: Sets the status of the route step. Currently only completed is
            # supported.
            #
            # Note: once marked completed, a step cannot transition to other statuses. You can
            # only update the document afterwards.
            mode: nil,
            # Body param: Sets the status of the route step. Currently only completed is
            # supported.
            #
            # Note: once marked completed, a step cannot transition to other statuses. You can
            # only update the document afterwards.
            status: nil,
            request_options: {}
          )
          end

          # @api private
          sig do
            params(client: NextbillionSDK::Client).returns(T.attached_class)
          end
          def self.new(client:)
          end
        end
      end
    end
  end
end
