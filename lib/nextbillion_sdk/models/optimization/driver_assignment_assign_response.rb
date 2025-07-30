# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Optimization
      # @see NextbillionSDK::Resources::Optimization::DriverAssignment#assign
      class DriverAssignmentAssignResponse < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute message
        #   Displays indicative error message in case of a failed request or operation.
        #   Please note that this parameter is not returned in the response in case of a
        #   successful request.
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute result
        #   An object containing the details of the assignments.
        #
        #   @return [NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result, nil]
        optional :result, -> { NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result }

        # @!attribute status
        #   An integer indicating the HTTP response code. See the
        #   [API Error Handling](https://docs.nextbillion.ai/optimization/driver-assignment-api#api-error-handling)
        #   section below for more information.
        #
        #   @return [Integer, nil]
        optional :status, Integer

        # @!method initialize(message: nil, result: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse} for more
        #   details.
        #
        #   @param message [String] Displays indicative error message in case of a failed request or operation. Plea
        #
        #   @param result [NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result] An object containing the details of the assignments.
        #
        #   @param status [Integer] An integer indicating the HTTP response code. See the [API Error Handling](https

        # @see NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse#result
        class Result < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute alternate_assignments
          #   An array of objects containing the details of the potential, alternate vehicle
          #   assignments for the orders in the input. This attribute will not be returned in
          #   the response if the alternate_assignments was not provided in the input. Each
          #   object represents alternate assignments for a single order.
          #
          #   @return [Array<NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::AlternateAssignment>, nil]
          optional :alternate_assignments,
                   -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::AlternateAssignment] }

          # @!attribute available_vehicles
          #   A collection of vehicles IDs that were not assigned to any orders. A null value
          #   is returned if there are no vehicles without an order assignment.
          #
          #   @return [Array<String>, nil]
          optional :available_vehicles, NextbillionSDK::Internal::Type::ArrayOf[String]

          # @!attribute trips
          #   An collection of objects returning the trip details for each vehicle which was
          #   assigned to an order. Each object corresponds to one vehicle.
          #
          #   @return [Array<NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip>, nil]
          optional :trips,
                   -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip] }

          # @!attribute unassigned_orders
          #   A collection of objects listing the details of orders which remained unassigned.
          #   Each object represents a single order. A null value is returned if there are no
          #   unassigned orders.
          #
          #   @return [Array<NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::UnassignedOrder>, nil]
          optional :unassigned_orders,
                   -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::UnassignedOrder] }

          # @!method initialize(alternate_assignments: nil, available_vehicles: nil, trips: nil, unassigned_orders: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result}
          #   for more details.
          #
          #   An object containing the details of the assignments.
          #
          #   @param alternate_assignments [Array<NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::AlternateAssignment>] An array of objects containing the details of the potential, alternate vehicle a
          #
          #   @param available_vehicles [Array<String>] A collection of vehicles IDs that were not assigned to any orders. A null value
          #
          #   @param trips [Array<NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip>] An collection of objects returning the trip details for each vehicle which was a
          #
          #   @param unassigned_orders [Array<NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::UnassignedOrder>] A collection of objects listing the details of orders which remained unassigned.

          class AlternateAssignment < NextbillionSDK::Internal::Type::BaseModel
            # @!attribute assignments
            #   An array of objects containing the details of the alternate vehicle assignments.
            #   Each object represents an alternate vehicle assignment.
            #
            #   @return [Array<NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::AlternateAssignment::Assignment>, nil]
            optional :assignments,
                     -> do
                       NextbillionSDK::Internal::Type::ArrayOf[
                         NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::AlternateAssignment::Assignment
                       ]
                     end

            # @!attribute order_id
            #   Returns the order ID associated with the alternate assignments.
            #
            #   @return [String, nil]
            optional :order_id, String

            # @!method initialize(assignments: nil, order_id: nil)
            #   Some parameter documentations has been truncated, see
            #   {NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::AlternateAssignment}
            #   for more details.
            #
            #   @param assignments [Array<NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::AlternateAssignment::Assignment>] An array of objects containing the details of the alternate vehicle assignments.
            #
            #   @param order_id [String] Returns the order ID associated with the alternate assignments.

            class Assignment < NextbillionSDK::Internal::Type::BaseModel
              # @!attribute pickup_eta
              #   Returns the ETA to the order's pickup location for the given vehicle.
              #
              #   @return [Integer, nil]
              optional :pickup_eta, Integer

              # @!attribute vehicle_id
              #   Returns the vehicle ID which could potentially be assigned to the given order.
              #
              #   @return [String, nil]
              optional :vehicle_id, String

              # @!method initialize(pickup_eta: nil, vehicle_id: nil)
              #   @param pickup_eta [Integer] Returns the ETA to the order's pickup location for the given vehicle.
              #
              #   @param vehicle_id [String] Returns the vehicle ID which could potentially be assigned to the given order.
            end
          end

          class Trip < NextbillionSDK::Internal::Type::BaseModel
            # @!attribute trip_id
            #   Returns a unique trip ID.
            #
            #   @return [String, nil]
            optional :trip_id, String

            # @!attribute vehicle
            #   Returns the details of the vehicle, assigned order and the trip steps.
            #
            #   @return [NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle, nil]
            optional :vehicle,
                     -> { NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle }

            # @!method initialize(trip_id: nil, vehicle: nil)
            #   @param trip_id [String] Returns a unique trip ID.
            #
            #   @param vehicle [NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle] Returns the details of the vehicle, assigned order and the trip steps.

            # @see NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip#vehicle
            class Vehicle < NextbillionSDK::Internal::Type::BaseModel
              # @!attribute id
              #   Returns the ID of the vehicle.
              #
              #   @return [String, nil]
              optional :id, String

              # @!attribute steps
              #   A collection of objects returning the sequence of steps that the vehicle needs
              #   to perform for a trip.
              #
              #   @return [NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps, nil]
              optional :steps,
                       -> { NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps }

              # @!attribute vehicle_current_location
              #   Location info.
              #
              #   @return [NextbillionSDK::Models::Optimization::Location, nil]
              optional :vehicle_current_location, -> { NextbillionSDK::Optimization::Location }

              # @!method initialize(id: nil, steps: nil, vehicle_current_location: nil)
              #   Some parameter documentations has been truncated, see
              #   {NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle}
              #   for more details.
              #
              #   Returns the details of the vehicle, assigned order and the trip steps.
              #
              #   @param id [String] Returns the ID of the vehicle.
              #
              #   @param steps [NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps] A collection of objects returning the sequence of steps that the vehicle needs t
              #
              #   @param vehicle_current_location [NextbillionSDK::Models::Optimization::Location] Location info.

              # @see NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle#steps
              class Steps < NextbillionSDK::Internal::Type::BaseModel
                # @!attribute distance
                #   Returns the driving distance, in meters, to the step's location from previous
                #   step's location. For the first step of a trip, distance indicates the driving
                #   distance from vehicle_current_location to the step's location.
                #
                #   @return [Integer, nil]
                optional :distance, Integer

                # @!attribute eta
                #   Returns the driving duration, in seconds, to the step's location from previous
                #   step's location. For the first step of a trip, eta indicates the driving
                #   duration from vehicle_current_location to the step's location.
                #
                #   @return [Integer, nil]
                optional :eta, Integer

                # @!attribute location
                #   Location info.
                #
                #   @return [NextbillionSDK::Models::Optimization::Location, nil]
                optional :location, -> { NextbillionSDK::Optimization::Location }

                # @!attribute order_id
                #   Returns the ID of the order. In case the step type is **ongoing**, an empty
                #   string is returned.
                #
                #   @return [String, nil]
                optional :order_id, String

                # @!attribute type
                #   Returns the type of the step. Currently, it can take following values:
                #
                #   - **pickup:** Indicates the pickup step for an order
                #   - **dropoff:** Indicates the dropoff step for an order. It is returned only if
                #     dropoff_details was **true** in the input request.
                #   - **ongoing:** Indicates a step that the vehicle needs to complete on its
                #     current trip. This is returned in the response only when remaining_waypoints
                #     input was provided for the given vehicle.
                #   - **intermediate_waypoint:** Indicates an intermediate stop that the vehicle
                #     needs to complete in case multiple dropoffs are provided in the input.
                #
                #   @return [Symbol, NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps::Type, nil]
                optional :type,
                         enum: -> { NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps::Type }

                # @!method initialize(distance: nil, eta: nil, location: nil, order_id: nil, type: nil)
                #   Some parameter documentations has been truncated, see
                #   {NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps}
                #   for more details.
                #
                #   A collection of objects returning the sequence of steps that the vehicle needs
                #   to perform for a trip.
                #
                #   @param distance [Integer] Returns the driving distance, in meters, to the step's location from previous st
                #
                #   @param eta [Integer] Returns the driving duration, in seconds, to the step's location from previous s
                #
                #   @param location [NextbillionSDK::Models::Optimization::Location] Location info.
                #
                #   @param order_id [String] Returns the ID of the order. In case the step type is **ongoing**, an empty stri
                #
                #   @param type [Symbol, NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps::Type] Returns the type of the step. Currently, it can take following values:

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
                #
                # @see NextbillionSDK::Models::Optimization::DriverAssignmentAssignResponse::Result::Trip::Vehicle::Steps#type
                module Type
                  extend NextbillionSDK::Internal::Type::Enum

                  PICKUP = :pickup
                  DROPOFF = :dropoff
                  ONGOING = :ongoing

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end
          end

          class UnassignedOrder < NextbillionSDK::Internal::Type::BaseModel
            # @!attribute order_id
            #   Returns the ID of the order which remained unassigned.
            #
            #   @return [String, nil]
            optional :order_id, String

            # @!attribute unassigned_reason
            #   Returns the most probable reason due to which the order remained unassigned.
            #
            #   @return [String, nil]
            optional :unassigned_reason, String

            # @!method initialize(order_id: nil, unassigned_reason: nil)
            #   @param order_id [String] Returns the ID of the order which remained unassigned.
            #
            #   @param unassigned_reason [String] Returns the most probable reason due to which the order remained unassigned.
          end
        end
      end
    end
  end
end
