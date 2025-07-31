# typed: strong

module Nextbillionai
  module Models
    module Fleetify
      class RouteRedispatchResponse < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::Fleetify::RouteRedispatchResponse,
              Nextbillionai::Internal::AnyHash
            )
          end

        # An array of objects containing the details of each step in the dispatched route.
        # Each object represents a single step.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        # Returns the error message in case of a failed request. If the request is
        # successful, this field is not present in the response.
        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        # Returns the status code of the response.
        sig { returns(T.nilable(Integer)) }
        attr_reader :status

        sig { params(status: Integer).void }
        attr_writer :status

        sig do
          params(
            data:
              Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::OrHash,
            message: String,
            status: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of objects containing the details of each step in the dispatched route.
          # Each object represents a single step.
          data: nil,
          # Returns the error message in case of a failed request. If the request is
          # successful, this field is not present in the response.
          message: nil,
          # Returns the status code of the response.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              data:
                Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data,
              message: String,
              status: Integer
            }
          )
        end
        def to_hash
        end

        class Data < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Returns the unique ID of the route.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # Returns the number of steps already completed in the route.
          sig { returns(T.nilable(Integer)) }
          attr_reader :completed_steps

          sig { params(completed_steps: Integer).void }
          attr_writer :completed_steps

          # Returns the completion status of the route.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Completion
              )
            )
          end
          attr_reader :completion

          sig do
            params(
              completion:
                Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Completion::OrHash
            ).void
          end
          attr_writer :completion

          # Returns the UNIX timestamp, in seconds precision, at which this route dispatch
          # request was created.
          sig { returns(T.nilable(Integer)) }
          attr_reader :created_at

          sig { params(created_at: Integer).void }
          attr_writer :created_at

          # Returns the total route distance, in meters, for informative display in the
          # driver app. It is the same as the value provided for distance field in the input
          # request.
          sig { returns(T.nilable(Integer)) }
          attr_reader :distance

          sig { params(distance: Integer).void }
          attr_writer :distance

          # Returns the details of the document that was specified in the input for
          # collecting the proof-of-completion for all steps in the dispatched routes. Each
          # object represents a new field in the document.
          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_reader :document_snapshot

          sig { params(document_snapshot: T::Array[T.anything]).void }
          attr_writer :document_snapshot

          # An object returning the details of the driver to whom the route was dispatched.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Driver
              )
            )
          end
          attr_reader :driver

          sig do
            params(
              driver:
                Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Driver::OrHash
            ).void
          end
          attr_writer :driver

          # Returns the route optimization request ID which was used to dispatch the route.
          # An empty string is returned if the corresponding input was not provided.
          sig { returns(T.nilable(String)) }
          attr_reader :ro_request_id

          sig { params(ro_request_id: String).void }
          attr_writer :ro_request_id

          # An object returning the routing characteristics that are used to generate the
          # route and turn-by-turn navigation steps for the dispatched route. The route and
          # navigation steps are available when driver uses the in-app navigation.
          #
          # Please note the routing characteristics returned here are the same as those
          # configured in the input request. The fields which were not specified in the
          # input will be returned as blanks.
          sig { returns(T.nilable(Nextbillionai::Fleetify::RoutingResponse)) }
          attr_reader :routing

          sig do
            params(
              routing: Nextbillionai::Fleetify::RoutingResponse::OrHash
            ).void
          end
          attr_writer :routing

          # Returns a shorter unique ID of the route for easier referencing and displaying
          # purposes.
          sig { returns(T.nilable(String)) }
          attr_reader :short_id

          sig { params(short_id: String).void }
          attr_writer :short_id

          sig do
            returns(
              T.nilable(
                Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps
              )
            )
          end
          attr_reader :steps

          sig do
            params(
              steps:
                Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps::OrHash
            ).void
          end
          attr_writer :steps

          # Returns the total number of steps in the dispatched route.
          sig { returns(T.nilable(Integer)) }
          attr_reader :total_steps

          sig { params(total_steps: Integer).void }
          attr_writer :total_steps

          # Returns the UNIX timestamp, in seconds precision, at which this route dispatch
          # request was updated.
          sig { returns(T.nilable(Integer)) }
          attr_reader :updated_at

          sig { params(updated_at: Integer).void }
          attr_writer :updated_at

          # Returns the ID of the vehicle to which the route was dispatched. The vehicle ID
          # returned here is the same as the one used in the route optimization request for
          # the given vehicle. An empty string is returned if the ro_request_id was not
          # provided in the input.
          sig { returns(T.nilable(String)) }
          attr_reader :vehicle_id

          sig { params(vehicle_id: String).void }
          attr_writer :vehicle_id

          # An array of objects containing the details of each step in the dispatched route.
          # Each object represents a single step.
          sig do
            params(
              id: String,
              completed_steps: Integer,
              completion:
                Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Completion::OrHash,
              created_at: Integer,
              distance: Integer,
              document_snapshot: T::Array[T.anything],
              driver:
                Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Driver::OrHash,
              ro_request_id: String,
              routing: Nextbillionai::Fleetify::RoutingResponse::OrHash,
              short_id: String,
              steps:
                Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps::OrHash,
              total_steps: Integer,
              updated_at: Integer,
              vehicle_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Returns the unique ID of the route.
            id: nil,
            # Returns the number of steps already completed in the route.
            completed_steps: nil,
            # Returns the completion status of the route.
            completion: nil,
            # Returns the UNIX timestamp, in seconds precision, at which this route dispatch
            # request was created.
            created_at: nil,
            # Returns the total route distance, in meters, for informative display in the
            # driver app. It is the same as the value provided for distance field in the input
            # request.
            distance: nil,
            # Returns the details of the document that was specified in the input for
            # collecting the proof-of-completion for all steps in the dispatched routes. Each
            # object represents a new field in the document.
            document_snapshot: nil,
            # An object returning the details of the driver to whom the route was dispatched.
            driver: nil,
            # Returns the route optimization request ID which was used to dispatch the route.
            # An empty string is returned if the corresponding input was not provided.
            ro_request_id: nil,
            # An object returning the routing characteristics that are used to generate the
            # route and turn-by-turn navigation steps for the dispatched route. The route and
            # navigation steps are available when driver uses the in-app navigation.
            #
            # Please note the routing characteristics returned here are the same as those
            # configured in the input request. The fields which were not specified in the
            # input will be returned as blanks.
            routing: nil,
            # Returns a shorter unique ID of the route for easier referencing and displaying
            # purposes.
            short_id: nil,
            steps: nil,
            # Returns the total number of steps in the dispatched route.
            total_steps: nil,
            # Returns the UNIX timestamp, in seconds precision, at which this route dispatch
            # request was updated.
            updated_at: nil,
            # Returns the ID of the vehicle to which the route was dispatched. The vehicle ID
            # returned here is the same as the one used in the route optimization request for
            # the given vehicle. An empty string is returned if the ro_request_id was not
            # provided in the input.
            vehicle_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                completed_steps: Integer,
                completion:
                  Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Completion,
                created_at: Integer,
                distance: Integer,
                document_snapshot: T::Array[T.anything],
                driver:
                  Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Driver,
                ro_request_id: String,
                routing: Nextbillionai::Fleetify::RoutingResponse,
                short_id: String,
                steps:
                  Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps,
                total_steps: Integer,
                updated_at: Integer,
                vehicle_id: String
              }
            )
          end
          def to_hash
          end

          class Completion < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Completion,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Returns the status of the route. It can take one of the following values -
            # "scheduled", "completed".
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Completion::Status::TaggedSymbol
                )
              )
            end
            attr_reader :status

            sig do
              params(
                status:
                  Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Completion::Status::OrSymbol
              ).void
            end
            attr_writer :status

            # Returns the completion status of the route.
            sig do
              params(
                status:
                  Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Completion::Status::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Returns the status of the route. It can take one of the following values -
              # "scheduled", "completed".
              status: nil
            )
            end

            sig do
              override.returns(
                {
                  status:
                    Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Completion::Status::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            # Returns the status of the route. It can take one of the following values -
            # "scheduled", "completed".
            module Status
              extend Nextbillionai::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Completion::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SCHEDULED =
                T.let(
                  :scheduled,
                  Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Completion::Status::TaggedSymbol
                )
              COMPLETED =
                T.let(
                  :completed,
                  Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Completion::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Completion::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Driver < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Driver,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Returns the ID of the driver as specified in the
            # [NextBillion.ai](http://NextBillion.ai) Cloud Console.
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # Returns the email of the driver as specified in the
            # [NextBillion.ai](http://NextBillion.ai) Cloud Console.
            sig { returns(T.nilable(String)) }
            attr_reader :email

            sig { params(email: String).void }
            attr_writer :email

            # Returns the full name of the driver as specified in
            # [NextBillion.ai](http://NextBillion.ai) Cloud Console.
            sig { returns(T.nilable(String)) }
            attr_reader :fullname

            sig { params(fullname: String).void }
            attr_writer :fullname

            # An object returning the details of the driver to whom the route was dispatched.
            sig do
              params(id: String, email: String, fullname: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Returns the ID of the driver as specified in the
              # [NextBillion.ai](http://NextBillion.ai) Cloud Console.
              id: nil,
              # Returns the email of the driver as specified in the
              # [NextBillion.ai](http://NextBillion.ai) Cloud Console.
              email: nil,
              # Returns the full name of the driver as specified in
              # [NextBillion.ai](http://NextBillion.ai) Cloud Console.
              fullname: nil
            )
            end

            sig do
              override.returns({ id: String, email: String, fullname: String })
            end
            def to_hash
            end
          end

          class Steps < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps,
                  Nextbillionai::Internal::AnyHash
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

            # Returns the completion status of the step.
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps::Completion
                )
              )
            end
            attr_reader :completion

            sig do
              params(
                completion:
                  Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps::Completion::OrHash
              ).void
            end
            attr_writer :completion

            # Returns the UNIX timestamp, in seconds precision, at which this step was
            # created.
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
                  Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps::Meta
                )
              )
            end
            attr_reader :meta

            sig do
              params(
                meta:
                  Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps::Meta::OrHash
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

            # Returns the UNIX timestamp, in seconds precision, at which this step was last
            # updated.
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
                  Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps::Completion::OrHash,
                created_at: Integer,
                document_snapshot: T::Array[T.anything],
                duration: Integer,
                location: T::Array[Float],
                meta:
                  Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps::Meta::OrHash,
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
              # Returns the completion status of the step.
              completion: nil,
              # Returns the UNIX timestamp, in seconds precision, at which this step was
              # created.
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
              # Returns the UNIX timestamp, in seconds precision, at which this step was last
              # updated.
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
                    Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps::Completion,
                  created_at: Integer,
                  document_snapshot: T::Array[T.anything],
                  duration: Integer,
                  location: T::Array[Float],
                  meta:
                    Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps::Meta,
                  short_id: String,
                  type: String,
                  updated_at: Integer
                }
              )
            end
            def to_hash
            end

            class Completion < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps::Completion,
                    Nextbillionai::Internal::AnyHash
                  )
                end

              # Returns the status of the step. It can take one of the following values -
              # "scheduled", "completed".
              sig { returns(T.nilable(String)) }
              attr_reader :status

              sig { params(status: String).void }
              attr_writer :status

              # Returns the completion status of the step.
              sig { params(status: String).returns(T.attached_class) }
              def self.new(
                # Returns the status of the step. It can take one of the following values -
                # "scheduled", "completed".
                status: nil
              )
              end

              sig { override.returns({ status: String }) }
              def to_hash
              end
            end

            class Meta < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data::Steps::Meta,
                    Nextbillionai::Internal::AnyHash
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
end
