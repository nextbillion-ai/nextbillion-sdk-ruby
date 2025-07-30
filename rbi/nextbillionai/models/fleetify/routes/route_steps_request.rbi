# typed: strong

module Nextbillionai
  module Models
    module Fleetify
      RouteStepsRequest = Routes::RouteStepsRequest

      module Routes
        class RouteStepsRequest < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Fleetify::Routes::RouteStepsRequest,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Specify the scheduled arrival time of the driver, as an UNIX timestamp in
          # seconds, at the step. Please note that:
          #
          # - Arrival time for each step should be equal to or greater than the previous
          #   step.
          # - Past times can not be provided.
          # - The time provided is used only for informative display on the driver app and
          #   it does not impact or get affected by the route generated.
          sig { returns(Integer) }
          attr_accessor :arrival

          # Specify the location coordinates where the steps should be performed in
          # `[latitude, longitude]`.
          sig { returns(T::Array[Float]) }
          attr_accessor :location

          # Specify the step type. It can belong to one of the following: `start`, `job` ,
          # `pickup`, `delivery`, `end`. A `duration` is mandatory when the step type is
          # either `layover` or a `break`.
          sig do
            returns(
              Nextbillionai::Fleetify::Routes::RouteStepsRequest::Type::OrSymbol
            )
          end
          attr_accessor :type

          # Specify the postal address for the step.
          sig { returns(T.nilable(String)) }
          attr_reader :address

          sig { params(address: String).void }
          attr_writer :address

          # Specify the mode of completion to be used for the step. Currently, following
          # values are allowed:
          #
          # - `manual`: Steps must be marked as completed manually through the Driver App.
          # - `geofence`: Steps are marked as completed automatically based on the entry
          #   conditions and geofence specified.
          # - `geofence_manual_fallback`: Steps will be marked as completed automatically
          #   based on geofence and entry condition configurations but there will also be a
          #   provision for manually updating the status in case, geofence detection fails.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Fleetify::Routes::RouteStepCompletionMode::OrSymbol
              )
            )
          end
          attr_reader :completion_mode

          sig do
            params(
              completion_mode:
                Nextbillionai::Fleetify::Routes::RouteStepCompletionMode::OrSymbol
            ).void
          end
          attr_writer :completion_mode

          # Specify the ID of the document template to be used for collecting proof of
          # completion for the step. If not specified, the document template specified at
          # the route level will be used for the step. Use the
          # [Documents API](https://docs.nextbillion.ai/docs/dispatches/documents-api) to
          # create, read and manage the document templates.
          #
          # Please note that the document template ID can not be assigned to following step
          # types - `start`, `end`, `break`, `layover`.
          sig { returns(T.nilable(String)) }
          attr_reader :document_template_id

          sig { params(document_template_id: String).void }
          attr_writer :document_template_id

          # Specify the duration of the `layover` or `break` type steps, in seconds. Please
          # note it is mandatory when step type is either "layover" or "break".
          sig { returns(T.nilable(Integer)) }
          attr_reader :duration

          sig { params(duration: Integer).void }
          attr_writer :duration

          # Specify the configurations of the geofence which will be used to detect presence
          # of the driver and complete the tasks automatically. Please note that this
          # attribute is required when `completion_mode` is either "geofence" or
          # "geofence_manual_fallback".
          sig do
            returns(
              T.nilable(
                Nextbillionai::Fleetify::Routes::RouteStepGeofenceConfig
              )
            )
          end
          attr_reader :geofence_config

          sig do
            params(
              geofence_config:
                Nextbillionai::Fleetify::Routes::RouteStepGeofenceConfig::OrHash
            ).void
          end
          attr_writer :geofence_config

          # An object to specify any additional details about the task to be associated with
          # the step in the response. The information provided here will be available on the
          # Driver's app under step details. This attribute can be used to provide context
          # about or instructions to the driver for performing the task
          sig do
            returns(
              T.nilable(
                Nextbillionai::Fleetify::Routes::RouteStepsRequest::Meta
              )
            )
          end
          attr_reader :meta

          sig do
            params(
              meta:
                Nextbillionai::Fleetify::Routes::RouteStepsRequest::Meta::OrHash
            ).void
          end
          attr_writer :meta

          sig do
            params(
              arrival: Integer,
              location: T::Array[Float],
              type:
                Nextbillionai::Fleetify::Routes::RouteStepsRequest::Type::OrSymbol,
              address: String,
              completion_mode:
                Nextbillionai::Fleetify::Routes::RouteStepCompletionMode::OrSymbol,
              document_template_id: String,
              duration: Integer,
              geofence_config:
                Nextbillionai::Fleetify::Routes::RouteStepGeofenceConfig::OrHash,
              meta:
                Nextbillionai::Fleetify::Routes::RouteStepsRequest::Meta::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Specify the scheduled arrival time of the driver, as an UNIX timestamp in
            # seconds, at the step. Please note that:
            #
            # - Arrival time for each step should be equal to or greater than the previous
            #   step.
            # - Past times can not be provided.
            # - The time provided is used only for informative display on the driver app and
            #   it does not impact or get affected by the route generated.
            arrival:,
            # Specify the location coordinates where the steps should be performed in
            # `[latitude, longitude]`.
            location:,
            # Specify the step type. It can belong to one of the following: `start`, `job` ,
            # `pickup`, `delivery`, `end`. A `duration` is mandatory when the step type is
            # either `layover` or a `break`.
            type:,
            # Specify the postal address for the step.
            address: nil,
            # Specify the mode of completion to be used for the step. Currently, following
            # values are allowed:
            #
            # - `manual`: Steps must be marked as completed manually through the Driver App.
            # - `geofence`: Steps are marked as completed automatically based on the entry
            #   conditions and geofence specified.
            # - `geofence_manual_fallback`: Steps will be marked as completed automatically
            #   based on geofence and entry condition configurations but there will also be a
            #   provision for manually updating the status in case, geofence detection fails.
            completion_mode: nil,
            # Specify the ID of the document template to be used for collecting proof of
            # completion for the step. If not specified, the document template specified at
            # the route level will be used for the step. Use the
            # [Documents API](https://docs.nextbillion.ai/docs/dispatches/documents-api) to
            # create, read and manage the document templates.
            #
            # Please note that the document template ID can not be assigned to following step
            # types - `start`, `end`, `break`, `layover`.
            document_template_id: nil,
            # Specify the duration of the `layover` or `break` type steps, in seconds. Please
            # note it is mandatory when step type is either "layover" or "break".
            duration: nil,
            # Specify the configurations of the geofence which will be used to detect presence
            # of the driver and complete the tasks automatically. Please note that this
            # attribute is required when `completion_mode` is either "geofence" or
            # "geofence_manual_fallback".
            geofence_config: nil,
            # An object to specify any additional details about the task to be associated with
            # the step in the response. The information provided here will be available on the
            # Driver's app under step details. This attribute can be used to provide context
            # about or instructions to the driver for performing the task
            meta: nil
          )
          end

          sig do
            override.returns(
              {
                arrival: Integer,
                location: T::Array[Float],
                type:
                  Nextbillionai::Fleetify::Routes::RouteStepsRequest::Type::OrSymbol,
                address: String,
                completion_mode:
                  Nextbillionai::Fleetify::Routes::RouteStepCompletionMode::OrSymbol,
                document_template_id: String,
                duration: Integer,
                geofence_config:
                  Nextbillionai::Fleetify::Routes::RouteStepGeofenceConfig,
                meta: Nextbillionai::Fleetify::Routes::RouteStepsRequest::Meta
              }
            )
          end
          def to_hash
          end

          # Specify the step type. It can belong to one of the following: `start`, `job` ,
          # `pickup`, `delivery`, `end`. A `duration` is mandatory when the step type is
          # either `layover` or a `break`.
          module Type
            extend Nextbillionai::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Nextbillionai::Fleetify::Routes::RouteStepsRequest::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            START =
              T.let(
                :"`start`",
                Nextbillionai::Fleetify::Routes::RouteStepsRequest::Type::TaggedSymbol
              )
            JOB =
              T.let(
                :"`job`",
                Nextbillionai::Fleetify::Routes::RouteStepsRequest::Type::TaggedSymbol
              )
            PICKUP =
              T.let(
                :"`pickup`",
                Nextbillionai::Fleetify::Routes::RouteStepsRequest::Type::TaggedSymbol
              )
            DELIVERY =
              T.let(
                :"`delivery`",
                Nextbillionai::Fleetify::Routes::RouteStepsRequest::Type::TaggedSymbol
              )
            BREAK =
              T.let(
                :"`break`",
                Nextbillionai::Fleetify::Routes::RouteStepsRequest::Type::TaggedSymbol
              )
            LAYOVER =
              T.let(
                :"`layover`",
                Nextbillionai::Fleetify::Routes::RouteStepsRequest::Type::TaggedSymbol
              )
            END_ =
              T.let(
                :"`end`",
                Nextbillionai::Fleetify::Routes::RouteStepsRequest::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Nextbillionai::Fleetify::Routes::RouteStepsRequest::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Meta < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Fleetify::Routes::RouteStepsRequest::Meta,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Specify the name of the customer for which the step has to be performed.
            sig { returns(T.nilable(String)) }
            attr_reader :customer_name

            sig { params(customer_name: String).void }
            attr_writer :customer_name

            # Specify the phone number of the person to be contacted when at step location.
            sig { returns(T.nilable(String)) }
            attr_reader :customer_phone_number

            sig { params(customer_phone_number: String).void }
            attr_writer :customer_phone_number

            # Specify custom instructions to be carried out while performing the step.
            sig { returns(T.nilable(String)) }
            attr_reader :instructions

            sig { params(instructions: String).void }
            attr_writer :instructions

            # An object to specify any additional details about the task to be associated with
            # the step in the response. The information provided here will be available on the
            # Driver's app under step details. This attribute can be used to provide context
            # about or instructions to the driver for performing the task
            sig do
              params(
                customer_name: String,
                customer_phone_number: String,
                instructions: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Specify the name of the customer for which the step has to be performed.
              customer_name: nil,
              # Specify the phone number of the person to be contacted when at step location.
              customer_phone_number: nil,
              # Specify custom instructions to be carried out while performing the step.
              instructions: nil
            )
            end

            sig do
              override.returns(
                {
                  customer_name: String,
                  customer_phone_number: String,
                  instructions: String
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
