# typed: strong

module NextbillionSDK
  module Models
    module Fleetify
      class RouteRedispatchParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Fleetify::RouteRedispatchParams,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # A collection of objects with details of the steps to be modified. Each object
        # corresponds to a single step.
        sig do
          returns(
            T::Array[NextbillionSDK::Fleetify::RouteRedispatchParams::Operation]
          )
        end
        attr_accessor :operations

        # Specify the distance of the route.
        sig { returns(T.nilable(Float)) }
        attr_reader :distance

        sig { params(distance: Float).void }
        attr_writer :distance

        sig do
          params(
            key: String,
            operations:
              T::Array[
                NextbillionSDK::Fleetify::RouteRedispatchParams::Operation::OrHash
              ],
            distance: Float,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # A collection of objects with details of the steps to be modified. Each object
          # corresponds to a single step.
          operations:,
          # Specify the distance of the route.
          distance: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              operations:
                T::Array[
                  NextbillionSDK::Fleetify::RouteRedispatchParams::Operation
                ],
              distance: Float,
              request_options: NextbillionSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Operation < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Fleetify::RouteRedispatchParams::Operation,
                NextbillionSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              NextbillionSDK::Fleetify::RouteRedispatchParams::Operation::Data
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                NextbillionSDK::Fleetify::RouteRedispatchParams::Operation::Data::OrHash
            ).void
          end
          attr_writer :data

          # Specify the type of operation to be performed for the step.
          sig do
            returns(
              NextbillionSDK::Fleetify::RouteRedispatchParams::Operation::Operation::OrSymbol
            )
          end
          attr_accessor :operation

          sig do
            params(
              data:
                NextbillionSDK::Fleetify::RouteRedispatchParams::Operation::Data::OrHash,
              operation:
                NextbillionSDK::Fleetify::RouteRedispatchParams::Operation::Operation::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            data:,
            # Specify the type of operation to be performed for the step.
            operation:
          )
          end

          sig do
            override.returns(
              {
                data:
                  NextbillionSDK::Fleetify::RouteRedispatchParams::Operation::Data,
                operation:
                  NextbillionSDK::Fleetify::RouteRedispatchParams::Operation::Operation::OrSymbol
              }
            )
          end
          def to_hash
          end

          class Data < NextbillionSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  NextbillionSDK::Fleetify::RouteRedispatchParams::Operation::Data,
                  NextbillionSDK::Internal::AnyHash
                )
              end

            # Specify the mode of completion to be used for the step. Currently, following
            # values are allowed:
            #
            # - manual: Steps must be marked as completed manually through the Driver App.
            # - geofence: Steps are marked as completed automatically based on the entry
            #   conditions and geofence specified.
            # - geofence_manual_fallback: Steps will be marked as completed automatically
            #   based on geofence and entry condition configurations but there will also be a
            #   provision for manually updating the status in case, geofence detection fails.
            sig do
              returns(
                T.nilable(
                  NextbillionSDK::Fleetify::Routes::RouteStepCompletionMode::OrSymbol
                )
              )
            end
            attr_reader :completion_mode

            sig do
              params(
                completion_mode:
                  NextbillionSDK::Fleetify::Routes::RouteStepCompletionMode::OrSymbol
              ).void
            end
            attr_writer :completion_mode

            # Specify the ID of the document template to be used for collecting proof of
            # completion for the step. It would be applied to step which not be bind to
            # document template. Use the
            # [Documents API](https://docs.nextbillion.ai/docs/dispatches/documents-api) to
            # create, read and manage the document templates.
            #
            # Please note that the document template ID can not be assigned to following step
            # types - start, end, break, layover.
            sig { returns(T.nilable(String)) }
            attr_reader :document_template_id

            sig { params(document_template_id: String).void }
            attr_writer :document_template_id

            sig do
              returns(
                T.nilable(NextbillionSDK::Fleetify::Routes::RouteStepsRequest)
              )
            end
            attr_reader :step

            sig do
              params(
                step:
                  NextbillionSDK::Fleetify::Routes::RouteStepsRequest::OrHash
              ).void
            end
            attr_writer :step

            # Specify the ID of the step to be updated or deleted. Either one of id or
            # short_id of the step can be provided. This input will be ignored when operation:
            # create .
            sig { returns(T.nilable(String)) }
            attr_reader :step_id

            sig { params(step_id: String).void }
            attr_writer :step_id

            sig do
              params(
                completion_mode:
                  NextbillionSDK::Fleetify::Routes::RouteStepCompletionMode::OrSymbol,
                document_template_id: String,
                step:
                  NextbillionSDK::Fleetify::Routes::RouteStepsRequest::OrHash,
                step_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Specify the mode of completion to be used for the step. Currently, following
              # values are allowed:
              #
              # - manual: Steps must be marked as completed manually through the Driver App.
              # - geofence: Steps are marked as completed automatically based on the entry
              #   conditions and geofence specified.
              # - geofence_manual_fallback: Steps will be marked as completed automatically
              #   based on geofence and entry condition configurations but there will also be a
              #   provision for manually updating the status in case, geofence detection fails.
              completion_mode: nil,
              # Specify the ID of the document template to be used for collecting proof of
              # completion for the step. It would be applied to step which not be bind to
              # document template. Use the
              # [Documents API](https://docs.nextbillion.ai/docs/dispatches/documents-api) to
              # create, read and manage the document templates.
              #
              # Please note that the document template ID can not be assigned to following step
              # types - start, end, break, layover.
              document_template_id: nil,
              step: nil,
              # Specify the ID of the step to be updated or deleted. Either one of id or
              # short_id of the step can be provided. This input will be ignored when operation:
              # create .
              step_id: nil
            )
            end

            sig do
              override.returns(
                {
                  completion_mode:
                    NextbillionSDK::Fleetify::Routes::RouteStepCompletionMode::OrSymbol,
                  document_template_id: String,
                  step: NextbillionSDK::Fleetify::Routes::RouteStepsRequest,
                  step_id: String
                }
              )
            end
            def to_hash
            end
          end

          # Specify the type of operation to be performed for the step.
          module Operation
            extend NextbillionSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  NextbillionSDK::Fleetify::RouteRedispatchParams::Operation::Operation
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREATE =
              T.let(
                :create,
                NextbillionSDK::Fleetify::RouteRedispatchParams::Operation::Operation::TaggedSymbol
              )
            UPDATE =
              T.let(
                :update,
                NextbillionSDK::Fleetify::RouteRedispatchParams::Operation::Operation::TaggedSymbol
              )
            DELETE =
              T.let(
                :delete,
                NextbillionSDK::Fleetify::RouteRedispatchParams::Operation::Operation::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  NextbillionSDK::Fleetify::RouteRedispatchParams::Operation::Operation::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
