# typed: strong

module NextbillionSDK
  module Models
    module Fleetify
      RouteStepsResponse = Routes::RouteStepsResponse

      module Routes
        class RouteStepsResponse < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Fleetify::Routes::RouteStepsResponse,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # Returns the unique ID of the step.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # Returns the postal address where the step is executed. Its value is the same as
          # that specified in the input request when configuring the step details.
          sig { returns(T.nilable(String)) }
          attr_reader :address

          sig { params(address: String).void }
          attr_writer :address

          # Returns the scheduled arrival time of the driver at the step as an UNIX
          # timestamp, in seconds precision. It is the same as that specified in the input
          # request while configuring the step details.
          #
          # The timestamp returned here is only for informative display on the driver's app
          # and it does not impact or get affected by the route generated.
          sig { returns(T.nilable(Integer)) }
          attr_reader :arrival

          sig { params(arrival: Integer).void }
          attr_writer :arrival

          sig do
            returns(
              T.nilable(
                NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Completion
              )
            )
          end
          attr_reader :completion

          sig do
            params(
              completion:
                NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Completion::OrHash
            ).void
          end
          attr_writer :completion

          # Represents the timestamp of the creation in seconds since the Unix epoch.
          # Example: 1738743999.
          sig { returns(T.nilable(Integer)) }
          attr_reader :created_at

          sig { params(created_at: Integer).void }
          attr_writer :created_at

          # Returns the details of the document that was used for collecting the proof of
          # completion for the step. In case no document template ID was provided for the
          # given step, then a null value is returned. Each object represents a new field in
          # the document.
          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_reader :document_snapshot

          sig { params(document_snapshot: T::Array[T.anything]).void }
          attr_writer :document_snapshot

          # Returns the duration for layover or break type steps.
          sig { returns(T.nilable(Integer)) }
          attr_reader :duration

          sig { params(duration: Integer).void }
          attr_writer :duration

          # Returns the location coordinates where the step is executed.
          sig { returns(T.nilable(T::Array[Float])) }
          attr_reader :location

          sig { params(location: T::Array[Float]).void }
          attr_writer :location

          # An object returning custom details about the step that were configured in the
          # input request while configuring the step details. The information returned here
          # will be available for display on the Driver's app under step details.
          sig do
            returns(
              T.nilable(
                NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Meta
              )
            )
          end
          attr_reader :meta

          sig do
            params(
              meta:
                NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Meta::OrHash
            ).void
          end
          attr_writer :meta

          # Returns a unique short ID of the step for easier referencing and displaying
          # purposes.
          sig { returns(T.nilable(String)) }
          attr_reader :short_id

          sig { params(short_id: String).void }
          attr_writer :short_id

          # Returns the step type. It can belong to one of the following: start, job ,
          # pickup, delivery, break, layover , and end. For any given step, it would be the
          # same as that specified in the input request while configuring the step details.
          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          # Represents the timestamp of the last update in seconds since the Unix epoch.
          # Example: 1738743999.
          sig { returns(T.nilable(Integer)) }
          attr_reader :updated_at

          sig { params(updated_at: Integer).void }
          attr_writer :updated_at

          sig do
            params(
              id: String,
              address: String,
              arrival: Integer,
              completion:
                NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Completion::OrHash,
              created_at: Integer,
              document_snapshot: T::Array[T.anything],
              duration: Integer,
              location: T::Array[Float],
              meta:
                NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Meta::OrHash,
              short_id: String,
              type: String,
              updated_at: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Returns the unique ID of the step.
            id: nil,
            # Returns the postal address where the step is executed. Its value is the same as
            # that specified in the input request when configuring the step details.
            address: nil,
            # Returns the scheduled arrival time of the driver at the step as an UNIX
            # timestamp, in seconds precision. It is the same as that specified in the input
            # request while configuring the step details.
            #
            # The timestamp returned here is only for informative display on the driver's app
            # and it does not impact or get affected by the route generated.
            arrival: nil,
            completion: nil,
            # Represents the timestamp of the creation in seconds since the Unix epoch.
            # Example: 1738743999.
            created_at: nil,
            # Returns the details of the document that was used for collecting the proof of
            # completion for the step. In case no document template ID was provided for the
            # given step, then a null value is returned. Each object represents a new field in
            # the document.
            document_snapshot: nil,
            # Returns the duration for layover or break type steps.
            duration: nil,
            # Returns the location coordinates where the step is executed.
            location: nil,
            # An object returning custom details about the step that were configured in the
            # input request while configuring the step details. The information returned here
            # will be available for display on the Driver's app under step details.
            meta: nil,
            # Returns a unique short ID of the step for easier referencing and displaying
            # purposes.
            short_id: nil,
            # Returns the step type. It can belong to one of the following: start, job ,
            # pickup, delivery, break, layover , and end. For any given step, it would be the
            # same as that specified in the input request while configuring the step details.
            type: nil,
            # Represents the timestamp of the last update in seconds since the Unix epoch.
            # Example: 1738743999.
            updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                address: String,
                arrival: Integer,
                completion:
                  NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Completion,
                created_at: Integer,
                document_snapshot: T::Array[T.anything],
                duration: Integer,
                location: T::Array[Float],
                meta:
                  NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Meta,
                short_id: String,
                type: String,
                updated_at: Integer
              }
            )
          end
          def to_hash
          end

          class Completion < NextbillionSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Completion,
                  NextbillionSDK::Internal::AnyHash
                )
              end

            # Represents the timestamp of the completion in seconds since the Unix epoch.
            # Example: 1738743999.
            sig { returns(T.nilable(Integer)) }
            attr_reader :completed_at

            sig { params(completed_at: Integer).void }
            attr_writer :completed_at

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
                  NextbillionSDK::Fleetify::Routes::RouteStepCompletionMode::TaggedSymbol
                )
              )
            end
            attr_reader :completed_by_mode

            sig do
              params(
                completed_by_mode:
                  NextbillionSDK::Fleetify::Routes::RouteStepCompletionMode::OrSymbol
              ).void
            end
            attr_writer :completed_by_mode

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
                  NextbillionSDK::Fleetify::Routes::RouteStepCompletionMode::TaggedSymbol
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

            # A key-value map storing form submission data, where keys correspond to field
            # labels and values can be of any type depend on the type of according document
            # item.
            sig { returns(T.nilable(T.anything)) }
            attr_reader :document

            sig { params(document: T.anything).void }
            attr_writer :document

            # Represents the timestamp of the last doc modification in seconds since the Unix
            # epoch. Example: 1738743999.
            sig { returns(T.nilable(Integer)) }
            attr_reader :document_modified_at

            sig { params(document_modified_at: Integer).void }
            attr_writer :document_modified_at

            # Specify the configurations of the geofence which will be used to detect presence
            # of the driver and complete the tasks automatically. Please note that this
            # attribute is required when completion_mode is either "geofence" or
            # "geofence_manual_fallback".
            sig do
              returns(
                T.nilable(
                  NextbillionSDK::Fleetify::Routes::RouteStepGeofenceConfig
                )
              )
            end
            attr_reader :geofence_config

            sig do
              params(
                geofence_config:
                  NextbillionSDK::Fleetify::Routes::RouteStepGeofenceConfig::OrHash
              ).void
            end
            attr_writer :geofence_config

            # Status of the step.
            sig do
              returns(
                T.nilable(
                  NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Completion::Status::TaggedSymbol
                )
              )
            end
            attr_reader :status

            sig do
              params(
                status:
                  NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Completion::Status::OrSymbol
              ).void
            end
            attr_writer :status

            sig do
              params(
                completed_at: Integer,
                completed_by_mode:
                  NextbillionSDK::Fleetify::Routes::RouteStepCompletionMode::OrSymbol,
                completion_mode:
                  NextbillionSDK::Fleetify::Routes::RouteStepCompletionMode::OrSymbol,
                document: T.anything,
                document_modified_at: Integer,
                geofence_config:
                  NextbillionSDK::Fleetify::Routes::RouteStepGeofenceConfig::OrHash,
                status:
                  NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Completion::Status::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Represents the timestamp of the completion in seconds since the Unix epoch.
              # Example: 1738743999.
              completed_at: nil,
              # Specify the mode of completion to be used for the step. Currently, following
              # values are allowed:
              #
              # - manual: Steps must be marked as completed manually through the Driver App.
              # - geofence: Steps are marked as completed automatically based on the entry
              #   conditions and geofence specified.
              # - geofence_manual_fallback: Steps will be marked as completed automatically
              #   based on geofence and entry condition configurations but there will also be a
              #   provision for manually updating the status in case, geofence detection fails.
              completed_by_mode: nil,
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
              # A key-value map storing form submission data, where keys correspond to field
              # labels and values can be of any type depend on the type of according document
              # item.
              document: nil,
              # Represents the timestamp of the last doc modification in seconds since the Unix
              # epoch. Example: 1738743999.
              document_modified_at: nil,
              # Specify the configurations of the geofence which will be used to detect presence
              # of the driver and complete the tasks automatically. Please note that this
              # attribute is required when completion_mode is either "geofence" or
              # "geofence_manual_fallback".
              geofence_config: nil,
              # Status of the step.
              status: nil
            )
            end

            sig do
              override.returns(
                {
                  completed_at: Integer,
                  completed_by_mode:
                    NextbillionSDK::Fleetify::Routes::RouteStepCompletionMode::TaggedSymbol,
                  completion_mode:
                    NextbillionSDK::Fleetify::Routes::RouteStepCompletionMode::TaggedSymbol,
                  document: T.anything,
                  document_modified_at: Integer,
                  geofence_config:
                    NextbillionSDK::Fleetify::Routes::RouteStepGeofenceConfig,
                  status:
                    NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Completion::Status::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # Status of the step.
            module Status
              extend NextbillionSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Completion::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SCHEDULED =
                T.let(
                  :scheduled,
                  NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Completion::Status::TaggedSymbol
                )
              COMPLETED =
                T.let(
                  :completed,
                  NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Completion::Status::TaggedSymbol
                )
              CANCELED =
                T.let(
                  :canceled,
                  NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Completion::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Completion::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Meta < NextbillionSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  NextbillionSDK::Fleetify::Routes::RouteStepsResponse::Meta,
                  NextbillionSDK::Internal::AnyHash
                )
              end

            # Returns the customer name associated with the step. It can configured in the
            # input request using the metadata attribute of the step.
            sig { returns(T.nilable(String)) }
            attr_reader :customer_name

            sig { params(customer_name: String).void }
            attr_writer :customer_name

            # Returns the customer's phone number associated with the step. It can configured
            # in the input request using the metadata attribute of the step.
            sig { returns(T.nilable(String)) }
            attr_reader :customer_phone_number

            sig { params(customer_phone_number: String).void }
            attr_writer :customer_phone_number

            # Returns the custom instructions to carry out while performing the task. These
            # instructions can be provided at the time of configuring the step details in the
            # input request.
            sig { returns(T.nilable(String)) }
            attr_reader :instructions

            sig { params(instructions: String).void }
            attr_writer :instructions

            # An object returning custom details about the step that were configured in the
            # input request while configuring the step details. The information returned here
            # will be available for display on the Driver's app under step details.
            sig do
              params(
                customer_name: String,
                customer_phone_number: String,
                instructions: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Returns the customer name associated with the step. It can configured in the
              # input request using the metadata attribute of the step.
              customer_name: nil,
              # Returns the customer's phone number associated with the step. It can configured
              # in the input request using the metadata attribute of the step.
              customer_phone_number: nil,
              # Returns the custom instructions to carry out while performing the task. These
              # instructions can be provided at the time of configuring the step details in the
              # input request.
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
