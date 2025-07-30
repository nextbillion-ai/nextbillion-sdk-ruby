# typed: strong

module Nextbillionai
  module Models
    module Fleetify
      module Routes
        class StepUpdateParams < Nextbillionai::Internal::Type::BaseModel
          extend Nextbillionai::Internal::Type::RequestParameters::Converter
          include Nextbillionai::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Fleetify::Routes::StepUpdateParams,
                Nextbillionai::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :route_id

          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          sig { returns(String) }
          attr_accessor :key

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

          # Specify the new position of the step. Provide a position different from the
          # current position of the step to update sequence in which the step get completed.
          sig { returns(Integer) }
          attr_accessor :position

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

          # Update the ID of the document template to be used for collecting proof of
          # completion for the step. If an empty string "" is provided, the current document
          # template associated to the step will be removed.
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

          # Specify the location coordinates where the steps should be performed in
          # `[latitude, longitude]`.
          sig { returns(T.nilable(T::Array[Float])) }
          attr_reader :location

          sig { params(location: T::Array[Float]).void }
          attr_writer :location

          # An object to specify any additional details about the task to be associated with
          # the step in the response. The information provided here will be available on the
          # Driver's app under step details. This attribute can be used to provide context
          # about or instructions to the driver for performing the task
          sig do
            returns(
              T.nilable(Nextbillionai::Fleetify::Routes::StepUpdateParams::Meta)
            )
          end
          attr_reader :meta

          sig do
            params(
              meta:
                Nextbillionai::Fleetify::Routes::StepUpdateParams::Meta::OrHash
            ).void
          end
          attr_writer :meta

          # Specify the step type. It can belong to one of the following: `start`, `job` ,
          # `pickup`, `delivery`, `end`. A `duration` is mandatory when the step type is
          # either `layover` or a `break`.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Fleetify::Routes::StepUpdateParams::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Nextbillionai::Fleetify::Routes::StepUpdateParams::Type::OrSymbol
            ).void
          end
          attr_writer :type

          sig do
            params(
              route_id: String,
              key: String,
              arrival: Integer,
              position: Integer,
              address: String,
              completion_mode:
                Nextbillionai::Fleetify::Routes::RouteStepCompletionMode::OrSymbol,
              document_template_id: String,
              duration: Integer,
              geofence_config:
                Nextbillionai::Fleetify::Routes::RouteStepGeofenceConfig::OrHash,
              location: T::Array[Float],
              meta:
                Nextbillionai::Fleetify::Routes::StepUpdateParams::Meta::OrHash,
              type:
                Nextbillionai::Fleetify::Routes::StepUpdateParams::Type::OrSymbol,
              request_options: Nextbillionai::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            route_id:,
            # A key is a unique identifier that is required to authenticate a request to the
            # API.
            key:,
            # Specify the scheduled arrival time of the driver, as an UNIX timestamp in
            # seconds, at the step. Please note that:
            #
            # - Arrival time for each step should be equal to or greater than the previous
            #   step.
            # - Past times can not be provided.
            # - The time provided is used only for informative display on the driver app and
            #   it does not impact or get affected by the route generated.
            arrival:,
            # Specify the new position of the step. Provide a position different from the
            # current position of the step to update sequence in which the step get completed.
            position:,
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
            # Update the ID of the document template to be used for collecting proof of
            # completion for the step. If an empty string "" is provided, the current document
            # template associated to the step will be removed.
            document_template_id: nil,
            # Specify the duration of the `layover` or `break` type steps, in seconds. Please
            # note it is mandatory when step type is either "layover" or "break".
            duration: nil,
            # Specify the configurations of the geofence which will be used to detect presence
            # of the driver and complete the tasks automatically. Please note that this
            # attribute is required when `completion_mode` is either "geofence" or
            # "geofence_manual_fallback".
            geofence_config: nil,
            # Specify the location coordinates where the steps should be performed in
            # `[latitude, longitude]`.
            location: nil,
            # An object to specify any additional details about the task to be associated with
            # the step in the response. The information provided here will be available on the
            # Driver's app under step details. This attribute can be used to provide context
            # about or instructions to the driver for performing the task
            meta: nil,
            # Specify the step type. It can belong to one of the following: `start`, `job` ,
            # `pickup`, `delivery`, `end`. A `duration` is mandatory when the step type is
            # either `layover` or a `break`.
            type: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                route_id: String,
                key: String,
                arrival: Integer,
                position: Integer,
                address: String,
                completion_mode:
                  Nextbillionai::Fleetify::Routes::RouteStepCompletionMode::OrSymbol,
                document_template_id: String,
                duration: Integer,
                geofence_config:
                  Nextbillionai::Fleetify::Routes::RouteStepGeofenceConfig,
                location: T::Array[Float],
                meta: Nextbillionai::Fleetify::Routes::StepUpdateParams::Meta,
                type:
                  Nextbillionai::Fleetify::Routes::StepUpdateParams::Type::OrSymbol,
                request_options: Nextbillionai::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Meta < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Fleetify::Routes::StepUpdateParams::Meta,
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

          # Specify the step type. It can belong to one of the following: `start`, `job` ,
          # `pickup`, `delivery`, `end`. A `duration` is mandatory when the step type is
          # either `layover` or a `break`.
          module Type
            extend Nextbillionai::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Nextbillionai::Fleetify::Routes::StepUpdateParams::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            START =
              T.let(
                :"`start`",
                Nextbillionai::Fleetify::Routes::StepUpdateParams::Type::TaggedSymbol
              )
            JOB =
              T.let(
                :"`job`",
                Nextbillionai::Fleetify::Routes::StepUpdateParams::Type::TaggedSymbol
              )
            PICKUP =
              T.let(
                :"`pickup`",
                Nextbillionai::Fleetify::Routes::StepUpdateParams::Type::TaggedSymbol
              )
            DELIVERY =
              T.let(
                :"`delivery`",
                Nextbillionai::Fleetify::Routes::StepUpdateParams::Type::TaggedSymbol
              )
            BREAK =
              T.let(
                :"`break`",
                Nextbillionai::Fleetify::Routes::StepUpdateParams::Type::TaggedSymbol
              )
            LAYOVER =
              T.let(
                :"`layover`",
                Nextbillionai::Fleetify::Routes::StepUpdateParams::Type::TaggedSymbol
              )
            END_ =
              T.let(
                :"`end`",
                Nextbillionai::Fleetify::Routes::StepUpdateParams::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Nextbillionai::Fleetify::Routes::StepUpdateParams::Type::TaggedSymbol
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
