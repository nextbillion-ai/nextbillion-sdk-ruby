# typed: strong

module Nextbillionai
  module Models
    module Optimization
      class Job < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Optimization::Job,
              Nextbillionai::Internal::AnyHash
            )
          end

        # Provide an unique ID for the job. The IDs are case-sensitive.
        sig { returns(String) }
        attr_accessor :id

        # An integer denoting the index (in the location array) of the location
        # coordinates where the job needs to be performed. The valid range of values is
        # \[0, length of location array).
        #
        # Please note the location_index is mandatory when using the jobs object.
        sig { returns(Integer) }
        attr_accessor :location_index

        # In case the job involves a delivery step, use this attribute to describe
        # delivery quantity. This attribute supports multidimensional quantities, to
        # support delivering quantities of different units/dimensions. It is recommended
        # to keep the dimensions of quantity for pickup/delivery consistent when defining
        # them in jobs and vehicles (in capacity attribute).
        #
        # Please note that the quantity of delivery will be added to the assigned
        # vehicle’s initial load.
        #
        # In case depots are being added, the delivery configured here can be fulfilled by
        # vehicles starting from specific depots. Refer to depot_ids and
        # vehicles.start_depot_ids to know more.
        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :delivery

        sig { params(delivery: T::Array[Integer]).void }
        attr_writer :delivery

        # Specify the depots which can be used to fulfil this job. In case of a pickup
        # job, the assigned vehicle will deliver the goods to the depot specified here, at
        # the end of its trip. Conversely, in case of delivery jobs, the vehicle will load
        # the goods from the depot specified here, before starting the trip.
        #
        # **Note:**
        #
        # - If multiple IDs are provided for this field then any of the given depots can
        #   be used to fulfil the job.
        # - If this field is not provided then the given job can be fulfilled by any
        #   vehicle (subject to other constraints configured in the input).
        # - If the job does not have any delivery or pick-up step configured then depots
        #   configuration will not have any impact on the given job.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :depot_ids

        sig { params(depot_ids: T::Array[String]).void }
        attr_writer :depot_ids

        # Add a custom description for the job.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Specify whether the job route should follow LIFO (last in, first out). Use this
        # parameter when pickup or delivery jobs are involved and the loading or unloading
        # sequence of cargo is important. The default is false.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :follow_lifo_order

        sig { params(follow_lifo_order: T::Boolean).void }
        attr_writer :follow_lifo_order

        # Use this parameter to specify the type of loads which are incompatible with the
        # job’s load type. Once this property is configured, the job can only be serviced
        # by a vehicle which has not serviced any other task with an incompatible
        # load_types . Add multiple load types to indicate all the types which are
        # incompatible for this job. The incompatible load type considerations are ignored
        # for the first task of the route.
        #
        # For example, an input value of \[“groceries”, “food”\] means that current job’s
        # load is incompatible with both groceries and food type of loads. Consequently,
        # the optimizer will not assign this job to a vehicle which has served any task
        # with load_types as either groceries or food.
        #
        # Note:
        #
        # - This parameter is effective only when a pickup / delivery is configured for
        #   the job.
        # - If the job is part of any relations then, configured incompatible_load_types
        #   might be ignored.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :incompatible_load_types

        sig { params(incompatible_load_types: T::Array[String]).void }
        attr_writer :incompatible_load_types

        # Specify a joint order group ID that this job is associated with. Tasks having
        # the same joint order group ID are treated as a single unit: either all tasks in
        # the group are assigned, or none are. Users can add tasks of both jobs and
        # shipments types to a single joint order group by using the same unique ID.
        # Please note that:
        #
        # - Each job in a single joint order group will be fulfilled by a unique vehicle.
        # - Jobs belonging to a joint order group can be served in any sequence.
        # - Joint order settings will not be effective if \solution\ or \relations\
        #   attributes are also provided in the input request.
        sig { returns(T.nilable(Integer)) }
        attr_reader :joint_order

        sig { params(joint_order: Integer).void }
        attr_writer :joint_order

        # Use this parameter to specify the type of loads for the given job. Once this
        # property is configured, the job can not be served by a vehicle which has
        # serviced any task whose load is incompatible with any of theload_types provided
        # in this input. The load type considerations are ignored for the first task of
        # the route.
        #
        # For example, an input value of \[“groceries”, “food”\] means that job’s load
        # characteristics belong to either one or both types. Consequently, the optimizer
        # will assign this job to a vehicle which has served other tasks whose
        # incompatible_load_types do not contain either groceries or food.
        #
        # Note:
        #
        # - This parameter is effective only when a pickup / delivery is configured for
        #   the job.
        # - If the job is part of any relations then, load_types might be ignored.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :load_types

        sig { params(load_types: T::Array[String]).void }
        attr_writer :load_types

        # It determines the allowable delay, in seconds, to begin a job after its
        # designated time window has concluded. Please note that this parameter would
        # override the constraint.max_visit_lateness (global) if both are specified.
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_visit_lateness

        sig { params(max_visit_lateness: Integer).void }
        attr_writer :max_visit_lateness

        # Specify any custom data that should be attached along with job fulfilment
        # details in the steps attribute of the optimized solution. Users can leverage
        # this property to provide additional details/context when sharing information
        # about the job with integrated systems (TMS, Fleet Management, Driver dispatch
        # etc).
        #
        # Please note that the metadata content must always be specified in akey : value
        # pair format, where the “key” is always a string.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :metadata

        sig { params(metadata: T.anything).void }
        attr_writer :metadata

        # Specify the cost of keeping this job unassigned, namely, the cost of outsourcing
        # the job. When provided, the optimizer weighs the cost of assigning the job
        # against the cost of keeping it unassigned and chooses a solution with lower
        # cost. In the solution, the outsourcing_cost of unassigned jobs is added to the
        # total cost of the solution.
        #
        # If the outsourcing_cost is not provided, which is to say that the job can not be
        # outsourced, then the optimizer tries to fulfill the job irrespective of the cost
        # incurred, subject to other constraints.
        #
        # Please note that revenue and outsourcing_cost can not be specified
        # simultaneously for a job. Also, the outsourcing_cost would override the priority
        # settings of the job.
        sig { returns(T.nilable(Integer)) }
        attr_reader :outsourcing_cost

        sig { params(outsourcing_cost: Integer).void }
        attr_writer :outsourcing_cost

        # In case the job involves a pickup step, use this attribute to describe pickup
        # quantity. This attribute supports multidimensional quantities, to support
        # picking up quantities of different units/dimensions. It is recommended to keep
        # the dimensions of quantity for pickup/delivery consistent when defining them in
        # jobs and vehicles (in capacity attribute).
        #
        # Please note that the vehicle will continue to carry the picked-up quantity until
        # its last stop.
        #
        # In case depots are being added, the pickup configured here can be fulfilled by
        # vehicles ending at specific depots. Refer to depot_ids and
        # vehicles.end_depot_ids to know more.
        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :pickup

        sig { params(pickup: T::Array[Integer]).void }
        attr_writer :pickup

        # Specify the priority of this job. The valid values are in the range of \[0,
        # 100\]. Default value is 0.
        #
        # Please note that setting a priority will only decide whether this job will be
        # assigned or not, but has nothing to do with the sequence of job fulfilment.
        sig { returns(T.nilable(Integer)) }
        attr_reader :priority

        sig { params(priority: Integer).void }
        attr_writer :priority

        # Specify the revenue earned by completing this job. The optimizer uses the
        # revenue input to identify the potential profit earned by fulfilling this job
        # after taking into account the costs incurred to do so. Theoptions.objective and
        # vehicles.costs input are taken into account to identify the costs of fulfilling
        # the job.
        #
        # In general, the optimizer will prefer fulfilling the tasks with higher profits
        # over the tasks with lower profits, should it need to reject some tasks in order
        # to honor other constraints. In case the profit from fulfilling a job is
        # negative, it will remain unassigned whatsoever.
        sig { returns(T.nilable(Integer)) }
        attr_reader :revenue

        sig { params(revenue: Integer).void }
        attr_writer :revenue

        # Use this parameter to prioritize completing a task relative to certain other
        # tasks. A task configured with a sequence_order of 2 will be done after the task
        # with sequence_order of 1, but before the task with sequence_order of 3. Valid
        # range of values for this input is \[0,100\].
        #
        # Please note that:
        #
        # - Only the tasks within the same route are compared and ordered as per their
        #   sequence_order.
        # - Tasks without a sequence_order are not involved in the comparison.
        # - Following is the precedence of sequence_order when used along side some of the
        #   other constraints:
        #
        #   - relations are prioritized over sequence_order comparisons.
        #   - sequence_order will override order_grouping configurations.
        sig { returns(T.nilable(Integer)) }
        attr_reader :sequence_order

        sig { params(sequence_order: Integer).void }
        attr_writer :sequence_order

        # Use this attribute to define the time duration, in seconds, needed to complete
        # the job. Default value is 0.
        sig { returns(T.nilable(Integer)) }
        attr_reader :service

        sig { params(service: Integer).void }
        attr_writer :service

        # Specify the job set-up duration, in seconds. setup is the one-time effort needed
        # apart from working on the original task - for example, effort to record some
        # information for compliance, or effort to set-up the equipment, or perform any
        # other action for completing all steps required to fulfil the job.
        #
        # Please note that setup time is applied only once for a given task location.
        # setup time, unlike service time, is not repeated in case there are multiple
        # tasks at the same location.
        sig { returns(T.nilable(Integer)) }
        attr_reader :setup

        sig { params(setup: Integer).void }
        attr_writer :setup

        # Define the skills needed to complete the job. This attribute supports
        # multidimensional skills allowing users to add multiple skills.
        #
        # Read more about the behavior of this attribute in the
        # [Multi-Dimensional Parameters](#multi-dimensional-parameters) section.
        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :skills

        sig { params(skills: T::Array[Integer]).void }
        attr_writer :skills

        # Define time periods within which this job should be started. The time periods
        # should be expressed as a UNIX timestamp in seconds.
        #
        # Please note that the time periods should not overlap with each other and should
        # always follow the format of \[start_timestamp, end_timestamp\].
        sig { returns(T.nilable(T::Array[T::Array[Integer]])) }
        attr_reader :time_windows

        sig { params(time_windows: T::Array[T::Array[Integer]]).void }
        attr_writer :time_windows

        # Specify the dimensions and alignment configurations for the cargo associated
        # with the task. These inputs will be used to arrange the items into the loading
        # compartment of the vehicle to utilize the three-dimensional space. If a job
        # consists of several different items, each with its own dimensions, please
        # specify the final characteristics for the task: total height, total length,
        # total width.
        #
        # Please note that vehicles which contain the volume input, will only be
        # considered for arranging such items.
        sig { returns(T.nilable(Nextbillionai::Optimization::Job::Volume)) }
        attr_reader :volume

        sig do
          params(volume: Nextbillionai::Optimization::Job::Volume::OrHash).void
        end
        attr_writer :volume

        # An array of integers specifying the IDs of the zone(s) that this job belongs to.
        # The job can be fulfilled by all vehicles which are allowed to complete tasks in
        # the zone(s) assigned to this job. Please note following points about job zones:
        #
        # - If zone IDs are provided for any one of the jobs, then all other jobs should
        #   also be specified with zone IDs. Zone IDs provided here will override any zone
        #   geometries provided in the zones attribute and these IDs will be used for
        #   allocating appropriate vehicles.
        # - Jobs can be auto-allocated to zones if this parameter is not specified while
        #   the zone geometries (either zones.geometry or zones.geofence_id) are provided.
        # - Jobs not falling in any zones can be fulfilled by only those vehicles which
        #   are allowed to take up tasks outside zones as well. Refer to vehicles
        #   attribute for more information.
        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :zones

        sig { params(zones: T::Array[Integer]).void }
        attr_writer :zones

        sig do
          params(
            id: String,
            location_index: Integer,
            delivery: T::Array[Integer],
            depot_ids: T::Array[String],
            description: String,
            follow_lifo_order: T::Boolean,
            incompatible_load_types: T::Array[String],
            joint_order: Integer,
            load_types: T::Array[String],
            max_visit_lateness: Integer,
            metadata: T.anything,
            outsourcing_cost: Integer,
            pickup: T::Array[Integer],
            priority: Integer,
            revenue: Integer,
            sequence_order: Integer,
            service: Integer,
            setup: Integer,
            skills: T::Array[Integer],
            time_windows: T::Array[T::Array[Integer]],
            volume: Nextbillionai::Optimization::Job::Volume::OrHash,
            zones: T::Array[Integer]
          ).returns(T.attached_class)
        end
        def self.new(
          # Provide an unique ID for the job. The IDs are case-sensitive.
          id:,
          # An integer denoting the index (in the location array) of the location
          # coordinates where the job needs to be performed. The valid range of values is
          # \[0, length of location array).
          #
          # Please note the location_index is mandatory when using the jobs object.
          location_index:,
          # In case the job involves a delivery step, use this attribute to describe
          # delivery quantity. This attribute supports multidimensional quantities, to
          # support delivering quantities of different units/dimensions. It is recommended
          # to keep the dimensions of quantity for pickup/delivery consistent when defining
          # them in jobs and vehicles (in capacity attribute).
          #
          # Please note that the quantity of delivery will be added to the assigned
          # vehicle’s initial load.
          #
          # In case depots are being added, the delivery configured here can be fulfilled by
          # vehicles starting from specific depots. Refer to depot_ids and
          # vehicles.start_depot_ids to know more.
          delivery: nil,
          # Specify the depots which can be used to fulfil this job. In case of a pickup
          # job, the assigned vehicle will deliver the goods to the depot specified here, at
          # the end of its trip. Conversely, in case of delivery jobs, the vehicle will load
          # the goods from the depot specified here, before starting the trip.
          #
          # **Note:**
          #
          # - If multiple IDs are provided for this field then any of the given depots can
          #   be used to fulfil the job.
          # - If this field is not provided then the given job can be fulfilled by any
          #   vehicle (subject to other constraints configured in the input).
          # - If the job does not have any delivery or pick-up step configured then depots
          #   configuration will not have any impact on the given job.
          depot_ids: nil,
          # Add a custom description for the job.
          description: nil,
          # Specify whether the job route should follow LIFO (last in, first out). Use this
          # parameter when pickup or delivery jobs are involved and the loading or unloading
          # sequence of cargo is important. The default is false.
          follow_lifo_order: nil,
          # Use this parameter to specify the type of loads which are incompatible with the
          # job’s load type. Once this property is configured, the job can only be serviced
          # by a vehicle which has not serviced any other task with an incompatible
          # load_types . Add multiple load types to indicate all the types which are
          # incompatible for this job. The incompatible load type considerations are ignored
          # for the first task of the route.
          #
          # For example, an input value of \[“groceries”, “food”\] means that current job’s
          # load is incompatible with both groceries and food type of loads. Consequently,
          # the optimizer will not assign this job to a vehicle which has served any task
          # with load_types as either groceries or food.
          #
          # Note:
          #
          # - This parameter is effective only when a pickup / delivery is configured for
          #   the job.
          # - If the job is part of any relations then, configured incompatible_load_types
          #   might be ignored.
          incompatible_load_types: nil,
          # Specify a joint order group ID that this job is associated with. Tasks having
          # the same joint order group ID are treated as a single unit: either all tasks in
          # the group are assigned, or none are. Users can add tasks of both jobs and
          # shipments types to a single joint order group by using the same unique ID.
          # Please note that:
          #
          # - Each job in a single joint order group will be fulfilled by a unique vehicle.
          # - Jobs belonging to a joint order group can be served in any sequence.
          # - Joint order settings will not be effective if \solution\ or \relations\
          #   attributes are also provided in the input request.
          joint_order: nil,
          # Use this parameter to specify the type of loads for the given job. Once this
          # property is configured, the job can not be served by a vehicle which has
          # serviced any task whose load is incompatible with any of theload_types provided
          # in this input. The load type considerations are ignored for the first task of
          # the route.
          #
          # For example, an input value of \[“groceries”, “food”\] means that job’s load
          # characteristics belong to either one or both types. Consequently, the optimizer
          # will assign this job to a vehicle which has served other tasks whose
          # incompatible_load_types do not contain either groceries or food.
          #
          # Note:
          #
          # - This parameter is effective only when a pickup / delivery is configured for
          #   the job.
          # - If the job is part of any relations then, load_types might be ignored.
          load_types: nil,
          # It determines the allowable delay, in seconds, to begin a job after its
          # designated time window has concluded. Please note that this parameter would
          # override the constraint.max_visit_lateness (global) if both are specified.
          max_visit_lateness: nil,
          # Specify any custom data that should be attached along with job fulfilment
          # details in the steps attribute of the optimized solution. Users can leverage
          # this property to provide additional details/context when sharing information
          # about the job with integrated systems (TMS, Fleet Management, Driver dispatch
          # etc).
          #
          # Please note that the metadata content must always be specified in akey : value
          # pair format, where the “key” is always a string.
          metadata: nil,
          # Specify the cost of keeping this job unassigned, namely, the cost of outsourcing
          # the job. When provided, the optimizer weighs the cost of assigning the job
          # against the cost of keeping it unassigned and chooses a solution with lower
          # cost. In the solution, the outsourcing_cost of unassigned jobs is added to the
          # total cost of the solution.
          #
          # If the outsourcing_cost is not provided, which is to say that the job can not be
          # outsourced, then the optimizer tries to fulfill the job irrespective of the cost
          # incurred, subject to other constraints.
          #
          # Please note that revenue and outsourcing_cost can not be specified
          # simultaneously for a job. Also, the outsourcing_cost would override the priority
          # settings of the job.
          outsourcing_cost: nil,
          # In case the job involves a pickup step, use this attribute to describe pickup
          # quantity. This attribute supports multidimensional quantities, to support
          # picking up quantities of different units/dimensions. It is recommended to keep
          # the dimensions of quantity for pickup/delivery consistent when defining them in
          # jobs and vehicles (in capacity attribute).
          #
          # Please note that the vehicle will continue to carry the picked-up quantity until
          # its last stop.
          #
          # In case depots are being added, the pickup configured here can be fulfilled by
          # vehicles ending at specific depots. Refer to depot_ids and
          # vehicles.end_depot_ids to know more.
          pickup: nil,
          # Specify the priority of this job. The valid values are in the range of \[0,
          # 100\]. Default value is 0.
          #
          # Please note that setting a priority will only decide whether this job will be
          # assigned or not, but has nothing to do with the sequence of job fulfilment.
          priority: nil,
          # Specify the revenue earned by completing this job. The optimizer uses the
          # revenue input to identify the potential profit earned by fulfilling this job
          # after taking into account the costs incurred to do so. Theoptions.objective and
          # vehicles.costs input are taken into account to identify the costs of fulfilling
          # the job.
          #
          # In general, the optimizer will prefer fulfilling the tasks with higher profits
          # over the tasks with lower profits, should it need to reject some tasks in order
          # to honor other constraints. In case the profit from fulfilling a job is
          # negative, it will remain unassigned whatsoever.
          revenue: nil,
          # Use this parameter to prioritize completing a task relative to certain other
          # tasks. A task configured with a sequence_order of 2 will be done after the task
          # with sequence_order of 1, but before the task with sequence_order of 3. Valid
          # range of values for this input is \[0,100\].
          #
          # Please note that:
          #
          # - Only the tasks within the same route are compared and ordered as per their
          #   sequence_order.
          # - Tasks without a sequence_order are not involved in the comparison.
          # - Following is the precedence of sequence_order when used along side some of the
          #   other constraints:
          #
          #   - relations are prioritized over sequence_order comparisons.
          #   - sequence_order will override order_grouping configurations.
          sequence_order: nil,
          # Use this attribute to define the time duration, in seconds, needed to complete
          # the job. Default value is 0.
          service: nil,
          # Specify the job set-up duration, in seconds. setup is the one-time effort needed
          # apart from working on the original task - for example, effort to record some
          # information for compliance, or effort to set-up the equipment, or perform any
          # other action for completing all steps required to fulfil the job.
          #
          # Please note that setup time is applied only once for a given task location.
          # setup time, unlike service time, is not repeated in case there are multiple
          # tasks at the same location.
          setup: nil,
          # Define the skills needed to complete the job. This attribute supports
          # multidimensional skills allowing users to add multiple skills.
          #
          # Read more about the behavior of this attribute in the
          # [Multi-Dimensional Parameters](#multi-dimensional-parameters) section.
          skills: nil,
          # Define time periods within which this job should be started. The time periods
          # should be expressed as a UNIX timestamp in seconds.
          #
          # Please note that the time periods should not overlap with each other and should
          # always follow the format of \[start_timestamp, end_timestamp\].
          time_windows: nil,
          # Specify the dimensions and alignment configurations for the cargo associated
          # with the task. These inputs will be used to arrange the items into the loading
          # compartment of the vehicle to utilize the three-dimensional space. If a job
          # consists of several different items, each with its own dimensions, please
          # specify the final characteristics for the task: total height, total length,
          # total width.
          #
          # Please note that vehicles which contain the volume input, will only be
          # considered for arranging such items.
          volume: nil,
          # An array of integers specifying the IDs of the zone(s) that this job belongs to.
          # The job can be fulfilled by all vehicles which are allowed to complete tasks in
          # the zone(s) assigned to this job. Please note following points about job zones:
          #
          # - If zone IDs are provided for any one of the jobs, then all other jobs should
          #   also be specified with zone IDs. Zone IDs provided here will override any zone
          #   geometries provided in the zones attribute and these IDs will be used for
          #   allocating appropriate vehicles.
          # - Jobs can be auto-allocated to zones if this parameter is not specified while
          #   the zone geometries (either zones.geometry or zones.geofence_id) are provided.
          # - Jobs not falling in any zones can be fulfilled by only those vehicles which
          #   are allowed to take up tasks outside zones as well. Refer to vehicles
          #   attribute for more information.
          zones: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              location_index: Integer,
              delivery: T::Array[Integer],
              depot_ids: T::Array[String],
              description: String,
              follow_lifo_order: T::Boolean,
              incompatible_load_types: T::Array[String],
              joint_order: Integer,
              load_types: T::Array[String],
              max_visit_lateness: Integer,
              metadata: T.anything,
              outsourcing_cost: Integer,
              pickup: T::Array[Integer],
              priority: Integer,
              revenue: Integer,
              sequence_order: Integer,
              service: Integer,
              setup: Integer,
              skills: T::Array[Integer],
              time_windows: T::Array[T::Array[Integer]],
              volume: Nextbillionai::Optimization::Job::Volume,
              zones: T::Array[Integer]
            }
          )
        end
        def to_hash
        end

        class Volume < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Optimization::Job::Volume,
                Nextbillionai::Internal::AnyHash
              )
            end

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
          sig do
            returns(
              T.nilable(
                Nextbillionai::Optimization::Job::Volume::Alignment::OrSymbol
              )
            )
          end
          attr_reader :alignment

          sig do
            params(
              alignment:
                Nextbillionai::Optimization::Job::Volume::Alignment::OrSymbol
            ).void
          end
          attr_writer :alignment

          # Cargo length, in meters.
          sig { returns(T.nilable(Float)) }
          attr_reader :depth

          sig { params(depth: Float).void }
          attr_writer :depth

          # Cargo height, in meters.
          sig { returns(T.nilable(Float)) }
          attr_reader :height

          sig { params(height: Float).void }
          attr_writer :height

          # Cargo width, in meters.
          sig { returns(T.nilable(Float)) }
          attr_reader :width

          sig { params(width: Float).void }
          attr_writer :width

          # Specify the dimensions and alignment configurations for the cargo associated
          # with the task. These inputs will be used to arrange the items into the loading
          # compartment of the vehicle to utilize the three-dimensional space. If a job
          # consists of several different items, each with its own dimensions, please
          # specify the final characteristics for the task: total height, total length,
          # total width.
          #
          # Please note that vehicles which contain the volume input, will only be
          # considered for arranging such items.
          sig do
            params(
              alignment:
                Nextbillionai::Optimization::Job::Volume::Alignment::OrSymbol,
              depth: Float,
              height: Float,
              width: Float
            ).returns(T.attached_class)
          end
          def self.new(
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
            alignment: nil,
            # Cargo length, in meters.
            depth: nil,
            # Cargo height, in meters.
            height: nil,
            # Cargo width, in meters.
            width: nil
          )
          end

          sig do
            override.returns(
              {
                alignment:
                  Nextbillionai::Optimization::Job::Volume::Alignment::OrSymbol,
                depth: Float,
                height: Float,
                width: Float
              }
            )
          end
          def to_hash
          end

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
          module Alignment
            extend Nextbillionai::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Nextbillionai::Optimization::Job::Volume::Alignment
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STRICT =
              T.let(
                :strict,
                Nextbillionai::Optimization::Job::Volume::Alignment::TaggedSymbol
              )
            PARALLEL =
              T.let(
                :parallel,
                Nextbillionai::Optimization::Job::Volume::Alignment::TaggedSymbol
              )
            FIXED_BOTTOM =
              T.let(
                :fixed_bottom,
                Nextbillionai::Optimization::Job::Volume::Alignment::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Nextbillionai::Optimization::Job::Volume::Alignment::TaggedSymbol
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
