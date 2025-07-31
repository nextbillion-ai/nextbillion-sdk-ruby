# frozen_string_literal: true

module Nextbillionai
  module Models
    module Optimization
      # @see Nextbillionai::Resources::Optimization::V2#submit
      class V2SubmitParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute locations
        #   The locations object is used to define all the locations that will be used
        #   during the optimization process. Read more about this attribute in the
        #   [Location Object](#location-object) section.
        #
        #   @return [Nextbillionai::Models::Optimization::V2SubmitParams::Locations]
        required :locations, -> { Nextbillionai::Optimization::V2SubmitParams::Locations }

        # @!attribute vehicles
        #   The vehicles attribute describes the characteristics and constraints of the
        #   vehicles that will be used for fulfilling the tasks. Read more about this
        #   attribute in the [Vehicle Object](#vehicle-object) section.
        #
        #   @return [Array<Nextbillionai::Models::Optimization::Vehicle>]
        required :vehicles,
                 -> {
                   Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Optimization::Vehicle]
                 }

        # @!attribute cost_matrix
        #   An array of arrays to denote the user-defined costs of traveling between each
        #   pair of geographic coordinates mentioned in the location array. The number of
        #   arrays should be equal to the number of coordinate points mentioned in the
        #   location array and each array should contain the same number of elements as
        #   well. Please note that cost_matrix is effective only when
        #   travel_cost=customized. Read more about this attribute in the
        #   [Custom Cost Matrix](#custom-cost-matrix) section.
        #
        #   @return [Array<Array<Integer>>, nil]
        optional :cost_matrix,
                 Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Internal::Type::ArrayOf[Integer]]

        # @!attribute depots
        #   depots object is used to collect the details of a depot. Depots can be used as a
        #   starting point and/or ending point for the routes and vehicles. They also can be
        #   used to fulfil pickup and delivery typejobs . The loads which are to be
        #   delivered at task locations will be picked from depots and loads picked-up from
        #   task locations will be delivered back to the depots. A depot can be configured
        #   using the following fields:
        #
        #   @return [Array<Nextbillionai::Models::Optimization::V2SubmitParams::Depot>, nil]
        optional :depots,
                 -> {
                   Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Optimization::V2SubmitParams::Depot]
                 }

        # @!attribute description
        #   Define the optimization job using any custom message. This description is
        #   returned as is in the response.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute distance_matrix
        #   An array of arrays to denote the user-defined distances, in meters, for
        #   travelling between each pair of geographic coordinates mentioned in the location
        #   array. When this input is provided, actual distances between the locations will
        #   be ignored in favor of the values provided in this input for any distance
        #   calculations during the optimization process. The values provided here will also
        #   be used for cost calculations when travel_cost is “distance”.
        #
        #   The number of arrays in the input should be equal to the number of coordinate
        #   points mentioned in the location array and each array, in turn, should contain
        #   the same number of elements as well.
        #
        #   **Note:**
        #
        #   - duration_matrix is mandatory when usingdistance_matrix.
        #   - When using distance_matrix route geometry will not be available in the
        #     optimized solution.
        #
        #   @return [Array<Array<Integer>>, nil]
        optional :distance_matrix,
                 Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Internal::Type::ArrayOf[Integer]]

        # @!attribute duration_matrix
        #   An array of arrays to denote the user-defined durations, in seconds, for
        #   travelling between each pair of geographic coordinates mentioned in the location
        #   array. When this input is provided, actual durations between the locations will
        #   be ignored in favor of the values provided in the matrix for any ETA
        #   calculations during the optimization process. The values provided in the matrix
        #   will also be used for cost calculations when travel_cost is “duration”.
        #
        #   The number of arrays in the input should be equal to the number of coordinate
        #   points mentioned in the location array and each array, in turn, should contain
        #   the same number of elements as well.
        #
        #   Please note that, unlike distance_matrix, duration_matrix can be used
        #   independently in following cases:
        #
        #   - when travel_cost is “duration”
        #   - when travel_cost is “customized” and a cost_matrix is provided
        #
        #   Also, the route geometry will not be available in the optimized solution when
        #   using duration_matrix.
        #
        #   @return [Array<Array<Integer>>, nil]
        optional :duration_matrix,
                 Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Internal::Type::ArrayOf[Integer]]

        # @!attribute existing_solution_id
        #   The previous optimization request id used to retrieve solution for
        #   reoptimization
        #
        #   @return [String, nil]
        optional :existing_solution_id, String

        # @!attribute jobs
        #   jobs object is used to collect the details of a particular job or task that
        #   needs to be completed as part of the optimization process. Each job can have
        #   either a pickup or delivery step, but not both. Read more about this attribute
        #   in the [Job Object](#job-object) section.
        #
        #   Please note that either the jobs or the shipments attribute should be specified
        #   to build a valid request.
        #
        #   @return [Array<Nextbillionai::Models::Optimization::Job>, nil]
        optional :jobs, -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Optimization::Job] }

        # @!attribute options
        #   It represents the set of options that can be used to configure optimization
        #   algorithms so that the solver provides a solution that meets the desired
        #   business objectives.
        #
        #   @return [Nextbillionai::Models::Optimization::V2SubmitParams::Options, nil]
        optional :options, -> { Nextbillionai::Optimization::V2SubmitParams::Options }

        # @!attribute relations
        #   relations attribute is an array of individual relation objects. type parameter
        #   and steps object are mandatory when using this attribute.
        #
        #   Please note:
        #
        #   - The soft constraints are **not** effective when using the relations attribute.
        #   - In case a given relation can't be satisfied, the optimizer will flag all the
        #     tasks involved in that "relation" as unassigned.
        #
        #   Read more about this attribute in the [Relations Object](#relations-object)
        #   section.
        #
        #   @return [Array<Nextbillionai::Models::Optimization::V2SubmitParams::Relation>, nil]
        optional :relations,
                 -> {
                   Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Optimization::V2SubmitParams::Relation]
                 }

        # @!attribute shipments
        #   The shipments object is used to collect the details of shipments that need to be
        #   completed as part of the optimization process.
        #
        #   Each shipment should have a pickup and the corresponding delivery step.
        #
        #   Please note that either the jobs or the shipments attribute should be specified
        #   to build a valid request.
        #
        #   @return [Array<Nextbillionai::Models::Optimization::Shipment>, nil]
        optional :shipments,
                 -> {
                   Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Optimization::Shipment]
                 }

        # @!attribute solution
        #   This attribute is related to the re-optimization feature. It allows for the
        #   previous optimization result to be provided in case new orders are received and
        #   the solution needs to be re-planned. The solution attribute should contain the
        #   same routes as the previous optimization result. solution attribute is an array
        #   of objects with each object corresponding to one route.
        #
        #   @return [Array<Nextbillionai::Models::Optimization::V2SubmitParams::Solution>, nil]
        optional :solution,
                 -> {
                   Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Optimization::V2SubmitParams::Solution]
                 }

        # @!attribute unassigned
        #   unassigned attribute is related to the re-optimization feature. This attribute
        #   should contain the tasks that were not assigned during an earlier optimization
        #   process. Please note that the unassigned part in request should be consistent
        #   with the unassigned part in the previous optimization result.
        #
        #   Users can reduce the number of unassigned tasks in the re-optimized solution, by
        #   following strategies such as:
        #
        #   - Extending the time windows for vehicles or tasks to give more flexibility
        #   - Adding more vehicles to the optimization problem
        #   - Adjusting the priority of different tasks to balance the workload more evenly
        #   - Modifying other constraints or parameters to make the problem more solvable
        #
        #   Ultimately, the goal is to minimize the number of unassigned tasks while still
        #   meeting all the necessary constraints and objectives.
        #
        #   @return [Nextbillionai::Models::Optimization::V2SubmitParams::Unassigned, nil]
        optional :unassigned, -> { Nextbillionai::Optimization::V2SubmitParams::Unassigned }

        # @!attribute zones
        #   An array of objects to specify geometry of all the zones involved. Each object
        #   corresponds to a single zone. A valid zone can be a
        #   [geoJSON](https://datatracker.ietf.org/doc/html/rfc7946#page-9) polygon,
        #   multi-polygon or a geofence created using
        #   [NextBillion.ai](http://NextBillion.ai)’s
        #   [Geofence API](https://docs.nextbillion.ai/docs/tracking/api/geofence).
        #
        #   Please note that
        #
        #   - Each zone should have a geometry specified either throughgeometry or through
        #     the geofence_id parameter.
        #   - When zone IDs are not provided for individual tasks (jobs or shipments) then
        #     the API will automatically allocate zones based on the task’s geolocation and
        #     the geometries of the zones provided here. Otherwise, if the zone IDs are
        #     provided while configuring individual tasks, the zone IDs will override the
        #     geometries provided here.
        #
        #   @return [Array<Nextbillionai::Models::Optimization::V2SubmitParams::Zone>, nil]
        optional :zones,
                 -> {
                   Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Optimization::V2SubmitParams::Zone]
                 }

        # @!method initialize(key:, locations:, vehicles:, cost_matrix: nil, depots: nil, description: nil, distance_matrix: nil, duration_matrix: nil, existing_solution_id: nil, jobs: nil, options: nil, relations: nil, shipments: nil, solution: nil, unassigned: nil, zones: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Optimization::V2SubmitParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param locations [Nextbillionai::Models::Optimization::V2SubmitParams::Locations] The locations object is used to define all the locations that will be used durin
        #
        #   @param vehicles [Array<Nextbillionai::Models::Optimization::Vehicle>] The vehicles attribute describes the characteristics and constraints of the vehi
        #
        #   @param cost_matrix [Array<Array<Integer>>] An array of arrays to denote the user-defined costs of traveling between each pa
        #
        #   @param depots [Array<Nextbillionai::Models::Optimization::V2SubmitParams::Depot>] depots object is used to collect the details of a depot. Depots can be used as a
        #
        #   @param description [String] Define the optimization job using any custom message. This description is return
        #
        #   @param distance_matrix [Array<Array<Integer>>] An array of arrays to denote the user-defined distances, in meters, for travelli
        #
        #   @param duration_matrix [Array<Array<Integer>>] An array of arrays to denote the user-defined durations, in seconds, for travell
        #
        #   @param existing_solution_id [String] The previous optimization request id used to retrieve solution for reoptimizatio
        #
        #   @param jobs [Array<Nextbillionai::Models::Optimization::Job>] jobs object is used to collect the details of a particular job or task that need
        #
        #   @param options [Nextbillionai::Models::Optimization::V2SubmitParams::Options] It represents the set of options that can be used to configure optimization algo
        #
        #   @param relations [Array<Nextbillionai::Models::Optimization::V2SubmitParams::Relation>] relations attribute is an array of individual relation objects. type parameter a
        #
        #   @param shipments [Array<Nextbillionai::Models::Optimization::Shipment>] The shipments object is used to collect the details of shipments that need to be
        #
        #   @param solution [Array<Nextbillionai::Models::Optimization::V2SubmitParams::Solution>] This attribute is related to the re-optimization feature. It allows for the prev
        #
        #   @param unassigned [Nextbillionai::Models::Optimization::V2SubmitParams::Unassigned] unassigned attribute is related to the re-optimization feature. This attribute s
        #
        #   @param zones [Array<Nextbillionai::Models::Optimization::V2SubmitParams::Zone>] An array of objects to specify geometry of all the zones involved. Each object c
        #
        #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

        class Locations < Nextbillionai::Internal::Type::BaseModel
          # @!attribute location
          #   Indicate all the location coordinates that will be used during optimization. The
          #   coordinates should be specified in the format “latitude, longitude”. It is
          #   recommended to avoid adding duplicate location coordinates to this array. In
          #   case there are multiple tasks at the same location, users can repeat the index
          #   of the location while configuring all such tasks.
          #
          #   Please use this array to determine the index of a location when setting the
          #   location_index parameter in jobs, shipments, vehicles or other parts of the
          #   request. The length of this array determines the valid values for location_index
          #   parameter.
          #
          #   @return [Array<String>]
          required :location, Nextbillionai::Internal::Type::ArrayOf[String]

          # @!attribute id
          #   A unique ID for the set of locations. It should be a positive integer.
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute approaches
          #   Describe if the location is curbside. An array of strings indicates the side of
          #   the road from which to approach the location in the calculated route. If
          #   provided, the number of approaches must be equal to the number of locations.
          #   However, you can skip a coordinate and show its position in the list using “”
          #   (empty string). Please note these values are case-sensitive.
          #
          #   @return [Array<Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Locations::Approach>, nil]
          optional :approaches,
                   -> {
                     Nextbillionai::Internal::Type::ArrayOf[enum: Nextbillionai::Optimization::V2SubmitParams::Locations::Approach]
                   }

          # @!method initialize(location:, id: nil, approaches: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Optimization::V2SubmitParams::Locations} for more
          #   details.
          #
          #   The locations object is used to define all the locations that will be used
          #   during the optimization process. Read more about this attribute in the
          #   [Location Object](#location-object) section.
          #
          #   @param location [Array<String>] Indicate all the location coordinates that will be used during optimization. The
          #
          #   @param id [Integer] A unique ID for the set of locations. It should be a positive integer.
          #
          #   @param approaches [Array<Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Locations::Approach>] Describe if the location is curbside. An array of strings indicates the side of

          module Approach
            extend Nextbillionai::Internal::Type::Enum

            UNRESTRICTED = :unrestricted
            CURB = :curb
            EMPTY_STRING = :"\"\"(empty string)"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Depot < Nextbillionai::Internal::Type::BaseModel
          # @!attribute id
          #   Provide an unique ID for the depot. The IDs are case sensitive.
          #
          #   @return [String]
          required :id, String

          # @!attribute location_index
          #   Specify the index of coordinates (in the location array) denoting the depot’s
          #   location. The valid range of values is \[0, length of location array). If the
          #   location index exceeds the count of input locations in the location array, the
          #   API will report an error.
          #
          #   Please note the location_index is mandatory when using the depots object.
          #
          #   @return [Integer]
          required :location_index, Integer

          # @!attribute description
          #   Add a custom description for the depot.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute service
          #   Specify the time duration, in seconds, needed to load or unload the vehicle each
          #   time it starts or arrives at a depot, respectively. Default value is 0.
          #
          #   @return [Integer, nil]
          optional :service, Integer

          # @!attribute time_windows
          #   Specify the time-windows during which the depot is operational and allows
          #   vehicles to be loaded / unloaded. The time periods should be expressed as a UNIX
          #   timestamp in seconds.
          #
          #   Please note that:
          #
          #   - Multiple time-windows can be provided but those time windows should not
          #     overlap with each other.
          #   - Time windows should always be specified in the format of \[start_timestamp,
          #     end_timestamp\].
          #   - Depot's time-windows are ineffective used when max_activity_waiting_time is
          #     specified in the input.
          #   - Using relations along with depot time-window is not allowed and the service
          #     will return an error.
          #
          #   @return [Array<Array<Integer>>, nil]
          optional :time_windows,
                   Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Internal::Type::ArrayOf[Integer]]

          # @!method initialize(id:, location_index:, description: nil, service: nil, time_windows: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Optimization::V2SubmitParams::Depot} for more details.
          #
          #   @param id [String] Provide an unique ID for the depot. The IDs are case sensitive.
          #
          #   @param location_index [Integer] Specify the index of coordinates (in the location array) denoting the depot’s lo
          #
          #   @param description [String] Add a custom description for the depot.
          #
          #   @param service [Integer] Specify the time duration, in seconds, needed to load or unload the vehicle each
          #
          #   @param time_windows [Array<Array<Integer>>] Specify the time-windows during which the depot is operational and allows vehicl
        end

        class Options < Nextbillionai::Internal::Type::BaseModel
          # @!attribute constraint
          #   This attribute defines both the soft and hard constraints for an optimization
          #   job.
          #
          #   Soft constraints are constraints that do not necessarily have to be satisfied,
          #   but the optimization algorithm will try to satisfy them as much as possible.
          #   Whereas the hard constraints are the constraints that will not be violated by
          #   the solver. Users can use multiple constraints together.
          #
          #   Please note that soft constraints are ineffective when using relations attribute
          #   in a request. The hard constraint, max_activity_waiting_time, is effective only
          #   when relation type is in_same_route and ineffective for all other types.
          #
          #   @return [Nextbillionai::Models::Optimization::V2SubmitParams::Options::Constraint, nil]
          optional :constraint, -> { Nextbillionai::Optimization::V2SubmitParams::Options::Constraint }

          # @!attribute grouping
          #   Set grouping rules for the tasks and routes.
          #
          #   - Use order_grouping to group nearby tasks
          #   - Use route_grouping to control route sequencing.
          #
          #   @return [Nextbillionai::Models::Optimization::V2SubmitParams::Options::Grouping, nil]
          optional :grouping, -> { Nextbillionai::Optimization::V2SubmitParams::Options::Grouping }

          # @!attribute objective
          #   This attribute is used to configure the objective of the optimization job.
          #
          #   @return [Nextbillionai::Models::Optimization::V2SubmitParams::Options::Objective, nil]
          optional :objective, -> { Nextbillionai::Optimization::V2SubmitParams::Options::Objective }

          # @!attribute routing
          #   This attribute is used to define the routing configurations for the optimization
          #   job.
          #
          #   @return [Nextbillionai::Models::Optimization::V2SubmitParams::Options::Routing, nil]
          optional :routing, -> { Nextbillionai::Optimization::V2SubmitParams::Options::Routing }

          # @!method initialize(constraint: nil, grouping: nil, objective: nil, routing: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Optimization::V2SubmitParams::Options} for more details.
          #
          #   It represents the set of options that can be used to configure optimization
          #   algorithms so that the solver provides a solution that meets the desired
          #   business objectives.
          #
          #   @param constraint [Nextbillionai::Models::Optimization::V2SubmitParams::Options::Constraint] This attribute defines both the soft and hard constraints for an optimization jo
          #
          #   @param grouping [Nextbillionai::Models::Optimization::V2SubmitParams::Options::Grouping] Set grouping rules for the tasks and routes.
          #
          #   @param objective [Nextbillionai::Models::Optimization::V2SubmitParams::Options::Objective] This attribute is used to configure the objective of the optimization job.
          #
          #   @param routing [Nextbillionai::Models::Optimization::V2SubmitParams::Options::Routing] This attribute is used to define the routing configurations for the optimization

          # @see Nextbillionai::Models::Optimization::V2SubmitParams::Options#constraint
          class Constraint < Nextbillionai::Internal::Type::BaseModel
            # @!attribute max_activity_waiting_time
            #   This is a hard constraint which specifies the maximum waiting time, in seconds,
            #   for each step. It ensures that the vehicles do not have unreasonable wait times
            #   between jobs or shipments. This feature is useful for use cases where avoiding
            #   long wait times between jobs or shipments is a primary concern.
            #
            #   Please note that the waiting time constraint applies to all tasks in the
            #   optimization request, ensuring that no single task exceeds the specified maximum
            #   waiting time. When being used together with relations attribute, this parameter
            #   is effective only for in_same_route relation type.
            #
            #   @return [Integer, nil]
            optional :max_activity_waiting_time, Integer

            # @!attribute max_vehicle_overtime
            #   This is a soft constraint for vehicle overtime. Overtime is defined as the time
            #   that a vehicle spends to complete a set of jobs after its time window has ended.
            #   max_vehicle_overtime attribute specifies the maximum amount of overtime a
            #   vehicle can have, in seconds. If a vehicle’s overtime exceeds this value, it
            #   will be considered a violation of this constraint.
            #
            #   Please note that this constraint applies to all vehicles in the optimization
            #   request.
            #
            #   @return [Integer, nil]
            optional :max_vehicle_overtime, Integer

            # @!attribute max_visit_lateness
            #   This is a soft constraint for permissible delay, in seconds, to complete a job
            #   or shipment after its time window is over. If a job or shipment’s lateness
            #   exceeds this value, it will be considered a violation of this constraint.
            #
            #   Please note that this constraint applies to all tasks in the optimization
            #   request. In case lateness duration needs to be applied for individual tasks,
            #   please use the max_visit_lateness parameter under jobs and shipments
            #
            #   @return [Integer, nil]
            optional :max_visit_lateness, Integer

            # @!method initialize(max_activity_waiting_time: nil, max_vehicle_overtime: nil, max_visit_lateness: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Optimization::V2SubmitParams::Options::Constraint} for
            #   more details.
            #
            #   This attribute defines both the soft and hard constraints for an optimization
            #   job.
            #
            #   Soft constraints are constraints that do not necessarily have to be satisfied,
            #   but the optimization algorithm will try to satisfy them as much as possible.
            #   Whereas the hard constraints are the constraints that will not be violated by
            #   the solver. Users can use multiple constraints together.
            #
            #   Please note that soft constraints are ineffective when using relations attribute
            #   in a request. The hard constraint, max_activity_waiting_time, is effective only
            #   when relation type is in_same_route and ineffective for all other types.
            #
            #   @param max_activity_waiting_time [Integer] This is a hard constraint which specifies the maximum waiting time, in seconds,
            #
            #   @param max_vehicle_overtime [Integer] This is a soft constraint for vehicle overtime. Overtime is defined as the time
            #
            #   @param max_visit_lateness [Integer] This is a soft constraint for permissible delay, in seconds, to complete a job o
          end

          # @see Nextbillionai::Models::Optimization::V2SubmitParams::Options#grouping
          class Grouping < Nextbillionai::Internal::Type::BaseModel
            # @!attribute order_grouping
            #   Specify the criteria for grouping nearby tasks. The grouped tasks will be
            #   treated as one stop by the optimizer and no cost would be incurred when driver
            #   travels to different tasks within a group. Users can use this feature to model
            #   use cases like multiple deliveries in a building complex or a condo.
            #
            #   Please note that when the multiple tasks are grouped together, only one setup
            #   time is considered for all such tasks. The durations of this setup time is equal
            #   to maximum setup time among all grouped tasks, if provided. On the other hand,
            #   the service time is applied to each task individually, as per the input provided
            #   when configuring those tasks.
            #
            #   @return [Nextbillionai::Models::Optimization::V2SubmitParams::Options::Grouping::OrderGrouping, nil]
            optional :order_grouping,
                     -> { Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::OrderGrouping }

            # @!attribute proximity_factor
            #   When specified, routes are built taking into account the distance to the nearest
            #   tasks. A higher proximity factor helps build routes with closer distances
            #   between neighboring tasks, whereas a lower proximity factor helps build routes
            #   with farther distances between neighboring tasks. As a result, the total number
            #   of routes in the solution can vary based on the configured proximity factor -
            #   more routes for higher factor and less routes with lower factor.
            #
            #   In practice, such routes are more resistant to changes in task time windows:
            #   when the time window is postponed, the driver can drive to the next task and
            #   then return to the previous one.
            #
            #   Please note that:
            #
            #   - Valid values are \[0,10\]
            #   - Default value is 0.0.
            #   - It is recommended to use values lower values, in the range of \[0, 1\]. Higher
            #     values may adversely impact the solution metrics due to higher number of
            #     resulting routes: costs, mileage etc.
            #
            #   @return [Float, nil]
            optional :proximity_factor, Float

            # @!attribute route_grouping
            #   Specify the criteria for prioritising routes in a zone over routes that are part
            #   of another zone. As a result, all the tasks falling in a zone will be fulfilled
            #   before any tasks that are part of a different zone.
            #
            #   @return [Nextbillionai::Models::Optimization::V2SubmitParams::Options::Grouping::RouteGrouping, nil]
            optional :route_grouping,
                     -> { Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::RouteGrouping }

            # @!method initialize(order_grouping: nil, proximity_factor: nil, route_grouping: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Optimization::V2SubmitParams::Options::Grouping} for
            #   more details.
            #
            #   Set grouping rules for the tasks and routes.
            #
            #   - Use order_grouping to group nearby tasks
            #   - Use route_grouping to control route sequencing.
            #
            #   @param order_grouping [Nextbillionai::Models::Optimization::V2SubmitParams::Options::Grouping::OrderGrouping] Specify the criteria for grouping nearby tasks. The grouped tasks will be treate
            #
            #   @param proximity_factor [Float] When specified, routes are built taking into account the distance to the nearest
            #
            #   @param route_grouping [Nextbillionai::Models::Optimization::V2SubmitParams::Options::Grouping::RouteGrouping] Specify the criteria for prioritising routes in a zone over routes that are part

            # @see Nextbillionai::Models::Optimization::V2SubmitParams::Options::Grouping#order_grouping
            class OrderGrouping < Nextbillionai::Internal::Type::BaseModel
              # @!attribute grouping_diameter
              #   Specify the straight line distance, in meters, which will be used to identify
              #   the tasks that should be grouped together. The default value is null.
              #
              #   @return [Float, nil]
              optional :grouping_diameter, Float

              # @!method initialize(grouping_diameter: nil)
              #   Some parameter documentations has been truncated, see
              #   {Nextbillionai::Models::Optimization::V2SubmitParams::Options::Grouping::OrderGrouping}
              #   for more details.
              #
              #   Specify the criteria for grouping nearby tasks. The grouped tasks will be
              #   treated as one stop by the optimizer and no cost would be incurred when driver
              #   travels to different tasks within a group. Users can use this feature to model
              #   use cases like multiple deliveries in a building complex or a condo.
              #
              #   Please note that when the multiple tasks are grouped together, only one setup
              #   time is considered for all such tasks. The durations of this setup time is equal
              #   to maximum setup time among all grouped tasks, if provided. On the other hand,
              #   the service time is applied to each task individually, as per the input provided
              #   when configuring those tasks.
              #
              #   @param grouping_diameter [Float] Specify the straight line distance, in meters, which will be used to identify th
            end

            # @see Nextbillionai::Models::Optimization::V2SubmitParams::Options::Grouping#route_grouping
            class RouteGrouping < Nextbillionai::Internal::Type::BaseModel
              # @!attribute penalty_factor
              #   Specify a non-negative value which indicates the penalty of crossing zones on
              #   the same route. Default penalty value is 0.
              #
              #   A higher value, for example 30.0, will place a higher penalty on zone violations
              #   and hence push the optimizer to prefer a solution without any zone violations,
              #   where all tasks in a single region are fulfilled before any tasks in other
              #   regions or outside the current region. Whereas a lower value, say 5.0, will
              #   place a lower penalty allowing the optimizer to return solutions which may have
              #   few violations, say a couple of routing zone violations in our example. A still
              #   lower penalty factor, like 1.0, may have several zone violations.
              #
              #   @return [Float, nil]
              optional :penalty_factor, Float

              # @!attribute zone_diameter
              #   Specify the diameter of the zone, routes within which will be prioritised before
              #   routes falling in other zones. Please note that zone_diameter is the straight
              #   line distance, in meters.
              #
              #   @return [Float, nil]
              optional :zone_diameter, Float

              # @!attribute zone_source
              #   Specify the source for creating boundaries of the routing zones. The default
              #   value is “system_generated”.
              #
              #   - system_generated - Routing zone boundaries are created automatically by the
              #     optimizer based on the zone_diameter provided.
              #   - custom_definition - Custom routing zone boundaries should be provided by the
              #     user in input using the zones attribute. An error would be returned if the
              #     zones attribute is null or missing in the input request.
              #
              #   @return [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Options::Grouping::RouteGrouping::ZoneSource, nil]
              optional :zone_source,
                       enum: -> {
                         Nextbillionai::Optimization::V2SubmitParams::Options::Grouping::RouteGrouping::ZoneSource
                       }

              # @!method initialize(penalty_factor: nil, zone_diameter: nil, zone_source: nil)
              #   Some parameter documentations has been truncated, see
              #   {Nextbillionai::Models::Optimization::V2SubmitParams::Options::Grouping::RouteGrouping}
              #   for more details.
              #
              #   Specify the criteria for prioritising routes in a zone over routes that are part
              #   of another zone. As a result, all the tasks falling in a zone will be fulfilled
              #   before any tasks that are part of a different zone.
              #
              #   @param penalty_factor [Float] Specify a non-negative value which indicates the penalty of crossing zones on th
              #
              #   @param zone_diameter [Float] Specify the diameter of the zone, routes within which will be prioritised before
              #
              #   @param zone_source [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Options::Grouping::RouteGrouping::ZoneSource] Specify the source for creating boundaries of the routing zones. The default val

              # Specify the source for creating boundaries of the routing zones. The default
              # value is “system_generated”.
              #
              # - system_generated - Routing zone boundaries are created automatically by the
              #   optimizer based on the zone_diameter provided.
              # - custom_definition - Custom routing zone boundaries should be provided by the
              #   user in input using the zones attribute. An error would be returned if the
              #   zones attribute is null or missing in the input request.
              #
              # @see Nextbillionai::Models::Optimization::V2SubmitParams::Options::Grouping::RouteGrouping#zone_source
              module ZoneSource
                extend Nextbillionai::Internal::Type::Enum

                SYSTEM_GENERATED = :system_generated
                CUSTOM_DEFINITION = :custom_definition

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          # @see Nextbillionai::Models::Optimization::V2SubmitParams::Options#objective
          class Objective < Nextbillionai::Internal::Type::BaseModel
            # @!attribute allow_early_arrival
            #   Choose where the optimizer should schedule the driver’s wait time. When set to
            #   true the driver waits at the location of the task until its time window allows
            #   him to start the task. When set to false the driver waits at the location of the
            #   previous task and starts driving only at such a time that makes him arrive at
            #   the next task location in time to start the task as soon as he reaches.
            #
            #   @return [Boolean, nil]
            optional :allow_early_arrival, Nextbillionai::Internal::Type::Boolean

            # @!attribute custom
            #   The custom parameter is used to define special objectives apart from the simpler
            #   travel cost minimization objectives.
            #
            #   @return [Nextbillionai::Models::Optimization::V2SubmitParams::Options::Objective::Custom, nil]
            optional :custom, -> { Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom }

            # @!attribute minimise_num_depots
            #   Specify whether to minimize the number of depots used in optimization routes.
            #
            #   @return [Boolean, nil]
            optional :minimise_num_depots, Nextbillionai::Internal::Type::Boolean

            # @!attribute solver_mode
            #   If the input doesn’t include features of soft constraints, customized
            #   objectives, re-optimization, relations, max travel cost or automatic fixed cost,
            #   then user can select “optimal” to achieve a higher-speed and higher-quality
            #   optimization.
            #
            #   If “optimal” mode is unable to process some features in the input, then it will
            #   still goes to “flexible” mode.
            #
            #   @return [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Options::Objective::SolverMode, nil]
            optional :solver_mode,
                     enum: -> { Nextbillionai::Optimization::V2SubmitParams::Options::Objective::SolverMode }

            # @!attribute solving_time_limit
            #   Specify the number of seconds within which the optimizer should ideally solve
            #   the optimization request.
            #
            #   Please note that:
            #
            #   - In case the specified time limit is not enough to generate a solution for a
            #     given problem set, the optimizer will continue processing until it arrives at
            #     a solution.
            #   - It is recommended to specify a duration of at least 5-7 minutes in case the
            #     input problem contains a large set of tasks or vehicles.
            #
            #   @return [Integer, nil]
            optional :solving_time_limit, Integer

            # @!attribute travel_cost
            #   The travel_cost parameter specifies the type of cost used by the solver to
            #   determine the routes.
            #
            #   If the travel_cost parameter is set to distance, the solver will minimize the
            #   total distance traveled by vehicles while determining a solution. This objective
            #   would be useful in cases where the primary objective is to reduce fuel
            #   consumption or travel expenses.
            #
            #   If the travel_cost parameter is set to duration, the solver will minimize the
            #   total time taken by the vehicles to complete all tasks while determining a
            #   solution. This objective would be useful in cases where the primary objective is
            #   to minimize completion time or maximize the number of orders fulfilled within a
            #   given time window.
            #
            #   If the travel_cost parameter is set to air_distance, the solver will try to
            #   calculate the distance,in meters, between two points using the great-circle
            #   distance formula (i.e., the shortest distance between two points on a sphere)
            #   instead of the actual road distance. This would be useful in cases where the
            #   delivery locations are far apart and the road distance between them is
            #   significantly longer than the actual straight-line distance. For example, in
            #   Drone Delivery services.
            #
            #   If the travel_cost is set to customized the solver would use the custom cost
            #   values provided by the user (in cost_matrix attribute) and prefer a solution
            #   with lower overall cost. This enables the user to have greater control over the
            #   routes preferred by the solver and hence the sequence in which the jobs are
            #   completed.
            #
            #   @return [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Options::Objective::TravelCost, nil]
            optional :travel_cost,
                     enum: -> { Nextbillionai::Optimization::V2SubmitParams::Options::Objective::TravelCost }

            # @!method initialize(allow_early_arrival: nil, custom: nil, minimise_num_depots: nil, solver_mode: nil, solving_time_limit: nil, travel_cost: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Optimization::V2SubmitParams::Options::Objective} for
            #   more details.
            #
            #   This attribute is used to configure the objective of the optimization job.
            #
            #   @param allow_early_arrival [Boolean] Choose where the optimizer should schedule the driver’s wait time. When set to t
            #
            #   @param custom [Nextbillionai::Models::Optimization::V2SubmitParams::Options::Objective::Custom] The custom parameter is used to define special objectives apart from the simpler
            #
            #   @param minimise_num_depots [Boolean] Specify whether to minimize the number of depots used in optimization routes.
            #
            #   @param solver_mode [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Options::Objective::SolverMode] If the input doesn’t include features of soft constraints, customized objectives
            #
            #   @param solving_time_limit [Integer] Specify the number of seconds within which the optimizer should ideally solve th
            #
            #   @param travel_cost [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Options::Objective::TravelCost] The travel_cost parameter specifies the type of cost used by the solver to deter

            # @see Nextbillionai::Models::Optimization::V2SubmitParams::Options::Objective#custom
            class Custom < Nextbillionai::Internal::Type::BaseModel
              # @!attribute type
              #   The type parameter accepts two inputs:
              #
              #   - min: This type of customized objective will minimize the metric provided in
              #     the value parameter.
              #   - min-max: This type of customized objective will approximate an even
              #     distribution of the metric provided in the value parameter, among all the
              #     routes in solution.
              #
              #   Please note that type is mandatory only when using custom attribute.
              #
              #   @return [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Options::Objective::Custom::Type]
              required :type,
                       enum: -> {
                         Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom::Type
                       }

              # @!attribute value
              #   The value parameter accepts four inputs, two of them are valid for min type and
              #   other two are valid for min-max type custom objective. Let’s look at the values
              #   for min type objective:
              #
              #   - vehicles: Solver will minimize the number of vehicles used in the solution.
              #   - completion_time: Solver will minimize the total time taken to complete all
              #     tasks.
              #
              #   The next set of values are acceptable when type is set to min-max.
              #
              #   - tasks: Solver will evenly distribute the tasks on each route.
              #   - travel_cost: Solver will assign tasks such that the traveling cost of each
              #     route is within a close range of other routes. The travel cost metric
              #     considered here is the one set using objective.travel_cost .
              #
              #   Please note that value is mandatory only when using custom attribute. The above
              #   values provide flexibility to tune the optimization algorithm to fulfill
              #   practical objectives beyond the relatively simpler time or distance minimization
              #   approaches.
              #
              #   @return [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Options::Objective::Custom::Value]
              required :value,
                       enum: -> {
                         Nextbillionai::Optimization::V2SubmitParams::Options::Objective::Custom::Value
                       }

              # @!method initialize(type:, value:)
              #   Some parameter documentations has been truncated, see
              #   {Nextbillionai::Models::Optimization::V2SubmitParams::Options::Objective::Custom}
              #   for more details.
              #
              #   The custom parameter is used to define special objectives apart from the simpler
              #   travel cost minimization objectives.
              #
              #   @param type [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Options::Objective::Custom::Type] The type parameter accepts two inputs:
              #
              #   @param value [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Options::Objective::Custom::Value] The value parameter accepts four inputs, two of them are valid for min type and

              # The type parameter accepts two inputs:
              #
              # - min: This type of customized objective will minimize the metric provided in
              #   the value parameter.
              # - min-max: This type of customized objective will approximate an even
              #   distribution of the metric provided in the value parameter, among all the
              #   routes in solution.
              #
              # Please note that type is mandatory only when using custom attribute.
              #
              # @see Nextbillionai::Models::Optimization::V2SubmitParams::Options::Objective::Custom#type
              module Type
                extend Nextbillionai::Internal::Type::Enum

                MIN = :min
                MIN_MAX = :"min-max"

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # The value parameter accepts four inputs, two of them are valid for min type and
              # other two are valid for min-max type custom objective. Let’s look at the values
              # for min type objective:
              #
              # - vehicles: Solver will minimize the number of vehicles used in the solution.
              # - completion_time: Solver will minimize the total time taken to complete all
              #   tasks.
              #
              # The next set of values are acceptable when type is set to min-max.
              #
              # - tasks: Solver will evenly distribute the tasks on each route.
              # - travel_cost: Solver will assign tasks such that the traveling cost of each
              #   route is within a close range of other routes. The travel cost metric
              #   considered here is the one set using objective.travel_cost .
              #
              # Please note that value is mandatory only when using custom attribute. The above
              # values provide flexibility to tune the optimization algorithm to fulfill
              # practical objectives beyond the relatively simpler time or distance minimization
              # approaches.
              #
              # @see Nextbillionai::Models::Optimization::V2SubmitParams::Options::Objective::Custom#value
              module Value
                extend Nextbillionai::Internal::Type::Enum

                VEHICLES = :vehicles
                COMPLETION_TIME = :completion_time
                TRAVEL_COST = :travel_cost
                TASKS = :tasks

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # If the input doesn’t include features of soft constraints, customized
            # objectives, re-optimization, relations, max travel cost or automatic fixed cost,
            # then user can select “optimal” to achieve a higher-speed and higher-quality
            # optimization.
            #
            # If “optimal” mode is unable to process some features in the input, then it will
            # still goes to “flexible” mode.
            #
            # @see Nextbillionai::Models::Optimization::V2SubmitParams::Options::Objective#solver_mode
            module SolverMode
              extend Nextbillionai::Internal::Type::Enum

              FLEXIBLE = :flexible
              FAST = :fast
              INTERNAL = :internal

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The travel_cost parameter specifies the type of cost used by the solver to
            # determine the routes.
            #
            # If the travel_cost parameter is set to distance, the solver will minimize the
            # total distance traveled by vehicles while determining a solution. This objective
            # would be useful in cases where the primary objective is to reduce fuel
            # consumption or travel expenses.
            #
            # If the travel_cost parameter is set to duration, the solver will minimize the
            # total time taken by the vehicles to complete all tasks while determining a
            # solution. This objective would be useful in cases where the primary objective is
            # to minimize completion time or maximize the number of orders fulfilled within a
            # given time window.
            #
            # If the travel_cost parameter is set to air_distance, the solver will try to
            # calculate the distance,in meters, between two points using the great-circle
            # distance formula (i.e., the shortest distance between two points on a sphere)
            # instead of the actual road distance. This would be useful in cases where the
            # delivery locations are far apart and the road distance between them is
            # significantly longer than the actual straight-line distance. For example, in
            # Drone Delivery services.
            #
            # If the travel_cost is set to customized the solver would use the custom cost
            # values provided by the user (in cost_matrix attribute) and prefer a solution
            # with lower overall cost. This enables the user to have greater control over the
            # routes preferred by the solver and hence the sequence in which the jobs are
            # completed.
            #
            # @see Nextbillionai::Models::Optimization::V2SubmitParams::Options::Objective#travel_cost
            module TravelCost
              extend Nextbillionai::Internal::Type::Enum

              DURATION = :duration
              DISTANCE = :distance
              AIR_DISTANCE = :air_distance
              CUSTOMIZED = :customized

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @see Nextbillionai::Models::Optimization::V2SubmitParams::Options#routing
          class Routing < Nextbillionai::Internal::Type::BaseModel
            # @!attribute allow
            #
            #   @return [Array<Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Options::Routing::Allow>, nil]
            optional :allow,
                     -> {
                       Nextbillionai::Internal::Type::ArrayOf[enum: Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Allow]
                     }

            # @!attribute avoid
            #   Specify the type of objects/maneuvers that the route should avoid.
            #
            #   Please note that:
            #
            #   - The values are case-sensitive.
            #   - When using avoid:bbox feature, users need to specify the boundaries of the
            #     bounding box to be avoided. Multiple bounding boxes can be provided
            #     simultaneously. Please note that bounding box is a hard filter and if it
            #     blocks all possible routes between given locations, a 4xx error is returned.
            #     Mention the bounding box boundaries in the following format: bbox:
            #     min_latitude,min_longitude,max_latitude,max_longitude.
            #   - When using avoid=sharp_turn, the range of allowed turn angles is \[120,240\]
            #     in the clockwise direction from the current road. Any roads with turn angles
            #     outside the range will be avoided.
            #   - If none is provided along with other values, an error is returned as a valid
            #     route is not feasible.
            #
            #   @return [Array<Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Options::Routing::Avoid>, nil]
            optional :avoid,
                     -> {
                       Nextbillionai::Internal::Type::ArrayOf[enum: Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Avoid]
                     }

            # @!attribute context
            #   Use this parameter to apply a single speed value for all ETA and drive time
            #   calculations. In case, the travel_cost is set to duration then setting this
            #   parameter also impacts the cost of the solution.
            #
            #   @return [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Options::Routing::Context, nil]
            optional :context,
                     enum: -> {
                       Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Context
                     }

            # @!attribute cross_border
            #   Specify if crossing an international border is allowed for operations near
            #   border areas. When set to false, the API will prohibit any routes crossing
            #   international borders. When set to true, the service will return routes which
            #   cross the borders between countries, if required for the given set locations
            #
            #   This feature is available in North America region only. Please get in touch with
            #   [support@nextbillion.ai](mailto:support@nextbillion.ai) to enquire/enable other
            #   areas.
            #
            #   @return [Boolean, nil]
            optional :cross_border, Nextbillionai::Internal::Type::Boolean

            # @!attribute disable_cache
            #   Specify if the optimizer should cache the matrix result set (containing ETAs and
            #   distances) for the given set of locations in the request. Once the results are
            #   cached, the optimizer can use it during the next 60 mins if exactly the same set
            #   of locations are provided again. Please note that if a cached result is
            #   retrieved, the timer is reset and that result will be available for another 60
            #   mins.
            #
            #   If the users want to regenerate the result set, they can set this parameter to
            #   true and optimizer will not use the cached results.
            #
            #   This feature is helpful in expediting the optimization process and generate
            #   results quickly. It also helps users to quickly simulate route plans for
            #   different combinations of constraints for a given set of locations.
            #
            #   @return [Boolean, nil]
            optional :disable_cache, Nextbillionai::Internal::Type::Boolean

            # @!attribute hazmat_type
            #   Specify the type of hazardous material being carried and the service will avoid
            #   roads which are not suitable for the type of goods specified. Provide multiple
            #   values separated by a comma , .
            #
            #   Please note that this parameter is effective only when mode=truck.
            #
            #   @return [Array<Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Options::Routing::HazmatType>, nil]
            optional :hazmat_type,
                     -> {
                       Nextbillionai::Internal::Type::ArrayOf[enum: Nextbillionai::Optimization::V2SubmitParams::Options::Routing::HazmatType]
                     }

            # @!attribute mode
            #   Define the traveling mode to be used for determining the optimized routes.
            #
            #   @return [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Options::Routing::Mode, nil]
            optional :mode, enum: -> { Nextbillionai::Optimization::V2SubmitParams::Options::Routing::Mode }

            # @!attribute profiles
            #   Defines all the vehicle profiles. profiles is implemented as a dictionary of
            #   objects where each profile name is the unique key and the associated value is an
            #   object describing the routing properties of that profile. All routing properties
            #   available in options.routing can be added as values for a given profile.
            #
            #   Please note:
            #
            #   - The routing properties configured using options.routing (and not part of any
            #     \profiles\) are considered as default route settings i.e. they are applied to
            #     vehicles which are not associated with any profile.
            #   - The default route settings are independent from those defined for any profiles
            #     . Consequently, for vehicles which are tagged to a given profile, only the
            #     routing properties configured for the given profile will apply.
            #   - If the "mode" is not specified for any profile, by default it is considered to
            #     be car .
            #   - "default" is a reserved keyword and can not be used as the name for any custom
            #     profile.
            #   - profiles can't be nested in other profiles.
            #   - The number of profiles, including default route settings, are limited to
            #
            #     - 15, if 0 < number of location <= 100
            #     - 6, if 100 < number of location <= 600，
            #     - 2, if 600 < number of location <= 1200,
            #     - 1, if number of location > 1200
            #
            #   Routing profiles attribute is useful for configuring fleets containing multiple
            #   vehicles types. Check
            #   [Routing Profiles](https://docs.nextbillion.ai/docs/optimization/api/route-optimization-flexible/tutorials/routing-profiles)
            #   tutorial to learn more.
            #
            #   @return [Object, nil]
            optional :profiles, Nextbillionai::Internal::Type::Unknown

            # @!attribute traffic_timestamp
            #   Specify the general time when the job needs to be carried out. The time should
            #   be expressed as an UNIX timestamp in seconds format. The solver will take into
            #   account the general traffic conditions at the given time to determine the routes
            #   and their ETAs.
            #
            #   @return [Integer, nil]
            optional :traffic_timestamp, Integer

            # @!attribute truck_axle_load
            #   Specify the total load per axle (including the weight of trailers and shipped
            #   goods) of the truck, in tonnes. When used, the optimizer will use only those
            #   routes which are legally allowed to carry the load specified per axle.
            #
            #   Please note this parameter is effective only when mode=truck.
            #
            #   @return [Float, nil]
            optional :truck_axle_load, Float

            # @!attribute truck_size
            #   Specify the truck dimensions, in centimeters, in the format of
            #   “height,width,length”. Please note that this parameter is effective only when
            #   mode=truck.
            #
            #   @return [String, nil]
            optional :truck_size, String

            # @!attribute truck_weight
            #   Specify the truck weight including the trailers and shipped goods, in kilograms.
            #   Please note that this parameter is effective only when mode=truck.
            #
            #   @return [Integer, nil]
            optional :truck_weight, Integer

            # @!method initialize(allow: nil, avoid: nil, context: nil, cross_border: nil, disable_cache: nil, hazmat_type: nil, mode: nil, profiles: nil, traffic_timestamp: nil, truck_axle_load: nil, truck_size: nil, truck_weight: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Optimization::V2SubmitParams::Options::Routing} for more
            #   details.
            #
            #   This attribute is used to define the routing configurations for the optimization
            #   job.
            #
            #   @param allow [Array<Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Options::Routing::Allow>]
            #
            #   @param avoid [Array<Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Options::Routing::Avoid>] Specify the type of objects/maneuvers that the route should avoid.
            #
            #   @param context [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Options::Routing::Context] Use this parameter to apply a single speed value for all ETA and drive time calc
            #
            #   @param cross_border [Boolean] Specify if crossing an international border is allowed for operations near borde
            #
            #   @param disable_cache [Boolean] Specify if the optimizer should cache the matrix result set (containing ETAs and
            #
            #   @param hazmat_type [Array<Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Options::Routing::HazmatType>] Specify the type of hazardous material being carried and the service will avoid
            #
            #   @param mode [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Options::Routing::Mode] Define the traveling mode to be used for determining the optimized routes.
            #
            #   @param profiles [Object] Defines all the vehicle profiles. profiles is implemented as a dictionary of obj
            #
            #   @param traffic_timestamp [Integer] Specify the general time when the job needs to be carried out. The time should b
            #
            #   @param truck_axle_load [Float] Specify the total load per axle (including the weight of trailers and shipped go
            #
            #   @param truck_size [String] Specify the truck dimensions, in centimeters, in the format of “height,width,len
            #
            #   @param truck_weight [Integer] Specify the truck weight including the trailers and shipped goods, in kilograms.

            module Allow
              extend Nextbillionai::Internal::Type::Enum

              TAXI = :taxi
              HOV = :hov

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            module Avoid
              extend Nextbillionai::Internal::Type::Enum

              TOLL = :toll
              HIGHWAY = :highway
              BBOX = :bbox
              LEFT_TURN = :left_turn
              RIGHT_TURN = :right_turn
              SHARP_TURN = :sharp_turn
              UTURN = :uturn
              SERVICE_ROAD = :service_road
              FERRY = :ferry
              NONE = :"none "

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Use this parameter to apply a single speed value for all ETA and drive time
            # calculations. In case, the travel_cost is set to duration then setting this
            # parameter also impacts the cost of the solution.
            #
            # @see Nextbillionai::Models::Optimization::V2SubmitParams::Options::Routing#context
            module Context
              extend Nextbillionai::Internal::Type::Enum

              AVGSPEED = :avgspeed

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            module HazmatType
              extend Nextbillionai::Internal::Type::Enum

              GENERAL = :general
              CIRCUMSTANTIAL = :circumstantial
              EXPLOSIVE = :explosive
              HARMFUL_TO_WATER = :harmful_to_water

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Define the traveling mode to be used for determining the optimized routes.
            #
            # @see Nextbillionai::Models::Optimization::V2SubmitParams::Options::Routing#mode
            module Mode
              extend Nextbillionai::Internal::Type::Enum

              CAR = :car
              TRUCK = :truck

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        class Relation < Nextbillionai::Internal::Type::BaseModel
          # @!attribute steps
          #   The steps property specifies the tasks or steps that are part of the relation
          #   and must be carried out in a manner defined in the type parameter. Please note
          #   you can add any number of steps here, except when relation type is precedence
          #   where only 2 tasks can be added.
          #
          #   @return [Array<Nextbillionai::Models::Optimization::V2SubmitParams::Relation::Step>]
          required :steps,
                   -> {
                     Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Optimization::V2SubmitParams::Relation::Step]
                   }

          # @!attribute type
          #   Specifies the type of relation constraint. The following types are supported:
          #
          #   - in_same_route: Ensures that all steps are covered in the same route in
          #     solution.
          #   - in_sequence: Ensures that all steps are in the same route and their sequence
          #     matches the order specified in the steps field. Insertion of new steps between
          #     the steps specified, is allowed.
          #   - in_direct_sequence: Similar to in_sequence, but insertion of new steps is not
          #     allowed in the final route.
          #   - precedence: Restricts the travel time between the first step and second step.
          #     If the precedence requirement cannot be satisfied, then the task specified at
          #     the second step will not be assigned. Only 2 steps can be specified in a
          #     single precedence type relations. Please use multiple precedence relations to
          #     apply restrictions on more than 2 tasks.
          #
          #   If the vehicle field is specified in the relations input, all steps will be
          #   served by that particular vehicle. Otherwise, the route can be allocated to any
          #   feasible vehicle.
          #
          #   Please note that the type field is mandatory when using the relations object.
          #
          #   @return [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Relation::Type]
          required :type, enum: -> { Nextbillionai::Optimization::V2SubmitParams::Relation::Type }

          # @!attribute id
          #   **Deprecated! Please use the** vehicle **parameter to specify the vehicle ID.**
          #
          #   Specifies the ID of the vehicle that would fulfil the steps. ID should be
          #   consistent with input IDs provided in the vehicles object.
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!attribute max_duration
          #   This attribute is effective only when precedence type relation is used.
          #   max_duration restricts the travel time of the vehicle to go from location of
          #   first task to the location of second task specified in steps object. The unit
          #   for this parameter is seconds. It accepts values greater than 0 only.
          #
          #   Please note that max_duration is a hard constraint. Hence, if aggressive
          #   durations are provided such that the second task cannot be reached within the
          #   specified max_duration, it might be done before the first task (usually in case
          #   of jobs) or remain un-assigned (usually in case of shipments).
          #
          #   @return [Integer, nil]
          optional :max_duration, Integer

          # @!attribute min_duration
          #   This attribute is effective only when precedence type relation is used. Use
          #   min_duration to enforce a minimum time-gap between the two tasks specified in
          #   steps object. When specified, the second task will get completed after a gap of
          #   min_duration with respect to the first task. The unit for this parameter is
          #   seconds.
          #
          #   Please note that min_duration is implemented as a soft constraint and it can be
          #   violated in presence of other relation types. The optimizer will tend to provide
          #   solutions where min_duration is not violated, but it is not guaranteed.
          #
          #   @return [Integer, nil]
          optional :min_duration, Integer

          # @!attribute vehicle
          #   Specifies the ID of the vehicle that would fulfill the steps. Providing the same
          #   vehicle ID to multiple ‘relations’ is prohibited. The vehicle ID provided here
          #   should be consistent with ID provided in the vehicles attribute.
          #
          #   @return [String, nil]
          optional :vehicle, String

          # @!method initialize(steps:, type:, id: nil, max_duration: nil, min_duration: nil, vehicle: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Optimization::V2SubmitParams::Relation} for more
          #   details.
          #
          #   @param steps [Array<Nextbillionai::Models::Optimization::V2SubmitParams::Relation::Step>] The steps property specifies the tasks or steps that are part of the relation an
          #
          #   @param type [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Relation::Type] Specifies the type of relation constraint. The following types are supported:
          #
          #   @param id [Integer] **Deprecated! Please use the** vehicle **parameter to specify the vehicle ID.**
          #
          #   @param max_duration [Integer] This attribute is effective only when precedence type relation is used. max_dura
          #
          #   @param min_duration [Integer] This attribute is effective only when precedence type relation is used. Use
          #   min\_
          #
          #   @param vehicle [String] Specifies the ID of the vehicle that would fulfill the steps. Providing the same

          class Step < Nextbillionai::Internal::Type::BaseModel
            # @!attribute type
            #   Specifies the type of the step. The start and end step types have to be the
            #   first and last steps, respectively, in a relation.
            #
            #   Please note that the type is mandatory when using the relations object.
            #
            #   @return [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Relation::Step::Type]
            required :type, enum: -> { Nextbillionai::Optimization::V2SubmitParams::Relation::Step::Type }

            # @!attribute id
            #   This represents the ID of the task and should be consistent with the input IDs
            #   provided in the jobs or shipments objects for a given step. The id is required
            #   for all steps other than start and end.
            #
            #   @return [String, nil]
            optional :id, String

            # @!method initialize(type:, id: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Optimization::V2SubmitParams::Relation::Step} for more
            #   details.
            #
            #   @param type [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Relation::Step::Type] Specifies the type of the step. The start and end step types have to be the firs
            #
            #   @param id [String] This represents the ID of the task and should be consistent with the input IDs p

            # Specifies the type of the step. The start and end step types have to be the
            # first and last steps, respectively, in a relation.
            #
            # Please note that the type is mandatory when using the relations object.
            #
            # @see Nextbillionai::Models::Optimization::V2SubmitParams::Relation::Step#type
            module Type
              extend Nextbillionai::Internal::Type::Enum

              START = :start
              END_ = :end
              JOB = :job
              PICKUP = :pickup
              DELIVERY = :delivery

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # Specifies the type of relation constraint. The following types are supported:
          #
          # - in_same_route: Ensures that all steps are covered in the same route in
          #   solution.
          # - in_sequence: Ensures that all steps are in the same route and their sequence
          #   matches the order specified in the steps field. Insertion of new steps between
          #   the steps specified, is allowed.
          # - in_direct_sequence: Similar to in_sequence, but insertion of new steps is not
          #   allowed in the final route.
          # - precedence: Restricts the travel time between the first step and second step.
          #   If the precedence requirement cannot be satisfied, then the task specified at
          #   the second step will not be assigned. Only 2 steps can be specified in a
          #   single precedence type relations. Please use multiple precedence relations to
          #   apply restrictions on more than 2 tasks.
          #
          # If the vehicle field is specified in the relations input, all steps will be
          # served by that particular vehicle. Otherwise, the route can be allocated to any
          # feasible vehicle.
          #
          # Please note that the type field is mandatory when using the relations object.
          #
          # @see Nextbillionai::Models::Optimization::V2SubmitParams::Relation#type
          module Type
            extend Nextbillionai::Internal::Type::Enum

            IN_SAME_ROUTE = :in_same_route
            IN_SEQUENCE = :in_sequence
            IN_DIRECT_SEQUENCE = :in_direct_sequence
            PRECEDENCE = :precedence

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Solution < Nextbillionai::Internal::Type::BaseModel
          # @!attribute cost
          #   Specify the cost of the route.
          #
          #   @return [Integer]
          required :cost, Integer

          # @!attribute steps
          #   Describe the steps in this route.
          #
          #   @return [Array<Nextbillionai::Models::Optimization::V2SubmitParams::Solution::Step>]
          required :steps,
                   -> {
                     Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Optimization::V2SubmitParams::Solution::Step]
                   }

          # @!attribute vehicle
          #   Specify the ID of the vehicle that was assigned to the route. This field is
          #   mandatory when using the solution attribute and providing an empty string would
          #   result in error. The IDs are case-sensitive.
          #
          #   **Note:** Since the vehicles can be configured using either a string or an
          #   integer ID, please ensure that the same value type is provided for this field as
          #   was used in the original request.
          #
          #   @return [String]
          required :vehicle, String

          # @!attribute delivery
          #   Specify the total quantities, for each dimension (or unit), of deliveries
          #   performed in the route.
          #
          #   @return [Array<Integer>, nil]
          optional :delivery, Nextbillionai::Internal::Type::ArrayOf[Integer]

          # @!attribute description
          #   Specify the description of the assigned vehicle.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute distance
          #   Specify the total distance of the route, in meters.
          #
          #   @return [Integer, nil]
          optional :distance, Integer

          # @!attribute duration
          #   Specify the total drive duration of the route, in seconds.
          #
          #   @return [Integer, nil]
          optional :duration, Integer

          # @!attribute geometry
          #   Specify the geometry of this route encoded in polyline format.
          #
          #   @return [String, nil]
          optional :geometry, String

          # @!attribute pickup
          #   Specify the total quantities, for each dimension (or unit), of pickups performed
          #   in the route.
          #
          #   @return [Array<Integer>, nil]
          optional :pickup, Nextbillionai::Internal::Type::ArrayOf[Integer]

          # @!attribute priority
          #   Specify the sum of priorities of all tasks on the route.
          #
          #   @return [Integer, nil]
          optional :priority, Integer

          # @!attribute service
          #   Specify the total service time for the route, in seconds.
          #
          #   @return [Integer, nil]
          optional :service, Integer

          # @!attribute setup
          #   Specify the total set-up duration, in seconds, needed for the tasks on the
          #   route.
          #
          #   @return [Integer, nil]
          optional :setup, Integer

          # @!attribute waiting_time
          #   Specify the total waiting time of the vehicle on the route, in seconds.
          #
          #   @return [Integer, nil]
          optional :waiting_time, Integer

          # @!method initialize(cost:, steps:, vehicle:, delivery: nil, description: nil, distance: nil, duration: nil, geometry: nil, pickup: nil, priority: nil, service: nil, setup: nil, waiting_time: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Optimization::V2SubmitParams::Solution} for more
          #   details.
          #
          #   @param cost [Integer] Specify the cost of the route.
          #
          #   @param steps [Array<Nextbillionai::Models::Optimization::V2SubmitParams::Solution::Step>] Describe the steps in this route.
          #
          #   @param vehicle [String] Specify the ID of the vehicle that was assigned to the route. This field is mand
          #
          #   @param delivery [Array<Integer>] Specify the total quantities, for each dimension (or unit), of deliveries perfor
          #
          #   @param description [String] Specify the description of the assigned vehicle.
          #
          #   @param distance [Integer] Specify the total distance of the route, in meters.
          #
          #   @param duration [Integer] Specify the total drive duration of the route, in seconds.
          #
          #   @param geometry [String] Specify the geometry of this route encoded in polyline format.
          #
          #   @param pickup [Array<Integer>] Specify the total quantities, for each dimension (or unit), of pickups performed
          #
          #   @param priority [Integer] Specify the sum of priorities of all tasks on the route.
          #
          #   @param service [Integer] Specify the total service time for the route, in seconds.
          #
          #   @param setup [Integer] Specify the total set-up duration, in seconds, needed for the tasks on the route
          #
          #   @param waiting_time [Integer] Specify the total waiting time of the vehicle on the route, in seconds.

          class Step < Nextbillionai::Internal::Type::BaseModel
            # @!attribute id
            #   The ID of the step. This field is mandatory for all steps except for start and
            #   end type.
            #
            #   Please note that the ID provided here must also be present in either the jobs or
            #   the shipments objects.
            #
            #   **Note:** We have modified the data type of this field. The latest change is
            #   backward compatible and both integer and string type IDs are valid for this
            #   field, as long as they match the IDs of the jobs or shipments already
            #   configured.
            #
            #   @return [String]
            required :id, String

            # @!attribute arrival
            #   Specify the time at which the vehicle arrives at the step location. If
            #   time_windows is provided, then arrival will be an UNIX timestamp expressed in
            #   seconds. Otherwise, it will be the total duration, in seconds, elapsed since the
            #   start of the route.
            #
            #   Please note that arrival is mandatory when using the solution object.
            #
            #   @return [Integer]
            required :arrival, Integer

            # @!attribute type
            #   Specify the type of the step.
            #
            #   @return [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Solution::Step::Type]
            required :type, enum: -> { Nextbillionai::Optimization::V2SubmitParams::Solution::Step::Type }

            # @!attribute description
            #   Specify the description of this step.
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute distance
            #   Specify the distance covered, in meters, from the start of the route up until
            #   the current step.
            #
            #   Please note that the value of this parameter accumulates with each step. In case
            #   , the travel_cost: air_distance, then the distance here should be the straight
            #   line distance.
            #
            #   @return [Integer, nil]
            optional :distance, Integer

            # @!attribute duration
            #   Specify the drive time, in seconds, from the start of the route up until the
            #   start of the step. Please note that the value of this parameter accumulates with
            #   each step.
            #
            #   @return [Integer, nil]
            optional :duration, Integer

            # @!attribute load_
            #   Specify the load on the vehicle after completing this step. In case of multiple
            #   dimensions, please specify the load for each type.
            #
            #   @return [Array<Integer>, nil]
            optional :load_, Nextbillionai::Internal::Type::ArrayOf[Integer], api_name: :load

            # @!attribute location
            #   Specify the location coordinates of the step in the \[latitude, longitude\]
            #   format. Alternatively, location_index property can also be used to specify the
            #   location of the step.
            #
            #   Please note that either location or location_index is mandatory.
            #
            #   @return [Array<Float>, nil]
            optional :location, Nextbillionai::Internal::Type::ArrayOf[Float]

            # @!attribute location_index
            #   Specify the index (in the location array) of the location coordinates where the
            #   step is performed. The valid range of values is \[0, length of location array).
            #   Alternatively, location property can also be used to specify the location.
            #
            #   Please note that either location or location_index is mandatory.
            #
            #   @return [Integer, nil]
            optional :location_index, Integer

            # @!attribute service
            #   Specify the service time, in seconds, at this step.
            #
            #   @return [Integer, nil]
            optional :service, Integer

            # @!attribute setup
            #   Specify the set-up duration, in seconds, needed at the step.
            #
            #   @return [Integer, nil]
            optional :setup, Integer

            # @!attribute waiting_time
            #   Specify the wait time of the vehicle at this step, in seconds.
            #
            #   @return [Integer, nil]
            optional :waiting_time, Integer

            # @!method initialize(id:, arrival:, type:, description: nil, distance: nil, duration: nil, load_: nil, location: nil, location_index: nil, service: nil, setup: nil, waiting_time: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Optimization::V2SubmitParams::Solution::Step} for more
            #   details.
            #
            #   Describe details about a step of a route
            #
            #   @param id [String] The ID of the step. This field is mandatory for all steps except for start and e
            #
            #   @param arrival [Integer] Specify the time at which the vehicle arrives at the step location. If time_wind
            #
            #   @param type [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Solution::Step::Type] Specify the type of the step.
            #
            #   @param description [String] Specify the description of this step.
            #
            #   @param distance [Integer] Specify the distance covered, in meters, from the start of the route up until th
            #
            #   @param duration [Integer] Specify the drive time, in seconds, from the start of the route up until the sta
            #
            #   @param load_ [Array<Integer>] Specify the load on the vehicle after completing this step. In case of multiple
            #
            #   @param location [Array<Float>] Specify the location coordinates of the step in the \[latitude, longitude\] form
            #
            #   @param location_index [Integer] Specify the index (in the location array) of the location coordinates where the
            #
            #   @param service [Integer] Specify the service time, in seconds, at this step.
            #
            #   @param setup [Integer] Specify the set-up duration, in seconds, needed at the step.
            #
            #   @param waiting_time [Integer] Specify the wait time of the vehicle at this step, in seconds.

            # Specify the type of the step.
            #
            # @see Nextbillionai::Models::Optimization::V2SubmitParams::Solution::Step#type
            module Type
              extend Nextbillionai::Internal::Type::Enum

              START = :start
              END_ = :end
              JOB = :job
              PICKUP = :pickup
              DELIVERY = :delivery
              BREAK = :break

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        class Unassigned < Nextbillionai::Internal::Type::BaseModel
          # @!attribute jobs
          #   Specify the unassigned job IDs from the previous optimization result. Please
          #   note the IDs should also be present in the jobs part of the input.
          #
          #   **Note:** We have modified the data type of this field. However, the latest
          #   change is backward compatible and both integer and string type job IDs are valid
          #   for this field, as long as they match the IDs of the jobs already configured.
          #   Providing mixed value types in the array, will lead to an error.
          #
          #   @return [Array<String>, nil]
          optional :jobs, Nextbillionai::Internal::Type::ArrayOf[String]

          # @!attribute shipments
          #   Specify the unassigned shipment pickup & delivery IDs from the previous
          #   optimization result. Both the pickup & delivery steps of a shipment should be
          #   part of the same array.
          #
          #   **Note:** We have modified the data type of this field. However, the latest
          #   change is backward compatible and both integer and string type shipment IDs are
          #   valid for this field, as long as they match the IDs of the shipments already
          #   configured. Providing mixed value types in the array, will lead to an error.
          #
          #   @return [Array<Array<String>>, nil]
          optional :shipments,
                   Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Internal::Type::ArrayOf[String]]

          # @!method initialize(jobs: nil, shipments: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Optimization::V2SubmitParams::Unassigned} for more
          #   details.
          #
          #   unassigned attribute is related to the re-optimization feature. This attribute
          #   should contain the tasks that were not assigned during an earlier optimization
          #   process. Please note that the unassigned part in request should be consistent
          #   with the unassigned part in the previous optimization result.
          #
          #   Users can reduce the number of unassigned tasks in the re-optimized solution, by
          #   following strategies such as:
          #
          #   - Extending the time windows for vehicles or tasks to give more flexibility
          #   - Adding more vehicles to the optimization problem
          #   - Adjusting the priority of different tasks to balance the workload more evenly
          #   - Modifying other constraints or parameters to make the problem more solvable
          #
          #   Ultimately, the goal is to minimize the number of unassigned tasks while still
          #   meeting all the necessary constraints and objectives.
          #
          #   @param jobs [Array<String>] Specify the unassigned job IDs from the previous optimization result. Please not
          #
          #   @param shipments [Array<Array<String>>] Specify the unassigned shipment pickup & delivery IDs from the previous optimiza
        end

        class Zone < Nextbillionai::Internal::Type::BaseModel
          # @!attribute id
          #   Provide an ID for the zone. This field is mandatory when adding zones.
          #
          #   @return [Integer]
          required :id, Integer

          # @!attribute geofence_id
          #   Provide the ID of a pre-created geofence using the
          #   [Geofence API](https://docs.nextbillion.ai/docs/tracking/api/geofence).
          #
          #   Please note that one of geometry or geofence_id should be provided.
          #
          #   @return [String, nil]
          optional :geofence_id, String

          # @!attribute geometry
          #   It is a [geoJSON object](https://datatracker.ietf.org/doc/html/rfc7946#page-9)
          #   with details of the geographic boundaries of the zone. Only “Polygon” and
          #   “MultiPolygon” geoJSON types are supported.
          #
          #   Please note that one of geometry or geofence_id should be provided.
          #
          #   @return [Nextbillionai::Models::Optimization::V2SubmitParams::Zone::Geometry, nil]
          optional :geometry, -> { Nextbillionai::Optimization::V2SubmitParams::Zone::Geometry }

          # @!method initialize(id:, geofence_id: nil, geometry: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Optimization::V2SubmitParams::Zone} for more details.
          #
          #   @param id [Integer] Provide an ID for the zone. This field is mandatory when adding zones.
          #
          #   @param geofence_id [String] Provide the ID of a pre-created geofence using the [Geofence API](https://docs.n
          #
          #   @param geometry [Nextbillionai::Models::Optimization::V2SubmitParams::Zone::Geometry] It is a [geoJSON object](https://datatracker.ietf.org/doc/html/rfc7946#page-9) w

          # @see Nextbillionai::Models::Optimization::V2SubmitParams::Zone#geometry
          class Geometry < Nextbillionai::Internal::Type::BaseModel
            # @!attribute coordinates
            #   An array of coordinates in the \[longitude, latitude\] format, representing the
            #   zone boundary.
            #
            #   @return [Array<Array<Float>>, nil]
            optional :coordinates,
                     Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Internal::Type::ArrayOf[Float]]

            # @!attribute description
            #   Provide a description to identify the zone
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute type
            #   Type of the geoJSON geometry. Should always be Polygon or MultiPolygon.
            #
            #   @return [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Zone::Geometry::Type, nil]
            optional :type, enum: -> { Nextbillionai::Optimization::V2SubmitParams::Zone::Geometry::Type }

            # @!method initialize(coordinates: nil, description: nil, type: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Optimization::V2SubmitParams::Zone::Geometry} for more
            #   details.
            #
            #   It is a [geoJSON object](https://datatracker.ietf.org/doc/html/rfc7946#page-9)
            #   with details of the geographic boundaries of the zone. Only “Polygon” and
            #   “MultiPolygon” geoJSON types are supported.
            #
            #   Please note that one of geometry or geofence_id should be provided.
            #
            #   @param coordinates [Array<Array<Float>>] An array of coordinates in the \[longitude, latitude\] format, representing the
            #
            #   @param description [String] Provide a description to identify the zone
            #
            #   @param type [Symbol, Nextbillionai::Models::Optimization::V2SubmitParams::Zone::Geometry::Type] Type of the geoJSON geometry. Should always be Polygon or MultiPolygon.

            # Type of the geoJSON geometry. Should always be Polygon or MultiPolygon.
            #
            # @see Nextbillionai::Models::Optimization::V2SubmitParams::Zone::Geometry#type
            module Type
              extend Nextbillionai::Internal::Type::Enum

              POLYGON = :Polygon
              MULTI_POLYGON = :MultiPolygon

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
