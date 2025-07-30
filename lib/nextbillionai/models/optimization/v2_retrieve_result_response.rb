# frozen_string_literal: true

module Nextbillionai
  module Models
    module Optimization
      # @see Nextbillionai::Resources::Optimization::V2#retrieve_result
      class V2RetrieveResultResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute description
        #   Returns the description of the optimization job as given in the input POST
        #   optimization request. This field will not be present in the response if no
        #   description was provided in the input request.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute message
        #   Returns the message in case of errors or failures, otherwise a blank string is
        #   returned.
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute result
        #   An object containing the details of the optimized routes.
        #
        #   @return [Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result, nil]
        optional :result, -> { Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result }

        # @!attribute status
        #   It indicates the overall status or result of the API request denoting whether
        #   the operation was successful or did it encounter any errors.
        #
        #   @return [Symbol, Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Status, nil]
        optional :status, enum: -> { Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Status }

        # @!method initialize(description: nil, message: nil, result: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Optimization::V2RetrieveResultResponse} for more
        #   details.
        #
        #   @param description [String] Returns the description of the optimization job as given in the input POST optim
        #
        #   @param message [String] Returns the message in case of errors or failures, otherwise a blank string is r
        #
        #   @param result [Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result] An object containing the details of the optimized routes.
        #
        #   @param status [Symbol, Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Status] It indicates the overall status or result of the API request denoting whether th

        # @see Nextbillionai::Models::Optimization::V2RetrieveResultResponse#result
        class Result < Nextbillionai::Internal::Type::BaseModel
          # @!attribute code
          #   A custom code representing the status of the result. A code other than 0,
          #   represents an internal error. In case of codes other than 0, please verify the
          #   parameter values, constraints and locations. If the issue does not resolve,
          #   please reach out to NextBillion at
          #   [support@nextbillion.ai](mailto:support@nextbillion.ai).
          #
          #   @return [Integer, nil]
          optional :code, Integer

          # @!attribute error
          #   Returns the error message for unfulfilled optimization jobs. This field will not
          #   be present in the response in case there are no errors.
          #
          #   @return [String, nil]
          optional :error, String

          # @!attribute routes
          #   An array of objects containing the details of each route in the optimized
          #   solution. Each object represents one route.
          #
          #   @return [Array<Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Route>, nil]
          optional :routes,
                   -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Route] }

          # @!attribute routing_profiles
          #   Returns all the routing profiles used in the solution. If no routing profiles
          #   were provided in the input or if the vehicles tagged to profiles were not used
          #   in the solution, the "default" routing properties are returned. Default routing
          #   properties are indicated by options.routing in the input.
          #
          #   @return [Object, nil]
          optional :routing_profiles, Nextbillionai::Internal::Type::Unknown

          # @!attribute summary
          #   An object to describe the summarized result of the optimization request. This
          #   object can be useful to quickly get an overview of the important result
          #   parameters.
          #
          #   @return [Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Summary, nil]
          optional :summary, -> { Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Summary }

          # @!attribute unassigned
          #   An array of objects containing the details of unassigned tasks in the optimized
          #   solution. Each object represents one task.
          #
          #   @return [Array<Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Unassigned>, nil]
          optional :unassigned,
                   -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Unassigned] }

          # @!method initialize(code: nil, error: nil, routes: nil, routing_profiles: nil, summary: nil, unassigned: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result} for more
          #   details.
          #
          #   An object containing the details of the optimized routes.
          #
          #   @param code [Integer] A custom code representing the status of the result. A code other than 0, repres
          #
          #   @param error [String] Returns the error message for unfulfilled optimization jobs. This field will not
          #
          #   @param routes [Array<Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Route>] An array of objects containing the details of each route in the optimized soluti
          #
          #   @param routing_profiles [Object] Returns all the routing profiles used in the solution. If no routing profiles we
          #
          #   @param summary [Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Summary] An object to describe the summarized result of the optimization request. This ob
          #
          #   @param unassigned [Array<Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Unassigned>] An array of objects containing the details of unassigned tasks in the optimized

          class Route < Nextbillionai::Internal::Type::BaseModel
            # @!attribute adopted_capacity
            #   Returns the capacity configuration of the vehicle that was used for this route.
            #   This field would return either the vehicle's capacity or one of the
            #   alternative_capacities provided in the input request.
            #
            #   @return [Array<Integer>, nil]
            optional :adopted_capacity, Nextbillionai::Internal::Type::ArrayOf[Integer]

            # @!attribute cost
            #   Returns the cost of the route. The unit of cost type depends on the value of
            #   travel_cost attribute in the optimization request.
            #
            #   @return [Integer, nil]
            optional :cost, Integer

            # @!attribute delivery
            #   Returns the total quantities, for each dimension (or unit), of deliveries
            #   performed in the route. Please note that when both shipments and jobs are
            #   provided, this field corresponds to the sum of quantities delivered as part of
            #   the assigned shipments and jobs on the route.
            #
            #   @return [Array<Integer>, nil]
            optional :delivery, Nextbillionai::Internal::Type::ArrayOf[Integer]

            # @!attribute description
            #   Return the description of the assigned vehicle. It would be the same as that
            #   provided in the description field of vehicles part of the input POST
            #   optimization request.
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute distance
            #   Returns the total distance of the route, in meters.
            #
            #   @return [Float, nil]
            optional :distance, Float

            # @!attribute duration
            #   Returns the total drive duration of the route, in seconds.
            #
            #   @return [Integer, nil]
            optional :duration, Integer

            # @!attribute geometry
            #   Returns the geometry of this route encoded in polyline format.
            #
            #   @return [String, nil]
            optional :geometry, String

            # @!attribute metadata
            #   Returns the custom information that was provided when the vehicle was
            #   configured. This field would not be present for the vehicles that were not
            #   provided with any metadata.
            #
            #   @return [Object, nil]
            optional :metadata, Nextbillionai::Internal::Type::Unknown

            # @!attribute pickup
            #   Returns the total quantities, for each dimension (or unit), of pickups performed
            #   in the route. Please note that when both shipments and jobs are provided, this
            #   field corresponds to the sum of quantities picked-up as part of the assigned
            #   shipments and jobs on the route.
            #
            #   @return [Array<Integer>, nil]
            optional :pickup, Nextbillionai::Internal::Type::ArrayOf[Integer]

            # @!attribute priority
            #   Returns the sum of priorities of all tasks on the route.
            #
            #   @return [Integer, nil]
            optional :priority, Integer

            # @!attribute profile
            #   Returns the profile of the vehicle.
            #
            #   @return [String, nil]
            optional :profile, String

            # @!attribute revenue
            #   Returns the revenue earned by fulfilling the task on this route. Please note
            #   this field is present only when the revenue inputs are provided in the input,
            #   otherwise it is not present in the response.
            #
            #   @return [Integer, nil]
            optional :revenue, Integer

            # @!attribute service
            #   Returns the total service time spent on the tasks or depots on the route, in
            #   seconds.
            #
            #   @return [Integer, nil]
            optional :service, Integer

            # @!attribute setup
            #   Returns the total setup time, in seconds, for the tasks assigned on the route.
            #
            #   @return [Integer, nil]
            optional :setup, Integer

            # @!attribute steps
            #   This attribute contains the details of all the steps involved in the route. It
            #   is an array of objects with each object representing one step.
            #
            #   @return [Array<Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Route::Step>, nil]
            optional :steps,
                     -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Route::Step] }

            # @!attribute vehicle
            #   Returns the ID of the vehicle that was assigned to the route. The value type
            #   will be same as the value type provided in the input request.
            #
            #   @return [String, nil]
            optional :vehicle, String

            # @!attribute vehicle_overtime
            #   Returns the total vehicle overtime for the route, in seconds. Please note this
            #   field is present only when there is a non-zero value for vehicle overtime,
            #   otherwise it is not present in the response.
            #
            #   @return [Integer, nil]
            optional :vehicle_overtime, Integer

            # @!attribute waiting_time
            #   Returns the total waiting time of the vehicle on the route, in seconds.
            #
            #   @return [Integer, nil]
            optional :waiting_time, Integer

            # @!method initialize(adopted_capacity: nil, cost: nil, delivery: nil, description: nil, distance: nil, duration: nil, geometry: nil, metadata: nil, pickup: nil, priority: nil, profile: nil, revenue: nil, service: nil, setup: nil, steps: nil, vehicle: nil, vehicle_overtime: nil, waiting_time: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Route}
            #   for more details.
            #
            #   @param adopted_capacity [Array<Integer>] Returns the capacity configuration of the vehicle that was used for this route.
            #
            #   @param cost [Integer] Returns the cost of the route. The unit of cost type depends on the value of tra
            #
            #   @param delivery [Array<Integer>] Returns the total quantities, for each dimension (or unit), of deliveries perfor
            #
            #   @param description [String] Return the description of the assigned vehicle. It would be the same as that pro
            #
            #   @param distance [Float] Returns the total distance of the route, in meters.
            #
            #   @param duration [Integer] Returns the total drive duration of the route, in seconds.
            #
            #   @param geometry [String] Returns the geometry of this route encoded in polyline format.
            #
            #   @param metadata [Object] Returns the custom information that was provided when the vehicle was configured
            #
            #   @param pickup [Array<Integer>] Returns the total quantities, for each dimension (or unit), of pickups performed
            #
            #   @param priority [Integer] Returns the sum of priorities of all tasks on the route.
            #
            #   @param profile [String] Returns the profile of the vehicle.
            #
            #   @param revenue [Integer] Returns the revenue earned by fulfilling the task on this route. Please note thi
            #
            #   @param service [Integer] Returns the total service time spent on the tasks or depots on the route, in sec
            #
            #   @param setup [Integer] Returns the total setup time, in seconds, for the tasks assigned on the route.
            #
            #   @param steps [Array<Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Route::Step>] This attribute contains the details of all the steps involved in the route. It i
            #
            #   @param vehicle [String] Returns the ID of the vehicle that was assigned to the route. The value type wil
            #
            #   @param vehicle_overtime [Integer] Returns the total vehicle overtime for the route, in seconds. Please note this f
            #
            #   @param waiting_time [Integer] Returns the total waiting time of the vehicle on the route, in seconds.

            class Step < Nextbillionai::Internal::Type::BaseModel
              # @!attribute id
              #   Returns the ID of the task. The ID returned here are the same values that were
              #   provided for the given task in the jobs or the shipments objects of the input
              #   POST optimization request.
              #
              #   **Note:** Since both integer and string value types are supported for job IDs,
              #   the value type returned for this field will depend on the value type provided in
              #   the input request.
              #
              #   @return [String, nil]
              optional :id, String

              # @!attribute arrival
              #   Returns the time at which the vehicle arrives at the step location. If
              #   time_windows is provided for the task it will be returned as an UNIX timestamp
              #   expressed in seconds. When time_windows is not provided, it is returned as the
              #   total duration, in seconds, elapsed since the start of the route.
              #
              #   Please note it includes all the other durations as well (setup, service,
              #   waiting).
              #
              #   @return [Integer, nil]
              optional :arrival, Integer

              # @!attribute depot
              #   For step type "start" or "end", this field returns the ID of the depot relevant
              #   to that step. For "start" steps, the field will contain the ID of the depot from
              #   which the vehicle commenced its journey. Conversely, for "end" steps, the field
              #   will hold the ID of the depot where the vehicle concluded its trip.
              #
              #   Please note that start_depot_ids or end_depot_ids input for the vehicle must be
              #   configured to get this field in the response for respective step types in a
              #   route.
              #
              #   @return [String, nil]
              optional :depot, String

              # @!attribute description
              #   Returns the description of this step. The description returned here are the same
              #   values that were provided for the given task in the jobs or the shipments
              #   objects of the input POST optimization request.
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute distance
              #   Returns the distance covered, in meters, from the start of the route and up
              #   until the current step.
              #
              #   Please note that the value of this parameter accumulates with each step. In case
              #   , the travel_cost: air_distance, then the distance here represents straight line
              #   distance.
              #
              #   @return [Integer, nil]
              optional :distance, Integer

              # @!attribute duration
              #   Returns the total drive time, in seconds, from the start of the route up until
              #   the start of the step. Please note that this value does not include any other
              #   category of durations (service, wait, setup) and the value of this parameter
              #   accumulates with each step.
              #
              #   @return [Integer, nil]
              optional :duration, Integer

              # @!attribute late_by
              #   Returns the amount of time, in seconds, by which the vehicle is late when
              #   arriving at this step. Please note this field is present only when there is a
              #   non-zero value for vehicle lateness, otherwise it is not present in the
              #   response.
              #
              #   @return [String, nil]
              optional :late_by, String

              # @!attribute load_
              #   Returns the load on the vehicle after completing this step. In case of multiple
              #   dimensions, loads of each type are returned by a matching number of elements in
              #   the array.
              #
              #   @return [Array<Integer>, nil]
              optional :load_, Nextbillionai::Internal::Type::ArrayOf[Integer], api_name: :load

              # @!attribute location
              #   Returns the location coordinates of the step in the \[latitude, longitude\]
              #   format.
              #
              #   The index of this location is also returned by the location_index parameter.
              #
              #   @return [Array<Float>, nil]
              optional :location, Nextbillionai::Internal::Type::ArrayOf[Float]

              # @!attribute location_index
              #   Returns the index (in the location array) of the location coordinates where the
              #   step is performed. The index will always be in the range of \[0, length of
              #   location array).
              #
              #   Actual coordinates are also returned by the location parameter.
              #
              #   @return [Integer, nil]
              optional :location_index, Integer

              # @!attribute metadata
              #   Returns the custom information that was provided when the given task (job /
              #   pickup / delivery) was configured. This field would not be present for the tasks
              #   that were not provided with any metadata. It will also be not present for
              #   “start” and “end” steps.
              #
              #   @return [Object, nil]
              optional :metadata, Nextbillionai::Internal::Type::Unknown

              # @!attribute projected_location
              #   In case this step is part of a task group, this field returns the location
              #   coordinates of the point, in \[latitude, longitude\] format, which was used as a
              #   common stop for all grouped tasks.
              #
              #   @return [Array<Float>, nil]
              optional :projected_location, Nextbillionai::Internal::Type::ArrayOf[Float]

              # @!attribute run
              #   When a vehicle is configured to make multiple runs to the depot (via
              #   max_depot_runs), this field returns the iteration to which the step belongs to.
              #   Each run will begin with a "start" step from the depot's location and conclude
              #   with an "end" step at either the last task's or the configured end location.
              #
              #   @return [Integer, nil]
              optional :run, Integer

              # @!attribute service
              #   Returns the service time, in seconds, for the task when the step type is not
              #   start or end.
              #
              #   When the step type is start or end , the field also returns the service time, in
              #   seconds, spent at the depot when if the vehicle is starting or completing the
              #   trip at one of the depots.
              #
              #   @return [Integer, nil]
              optional :service, Integer

              # @!attribute setup
              #   Returns the setup time, in seconds, for the task.
              #
              #   @return [Integer, nil]
              optional :setup, Integer

              # @!attribute snapped_location
              #   Returns the coordinates after snapping the location of this step to a nearby
              #   road. Please note that this field will not be available in the response when
              #   custom duration or distance matrix were used for cost calculations.
              #
              #   @return [Array<Float>, nil]
              optional :snapped_location, Nextbillionai::Internal::Type::ArrayOf[Float]

              # @!attribute type
              #   Returns the type of the step. Its value will always be one of the following:
              #   start, job, pickup, delivery, end. In case the type is start or end, steps
              #   object will not have the id field.
              #
              #   @return [String, nil]
              optional :type, String

              # @!attribute waiting_time
              #   Returns the wait time of the vehicle at this step, in seconds.
              #
              #   @return [Integer, nil]
              optional :waiting_time, Integer

              # @!method initialize(id: nil, arrival: nil, depot: nil, description: nil, distance: nil, duration: nil, late_by: nil, load_: nil, location: nil, location_index: nil, metadata: nil, projected_location: nil, run: nil, service: nil, setup: nil, snapped_location: nil, type: nil, waiting_time: nil)
              #   Some parameter documentations has been truncated, see
              #   {Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Route::Step}
              #   for more details.
              #
              #   This attribute contains the details of all the steps involved in the route. It
              #   is an array of objects with each object representing one step.
              #
              #   @param id [String] Returns the ID of the task. The ID returned here are the same values that were p
              #
              #   @param arrival [Integer] Returns the time at which the vehicle arrives at the step location. If time_wind
              #
              #   @param depot [String] For step type "start" or "end", this field returns the ID of the depot relevant
              #
              #   @param description [String] Returns the description of this step. The description returned here are the same
              #
              #   @param distance [Integer] Returns the distance covered, in meters, from the start of the route and up unti
              #
              #   @param duration [Integer] Returns the total drive time, in seconds, from the start of the route up until t
              #
              #   @param late_by [String] Returns the amount of time, in seconds, by which the vehicle is late when arrivi
              #
              #   @param load_ [Array<Integer>] Returns the load on the vehicle after completing this step. In case of multiple
              #
              #   @param location [Array<Float>] Returns the location coordinates of the step in the \[latitude, longitude\] form
              #
              #   @param location_index [Integer] Returns the index (in the location array) of the location coordinates where the
              #
              #   @param metadata [Object] Returns the custom information that was provided when the given task (job / pick
              #
              #   @param projected_location [Array<Float>] In case this step is part of a task group, this field returns the location coord
              #
              #   @param run [Integer] When a vehicle is configured to make multiple runs to the depot (via max_depot_r
              #
              #   @param service [Integer] Returns the service time, in seconds, for the task when the step type is not sta
              #
              #   @param setup [Integer] Returns the setup time, in seconds, for the task.
              #
              #   @param snapped_location [Array<Float>] Returns the coordinates after snapping the location of this step to a nearby roa
              #
              #   @param type [String] Returns the type of the step. Its value will always be one of the following: sta
              #
              #   @param waiting_time [Integer] Returns the wait time of the vehicle at this step, in seconds.
            end
          end

          # @see Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result#summary
          class Summary < Nextbillionai::Internal::Type::BaseModel
            # @!attribute cost
            #   Returns the total cost of all the routes returned in the solution. The unit of
            #   cost type depends on the value of travel_cost attribute in the optimization
            #   request.
            #
            #   @return [Integer, nil]
            optional :cost, Integer

            # @!attribute delivery
            #   Returns the sum of all quantities that were delivered in the optimized solution.
            #   If quantities of different dimensions were delivered, then a matching number of
            #   elements is returned in the delivery array.
            #
            #   Please note that when both shipments and jobs are provided, this field
            #   corresponds to the sum of quantities delivered as part of all the assigned
            #   shipments and jobs .
            #
            #   @return [Array<Integer>, nil]
            optional :delivery, Nextbillionai::Internal::Type::ArrayOf[Integer]

            # @!attribute distance
            #   Returns the total distance of all routes, in meters. It is equal to the sum of
            #   distances of individual routes.
            #
            #   @return [Float, nil]
            optional :distance, Float

            # @!attribute duration
            #   Returns the total drive time, in seconds, needed to cover all routes. Please
            #   note that it does not include the service, setup or the waiting durations
            #   elapsed on these routes.
            #
            #   @return [Integer, nil]
            optional :duration, Integer

            # @!attribute num_late_visits
            #   Returns the total number of tasks across all routes that failed to start within
            #   their scheduled time windows.
            #
            #   @return [Integer, nil]
            optional :num_late_visits, Integer

            # @!attribute pickup
            #   Returns the sum of all quantities that were picked-up in the optimized solution.
            #   If quantities of different dimensions were picked-up, then a matching number of
            #   elements is returned in the pickup array.
            #
            #   Please note that when both shipments and jobs are provided, this field
            #   corresponds to the sum of quantities picked-up as part of all the assigned
            #   shipments and jobs .
            #
            #   @return [Array<Integer>, nil]
            optional :pickup, Nextbillionai::Internal::Type::ArrayOf[Integer]

            # @!attribute priority
            #   Returns the sum of priorities of all tasks that were assigned.
            #
            #   @return [Integer, nil]
            optional :priority, Integer

            # @!attribute revenue
            #   Returns the revenue earned by completing all the assigned tasks. Overall profit
            #   earned by following the suggested route plan can be inferred by subtracting the
            #   cost of the solution from the reported revenue.
            #
            #   @return [Integer, nil]
            optional :revenue, Integer

            # @!attribute routes
            #   Returns the total number of routes in the solution.
            #
            #   @return [Integer, nil]
            optional :routes, Integer

            # @!attribute service
            #   Returns the total service time, in seconds, for all the routes in the solution.
            #   It is equal to the sum of service time of individual tasks that were assigned
            #   and the time spent loading/unloading items at designated depots by all vehicles.
            #
            #   @return [Integer, nil]
            optional :service, Integer

            # @!attribute setup
            #   Returns the total setup time, in seconds, of all assigned tasks. It is equal to
            #   the sum of setup time of individual tasks that were assigned.
            #
            #   @return [Integer, nil]
            optional :setup, Integer

            # @!attribute total_visit_lateness
            #   Returns the total duration, in seconds, that tasks across all routes were
            #   delayed from starting after their scheduled time windows had passed.
            #
            #   @return [Integer, nil]
            optional :total_visit_lateness, Integer

            # @!attribute unassigned
            #   Returns the number of unfulfilled tasks in the solution.
            #
            #   @return [Integer, nil]
            optional :unassigned, Integer

            # @!attribute waiting_time
            #   Returns the sum of durations spent waiting, in seconds, by vehicles on all
            #   routes.
            #
            #   @return [Integer, nil]
            optional :waiting_time, Integer

            # @!method initialize(cost: nil, delivery: nil, distance: nil, duration: nil, num_late_visits: nil, pickup: nil, priority: nil, revenue: nil, routes: nil, service: nil, setup: nil, total_visit_lateness: nil, unassigned: nil, waiting_time: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Summary}
            #   for more details.
            #
            #   An object to describe the summarized result of the optimization request. This
            #   object can be useful to quickly get an overview of the important result
            #   parameters.
            #
            #   @param cost [Integer] Returns the total cost of all the routes returned in the solution. The unit of c
            #
            #   @param delivery [Array<Integer>] Returns the sum of all quantities that were delivered in the optimized solution.
            #
            #   @param distance [Float] Returns the total distance of all routes, in meters. It is equal to the sum of d
            #
            #   @param duration [Integer] Returns the total drive time, in seconds, needed to cover all routes. Please not
            #
            #   @param num_late_visits [Integer] Returns the total number of tasks across all routes that failed to start within
            #
            #   @param pickup [Array<Integer>] Returns the sum of all quantities that were picked-up in the optimized solution.
            #
            #   @param priority [Integer] Returns the sum of priorities of all tasks that were assigned.
            #
            #   @param revenue [Integer] Returns the revenue earned by completing all the assigned tasks. Overall profit
            #
            #   @param routes [Integer] Returns the total number of routes in the solution.
            #
            #   @param service [Integer] Returns the total service time, in seconds, for all the routes in the solution.
            #
            #   @param setup [Integer] Returns the total setup time, in seconds, of all assigned tasks. It is equal to
            #
            #   @param total_visit_lateness [Integer] Returns the total duration, in seconds, that tasks across all routes were delaye
            #
            #   @param unassigned [Integer] Returns the number of unfulfilled tasks in the solution.
            #
            #   @param waiting_time [Integer] Returns the sum of durations spent waiting, in seconds, by vehicles on all route
          end

          class Unassigned < Nextbillionai::Internal::Type::BaseModel
            # @!attribute id
            #   Returns the ID of the unassigned task. The ID returned is the same as that
            #   provided for the given task in the jobs or the shipments part in the input POST
            #   optimization request.
            #
            #   **Note:** Since both integer and string value types are supported for task IDs,
            #   the value type returned for this field will depend on the value type provided in
            #   the input request for the unassigned task.
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute location
            #   Returns the location of the unassigned tasks in the \[latitude, longitude\]
            #   format.
            #
            #   @return [Array<Float>, nil]
            optional :location, Nextbillionai::Internal::Type::ArrayOf[Float]

            # @!attribute outsourcing_cost
            #   Returns the cost of outsourcing the task. This is the same value as provided in
            #   the input. The field is present only if a outsourcing_cost was provided for the
            #   unassigned task.
            #
            #   @return [Integer, nil]
            optional :outsourcing_cost, Integer

            # @!attribute reason
            #   Returns the most likely reason due to which the task remained unassigned. The
            #   optimization service can capture the following causes of tasks remaining
            #   unassigned, among others:
            #
            #   - unmatched skills of the tasks
            #   - insufficient capacity of vehicle to accommodate the tasks
            #   - time_window requirements of the tasks or the vehicles
            #   - violation of vehicle’s max_activity_waiting_time constraint
            #   - violation of vehicle’s max_tasks or max_stops constraints
            #   - violation of vehicle’s max_distance or max_travel_time constraints
            #   - task unassigned due to zone constraints
            #   - task unassigned due to depot constraints
            #   - task unassigned due to load type incompatibility constraints
            #   - task unassigned due to max time in vehicle constraint
            #   - task unassigned as it is unprofitable
            #   - task unassigned due to low outsourcing cost
            #   - task unassigned due to infeasible conditions specified in relations attribute
            #
            #   @return [String, nil]
            optional :reason, String

            # @!attribute type
            #   Returns the type of the task that was unassigned. Will always belong to one of
            #   job, pickup, or delivery.
            #
            #   @return [String, nil]
            optional :type, String

            # @!method initialize(id: nil, location: nil, outsourcing_cost: nil, reason: nil, type: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result::Unassigned}
            #   for more details.
            #
            #   @param id [String] Returns the ID of the unassigned task. The ID returned is the same as that provi
            #
            #   @param location [Array<Float>] Returns the location of the unassigned tasks in the \[latitude, longitude\] form
            #
            #   @param outsourcing_cost [Integer] Returns the cost of outsourcing the task. This is the same value as provided in
            #
            #   @param reason [String] Returns the most likely reason due to which the task remained unassigned. The op
            #
            #   @param type [String] Returns the type of the task that was unassigned. Will always belong to one of j
          end
        end

        # It indicates the overall status or result of the API request denoting whether
        # the operation was successful or did it encounter any errors.
        #
        # @see Nextbillionai::Models::Optimization::V2RetrieveResultResponse#status
        module Status
          extend Nextbillionai::Internal::Type::Enum

          OK = :Ok
          ERROR = :Error

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
