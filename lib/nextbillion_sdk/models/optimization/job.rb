# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Optimization
      class Job < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Provide an unique ID for the job. The IDs are case-sensitive.
        #
        #   @return [String]
        required :id, String

        # @!attribute location_index
        #   An integer denoting the index (in the `location` array) of the location
        #   coordinates where the job needs to be performed. The valid range of values is
        #   \[0, length of `location` array).
        #
        #   Please note the `location_index` is mandatory when using the `jobs` object.
        #
        #   @return [Integer]
        required :location_index, Integer

        # @!attribute delivery
        #   In case the job involves a delivery step, use this attribute to describe
        #   delivery quantity. This attribute supports multidimensional quantities, to
        #   support delivering quantities of different units/dimensions. It is recommended
        #   to keep the dimensions of quantity for pickup/delivery consistent when defining
        #   them in `jobs` and `vehicles` (in `capacity` attribute).
        #
        #   Please note that the quantity of delivery will be added to the assigned
        #   vehicle’s initial load.
        #
        #   In case depots are being added, the delivery configured here can be fulfilled by
        #   vehicles starting from specific depots. Refer to `depot_ids` and
        #   `vehicles.start_depot_ids` to know more.
        #
        #   @return [Array<Integer>, nil]
        optional :delivery, NextbillionSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute depot_ids
        #   Specify the depots which can be used to fulfil this job. In case of a pickup
        #   job, the assigned vehicle will deliver the goods to the depot specified here, at
        #   the end of its trip. Conversely, in case of delivery jobs, the vehicle will load
        #   the goods from the depot specified here, before starting the trip.
        #
        #   **Note:**
        #
        #   - If multiple IDs are provided for this field then any of the given depots can
        #     be used to fulfil the job.
        #   - If this field is not provided then the given job can be fulfilled by any
        #     vehicle (subject to other constraints configured in the input).
        #   - If the job does not have any delivery or pick-up step configured then depots
        #     configuration will not have any impact on the given job.
        #
        #   @return [Array<String>, nil]
        optional :depot_ids, NextbillionSDK::Internal::Type::ArrayOf[String]

        # @!attribute description
        #   Add a custom description for the job.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute follow_lifo_order
        #   Specify whether the job route should follow LIFO (last in, first out). Use this
        #   parameter when `pickup` or `delivery` jobs are involved and the loading or
        #   unloading sequence of cargo is important. The default is `false`.
        #
        #   @return [Boolean, nil]
        optional :follow_lifo_order, NextbillionSDK::Internal::Type::Boolean

        # @!attribute incompatible_load_types
        #   Use this parameter to specify the type of loads which are incompatible with the
        #   job’s load type. Once this property is configured, the job can only be serviced
        #   by a vehicle which has not serviced any other task with an incompatible
        #   `load_types` . Add multiple load types to indicate all the types which are
        #   incompatible for this job. The incompatible load type considerations are ignored
        #   for the first task of the route.
        #
        #   For example, an input value of \[“groceries”, “food”\] means that current job’s
        #   load is incompatible with both groceries and food type of loads. Consequently,
        #   the optimizer will not assign this job to a vehicle which has served any task
        #   with `load_types` as either groceries or food.
        #
        #   Note:
        #
        #   - This parameter is effective only when a pickup / delivery is configured for
        #     the job.
        #   - If the job is part of any `relations` then, configured
        #     `incompatible_load_types` might be ignored.
        #
        #   @return [Array<String>, nil]
        optional :incompatible_load_types, NextbillionSDK::Internal::Type::ArrayOf[String]

        # @!attribute joint_order
        #   Specify a joint order group ID that this job is associated with. Tasks having
        #   the same joint order group ID are treated as a single unit: either all tasks in
        #   the group are assigned, or none are. Users can add tasks of both `jobs` and
        #   `shipments` types to a single joint order group by using the same unique ID.
        #   Please note that:
        #
        #   - Each job in a single joint order group will be fulfilled by a unique vehicle.
        #   - Jobs belonging to a joint order group can be served in any sequence.
        #   - Joint order settings will not be effective if \`solution\` or \`relations\`
        #     attributes are also provided in the input request.
        #
        #   @return [Integer, nil]
        optional :joint_order, Integer

        # @!attribute load_types
        #   Use this parameter to specify the type of loads for the given job. Once this
        #   property is configured, the job can not be served by a vehicle which has
        #   serviced any task whose load is incompatible with any of the`load_types`
        #   provided in this input. The load type considerations are ignored for the first
        #   task of the route.
        #
        #   For example, an input value of \[“groceries”, “food”\] means that job’s load
        #   characteristics belong to either one or both types. Consequently, the optimizer
        #   will assign this job to a vehicle which has served other tasks whose
        #   `incompatible_load_types` do not contain either groceries or food.
        #
        #   Note:
        #
        #   - This parameter is effective only when a pickup / delivery is configured for
        #     the job.
        #   - If the job is part of any `relations` then, `load_types` might be ignored.
        #
        #   @return [Array<String>, nil]
        optional :load_types, NextbillionSDK::Internal::Type::ArrayOf[String]

        # @!attribute max_visit_lateness
        #   It determines the allowable delay, in seconds, to begin a job after its
        #   designated time window has concluded. Please note that this parameter would
        #   override the `constraint.max_visit_lateness` (global) if both are specified.
        #
        #   @return [Integer, nil]
        optional :max_visit_lateness, Integer

        # @!attribute metadata
        #   Specify any custom data that should be attached along with job fulfilment
        #   details in the `steps` attribute of the optimized solution. Users can leverage
        #   this property to provide additional details/context when sharing information
        #   about the job with integrated systems (TMS, Fleet Management, Driver dispatch
        #   etc).
        #
        #   Please note that the `metadata` content must always be specified in a`key` :
        #   `value` pair format, where the “key” is always a string.
        #
        #   @return [Object, nil]
        optional :metadata, NextbillionSDK::Internal::Type::Unknown

        # @!attribute outsourcing_cost
        #   Specify the cost of keeping this job unassigned, namely, the cost of outsourcing
        #   the job. When provided, the optimizer weighs the cost of assigning the job
        #   against the cost of keeping it unassigned and chooses a solution with lower
        #   cost. In the solution, the `outsourcing_cost` of unassigned jobs is added to the
        #   total cost of the solution.
        #
        #   If the `outsourcing_cost` is not provided, which is to say that the job can not
        #   be outsourced, then the optimizer tries to fulfill the job irrespective of the
        #   cost incurred, subject to other constraints.
        #
        #   Please note that `revenue` and `outsourcing_cost` can not be specified
        #   simultaneously for a job. Also, the `outsourcing_cost` would override the
        #   priority settings of the job.
        #
        #   @return [Integer, nil]
        optional :outsourcing_cost, Integer

        # @!attribute pickup
        #   In case the job involves a pickup step, use this attribute to describe pickup
        #   quantity. This attribute supports multidimensional quantities, to support
        #   picking up quantities of different units/dimensions. It is recommended to keep
        #   the dimensions of quantity for pickup/delivery consistent when defining them in
        #   `jobs` and `vehicles` (in `capacity` attribute).
        #
        #   Please note that the vehicle will continue to carry the picked-up quantity until
        #   its last stop.
        #
        #   In case depots are being added, the pickup configured here can be fulfilled by
        #   vehicles ending at specific depots. Refer to `depot_ids` and
        #   `vehicles.end_depot_ids` to know more.
        #
        #   @return [Array<Integer>, nil]
        optional :pickup, NextbillionSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute priority
        #   Specify the priority of this job. The valid values are in the range of \[0,
        #   100\]. Default value is 0.
        #
        #   Please note that setting a priority will only decide whether this job will be
        #   assigned or not, but has nothing to do with the sequence of job fulfilment.
        #
        #   @return [Integer, nil]
        optional :priority, Integer

        # @!attribute revenue
        #   Specify the revenue earned by completing this job. The optimizer uses the
        #   `revenue` input to identify the potential profit earned by fulfilling this job
        #   after taking into account the costs incurred to do so. The`options.objective`
        #   and `vehicles.costs` input are taken into account to identify the costs of
        #   fulfilling the job.
        #
        #   In general, the optimizer will prefer fulfilling the tasks with higher profits
        #   over the tasks with lower profits, should it need to reject some tasks in order
        #   to honor other constraints. In case the profit from fulfilling a job is
        #   negative, it will remain unassigned whatsoever.
        #
        #   @return [Integer, nil]
        optional :revenue, Integer

        # @!attribute sequence_order
        #   Use this parameter to prioritize completing a task relative to certain other
        #   tasks. A task configured with a `sequence_order` of 2 will be done after the
        #   task with `sequence_order` of 1, but before the task with `sequence_order` of 3.
        #   Valid range of values for this input is \[0,100\].
        #
        #   Please note that:
        #
        #   - Only the tasks within the same route are compared and ordered as per their
        #     `sequence_order`.
        #   - Tasks without a `sequence_order` are not involved in the comparison.
        #   - Following is the precedence of `sequence_order` when used along side some of
        #     the other constraints:
        #
        #     - `relations` are prioritized over `sequence_order` comparisons.
        #     - `sequence_order` will override `order_grouping` configurations.
        #
        #   @return [Integer, nil]
        optional :sequence_order, Integer

        # @!attribute service
        #   Use this attribute to define the time duration, in seconds, needed to complete
        #   the job. Default value is 0.
        #
        #   @return [Integer, nil]
        optional :service, Integer

        # @!attribute setup
        #   Specify the job set-up duration, in seconds. `setup` is the one-time effort
        #   needed apart from working on the original task - for example, effort to record
        #   some information for compliance, or effort to set-up the equipment, or perform
        #   any other action for completing all steps required to fulfil the job.
        #
        #   Please note that `setup` time is applied only once for a given task location.
        #   `setup` time, unlike `service` time, is not repeated in case there are multiple
        #   tasks at the same location.
        #
        #   @return [Integer, nil]
        optional :setup, Integer

        # @!attribute skills
        #   Define the skills needed to complete the job. This attribute supports
        #   multidimensional skills allowing users to add multiple skills.
        #
        #   Read more about the behavior of this attribute in the
        #   [Multi-Dimensional Parameters](#multi-dimensional-parameters) section.
        #
        #   @return [Array<Integer>, nil]
        optional :skills, NextbillionSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute time_windows
        #   Define time periods within which this job should be started. The time periods
        #   should be expressed as a UNIX timestamp in seconds.
        #
        #   Please note that the time periods should not overlap with each other and should
        #   always follow the format of \[start_timestamp, end_timestamp\].
        #
        #   @return [Array<Array<Integer>>, nil]
        optional :time_windows,
                 NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Internal::Type::ArrayOf[Integer]]

        # @!attribute volume
        #   Specify the dimensions and alignment configurations for the cargo associated
        #   with the task. These inputs will be used to arrange the items into the loading
        #   compartment of the vehicle to utilize the three-dimensional space. If a job
        #   consists of several different items, each with its own dimensions, please
        #   specify the final characteristics for the task: total height, total length,
        #   total width.
        #
        #   Please note that vehicles which contain the `volume` input, will only be
        #   considered for arranging such items.
        #
        #   @return [NextbillionSDK::Models::Optimization::Job::Volume, nil]
        optional :volume, -> { NextbillionSDK::Optimization::Job::Volume }

        # @!attribute zones
        #   An array of integers specifying the IDs of the zone(s) that this job belongs to.
        #   The job can be fulfilled by all vehicles which are allowed to complete tasks in
        #   the zone(s) assigned to this job. Please note following points about job zones:
        #
        #   - If zone IDs are provided for any one of the jobs, then all other jobs should
        #     also be specified with zone IDs. Zone IDs provided here will override any zone
        #     geometries provided in the `zones` attribute and these IDs will be used for
        #     allocating appropriate vehicles.
        #   - Jobs can be auto-allocated to zones if this parameter is not specified while
        #     the zone geometries (either `zones.geometry` or `zones.geofence_id`) are
        #     provided.
        #   - Jobs not falling in any zones can be fulfilled by only those vehicles which
        #     are allowed to take up tasks outside zones as well. Refer to `vehicles`
        #     attribute for more information.
        #
        #   @return [Array<Integer>, nil]
        optional :zones, NextbillionSDK::Internal::Type::ArrayOf[Integer]

        # @!method initialize(id:, location_index:, delivery: nil, depot_ids: nil, description: nil, follow_lifo_order: nil, incompatible_load_types: nil, joint_order: nil, load_types: nil, max_visit_lateness: nil, metadata: nil, outsourcing_cost: nil, pickup: nil, priority: nil, revenue: nil, sequence_order: nil, service: nil, setup: nil, skills: nil, time_windows: nil, volume: nil, zones: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Optimization::Job} for more details.
        #
        #   @param id [String] Provide an unique ID for the job. The IDs are case-sensitive.
        #
        #   @param location_index [Integer] An integer denoting the index (in the `location` array) of the location coordina
        #
        #   @param delivery [Array<Integer>] In case the job involves a delivery step, use this attribute to describe deliver
        #
        #   @param depot_ids [Array<String>] Specify the depots which can be used to fulfil this job. In case of a pickup job
        #
        #   @param description [String] Add a custom description for the job.
        #
        #   @param follow_lifo_order [Boolean] Specify whether the job route should follow LIFO (last in, first out). Use this
        #
        #   @param incompatible_load_types [Array<String>] Use this parameter to specify the type of loads which are incompatible with the
        #
        #   @param joint_order [Integer] Specify a joint order group ID that this job is associated with. Tasks having th
        #
        #   @param load_types [Array<String>] Use this parameter to specify the type of loads for the given job. Once this pro
        #
        #   @param max_visit_lateness [Integer] It determines the allowable delay, in seconds, to begin a job after its designat
        #
        #   @param metadata [Object] Specify any custom data that should be attached along with job fulfilment detail
        #
        #   @param outsourcing_cost [Integer] Specify the cost of keeping this job unassigned, namely, the cost of outsourcing
        #
        #   @param pickup [Array<Integer>] In case the job involves a pickup step, use this attribute to describe pickup qu
        #
        #   @param priority [Integer] Specify the priority of this job. The valid values are in the range of \[0, 100\
        #
        #   @param revenue [Integer] Specify the revenue earned by completing this job. The optimizer uses the `reven
        #
        #   @param sequence_order [Integer] Use this parameter to prioritize completing a task relative to certain other tas
        #
        #   @param service [Integer] Use this attribute to define the time duration, in seconds, needed to complete t
        #
        #   @param setup [Integer] Specify the job set-up duration, in seconds. `setup` is the one-time effort need
        #
        #   @param skills [Array<Integer>] Define the skills needed to complete the job. This attribute supports multidimen
        #
        #   @param time_windows [Array<Array<Integer>>] Define time periods within which this job should be started. The time periods sh
        #
        #   @param volume [NextbillionSDK::Models::Optimization::Job::Volume] Specify the dimensions and alignment configurations for the cargo associated wit
        #
        #   @param zones [Array<Integer>] An array of integers specifying the IDs of the zone(s) that this job belongs to.

        # @see NextbillionSDK::Models::Optimization::Job#volume
        class Volume < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute alignment
          #   Refers to the orientation of the cargo in the loading compartment. It supports
          #   the following values:
          #
          #   - **" "** : A blank space to indicate that the dimension check for the cargo
          #     should be skipped. This is also the default value.
          #   - **strict :** In this orientation, the cargo must fit within the vehicle’s
          #     dimensions exactly as is—no rotation is allowed. All dimensions of the cargo
          #     must be less than or equal to the corresponding dimensions of the vehicle. If
          #     any dimension exceeds that of the vehicle, the cargo cannot be loaded.
          #   - **parallel :** With parallel orientation, the cargo can be rotated around any
          #     one of the axes to help it fit into the loading compartment. For example, if
          #     the cargo is wider than the vehicle, it can still be loaded by rotating it
          #     around the vertical axis (so the width aligns with the vehicle’s depth) or the
          #     horizontal axis (so the width aligns with the vehicle’s height). Using this
          #     orientation, even a cargo whose one dimension is larger than the corresponding
          #     dimension of the vehicle but smaller than other dimensions, can also be
          #     loaded.
          #   - **fixed_bottom :** In this orientation, the cargo can only be rotated around
          #     the vertical axis, meaning its base stays fixed and it cannot be tilted or
          #     turned over. The height of the cargo remains aligned with the vehicle’s height
          #     and cannot be adjusted. As a result, if the cargo’s height exceeds the
          #     vehicle’s available height, it cannot be loaded into the compartment.
          #
          #   @return [Symbol, NextbillionSDK::Models::Optimization::Job::Volume::Alignment, nil]
          optional :alignment, enum: -> { NextbillionSDK::Optimization::Job::Volume::Alignment }

          # @!attribute depth
          #   Cargo length, in meters.
          #
          #   @return [Float, nil]
          optional :depth, Float

          # @!attribute height
          #   Cargo height, in meters.
          #
          #   @return [Float, nil]
          optional :height, Float

          # @!attribute width
          #   Cargo width, in meters.
          #
          #   @return [Float, nil]
          optional :width, Float

          # @!method initialize(alignment: nil, depth: nil, height: nil, width: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Optimization::Job::Volume} for more details.
          #
          #   Specify the dimensions and alignment configurations for the cargo associated
          #   with the task. These inputs will be used to arrange the items into the loading
          #   compartment of the vehicle to utilize the three-dimensional space. If a job
          #   consists of several different items, each with its own dimensions, please
          #   specify the final characteristics for the task: total height, total length,
          #   total width.
          #
          #   Please note that vehicles which contain the `volume` input, will only be
          #   considered for arranging such items.
          #
          #   @param alignment [Symbol, NextbillionSDK::Models::Optimization::Job::Volume::Alignment] Refers to the orientation of the cargo in the loading compartment. It supports t
          #
          #   @param depth [Float] Cargo length, in meters.
          #
          #   @param height [Float] Cargo height, in meters.
          #
          #   @param width [Float] Cargo width, in meters.

          # Refers to the orientation of the cargo in the loading compartment. It supports
          # the following values:
          #
          # - **" "** : A blank space to indicate that the dimension check for the cargo
          #   should be skipped. This is also the default value.
          # - **strict :** In this orientation, the cargo must fit within the vehicle’s
          #   dimensions exactly as is—no rotation is allowed. All dimensions of the cargo
          #   must be less than or equal to the corresponding dimensions of the vehicle. If
          #   any dimension exceeds that of the vehicle, the cargo cannot be loaded.
          # - **parallel :** With parallel orientation, the cargo can be rotated around any
          #   one of the axes to help it fit into the loading compartment. For example, if
          #   the cargo is wider than the vehicle, it can still be loaded by rotating it
          #   around the vertical axis (so the width aligns with the vehicle’s depth) or the
          #   horizontal axis (so the width aligns with the vehicle’s height). Using this
          #   orientation, even a cargo whose one dimension is larger than the corresponding
          #   dimension of the vehicle but smaller than other dimensions, can also be
          #   loaded.
          # - **fixed_bottom :** In this orientation, the cargo can only be rotated around
          #   the vertical axis, meaning its base stays fixed and it cannot be tilted or
          #   turned over. The height of the cargo remains aligned with the vehicle’s height
          #   and cannot be adjusted. As a result, if the cargo’s height exceeds the
          #   vehicle’s available height, it cannot be loaded into the compartment.
          #
          # @see NextbillionSDK::Models::Optimization::Job::Volume#alignment
          module Alignment
            extend NextbillionSDK::Internal::Type::Enum

            STRICT = :"`strict`"
            PARALLEL = :"`parallel`"
            FIXED_BOTTOM = :"`fixed_bottom`"
            Unknown0 = :"`\" \"`"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
