# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Fleetify
      class Routes
        class Steps
          # Some parameter documentations has been truncated, see
          # {NextbillionSDK::Models::Fleetify::Routes::StepCreateParams} for more details.
          #
          # Insert a new step
          #
          # @overload create(route_id, key:, arrival:, location:, position:, type:, address: nil, completion_mode: nil, document_template_id: nil, duration: nil, geofence_config: nil, meta: nil, request_options: {})
          #
          # @param route_id [String] Path param: Provide the ID of a previously dispatched route which needs to be mo
          #
          # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
          #
          # @param arrival [Integer] Body param: Specify the scheduled arrival time of the driver, as an UNIX timesta
          #
          # @param location [Array<Float>] Body param: Specify the location coordinates where the steps should be performed
          #
          # @param position [Integer] Body param: Indicates the index at which to insert the step, starting from 0 up
          #
          # @param type [Symbol, NextbillionSDK::Models::Fleetify::Routes::StepCreateParams::Type] Body param: Specify the step type. It can belong to one of the following: `start
          #
          # @param address [String] Body param: Specify the postal address for the step.
          #
          # @param completion_mode [Symbol, NextbillionSDK::Models::Fleetify::Routes::RouteStepCompletionMode] Body param: Specify the mode of completion to be used for the step. Currently, f
          #
          # @param document_template_id [String] Body param: Specify the ID of the document template to be used for collecting pr
          #
          # @param duration [Integer] Body param: Specify the duration of the `layover` or `break` type steps, in seco
          #
          # @param geofence_config [NextbillionSDK::Models::Fleetify::Routes::RouteStepGeofenceConfig] Body param: Specify the configurations of the geofence which will be used to det
          #
          # @param meta [NextbillionSDK::Models::Fleetify::Routes::StepCreateParams::Meta] Body param: An object to specify any additional details about the task to be ass
          #
          # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [NextbillionSDK::Models::Fleetify::Routes::StepCreateResponse]
          #
          # @see NextbillionSDK::Models::Fleetify::Routes::StepCreateParams
          def create(route_id, params)
            parsed, options = NextbillionSDK::Fleetify::Routes::StepCreateParams.dump_request(params)
            query_params = [:key]
            @client.request(
              method: :post,
              path: ["fleetify/routes/%1$s/steps", route_id],
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              model: NextbillionSDK::Models::Fleetify::Routes::StepCreateResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {NextbillionSDK::Models::Fleetify::Routes::StepUpdateParams} for more details.
          #
          # Update a step
          #
          # @overload update(step_id, route_id:, key:, arrival:, position:, address: nil, completion_mode: nil, document_template_id: nil, duration: nil, geofence_config: nil, location: nil, meta: nil, type: nil, request_options: {})
          #
          # @param step_id [String] Path param: Provide the step ID from a previously dispatched route that you want
          #
          # @param route_id [String] Path param: Provide the ID of a previously dispatched route which needs to be mo
          #
          # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
          #
          # @param arrival [Integer] Body param: Specify the scheduled arrival time of the driver, as an UNIX timesta
          #
          # @param position [Integer] Body param: Specify the new position of the step. Provide a position different f
          #
          # @param address [String] Body param: Specify the postal address for the step.
          #
          # @param completion_mode [Symbol, NextbillionSDK::Models::Fleetify::Routes::RouteStepCompletionMode] Body param: Specify the mode of completion to be used for the step. Currently, f
          #
          # @param document_template_id [String] Body param: Update the ID of the document template to be used for collecting pro
          #
          # @param duration [Integer] Body param: Specify the duration of the `layover` or `break` type steps, in seco
          #
          # @param geofence_config [NextbillionSDK::Models::Fleetify::Routes::RouteStepGeofenceConfig] Body param: Specify the configurations of the geofence which will be used to det
          #
          # @param location [Array<Float>] Body param: Specify the location coordinates where the steps should be performed
          #
          # @param meta [NextbillionSDK::Models::Fleetify::Routes::StepUpdateParams::Meta] Body param: An object to specify any additional details about the task to be ass
          #
          # @param type [Symbol, NextbillionSDK::Models::Fleetify::Routes::StepUpdateParams::Type] Body param: Specify the step type. It can belong to one of the following: `start
          #
          # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [NextbillionSDK::Models::Fleetify::Routes::StepUpdateResponse]
          #
          # @see NextbillionSDK::Models::Fleetify::Routes::StepUpdateParams
          def update(step_id, params)
            parsed, options = NextbillionSDK::Fleetify::Routes::StepUpdateParams.dump_request(params)
            route_id =
              parsed.delete(:route_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            query_params = [:key]
            @client.request(
              method: :put,
              path: ["fleetify/routes/%1$s/steps/%2$s", route_id, step_id],
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              model: NextbillionSDK::Models::Fleetify::Routes::StepUpdateResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {NextbillionSDK::Models::Fleetify::Routes::StepDeleteParams} for more details.
          #
          # Delete a step
          #
          # @overload delete(step_id, route_id:, key:, request_options: {})
          #
          # @param step_id [String] Path param: Provide the step ID from a previously dispatched route that you want
          #
          # @param route_id [String] Path param: Provide the ID of a previously dispatched route which needs to be mo
          #
          # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
          #
          # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [NextbillionSDK::Models::Fleetify::Routes::StepDeleteResponse]
          #
          # @see NextbillionSDK::Models::Fleetify::Routes::StepDeleteParams
          def delete(step_id, params)
            parsed, options = NextbillionSDK::Fleetify::Routes::StepDeleteParams.dump_request(params)
            route_id =
              parsed.delete(:route_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["fleetify/routes/%1$s/steps/%2$s", route_id, step_id],
              query: parsed,
              model: NextbillionSDK::Models::Fleetify::Routes::StepDeleteResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {NextbillionSDK::Models::Fleetify::Routes::StepCompleteParams} for more details.
          #
          # Complete a route step with document submission, or update the document of a
          # completed route step.
          #
          # When all steps are completed, the encapsulating route’s status will change to
          # `completed` automatically.
          #
          # Either `Session Token` must be provided to authenticate the request.
          #
          # @overload complete(step_id, route_id:, key:, document: nil, mode: nil, status: nil, request_options: {})
          #
          # @param step_id [String] Path param: Provide the step ID from a previously dispatched route that you want
          #
          # @param route_id [String] Path param: Provide the ID of a previously dispatched route which needs to be mo
          #
          # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
          #
          # @param document [Object] Body param: A key-value map storing form submission data, where keys correspond
          #
          # @param mode [String] Body param: Sets the status of the route step. Currently only `completed` is sup
          #
          # @param status [String] Body param: Sets the status of the route step. Currently only `completed` is sup
          #
          # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see NextbillionSDK::Models::Fleetify::Routes::StepCompleteParams
          def complete(step_id, params)
            parsed, options = NextbillionSDK::Fleetify::Routes::StepCompleteParams.dump_request(params)
            route_id =
              parsed.delete(:route_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            query_params = [:key]
            @client.request(
              method: :patch,
              path: ["fleetify/routes/%1$s/steps/%2$s", route_id, step_id],
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              model: NilClass,
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
end
