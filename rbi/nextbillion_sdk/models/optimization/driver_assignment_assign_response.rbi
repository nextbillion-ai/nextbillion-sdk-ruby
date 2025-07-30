# typed: strong

module NextbillionSDK
  module Models
    module Optimization
      class DriverAssignmentAssignResponse < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # Displays indicative error message in case of a failed request or operation.
        # Please note that this parameter is not returned in the response in case of a
        # successful request.
        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        # An object containing the details of the assignments.
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result
            )
          )
        end
        attr_reader :result

        sig do
          params(
            result:
              NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::OrHash
          ).void
        end
        attr_writer :result

        # An integer indicating the HTTP response code. See the
        # [API Error Handling](https://docs.nextbillion.ai/optimization/driver-assignment-api#api-error-handling)
        # section below for more information.
        sig { returns(T.nilable(Integer)) }
        attr_reader :status

        sig { params(status: Integer).void }
        attr_writer :status

        sig do
          params(
            message: String,
            result:
              NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::OrHash,
            status: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Displays indicative error message in case of a failed request or operation.
          # Please note that this parameter is not returned in the response in case of a
          # successful request.
          message: nil,
          # An object containing the details of the assignments.
          result: nil,
          # An integer indicating the HTTP response code. See the
          # [API Error Handling](https://docs.nextbillion.ai/optimization/driver-assignment-api#api-error-handling)
          # section below for more information.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              message: String,
              result:
                NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result,
              status: Integer
            }
          )
        end
        def to_hash
        end

        class Result < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # An array of objects containing the details of the potential, alternate vehicle
          # assignments for the orders in the input. This attribute will not be returned in
          # the response if the alternate_assignments was not provided in the input. Each
          # object represents alternate assignments for a single order.
          sig do
            returns(
              T.nilable(
                T::Array[
                  NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::AlternateAssignment
                ]
              )
            )
          end
          attr_reader :alternate_assignments

          sig do
            params(
              alternate_assignments:
                T::Array[
                  NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::AlternateAssignment::OrHash
                ]
            ).void
          end
          attr_writer :alternate_assignments

          # A collection of vehicles IDs that were not assigned to any orders. A null value
          # is returned if there are no vehicles without an order assignment.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :available_vehicles

          sig { params(available_vehicles: T::Array[String]).void }
          attr_writer :available_vehicles

          # An collection of objects returning the trip details for each vehicle which was
          # assigned to an order. Each object corresponds to one vehicle.
          sig do
            returns(
              T.nilable(
                T::Array[
                  NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip
                ]
              )
            )
          end
          attr_reader :trips

          sig do
            params(
              trips:
                T::Array[
                  NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::OrHash
                ]
            ).void
          end
          attr_writer :trips

          # A collection of objects listing the details of orders which remained unassigned.
          # Each object represents a single order. A null value is returned if there are no
          # unassigned orders.
          sig do
            returns(
              T.nilable(
                T::Array[
                  NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::UnassignedOrder
                ]
              )
            )
          end
          attr_reader :unassigned_orders

          sig do
            params(
              unassigned_orders:
                T::Array[
                  NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::UnassignedOrder::OrHash
                ]
            ).void
          end
          attr_writer :unassigned_orders

          # An object containing the details of the assignments.
          sig do
            params(
              alternate_assignments:
                T::Array[
                  NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::AlternateAssignment::OrHash
                ],
              available_vehicles: T::Array[String],
              trips:
                T::Array[
                  NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::OrHash
                ],
              unassigned_orders:
                T::Array[
                  NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::UnassignedOrder::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # An array of objects containing the details of the potential, alternate vehicle
            # assignments for the orders in the input. This attribute will not be returned in
            # the response if the alternate_assignments was not provided in the input. Each
            # object represents alternate assignments for a single order.
            alternate_assignments: nil,
            # A collection of vehicles IDs that were not assigned to any orders. A null value
            # is returned if there are no vehicles without an order assignment.
            available_vehicles: nil,
            # An collection of objects returning the trip details for each vehicle which was
            # assigned to an order. Each object corresponds to one vehicle.
            trips: nil,
            # A collection of objects listing the details of orders which remained unassigned.
            # Each object represents a single order. A null value is returned if there are no
            # unassigned orders.
            unassigned_orders: nil
          )
          end

          sig do
            override.returns(
              {
                alternate_assignments:
                  T::Array[
                    NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::AlternateAssignment
                  ],
                available_vehicles: T::Array[String],
                trips:
                  T::Array[
                    NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip
                  ],
                unassigned_orders:
                  T::Array[
                    NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::UnassignedOrder
                  ]
              }
            )
          end
          def to_hash
          end

          class AlternateAssignment < NextbillionSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::AlternateAssignment,
                  NextbillionSDK::Internal::AnyHash
                )
              end

            # An array of objects containing the details of the alternate vehicle assignments.
            # Each object represents an alternate vehicle assignment.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::AlternateAssignment::Assignment
                  ]
                )
              )
            end
            attr_reader :assignments

            sig do
              params(
                assignments:
                  T::Array[
                    NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::AlternateAssignment::Assignment::OrHash
                  ]
              ).void
            end
            attr_writer :assignments

            # Returns the order ID associated with the alternate assignments.
            sig { returns(T.nilable(String)) }
            attr_reader :order_id

            sig { params(order_id: String).void }
            attr_writer :order_id

            sig do
              params(
                assignments:
                  T::Array[
                    NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::AlternateAssignment::Assignment::OrHash
                  ],
                order_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              # An array of objects containing the details of the alternate vehicle assignments.
              # Each object represents an alternate vehicle assignment.
              assignments: nil,
              # Returns the order ID associated with the alternate assignments.
              order_id: nil
            )
            end

            sig do
              override.returns(
                {
                  assignments:
                    T::Array[
                      NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::AlternateAssignment::Assignment
                    ],
                  order_id: String
                }
              )
            end
            def to_hash
            end

            class Assignment < NextbillionSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::AlternateAssignment::Assignment,
                    NextbillionSDK::Internal::AnyHash
                  )
                end

              # Returns the ETA to the order's pickup location for the given vehicle.
              sig { returns(T.nilable(Integer)) }
              attr_reader :pickup_eta

              sig { params(pickup_eta: Integer).void }
              attr_writer :pickup_eta

              # Returns the vehicle ID which could potentially be assigned to the given order.
              sig { returns(T.nilable(String)) }
              attr_reader :vehicle_id

              sig { params(vehicle_id: String).void }
              attr_writer :vehicle_id

              sig do
                params(pickup_eta: Integer, vehicle_id: String).returns(
                  T.attached_class
                )
              end
              def self.new(
                # Returns the ETA to the order's pickup location for the given vehicle.
                pickup_eta: nil,
                # Returns the vehicle ID which could potentially be assigned to the given order.
                vehicle_id: nil
              )
              end

              sig do
                override.returns({ pickup_eta: Integer, vehicle_id: String })
              end
              def to_hash
              end
            end
          end

          class Trip < NextbillionSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip,
                  NextbillionSDK::Internal::AnyHash
                )
              end

            # Returns a unique trip ID.
            sig { returns(T.nilable(String)) }
            attr_reader :trip_id

            sig { params(trip_id: String).void }
            attr_writer :trip_id

            # Returns the details of the vehicle, assigned order and the trip steps.
            sig do
              returns(
                T.nilable(
                  NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle
                )
              )
            end
            attr_reader :vehicle

            sig do
              params(
                vehicle:
                  NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::OrHash
              ).void
            end
            attr_writer :vehicle

            sig do
              params(
                trip_id: String,
                vehicle:
                  NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Returns a unique trip ID.
              trip_id: nil,
              # Returns the details of the vehicle, assigned order and the trip steps.
              vehicle: nil
            )
            end

            sig do
              override.returns(
                {
                  trip_id: String,
                  vehicle:
                    NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle
                }
              )
            end
            def to_hash
            end

            class Vehicle < NextbillionSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle,
                    NextbillionSDK::Internal::AnyHash
                  )
                end

              # Returns the ID of the vehicle.
              sig { returns(T.nilable(String)) }
              attr_reader :id

              sig { params(id: String).void }
              attr_writer :id

              # A collection of objects returning the sequence of steps that the vehicle needs
              # to perform for a trip.
              sig do
                returns(
                  T.nilable(
                    NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps
                  )
                )
              end
              attr_reader :steps

              sig do
                params(
                  steps:
                    NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps::OrHash
                ).void
              end
              attr_writer :steps

              # Location info.
              sig { returns(T.nilable(NextbillionSDK::Optimization::Location)) }
              attr_reader :vehicle_current_location

              sig do
                params(
                  vehicle_current_location:
                    NextbillionSDK::Optimization::Location::OrHash
                ).void
              end
              attr_writer :vehicle_current_location

              # Returns the details of the vehicle, assigned order and the trip steps.
              sig do
                params(
                  id: String,
                  steps:
                    NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps::OrHash,
                  vehicle_current_location:
                    NextbillionSDK::Optimization::Location::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # Returns the ID of the vehicle.
                id: nil,
                # A collection of objects returning the sequence of steps that the vehicle needs
                # to perform for a trip.
                steps: nil,
                # Location info.
                vehicle_current_location: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    steps:
                      NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps,
                    vehicle_current_location:
                      NextbillionSDK::Optimization::Location
                  }
                )
              end
              def to_hash
              end

              class Steps < NextbillionSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps,
                      NextbillionSDK::Internal::AnyHash
                    )
                  end

                # Returns the driving distance, in meters, to the step's location from previous
                # step's location. For the first step of a trip, distance indicates the driving
                # distance from vehicle_current_location to the step's location.
                sig { returns(T.nilable(Integer)) }
                attr_reader :distance

                sig { params(distance: Integer).void }
                attr_writer :distance

                # Returns the driving duration, in seconds, to the step's location from previous
                # step's location. For the first step of a trip, eta indicates the driving
                # duration from vehicle_current_location to the step's location.
                sig { returns(T.nilable(Integer)) }
                attr_reader :eta

                sig { params(eta: Integer).void }
                attr_writer :eta

                # Location info.
                sig do
                  returns(T.nilable(NextbillionSDK::Optimization::Location))
                end
                attr_reader :location

                sig do
                  params(
                    location: NextbillionSDK::Optimization::Location::OrHash
                  ).void
                end
                attr_writer :location

                # Returns the ID of the order. In case the step type is **ongoing**, an empty
                # string is returned.
                sig { returns(T.nilable(String)) }
                attr_reader :order_id

                sig { params(order_id: String).void }
                attr_writer :order_id

                # Returns the type of the step. Currently, it can take following values:
                #
                # - **pickup:** Indicates the pickup step for an order
                # - **dropoff:** Indicates the dropoff step for an order. It is returned only if
                #   dropoff_details was **true** in the input request.
                # - **ongoing:** Indicates a step that the vehicle needs to complete on its
                #   current trip. This is returned in the response only when remaining_waypoints
                #   input was provided for the given vehicle.
                # - **intermediate_waypoint:** Indicates an intermediate stop that the vehicle
                #   needs to complete in case multiple dropoffs are provided in the input.
                sig do
                  returns(
                    T.nilable(
                      NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps::Type::TaggedSymbol
                    )
                  )
                end
                attr_reader :type

                sig do
                  params(
                    type:
                      NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps::Type::OrSymbol
                  ).void
                end
                attr_writer :type

                # A collection of objects returning the sequence of steps that the vehicle needs
                # to perform for a trip.
                sig do
                  params(
                    distance: Integer,
                    eta: Integer,
                    location: NextbillionSDK::Optimization::Location::OrHash,
                    order_id: String,
                    type:
                      NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Returns the driving distance, in meters, to the step's location from previous
                  # step's location. For the first step of a trip, distance indicates the driving
                  # distance from vehicle_current_location to the step's location.
                  distance: nil,
                  # Returns the driving duration, in seconds, to the step's location from previous
                  # step's location. For the first step of a trip, eta indicates the driving
                  # duration from vehicle_current_location to the step's location.
                  eta: nil,
                  # Location info.
                  location: nil,
                  # Returns the ID of the order. In case the step type is **ongoing**, an empty
                  # string is returned.
                  order_id: nil,
                  # Returns the type of the step. Currently, it can take following values:
                  #
                  # - **pickup:** Indicates the pickup step for an order
                  # - **dropoff:** Indicates the dropoff step for an order. It is returned only if
                  #   dropoff_details was **true** in the input request.
                  # - **ongoing:** Indicates a step that the vehicle needs to complete on its
                  #   current trip. This is returned in the response only when remaining_waypoints
                  #   input was provided for the given vehicle.
                  # - **intermediate_waypoint:** Indicates an intermediate stop that the vehicle
                  #   needs to complete in case multiple dropoffs are provided in the input.
                  type: nil
                )
                end

                sig do
                  override.returns(
                    {
                      distance: Integer,
                      eta: Integer,
                      location: NextbillionSDK::Optimization::Location,
                      order_id: String,
                      type:
                        NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps::Type::TaggedSymbol
                    }
                  )
                end
                def to_hash
                end

                # Returns the type of the step. Currently, it can take following values:
                #
                # - **pickup:** Indicates the pickup step for an order
                # - **dropoff:** Indicates the dropoff step for an order. It is returned only if
                #   dropoff_details was **true** in the input request.
                # - **ongoing:** Indicates a step that the vehicle needs to complete on its
                #   current trip. This is returned in the response only when remaining_waypoints
                #   input was provided for the given vehicle.
                # - **intermediate_waypoint:** Indicates an intermediate stop that the vehicle
                #   needs to complete in case multiple dropoffs are provided in the input.
                module Type
                  extend NextbillionSDK::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PICKUP =
                    T.let(
                      :pickup,
                      NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps::Type::TaggedSymbol
                    )
                  DROPOFF =
                    T.let(
                      :dropoff,
                      NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps::Type::TaggedSymbol
                    )
                  ONGOING =
                    T.let(
                      :ongoing,
                      NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps::Type::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end
          end

          class UnassignedOrder < NextbillionSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::UnassignedOrder,
                  NextbillionSDK::Internal::AnyHash
                )
              end

            # Returns the ID of the order which remained unassigned.
            sig { returns(T.nilable(String)) }
            attr_reader :order_id

            sig { params(order_id: String).void }
            attr_writer :order_id

            # Returns the most probable reason due to which the order remained unassigned.
            sig { returns(T.nilable(String)) }
            attr_reader :unassigned_reason

            sig { params(unassigned_reason: String).void }
            attr_writer :unassigned_reason

            sig do
              params(order_id: String, unassigned_reason: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Returns the ID of the order which remained unassigned.
              order_id: nil,
              # Returns the most probable reason due to which the order remained unassigned.
              unassigned_reason: nil
            )
            end

            sig do
              override.returns({ order_id: String, unassigned_reason: String })
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
