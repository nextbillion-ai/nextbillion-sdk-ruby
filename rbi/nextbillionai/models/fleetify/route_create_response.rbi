# typed: strong

module Nextbillionai
  module Models
    module Fleetify
      class RouteCreateResponse < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::Fleetify::RouteCreateResponse,
              Nextbillionai::Internal::AnyHash
            )
          end

        # An array of objects containing the details of each step in the dispatched route.
        # Each object represents a single step.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Models::Fleetify::RouteCreateResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Nextbillionai::Models::Fleetify::RouteCreateResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        # Returns the status code of the response.
        sig { returns(T.nilable(Integer)) }
        attr_reader :status

        sig { params(status: Integer).void }
        attr_writer :status

        sig do
          params(
            data:
              Nextbillionai::Models::Fleetify::RouteCreateResponse::Data::OrHash,
            status: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of objects containing the details of each step in the dispatched route.
          # Each object represents a single step.
          data: nil,
          # Returns the status code of the response.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              data: Nextbillionai::Models::Fleetify::RouteCreateResponse::Data,
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
                Nextbillionai::Models::Fleetify::RouteCreateResponse::Data,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Returns the unique ID of the dispatched route.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

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
                Nextbillionai::Models::Fleetify::RouteCreateResponse::Data::Driver
              )
            )
          end
          attr_reader :driver

          sig do
            params(
              driver:
                Nextbillionai::Models::Fleetify::RouteCreateResponse::Data::Driver::OrHash
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

          # Returns a shorter unique ID of the dispatched route for easier referencing and
          # displaying purposes.
          sig { returns(T.nilable(String)) }
          attr_reader :short_id

          sig { params(short_id: String).void }
          attr_writer :short_id

          # An array of objects containing the details of all steps to be performed as part
          # of the dispatched route. Each object represents a single step during the route.
          sig do
            returns(
              T.nilable(
                T::Array[Nextbillionai::Fleetify::Routes::RouteStepsResponse]
              )
            )
          end
          attr_reader :steps

          sig do
            params(
              steps:
                T::Array[
                  Nextbillionai::Fleetify::Routes::RouteStepsResponse::OrHash
                ]
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
              created_at: Integer,
              distance: Integer,
              document_snapshot: T::Array[T.anything],
              driver:
                Nextbillionai::Models::Fleetify::RouteCreateResponse::Data::Driver::OrHash,
              ro_request_id: String,
              routing: Nextbillionai::Fleetify::RoutingResponse::OrHash,
              short_id: String,
              steps:
                T::Array[
                  Nextbillionai::Fleetify::Routes::RouteStepsResponse::OrHash
                ],
              total_steps: Integer,
              updated_at: Integer,
              vehicle_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Returns the unique ID of the dispatched route.
            id: nil,
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
            # Returns a shorter unique ID of the dispatched route for easier referencing and
            # displaying purposes.
            short_id: nil,
            # An array of objects containing the details of all steps to be performed as part
            # of the dispatched route. Each object represents a single step during the route.
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
                created_at: Integer,
                distance: Integer,
                document_snapshot: T::Array[T.anything],
                driver:
                  Nextbillionai::Models::Fleetify::RouteCreateResponse::Data::Driver,
                ro_request_id: String,
                routing: Nextbillionai::Fleetify::RoutingResponse,
                short_id: String,
                steps:
                  T::Array[Nextbillionai::Fleetify::Routes::RouteStepsResponse],
                total_steps: Integer,
                updated_at: Integer,
                vehicle_id: String
              }
            )
          end
          def to_hash
          end

          class Driver < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::Fleetify::RouteCreateResponse::Data::Driver,
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
        end
      end
    end
  end
end
