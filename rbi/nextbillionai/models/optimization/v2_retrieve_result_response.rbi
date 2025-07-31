# typed: strong

module Nextbillionai
  module Models
    module Optimization
      class V2RetrieveResultResponse < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::Optimization::V2RetrieveResultResponse,
              Nextbillionai::Internal::AnyHash
            )
          end

        # Returns the description of the optimization job as given in the input POST
        # optimization request. This field will not be present in the response if no
        # description was provided in the input request.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Returns the message in case of errors or failures, otherwise a blank string is
        # returned.
        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        # An object containing the details of the optimized routes.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result
            )
          )
        end
        attr_reader :result

        sig do
          params(
            result:
              Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::OrHash
          ).void
        end
        attr_writer :result

        # It indicates the overall status or result of the API request denoting whether
        # the operation was successful or did it encounter any errors.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            description: String,
            message: String,
            result:
              Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::OrHash,
            status:
              Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Returns the description of the optimization job as given in the input POST
          # optimization request. This field will not be present in the response if no
          # description was provided in the input request.
          description: nil,
          # Returns the message in case of errors or failures, otherwise a blank string is
          # returned.
          message: nil,
          # An object containing the details of the optimized routes.
          result: nil,
          # It indicates the overall status or result of the API request denoting whether
          # the operation was successful or did it encounter any errors.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              description: String,
              message: String,
              result:
                Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result,
              status:
                Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Result < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result,
                Nextbillionai::Internal::AnyHash
              )
            end

          # A custom code representing the status of the result. A code other than 0,
          # represents an internal error. In case of codes other than 0, please verify the
          # parameter values, constraints and locations. If the issue does not resolve,
          # please reach out to NextBillion at
          # [support@nextbillion.ai](mailto:support@nextbillion.ai).
          sig { returns(T.nilable(Integer)) }
          attr_reader :code

          sig { params(code: Integer).void }
          attr_writer :code

          # Returns the error message for unfulfilled optimization jobs. This field will not
          # be present in the response in case there are no errors.
          sig { returns(T.nilable(String)) }
          attr_reader :error

          sig { params(error: String).void }
          attr_writer :error

          # An array of objects containing the details of each route in the optimized
          # solution. Each object represents one route.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Route
                ]
              )
            )
          end
          attr_reader :routes

          sig do
            params(
              routes:
                T::Array[
                  Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Route::OrHash
                ]
            ).void
          end
          attr_writer :routes

          # Returns all the routing profiles used in the solution. If no routing profiles
          # were provided in the input or if the vehicles tagged to profiles were not used
          # in the solution, the "default" routing properties are returned. Default routing
          # properties are indicated by options.routing in the input.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :routing_profiles

          sig { params(routing_profiles: T.anything).void }
          attr_writer :routing_profiles

          # An object to describe the summarized result of the optimization request. This
          # object can be useful to quickly get an overview of the important result
          # parameters.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Summary
              )
            )
          end
          attr_reader :summary

          sig do
            params(
              summary:
                Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Summary::OrHash
            ).void
          end
          attr_writer :summary

          # An array of objects containing the details of unassigned tasks in the optimized
          # solution. Each object represents one task.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Unassigned
                ]
              )
            )
          end
          attr_reader :unassigned

          sig do
            params(
              unassigned:
                T::Array[
                  Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Unassigned::OrHash
                ]
            ).void
          end
          attr_writer :unassigned

          # An object containing the details of the optimized routes.
          sig do
            params(
              code: Integer,
              error: String,
              routes:
                T::Array[
                  Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Route::OrHash
                ],
              routing_profiles: T.anything,
              summary:
                Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Summary::OrHash,
              unassigned:
                T::Array[
                  Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Unassigned::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # A custom code representing the status of the result. A code other than 0,
            # represents an internal error. In case of codes other than 0, please verify the
            # parameter values, constraints and locations. If the issue does not resolve,
            # please reach out to NextBillion at
            # [support@nextbillion.ai](mailto:support@nextbillion.ai).
            code: nil,
            # Returns the error message for unfulfilled optimization jobs. This field will not
            # be present in the response in case there are no errors.
            error: nil,
            # An array of objects containing the details of each route in the optimized
            # solution. Each object represents one route.
            routes: nil,
            # Returns all the routing profiles used in the solution. If no routing profiles
            # were provided in the input or if the vehicles tagged to profiles were not used
            # in the solution, the "default" routing properties are returned. Default routing
            # properties are indicated by options.routing in the input.
            routing_profiles: nil,
            # An object to describe the summarized result of the optimization request. This
            # object can be useful to quickly get an overview of the important result
            # parameters.
            summary: nil,
            # An array of objects containing the details of unassigned tasks in the optimized
            # solution. Each object represents one task.
            unassigned: nil
          )
          end

          sig do
            override.returns(
              {
                code: Integer,
                error: String,
                routes:
                  T::Array[
                    Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Route
                  ],
                routing_profiles: T.anything,
                summary:
                  Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Summary,
                unassigned:
                  T::Array[
                    Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Unassigned
                  ]
              }
            )
          end
          def to_hash
          end

          class Route < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Route,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Returns the capacity configuration of the vehicle that was used for this route.
            # This field would return either the vehicle's capacity or one of the
            # alternative_capacities provided in the input request.
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_reader :adopted_capacity

            sig { params(adopted_capacity: T::Array[Integer]).void }
            attr_writer :adopted_capacity

            # Returns the cost of the route. The unit of cost type depends on the value of
            # travel_cost attribute in the optimization request.
            sig { returns(T.nilable(Integer)) }
            attr_reader :cost

            sig { params(cost: Integer).void }
            attr_writer :cost

            # Returns the total quantities, for each dimension (or unit), of deliveries
            # performed in the route. Please note that when both shipments and jobs are
            # provided, this field corresponds to the sum of quantities delivered as part of
            # the assigned shipments and jobs on the route.
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_reader :delivery

            sig { params(delivery: T::Array[Integer]).void }
            attr_writer :delivery

            # Return the description of the assigned vehicle. It would be the same as that
            # provided in the description field of vehicles part of the input POST
            # optimization request.
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # Returns the total distance of the route, in meters.
            sig { returns(T.nilable(Float)) }
            attr_reader :distance

            sig { params(distance: Float).void }
            attr_writer :distance

            # Returns the total drive duration of the route, in seconds.
            sig { returns(T.nilable(Integer)) }
            attr_reader :duration

            sig { params(duration: Integer).void }
            attr_writer :duration

            # Returns the geometry of this route encoded in polyline format.
            sig { returns(T.nilable(String)) }
            attr_reader :geometry

            sig { params(geometry: String).void }
            attr_writer :geometry

            # Returns the custom information that was provided when the vehicle was
            # configured. This field would not be present for the vehicles that were not
            # provided with any metadata.
            sig { returns(T.nilable(T.anything)) }
            attr_reader :metadata

            sig { params(metadata: T.anything).void }
            attr_writer :metadata

            # Returns the total quantities, for each dimension (or unit), of pickups performed
            # in the route. Please note that when both shipments and jobs are provided, this
            # field corresponds to the sum of quantities picked-up as part of the assigned
            # shipments and jobs on the route.
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_reader :pickup

            sig { params(pickup: T::Array[Integer]).void }
            attr_writer :pickup

            # Returns the sum of priorities of all tasks on the route.
            sig { returns(T.nilable(Integer)) }
            attr_reader :priority

            sig { params(priority: Integer).void }
            attr_writer :priority

            # Returns the profile of the vehicle.
            sig { returns(T.nilable(String)) }
            attr_reader :profile

            sig { params(profile: String).void }
            attr_writer :profile

            # Returns the revenue earned by fulfilling the task on this route. Please note
            # this field is present only when the revenue inputs are provided in the input,
            # otherwise it is not present in the response.
            sig { returns(T.nilable(Integer)) }
            attr_reader :revenue

            sig { params(revenue: Integer).void }
            attr_writer :revenue

            # Returns the total service time spent on the tasks or depots on the route, in
            # seconds.
            sig { returns(T.nilable(Integer)) }
            attr_reader :service

            sig { params(service: Integer).void }
            attr_writer :service

            # Returns the total setup time, in seconds, for the tasks assigned on the route.
            sig { returns(T.nilable(Integer)) }
            attr_reader :setup

            sig { params(setup: Integer).void }
            attr_writer :setup

            # This attribute contains the details of all the steps involved in the route. It
            # is an array of objects with each object representing one step.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Route::Step
                  ]
                )
              )
            end
            attr_reader :steps

            sig do
              params(
                steps:
                  T::Array[
                    Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Route::Step::OrHash
                  ]
              ).void
            end
            attr_writer :steps

            # Returns the ID of the vehicle that was assigned to the route. The value type
            # will be same as the value type provided in the input request.
            sig { returns(T.nilable(String)) }
            attr_reader :vehicle

            sig { params(vehicle: String).void }
            attr_writer :vehicle

            # Returns the total vehicle overtime for the route, in seconds. Please note this
            # field is present only when there is a non-zero value for vehicle overtime,
            # otherwise it is not present in the response.
            sig { returns(T.nilable(Integer)) }
            attr_reader :vehicle_overtime

            sig { params(vehicle_overtime: Integer).void }
            attr_writer :vehicle_overtime

            # Returns the total waiting time of the vehicle on the route, in seconds.
            sig { returns(T.nilable(Integer)) }
            attr_reader :waiting_time

            sig { params(waiting_time: Integer).void }
            attr_writer :waiting_time

            sig do
              params(
                adopted_capacity: T::Array[Integer],
                cost: Integer,
                delivery: T::Array[Integer],
                description: String,
                distance: Float,
                duration: Integer,
                geometry: String,
                metadata: T.anything,
                pickup: T::Array[Integer],
                priority: Integer,
                profile: String,
                revenue: Integer,
                service: Integer,
                setup: Integer,
                steps:
                  T::Array[
                    Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Route::Step::OrHash
                  ],
                vehicle: String,
                vehicle_overtime: Integer,
                waiting_time: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # Returns the capacity configuration of the vehicle that was used for this route.
              # This field would return either the vehicle's capacity or one of the
              # alternative_capacities provided in the input request.
              adopted_capacity: nil,
              # Returns the cost of the route. The unit of cost type depends on the value of
              # travel_cost attribute in the optimization request.
              cost: nil,
              # Returns the total quantities, for each dimension (or unit), of deliveries
              # performed in the route. Please note that when both shipments and jobs are
              # provided, this field corresponds to the sum of quantities delivered as part of
              # the assigned shipments and jobs on the route.
              delivery: nil,
              # Return the description of the assigned vehicle. It would be the same as that
              # provided in the description field of vehicles part of the input POST
              # optimization request.
              description: nil,
              # Returns the total distance of the route, in meters.
              distance: nil,
              # Returns the total drive duration of the route, in seconds.
              duration: nil,
              # Returns the geometry of this route encoded in polyline format.
              geometry: nil,
              # Returns the custom information that was provided when the vehicle was
              # configured. This field would not be present for the vehicles that were not
              # provided with any metadata.
              metadata: nil,
              # Returns the total quantities, for each dimension (or unit), of pickups performed
              # in the route. Please note that when both shipments and jobs are provided, this
              # field corresponds to the sum of quantities picked-up as part of the assigned
              # shipments and jobs on the route.
              pickup: nil,
              # Returns the sum of priorities of all tasks on the route.
              priority: nil,
              # Returns the profile of the vehicle.
              profile: nil,
              # Returns the revenue earned by fulfilling the task on this route. Please note
              # this field is present only when the revenue inputs are provided in the input,
              # otherwise it is not present in the response.
              revenue: nil,
              # Returns the total service time spent on the tasks or depots on the route, in
              # seconds.
              service: nil,
              # Returns the total setup time, in seconds, for the tasks assigned on the route.
              setup: nil,
              # This attribute contains the details of all the steps involved in the route. It
              # is an array of objects with each object representing one step.
              steps: nil,
              # Returns the ID of the vehicle that was assigned to the route. The value type
              # will be same as the value type provided in the input request.
              vehicle: nil,
              # Returns the total vehicle overtime for the route, in seconds. Please note this
              # field is present only when there is a non-zero value for vehicle overtime,
              # otherwise it is not present in the response.
              vehicle_overtime: nil,
              # Returns the total waiting time of the vehicle on the route, in seconds.
              waiting_time: nil
            )
            end

            sig do
              override.returns(
                {
                  adopted_capacity: T::Array[Integer],
                  cost: Integer,
                  delivery: T::Array[Integer],
                  description: String,
                  distance: Float,
                  duration: Integer,
                  geometry: String,
                  metadata: T.anything,
                  pickup: T::Array[Integer],
                  priority: Integer,
                  profile: String,
                  revenue: Integer,
                  service: Integer,
                  setup: Integer,
                  steps:
                    T::Array[
                      Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Route::Step
                    ],
                  vehicle: String,
                  vehicle_overtime: Integer,
                  waiting_time: Integer
                }
              )
            end
            def to_hash
            end

            class Step < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Route::Step,
                    Nextbillionai::Internal::AnyHash
                  )
                end

              # Returns the ID of the task. The ID returned here are the same values that were
              # provided for the given task in the jobs or the shipments objects of the input
              # POST optimization request.
              #
              # **Note:** Since both integer and string value types are supported for job IDs,
              # the value type returned for this field will depend on the value type provided in
              # the input request.
              sig { returns(T.nilable(String)) }
              attr_reader :id

              sig { params(id: String).void }
              attr_writer :id

              # Returns the time at which the vehicle arrives at the step location. If
              # time_windows is provided for the task it will be returned as an UNIX timestamp
              # expressed in seconds. When time_windows is not provided, it is returned as the
              # total duration, in seconds, elapsed since the start of the route.
              #
              # Please note it includes all the other durations as well (setup, service,
              # waiting).
              sig { returns(T.nilable(Integer)) }
              attr_reader :arrival

              sig { params(arrival: Integer).void }
              attr_writer :arrival

              # For step type "start" or "end", this field returns the ID of the depot relevant
              # to that step. For "start" steps, the field will contain the ID of the depot from
              # which the vehicle commenced its journey. Conversely, for "end" steps, the field
              # will hold the ID of the depot where the vehicle concluded its trip.
              #
              # Please note that start_depot_ids or end_depot_ids input for the vehicle must be
              # configured to get this field in the response for respective step types in a
              # route.
              sig { returns(T.nilable(String)) }
              attr_reader :depot

              sig { params(depot: String).void }
              attr_writer :depot

              # Returns the description of this step. The description returned here are the same
              # values that were provided for the given task in the jobs or the shipments
              # objects of the input POST optimization request.
              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              # Returns the distance covered, in meters, from the start of the route and up
              # until the current step.
              #
              # Please note that the value of this parameter accumulates with each step. In case
              # , the travel_cost: air_distance, then the distance here represents straight line
              # distance.
              sig { returns(T.nilable(Integer)) }
              attr_reader :distance

              sig { params(distance: Integer).void }
              attr_writer :distance

              # Returns the total drive time, in seconds, from the start of the route up until
              # the start of the step. Please note that this value does not include any other
              # category of durations (service, wait, setup) and the value of this parameter
              # accumulates with each step.
              sig { returns(T.nilable(Integer)) }
              attr_reader :duration

              sig { params(duration: Integer).void }
              attr_writer :duration

              # Returns the amount of time, in seconds, by which the vehicle is late when
              # arriving at this step. Please note this field is present only when there is a
              # non-zero value for vehicle lateness, otherwise it is not present in the
              # response.
              sig { returns(T.nilable(String)) }
              attr_reader :late_by

              sig { params(late_by: String).void }
              attr_writer :late_by

              # Returns the load on the vehicle after completing this step. In case of multiple
              # dimensions, loads of each type are returned by a matching number of elements in
              # the array.
              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :load_

              sig { params(load_: T::Array[Integer]).void }
              attr_writer :load_

              # Returns the location coordinates of the step in the \[latitude, longitude\]
              # format.
              #
              # The index of this location is also returned by the location_index parameter.
              sig { returns(T.nilable(T::Array[Float])) }
              attr_reader :location

              sig { params(location: T::Array[Float]).void }
              attr_writer :location

              # Returns the index (in the location array) of the location coordinates where the
              # step is performed. The index will always be in the range of \[0, length of
              # location array).
              #
              # Actual coordinates are also returned by the location parameter.
              sig { returns(T.nilable(Integer)) }
              attr_reader :location_index

              sig { params(location_index: Integer).void }
              attr_writer :location_index

              # Returns the custom information that was provided when the given task (job /
              # pickup / delivery) was configured. This field would not be present for the tasks
              # that were not provided with any metadata. It will also be not present for
              # “start” and “end” steps.
              sig { returns(T.nilable(T.anything)) }
              attr_reader :metadata

              sig { params(metadata: T.anything).void }
              attr_writer :metadata

              # In case this step is part of a task group, this field returns the location
              # coordinates of the point, in \[latitude, longitude\] format, which was used as a
              # common stop for all grouped tasks.
              sig { returns(T.nilable(T::Array[Float])) }
              attr_reader :projected_location

              sig { params(projected_location: T::Array[Float]).void }
              attr_writer :projected_location

              # When a vehicle is configured to make multiple runs to the depot (via
              # max_depot_runs), this field returns the iteration to which the step belongs to.
              # Each run will begin with a "start" step from the depot's location and conclude
              # with an "end" step at either the last task's or the configured end location.
              sig { returns(T.nilable(Integer)) }
              attr_reader :run

              sig { params(run: Integer).void }
              attr_writer :run

              # Returns the service time, in seconds, for the task when the step type is not
              # start or end.
              #
              # When the step type is start or end , the field also returns the service time, in
              # seconds, spent at the depot when if the vehicle is starting or completing the
              # trip at one of the depots.
              sig { returns(T.nilable(Integer)) }
              attr_reader :service

              sig { params(service: Integer).void }
              attr_writer :service

              # Returns the setup time, in seconds, for the task.
              sig { returns(T.nilable(Integer)) }
              attr_reader :setup

              sig { params(setup: Integer).void }
              attr_writer :setup

              # Returns the coordinates after snapping the location of this step to a nearby
              # road. Please note that this field will not be available in the response when
              # custom duration or distance matrix were used for cost calculations.
              sig { returns(T.nilable(T::Array[Float])) }
              attr_reader :snapped_location

              sig { params(snapped_location: T::Array[Float]).void }
              attr_writer :snapped_location

              # Returns the type of the step. Its value will always be one of the following:
              # start, job, pickup, delivery, end. In case the type is start or end, steps
              # object will not have the id field.
              sig { returns(T.nilable(String)) }
              attr_reader :type

              sig { params(type: String).void }
              attr_writer :type

              # Returns the wait time of the vehicle at this step, in seconds.
              sig { returns(T.nilable(Integer)) }
              attr_reader :waiting_time

              sig { params(waiting_time: Integer).void }
              attr_writer :waiting_time

              # This attribute contains the details of all the steps involved in the route. It
              # is an array of objects with each object representing one step.
              sig do
                params(
                  id: String,
                  arrival: Integer,
                  depot: String,
                  description: String,
                  distance: Integer,
                  duration: Integer,
                  late_by: String,
                  load_: T::Array[Integer],
                  location: T::Array[Float],
                  location_index: Integer,
                  metadata: T.anything,
                  projected_location: T::Array[Float],
                  run: Integer,
                  service: Integer,
                  setup: Integer,
                  snapped_location: T::Array[Float],
                  type: String,
                  waiting_time: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                # Returns the ID of the task. The ID returned here are the same values that were
                # provided for the given task in the jobs or the shipments objects of the input
                # POST optimization request.
                #
                # **Note:** Since both integer and string value types are supported for job IDs,
                # the value type returned for this field will depend on the value type provided in
                # the input request.
                id: nil,
                # Returns the time at which the vehicle arrives at the step location. If
                # time_windows is provided for the task it will be returned as an UNIX timestamp
                # expressed in seconds. When time_windows is not provided, it is returned as the
                # total duration, in seconds, elapsed since the start of the route.
                #
                # Please note it includes all the other durations as well (setup, service,
                # waiting).
                arrival: nil,
                # For step type "start" or "end", this field returns the ID of the depot relevant
                # to that step. For "start" steps, the field will contain the ID of the depot from
                # which the vehicle commenced its journey. Conversely, for "end" steps, the field
                # will hold the ID of the depot where the vehicle concluded its trip.
                #
                # Please note that start_depot_ids or end_depot_ids input for the vehicle must be
                # configured to get this field in the response for respective step types in a
                # route.
                depot: nil,
                # Returns the description of this step. The description returned here are the same
                # values that were provided for the given task in the jobs or the shipments
                # objects of the input POST optimization request.
                description: nil,
                # Returns the distance covered, in meters, from the start of the route and up
                # until the current step.
                #
                # Please note that the value of this parameter accumulates with each step. In case
                # , the travel_cost: air_distance, then the distance here represents straight line
                # distance.
                distance: nil,
                # Returns the total drive time, in seconds, from the start of the route up until
                # the start of the step. Please note that this value does not include any other
                # category of durations (service, wait, setup) and the value of this parameter
                # accumulates with each step.
                duration: nil,
                # Returns the amount of time, in seconds, by which the vehicle is late when
                # arriving at this step. Please note this field is present only when there is a
                # non-zero value for vehicle lateness, otherwise it is not present in the
                # response.
                late_by: nil,
                # Returns the load on the vehicle after completing this step. In case of multiple
                # dimensions, loads of each type are returned by a matching number of elements in
                # the array.
                load_: nil,
                # Returns the location coordinates of the step in the \[latitude, longitude\]
                # format.
                #
                # The index of this location is also returned by the location_index parameter.
                location: nil,
                # Returns the index (in the location array) of the location coordinates where the
                # step is performed. The index will always be in the range of \[0, length of
                # location array).
                #
                # Actual coordinates are also returned by the location parameter.
                location_index: nil,
                # Returns the custom information that was provided when the given task (job /
                # pickup / delivery) was configured. This field would not be present for the tasks
                # that were not provided with any metadata. It will also be not present for
                # “start” and “end” steps.
                metadata: nil,
                # In case this step is part of a task group, this field returns the location
                # coordinates of the point, in \[latitude, longitude\] format, which was used as a
                # common stop for all grouped tasks.
                projected_location: nil,
                # When a vehicle is configured to make multiple runs to the depot (via
                # max_depot_runs), this field returns the iteration to which the step belongs to.
                # Each run will begin with a "start" step from the depot's location and conclude
                # with an "end" step at either the last task's or the configured end location.
                run: nil,
                # Returns the service time, in seconds, for the task when the step type is not
                # start or end.
                #
                # When the step type is start or end , the field also returns the service time, in
                # seconds, spent at the depot when if the vehicle is starting or completing the
                # trip at one of the depots.
                service: nil,
                # Returns the setup time, in seconds, for the task.
                setup: nil,
                # Returns the coordinates after snapping the location of this step to a nearby
                # road. Please note that this field will not be available in the response when
                # custom duration or distance matrix were used for cost calculations.
                snapped_location: nil,
                # Returns the type of the step. Its value will always be one of the following:
                # start, job, pickup, delivery, end. In case the type is start or end, steps
                # object will not have the id field.
                type: nil,
                # Returns the wait time of the vehicle at this step, in seconds.
                waiting_time: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    arrival: Integer,
                    depot: String,
                    description: String,
                    distance: Integer,
                    duration: Integer,
                    late_by: String,
                    load_: T::Array[Integer],
                    location: T::Array[Float],
                    location_index: Integer,
                    metadata: T.anything,
                    projected_location: T::Array[Float],
                    run: Integer,
                    service: Integer,
                    setup: Integer,
                    snapped_location: T::Array[Float],
                    type: String,
                    waiting_time: Integer
                  }
                )
              end
              def to_hash
              end
            end
          end

          class Summary < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Summary,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Returns the total cost of all the routes returned in the solution. The unit of
            # cost type depends on the value of travel_cost attribute in the optimization
            # request.
            sig { returns(T.nilable(Integer)) }
            attr_reader :cost

            sig { params(cost: Integer).void }
            attr_writer :cost

            # Returns the sum of all quantities that were delivered in the optimized solution.
            # If quantities of different dimensions were delivered, then a matching number of
            # elements is returned in the delivery array.
            #
            # Please note that when both shipments and jobs are provided, this field
            # corresponds to the sum of quantities delivered as part of all the assigned
            # shipments and jobs .
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_reader :delivery

            sig { params(delivery: T::Array[Integer]).void }
            attr_writer :delivery

            # Returns the total distance of all routes, in meters. It is equal to the sum of
            # distances of individual routes.
            sig { returns(T.nilable(Float)) }
            attr_reader :distance

            sig { params(distance: Float).void }
            attr_writer :distance

            # Returns the total drive time, in seconds, needed to cover all routes. Please
            # note that it does not include the service, setup or the waiting durations
            # elapsed on these routes.
            sig { returns(T.nilable(Integer)) }
            attr_reader :duration

            sig { params(duration: Integer).void }
            attr_writer :duration

            # Returns the total number of tasks across all routes that failed to start within
            # their scheduled time windows.
            sig { returns(T.nilable(Integer)) }
            attr_reader :num_late_visits

            sig { params(num_late_visits: Integer).void }
            attr_writer :num_late_visits

            # Returns the sum of all quantities that were picked-up in the optimized solution.
            # If quantities of different dimensions were picked-up, then a matching number of
            # elements is returned in the pickup array.
            #
            # Please note that when both shipments and jobs are provided, this field
            # corresponds to the sum of quantities picked-up as part of all the assigned
            # shipments and jobs .
            sig { returns(T.nilable(T::Array[Integer])) }
            attr_reader :pickup

            sig { params(pickup: T::Array[Integer]).void }
            attr_writer :pickup

            # Returns the sum of priorities of all tasks that were assigned.
            sig { returns(T.nilable(Integer)) }
            attr_reader :priority

            sig { params(priority: Integer).void }
            attr_writer :priority

            # Returns the revenue earned by completing all the assigned tasks. Overall profit
            # earned by following the suggested route plan can be inferred by subtracting the
            # cost of the solution from the reported revenue.
            sig { returns(T.nilable(Integer)) }
            attr_reader :revenue

            sig { params(revenue: Integer).void }
            attr_writer :revenue

            # Returns the total number of routes in the solution.
            sig { returns(T.nilable(Integer)) }
            attr_reader :routes

            sig { params(routes: Integer).void }
            attr_writer :routes

            # Returns the total service time, in seconds, for all the routes in the solution.
            # It is equal to the sum of service time of individual tasks that were assigned
            # and the time spent loading/unloading items at designated depots by all vehicles.
            sig { returns(T.nilable(Integer)) }
            attr_reader :service

            sig { params(service: Integer).void }
            attr_writer :service

            # Returns the total setup time, in seconds, of all assigned tasks. It is equal to
            # the sum of setup time of individual tasks that were assigned.
            sig { returns(T.nilable(Integer)) }
            attr_reader :setup

            sig { params(setup: Integer).void }
            attr_writer :setup

            # Returns the total duration, in seconds, that tasks across all routes were
            # delayed from starting after their scheduled time windows had passed.
            sig { returns(T.nilable(Integer)) }
            attr_reader :total_visit_lateness

            sig { params(total_visit_lateness: Integer).void }
            attr_writer :total_visit_lateness

            # Returns the number of unfulfilled tasks in the solution.
            sig { returns(T.nilable(Integer)) }
            attr_reader :unassigned

            sig { params(unassigned: Integer).void }
            attr_writer :unassigned

            # Returns the sum of durations spent waiting, in seconds, by vehicles on all
            # routes.
            sig { returns(T.nilable(Integer)) }
            attr_reader :waiting_time

            sig { params(waiting_time: Integer).void }
            attr_writer :waiting_time

            # An object to describe the summarized result of the optimization request. This
            # object can be useful to quickly get an overview of the important result
            # parameters.
            sig do
              params(
                cost: Integer,
                delivery: T::Array[Integer],
                distance: Float,
                duration: Integer,
                num_late_visits: Integer,
                pickup: T::Array[Integer],
                priority: Integer,
                revenue: Integer,
                routes: Integer,
                service: Integer,
                setup: Integer,
                total_visit_lateness: Integer,
                unassigned: Integer,
                waiting_time: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              # Returns the total cost of all the routes returned in the solution. The unit of
              # cost type depends on the value of travel_cost attribute in the optimization
              # request.
              cost: nil,
              # Returns the sum of all quantities that were delivered in the optimized solution.
              # If quantities of different dimensions were delivered, then a matching number of
              # elements is returned in the delivery array.
              #
              # Please note that when both shipments and jobs are provided, this field
              # corresponds to the sum of quantities delivered as part of all the assigned
              # shipments and jobs .
              delivery: nil,
              # Returns the total distance of all routes, in meters. It is equal to the sum of
              # distances of individual routes.
              distance: nil,
              # Returns the total drive time, in seconds, needed to cover all routes. Please
              # note that it does not include the service, setup or the waiting durations
              # elapsed on these routes.
              duration: nil,
              # Returns the total number of tasks across all routes that failed to start within
              # their scheduled time windows.
              num_late_visits: nil,
              # Returns the sum of all quantities that were picked-up in the optimized solution.
              # If quantities of different dimensions were picked-up, then a matching number of
              # elements is returned in the pickup array.
              #
              # Please note that when both shipments and jobs are provided, this field
              # corresponds to the sum of quantities picked-up as part of all the assigned
              # shipments and jobs .
              pickup: nil,
              # Returns the sum of priorities of all tasks that were assigned.
              priority: nil,
              # Returns the revenue earned by completing all the assigned tasks. Overall profit
              # earned by following the suggested route plan can be inferred by subtracting the
              # cost of the solution from the reported revenue.
              revenue: nil,
              # Returns the total number of routes in the solution.
              routes: nil,
              # Returns the total service time, in seconds, for all the routes in the solution.
              # It is equal to the sum of service time of individual tasks that were assigned
              # and the time spent loading/unloading items at designated depots by all vehicles.
              service: nil,
              # Returns the total setup time, in seconds, of all assigned tasks. It is equal to
              # the sum of setup time of individual tasks that were assigned.
              setup: nil,
              # Returns the total duration, in seconds, that tasks across all routes were
              # delayed from starting after their scheduled time windows had passed.
              total_visit_lateness: nil,
              # Returns the number of unfulfilled tasks in the solution.
              unassigned: nil,
              # Returns the sum of durations spent waiting, in seconds, by vehicles on all
              # routes.
              waiting_time: nil
            )
            end

            sig do
              override.returns(
                {
                  cost: Integer,
                  delivery: T::Array[Integer],
                  distance: Float,
                  duration: Integer,
                  num_late_visits: Integer,
                  pickup: T::Array[Integer],
                  priority: Integer,
                  revenue: Integer,
                  routes: Integer,
                  service: Integer,
                  setup: Integer,
                  total_visit_lateness: Integer,
                  unassigned: Integer,
                  waiting_time: Integer
                }
              )
            end
            def to_hash
            end
          end

          class Unassigned < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Unassigned,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Returns the ID of the unassigned task. The ID returned is the same as that
            # provided for the given task in the jobs or the shipments part in the input POST
            # optimization request.
            #
            # **Note:** Since both integer and string value types are supported for task IDs,
            # the value type returned for this field will depend on the value type provided in
            # the input request for the unassigned task.
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # Returns the location of the unassigned tasks in the \[latitude, longitude\]
            # format.
            sig { returns(T.nilable(T::Array[Float])) }
            attr_reader :location

            sig { params(location: T::Array[Float]).void }
            attr_writer :location

            # Returns the cost of outsourcing the task. This is the same value as provided in
            # the input. The field is present only if a outsourcing_cost was provided for the
            # unassigned task.
            sig { returns(T.nilable(Integer)) }
            attr_reader :outsourcing_cost

            sig { params(outsourcing_cost: Integer).void }
            attr_writer :outsourcing_cost

            # Returns the most likely reason due to which the task remained unassigned. The
            # optimization service can capture the following causes of tasks remaining
            # unassigned, among others:
            #
            # - unmatched skills of the tasks
            # - insufficient capacity of vehicle to accommodate the tasks
            # - time_window requirements of the tasks or the vehicles
            # - violation of vehicle’s max_activity_waiting_time constraint
            # - violation of vehicle’s max_tasks or max_stops constraints
            # - violation of vehicle’s max_distance or max_travel_time constraints
            # - task unassigned due to zone constraints
            # - task unassigned due to depot constraints
            # - task unassigned due to load type incompatibility constraints
            # - task unassigned due to max time in vehicle constraint
            # - task unassigned as it is unprofitable
            # - task unassigned due to low outsourcing cost
            # - task unassigned due to infeasible conditions specified in relations attribute
            sig { returns(T.nilable(String)) }
            attr_reader :reason

            sig { params(reason: String).void }
            attr_writer :reason

            # Returns the type of the task that was unassigned. Will always belong to one of
            # job, pickup, or delivery.
            sig { returns(T.nilable(String)) }
            attr_reader :type

            sig { params(type: String).void }
            attr_writer :type

            sig do
              params(
                id: String,
                location: T::Array[Float],
                outsourcing_cost: Integer,
                reason: String,
                type: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Returns the ID of the unassigned task. The ID returned is the same as that
              # provided for the given task in the jobs or the shipments part in the input POST
              # optimization request.
              #
              # **Note:** Since both integer and string value types are supported for task IDs,
              # the value type returned for this field will depend on the value type provided in
              # the input request for the unassigned task.
              id: nil,
              # Returns the location of the unassigned tasks in the \[latitude, longitude\]
              # format.
              location: nil,
              # Returns the cost of outsourcing the task. This is the same value as provided in
              # the input. The field is present only if a outsourcing_cost was provided for the
              # unassigned task.
              outsourcing_cost: nil,
              # Returns the most likely reason due to which the task remained unassigned. The
              # optimization service can capture the following causes of tasks remaining
              # unassigned, among others:
              #
              # - unmatched skills of the tasks
              # - insufficient capacity of vehicle to accommodate the tasks
              # - time_window requirements of the tasks or the vehicles
              # - violation of vehicle’s max_activity_waiting_time constraint
              # - violation of vehicle’s max_tasks or max_stops constraints
              # - violation of vehicle’s max_distance or max_travel_time constraints
              # - task unassigned due to zone constraints
              # - task unassigned due to depot constraints
              # - task unassigned due to load type incompatibility constraints
              # - task unassigned due to max time in vehicle constraint
              # - task unassigned as it is unprofitable
              # - task unassigned due to low outsourcing cost
              # - task unassigned due to infeasible conditions specified in relations attribute
              reason: nil,
              # Returns the type of the task that was unassigned. Will always belong to one of
              # job, pickup, or delivery.
              type: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  location: T::Array[Float],
                  outsourcing_cost: Integer,
                  reason: String,
                  type: String
                }
              )
            end
            def to_hash
            end
          end
        end

        # It indicates the overall status or result of the API request denoting whether
        # the operation was successful or did it encounter any errors.
        module Status
          extend Nextbillionai::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OK =
            T.let(
              :Ok,
              Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Status::TaggedSymbol
            )
          ERROR =
            T.let(
              :Error,
              Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Status::TaggedSymbol
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
