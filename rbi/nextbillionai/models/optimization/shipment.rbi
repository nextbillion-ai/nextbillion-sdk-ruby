# typed: strong

module Nextbillionai
  module Models
    module Optimization
      class Shipment < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Optimization::Shipment,
              Nextbillionai::Internal::AnyHash
            )
          end

        # Specify the details of the delivery step of the shipment.
        sig { returns(Nextbillionai::Optimization::Shipment::Delivery) }
        attr_reader :delivery

        sig do
          params(
            delivery: Nextbillionai::Optimization::Shipment::Delivery::OrHash
          ).void
        end
        attr_writer :delivery

        # Specify the details of the pickup step of the shipment.
        sig { returns(Nextbillionai::Optimization::Shipment::Pickup) }
        attr_reader :pickup

        sig do
          params(
            pickup: Nextbillionai::Optimization::Shipment::Pickup::OrHash
          ).void
        end
        attr_writer :pickup

        # This parameter defines the quantity that needs to be shipped. This attribute
        # supports multidimensional quantities, to support shipment of quantities of
        # different units/dimensions. It is recommended to keep the dimensions of amount
        # in shipments and that of capacity in vehicles consistent.
        #
        # Please note that the amount will be added to the assigned vehicle’s initial
        # load.
        #
        # Read more about the behavior of this attribute in the
        # [Multi-Dimensional Parameters](#multi-dimensional-parameters) section.
        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :amount

        sig { params(amount: T::Array[Integer]).void }
        attr_writer :amount

        # Specify whether the shipment route should follow LIFO (last in, first out). Use
        # this parameter when the loading or unloading sequence of cargo is important. The
        # default value is \false\.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :follow_lifo_order

        sig { params(follow_lifo_order: T::Boolean).void }
        attr_writer :follow_lifo_order

        # Use this parameter to specify the type of loads which are incompatible with the
        # shipment’s load type. Once this property is configured, the shipment can only be
        # serviced by a vehicle which has not serviced any other task with an incompatible
        # load_types . Add multiple load types to indicate all the types which are
        # incompatible for this shipment. The incompatible load type considerations are
        # ignored for the first task of the route.
        #
        # For example, an input value of \[“groceries”, “food”\] means that shipment’s
        # load is incompatible with both groceries and food type of loads. Consequently,
        # the optimizer will not assign this shipment to a vehicle which has served any
        # task with load_types as either groceries or food.
        #
        # Please note that if the shipment is part of any relations then, configured
        # incompatible_load_types might be ignored.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :incompatible_load_types

        sig { params(incompatible_load_types: T::Array[String]).void }
        attr_writer :incompatible_load_types

        # Specify a joint order group ID that this shipment is associated with. Tasks
        # having the same joint order group ID are treated as a single unit: either all
        # tasks in the group are assigned, or none are. Users can add tasks of both jobs
        # and shipments types to a single joint order group by using the same unique ID.
        # Please note that:
        #
        # - Each shipment in a single joint order group will be fulfilled by a unique
        #   vehicle.
        # - Shipments belonging to a joint order group can be served in any sequence while
        #   maintaining the pickup -> delivery sequence for an individual shipment.
        # - Joint order settings will not be effective if \solution\ or \relations\
        #   attributes are also provided in the input request.
        sig { returns(T.nilable(Integer)) }
        attr_reader :joint_order

        sig { params(joint_order: Integer).void }
        attr_writer :joint_order

        # Use this parameter to specify the type of loads for the given shipment. Once
        # this property is configured, the shipment can not be served by a vehicle which
        # has serviced any task whose load is incompatible with any of theload_types
        # provided in this input. The load type considerations are ignored for the first
        # task of the route.
        #
        # For example, an input value of \[“groceries”, “food”\] means that shipment’s
        # load characteristics belong to either one or both types. Consequently, the
        # optimizer will assign this shipment to a vehicle which has served other tasks
        # whose incompatible_load_types do not contain either groceries or food.
        #
        # Please note that if the shipment is part of any relations then, configured
        # load_types might be ignored.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :load_types

        sig { params(load_types: T::Array[String]).void }
        attr_writer :load_types

        # Use this parameter to limit the drive time for which a shipment stays in the
        # vehicle. The time-in-vehicle calculations start once the pickup leg of shipment
        # is completed after serving any setup and service time that may have been
        # configured for it. For the delivery leg, time-in-vehicle calculations wouldn’t
        # consider any setup and service time that needs to be served for completing the
        # delivery. The service or setup times of other tasks performed in between will
        # also be not accumulated against the time-in-vehicle limit.
        #
        # Please note that this property would be overridden if any relations
        # configuration is used except for “precedence” type. If “precedence” type
        # relations is used then max_time_in_vehicle will override it.
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_time_in_vehicle

        sig { params(max_time_in_vehicle: Integer).void }
        attr_writer :max_time_in_vehicle

        # Specify the cost of keeping this shipment unassigned, namely, the cost of
        # outsourcing the shipment. When provided, the optimizer weighs the cost of
        # assigning the shipment against the cost of keeping it unassigned and chooses a
        # solution with lower cost. In the solution, the outsourcing_cost of unassigned
        # shipments is added to the total cost of the solution.
        #
        # If the outsourcing_cost is not provided, which is to say that the shipment can
        # not be outsourced, then the optimizer tries to fulfill the shipment irrespective
        # of the cost incurred, subject to other constraints.
        #
        # Please note that revenue and outsourcing_cost can not be specified
        # simultaneously for a shipment. Also, the outsourcing_cost would override the
        # priority settings of the shipment.
        sig { returns(T.nilable(Integer)) }
        attr_reader :outsourcing_cost

        sig { params(outsourcing_cost: Integer).void }
        attr_writer :outsourcing_cost

        # Describe the priority of this shipment. The valid values are in the range of
        # \[0, 100\]. Default value is 0.
        #
        # Please note that setting a priority will only decide whether this shipment will
        # be assigned or not, but has nothing to do with the sequence of fulfilling
        # shipments.
        sig { returns(T.nilable(Integer)) }
        attr_reader :priority

        sig { params(priority: Integer).void }
        attr_writer :priority

        # Specify the revenue earned by completing this shipment. The optimizer uses the
        # revenue input to identify the potential profit earned by fulfilling this
        # shipment after taking into account the costs incurred to do so.
        # Theoptions.objective and vehicles.costs input are taken into account to identify
        # the costs of fulfilling the shipment.
        #
        # In general, the optimizer will prefer fulfilling the tasks with higher profits
        # over the tasks with lower profits, should it need to reject some tasks in order
        # to honor other constraints. In case the profit from fulfilling a shipment is
        # negative, it will remain unassigned whatsoever.
        sig { returns(T.nilable(Integer)) }
        attr_reader :revenue

        sig { params(revenue: Integer).void }
        attr_writer :revenue

        # Define the skills needed to complete the shipment. This attribute supports
        # multidimensional skills allowing users to add multiple skills for a shipment.
        #
        # Read more about the behavior of this attribute in the
        # [Multi-Dimensional Parameters](#multi-dimensional-parameters) section.
        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :skills

        sig { params(skills: T::Array[Integer]).void }
        attr_writer :skills

        # Specify the dimensions and alignment configurations for the cargo associated
        # with the shipment. These inputs will be used to arrange the items into the
        # loading compartment of the vehicle to utilize the three-dimensional space. If a
        # shipment consists of several different items, each with its own dimensions,
        # please specify the final characteristics for the task: total height, total
        # depth, total width.
        #
        # Please note that vehicles which contain the volume input, will only be
        # considered for arranging such items.
        sig do
          returns(T.nilable(Nextbillionai::Optimization::Shipment::Volume))
        end
        attr_reader :volume

        sig do
          params(
            volume: Nextbillionai::Optimization::Shipment::Volume::OrHash
          ).void
        end
        attr_writer :volume

        # An array of integers specifying the IDs of the zone(s) that this shipment
        # belongs to. The shipment can be fulfilled by all vehicles which are allowed to
        # complete tasks in the zone(s) assigned to this shipment. If the pickup and
        # delivery steps belong to different zones, then a vehicle should be allowed to
        # fulfil tasks in both zones to take up such shipments. Please note following
        # points about shipment zones:
        #
        # - If zone IDs are provided for any one of the shipments, then all other
        #   shipments should also be specified with zone IDs. Zone IDs provided here will
        #   override any zone geometries provided in the zones attribute and these IDs
        #   will be used for allocating appropriate vehicles.
        # - Shipment steps can be auto-allocated to zones if this parameter is not
        #   specified while the zone geometries (either zones.geometry or
        #   zones.geofence_id) are provided.
        # - Shipments not falling in any zones can be fulfilled by only those vehicles
        #   which are allowed to take up tasks outside zones as well. Refer to vehicles
        #   attribute for more information.
        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :zones

        sig { params(zones: T::Array[Integer]).void }
        attr_writer :zones

        sig do
          params(
            delivery: Nextbillionai::Optimization::Shipment::Delivery::OrHash,
            pickup: Nextbillionai::Optimization::Shipment::Pickup::OrHash,
            amount: T::Array[Integer],
            follow_lifo_order: T::Boolean,
            incompatible_load_types: T::Array[String],
            joint_order: Integer,
            load_types: T::Array[String],
            max_time_in_vehicle: Integer,
            outsourcing_cost: Integer,
            priority: Integer,
            revenue: Integer,
            skills: T::Array[Integer],
            volume: Nextbillionai::Optimization::Shipment::Volume::OrHash,
            zones: T::Array[Integer]
          ).returns(T.attached_class)
        end
        def self.new(
          # Specify the details of the delivery step of the shipment.
          delivery:,
          # Specify the details of the pickup step of the shipment.
          pickup:,
          # This parameter defines the quantity that needs to be shipped. This attribute
          # supports multidimensional quantities, to support shipment of quantities of
          # different units/dimensions. It is recommended to keep the dimensions of amount
          # in shipments and that of capacity in vehicles consistent.
          #
          # Please note that the amount will be added to the assigned vehicle’s initial
          # load.
          #
          # Read more about the behavior of this attribute in the
          # [Multi-Dimensional Parameters](#multi-dimensional-parameters) section.
          amount: nil,
          # Specify whether the shipment route should follow LIFO (last in, first out). Use
          # this parameter when the loading or unloading sequence of cargo is important. The
          # default value is \false\.
          follow_lifo_order: nil,
          # Use this parameter to specify the type of loads which are incompatible with the
          # shipment’s load type. Once this property is configured, the shipment can only be
          # serviced by a vehicle which has not serviced any other task with an incompatible
          # load_types . Add multiple load types to indicate all the types which are
          # incompatible for this shipment. The incompatible load type considerations are
          # ignored for the first task of the route.
          #
          # For example, an input value of \[“groceries”, “food”\] means that shipment’s
          # load is incompatible with both groceries and food type of loads. Consequently,
          # the optimizer will not assign this shipment to a vehicle which has served any
          # task with load_types as either groceries or food.
          #
          # Please note that if the shipment is part of any relations then, configured
          # incompatible_load_types might be ignored.
          incompatible_load_types: nil,
          # Specify a joint order group ID that this shipment is associated with. Tasks
          # having the same joint order group ID are treated as a single unit: either all
          # tasks in the group are assigned, or none are. Users can add tasks of both jobs
          # and shipments types to a single joint order group by using the same unique ID.
          # Please note that:
          #
          # - Each shipment in a single joint order group will be fulfilled by a unique
          #   vehicle.
          # - Shipments belonging to a joint order group can be served in any sequence while
          #   maintaining the pickup -> delivery sequence for an individual shipment.
          # - Joint order settings will not be effective if \solution\ or \relations\
          #   attributes are also provided in the input request.
          joint_order: nil,
          # Use this parameter to specify the type of loads for the given shipment. Once
          # this property is configured, the shipment can not be served by a vehicle which
          # has serviced any task whose load is incompatible with any of theload_types
          # provided in this input. The load type considerations are ignored for the first
          # task of the route.
          #
          # For example, an input value of \[“groceries”, “food”\] means that shipment’s
          # load characteristics belong to either one or both types. Consequently, the
          # optimizer will assign this shipment to a vehicle which has served other tasks
          # whose incompatible_load_types do not contain either groceries or food.
          #
          # Please note that if the shipment is part of any relations then, configured
          # load_types might be ignored.
          load_types: nil,
          # Use this parameter to limit the drive time for which a shipment stays in the
          # vehicle. The time-in-vehicle calculations start once the pickup leg of shipment
          # is completed after serving any setup and service time that may have been
          # configured for it. For the delivery leg, time-in-vehicle calculations wouldn’t
          # consider any setup and service time that needs to be served for completing the
          # delivery. The service or setup times of other tasks performed in between will
          # also be not accumulated against the time-in-vehicle limit.
          #
          # Please note that this property would be overridden if any relations
          # configuration is used except for “precedence” type. If “precedence” type
          # relations is used then max_time_in_vehicle will override it.
          max_time_in_vehicle: nil,
          # Specify the cost of keeping this shipment unassigned, namely, the cost of
          # outsourcing the shipment. When provided, the optimizer weighs the cost of
          # assigning the shipment against the cost of keeping it unassigned and chooses a
          # solution with lower cost. In the solution, the outsourcing_cost of unassigned
          # shipments is added to the total cost of the solution.
          #
          # If the outsourcing_cost is not provided, which is to say that the shipment can
          # not be outsourced, then the optimizer tries to fulfill the shipment irrespective
          # of the cost incurred, subject to other constraints.
          #
          # Please note that revenue and outsourcing_cost can not be specified
          # simultaneously for a shipment. Also, the outsourcing_cost would override the
          # priority settings of the shipment.
          outsourcing_cost: nil,
          # Describe the priority of this shipment. The valid values are in the range of
          # \[0, 100\]. Default value is 0.
          #
          # Please note that setting a priority will only decide whether this shipment will
          # be assigned or not, but has nothing to do with the sequence of fulfilling
          # shipments.
          priority: nil,
          # Specify the revenue earned by completing this shipment. The optimizer uses the
          # revenue input to identify the potential profit earned by fulfilling this
          # shipment after taking into account the costs incurred to do so.
          # Theoptions.objective and vehicles.costs input are taken into account to identify
          # the costs of fulfilling the shipment.
          #
          # In general, the optimizer will prefer fulfilling the tasks with higher profits
          # over the tasks with lower profits, should it need to reject some tasks in order
          # to honor other constraints. In case the profit from fulfilling a shipment is
          # negative, it will remain unassigned whatsoever.
          revenue: nil,
          # Define the skills needed to complete the shipment. This attribute supports
          # multidimensional skills allowing users to add multiple skills for a shipment.
          #
          # Read more about the behavior of this attribute in the
          # [Multi-Dimensional Parameters](#multi-dimensional-parameters) section.
          skills: nil,
          # Specify the dimensions and alignment configurations for the cargo associated
          # with the shipment. These inputs will be used to arrange the items into the
          # loading compartment of the vehicle to utilize the three-dimensional space. If a
          # shipment consists of several different items, each with its own dimensions,
          # please specify the final characteristics for the task: total height, total
          # depth, total width.
          #
          # Please note that vehicles which contain the volume input, will only be
          # considered for arranging such items.
          volume: nil,
          # An array of integers specifying the IDs of the zone(s) that this shipment
          # belongs to. The shipment can be fulfilled by all vehicles which are allowed to
          # complete tasks in the zone(s) assigned to this shipment. If the pickup and
          # delivery steps belong to different zones, then a vehicle should be allowed to
          # fulfil tasks in both zones to take up such shipments. Please note following
          # points about shipment zones:
          #
          # - If zone IDs are provided for any one of the shipments, then all other
          #   shipments should also be specified with zone IDs. Zone IDs provided here will
          #   override any zone geometries provided in the zones attribute and these IDs
          #   will be used for allocating appropriate vehicles.
          # - Shipment steps can be auto-allocated to zones if this parameter is not
          #   specified while the zone geometries (either zones.geometry or
          #   zones.geofence_id) are provided.
          # - Shipments not falling in any zones can be fulfilled by only those vehicles
          #   which are allowed to take up tasks outside zones as well. Refer to vehicles
          #   attribute for more information.
          zones: nil
        )
        end

        sig do
          override.returns(
            {
              delivery: Nextbillionai::Optimization::Shipment::Delivery,
              pickup: Nextbillionai::Optimization::Shipment::Pickup,
              amount: T::Array[Integer],
              follow_lifo_order: T::Boolean,
              incompatible_load_types: T::Array[String],
              joint_order: Integer,
              load_types: T::Array[String],
              max_time_in_vehicle: Integer,
              outsourcing_cost: Integer,
              priority: Integer,
              revenue: Integer,
              skills: T::Array[Integer],
              volume: Nextbillionai::Optimization::Shipment::Volume,
              zones: T::Array[Integer]
            }
          )
        end
        def to_hash
        end

        class Delivery < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Optimization::Shipment::Delivery,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Indicate the ID of this shipment delivery step. An error will be reported if
          # there are duplicate IDs for multiple shipment deliveries. The IDs are case
          # sensitive. Please note id is mandatory when using the shipments attribute.
          sig { returns(String) }
          attr_accessor :id

          # Indicate the index of location for this shipment delivery. The index references
          # the locations present in the location array. The valid range of value is \[0,
          # length of location array).
          #
          # Please note location_index is mandatory when using the shipment attribute.
          sig { returns(Integer) }
          attr_accessor :location_index

          # Specify a custom description for the shipment delivery step.
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # It determines the allowable delay, in seconds, to begin a shipment delivery
          # after its designated time window has concluded. Please note that this parameter
          # would override the constraint.max_visit_lateness (global) if both are specified.
          sig { returns(T.nilable(Integer)) }
          attr_reader :max_visit_lateness

          sig { params(max_visit_lateness: Integer).void }
          attr_writer :max_visit_lateness

          # Specify any custom data that should be attached along with delivery fulfilment
          # details in the step attribute of the optimized solution. Users can leverage this
          # property to provide additional details/context when sharing information about
          # the delivery step with integrated systems (TMS, Fleet Management, Driver
          # dispatch etc).
          #
          # Please note that the metadata content must always be specified in a key : value
          # pair format, where the “key” is always a string.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :metadata

          sig { params(metadata: T.anything).void }
          attr_writer :metadata

          # Use this parameter to prioritize completing the shipment delivery relative to
          # certain other tasks. A task configured with a sequence_order of 2 will be done
          # after the task with sequence_order of 1, but before the task with sequence_order
          # of 3. Valid range of values for this input is \[0,100\].
          #
          # Please note that:
          #
          # - The shipment delivery's sequence order must be greater than or equal to its
          #   corresponding pickup's sequence order.
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

          # Provide the time duration, in seconds, needed to complete the shipment delivery.
          # Default value is 0.
          sig { returns(T.nilable(Integer)) }
          attr_reader :service

          sig { params(service: Integer).void }
          attr_writer :service

          # Specify the set-up duration, in seconds, for the delivery. setup is the one-time
          # effort needed apart from working on the original task- for example, effort to
          # record some information for compliance, or effort to set-up the equipment, or
          # perform any other action for completing all steps required to fulfil the job.
          #
          # Please note that setup time is applied only once for a given task location.
          # setup time, unlike service time, is not repeated in case there are multiple
          # tasks at the same location.
          sig { returns(T.nilable(Integer)) }
          attr_reader :setup

          sig { params(setup: Integer).void }
          attr_writer :setup

          # Describe time periods within which the shipment delivery should start. The time
          # periods should be expressed as a UNIX timestamp in seconds.
          #
          # Please note that the time periods should not overlap with each other and should
          # always follow the format of \[start_timestamp, end_timestamp\].
          sig { returns(T.nilable(T::Array[T::Array[Integer]])) }
          attr_reader :time_windows

          sig { params(time_windows: T::Array[T::Array[Integer]]).void }
          attr_writer :time_windows

          # Specify the details of the delivery step of the shipment.
          sig do
            params(
              id: String,
              location_index: Integer,
              description: String,
              max_visit_lateness: Integer,
              metadata: T.anything,
              sequence_order: Integer,
              service: Integer,
              setup: Integer,
              time_windows: T::Array[T::Array[Integer]]
            ).returns(T.attached_class)
          end
          def self.new(
            # Indicate the ID of this shipment delivery step. An error will be reported if
            # there are duplicate IDs for multiple shipment deliveries. The IDs are case
            # sensitive. Please note id is mandatory when using the shipments attribute.
            id:,
            # Indicate the index of location for this shipment delivery. The index references
            # the locations present in the location array. The valid range of value is \[0,
            # length of location array).
            #
            # Please note location_index is mandatory when using the shipment attribute.
            location_index:,
            # Specify a custom description for the shipment delivery step.
            description: nil,
            # It determines the allowable delay, in seconds, to begin a shipment delivery
            # after its designated time window has concluded. Please note that this parameter
            # would override the constraint.max_visit_lateness (global) if both are specified.
            max_visit_lateness: nil,
            # Specify any custom data that should be attached along with delivery fulfilment
            # details in the step attribute of the optimized solution. Users can leverage this
            # property to provide additional details/context when sharing information about
            # the delivery step with integrated systems (TMS, Fleet Management, Driver
            # dispatch etc).
            #
            # Please note that the metadata content must always be specified in a key : value
            # pair format, where the “key” is always a string.
            metadata: nil,
            # Use this parameter to prioritize completing the shipment delivery relative to
            # certain other tasks. A task configured with a sequence_order of 2 will be done
            # after the task with sequence_order of 1, but before the task with sequence_order
            # of 3. Valid range of values for this input is \[0,100\].
            #
            # Please note that:
            #
            # - The shipment delivery's sequence order must be greater than or equal to its
            #   corresponding pickup's sequence order.
            # - Only the tasks within the same route are compared and ordered as per their
            #   sequence_order.
            # - Tasks without a sequence_order are not involved in the comparison.
            # - Following is the precedence of sequence_order when used along side some of the
            #   other constraints:
            #
            #   - relations are prioritized over sequence_order comparisons.
            #   - sequence_order will override order_grouping configurations.
            sequence_order: nil,
            # Provide the time duration, in seconds, needed to complete the shipment delivery.
            # Default value is 0.
            service: nil,
            # Specify the set-up duration, in seconds, for the delivery. setup is the one-time
            # effort needed apart from working on the original task- for example, effort to
            # record some information for compliance, or effort to set-up the equipment, or
            # perform any other action for completing all steps required to fulfil the job.
            #
            # Please note that setup time is applied only once for a given task location.
            # setup time, unlike service time, is not repeated in case there are multiple
            # tasks at the same location.
            setup: nil,
            # Describe time periods within which the shipment delivery should start. The time
            # periods should be expressed as a UNIX timestamp in seconds.
            #
            # Please note that the time periods should not overlap with each other and should
            # always follow the format of \[start_timestamp, end_timestamp\].
            time_windows: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                location_index: Integer,
                description: String,
                max_visit_lateness: Integer,
                metadata: T.anything,
                sequence_order: Integer,
                service: Integer,
                setup: Integer,
                time_windows: T::Array[T::Array[Integer]]
              }
            )
          end
          def to_hash
          end
        end

        class Pickup < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Optimization::Shipment::Pickup,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Indicate the ID of this shipment pickup step. An error will be reported if there
          # are duplicate IDs for multiple shipment pick-ups. The IDs are case-sensitive.
          # Please note id is mandatory when using the shipments attribute.
          sig { returns(String) }
          attr_accessor :id

          # Indicate the index of the location for this shipment pickup. The index
          # references the locations present in the location array. The valid range of value
          # is \[0, length of location array).
          sig { returns(Integer) }
          attr_accessor :location_index

          # Specify a custom description for the shipment pickup step.
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # It determines the allowable delay, in seconds, to begin a shipment pickup after
          # its designated time window has concluded. Please note that this parameter would
          # override the constraint.max_visit_lateness (global) if both are specified.
          sig { returns(T.nilable(Integer)) }
          attr_reader :max_visit_lateness

          sig { params(max_visit_lateness: Integer).void }
          attr_writer :max_visit_lateness

          # Specify any custom data that should be attached along with pickup fulfilment
          # details in the steps attribute of the optimized solution. Users can leverage
          # this property to provide additional details/context when sharing information
          # about the pickup step with integrated systems (TMS, Fleet Management, Driver
          # dispatch etc).
          #
          # Please note that the metadata content must always be specified in akey : value
          # pair format, where the “key” is always a string.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :metadata

          sig { params(metadata: T.anything).void }
          attr_writer :metadata

          # Use this parameter to prioritize completing the shipment pickup relative to
          # certain other tasks. A task configured with a sequence_order of 2 will be done
          # after the task with sequence_order of 1, but before the task with sequence_order
          # of 3. Valid range of values for this input is \[0,100\].
          #
          # Please note that:
          #
          # - The shipment pickups's sequence order must be lesser than or equal to its
          #   corresponding delivery's sequence order.
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

          # Provide the time duration, in seconds, needed to complete the shipment pickup.
          # Default value is 0.
          sig { returns(T.nilable(Integer)) }
          attr_reader :service

          sig { params(service: Integer).void }
          attr_writer :service

          # Specify the set-up duration, in seconds, for the pickup. setup is the one-time
          # effort needed apart from working on the original task- for example, effort to
          # record some information for compliance, or effort to set-up the equipment, or
          # perform any other action for completing all steps required to fulfil the job.
          #
          # Please note that setup time is applied only once for a given task location.
          # setup time, unlike service time, is not repeated in case there are multiple
          # tasks at the same location.
          sig { returns(T.nilable(Integer)) }
          attr_reader :setup

          sig { params(setup: Integer).void }
          attr_writer :setup

          # Describe time periods within which the shipment pickup should be start. The time
          # periods should be expressed as a UNIX timestamp in seconds.
          #
          # Please note that the time periods should not overlap with each other and should
          # always follow the format of \[start_timestamp, end_timestamp\]
          sig { returns(T.nilable(T::Array[T::Array[Integer]])) }
          attr_reader :time_windows

          sig { params(time_windows: T::Array[T::Array[Integer]]).void }
          attr_writer :time_windows

          # Specify the details of the pickup step of the shipment.
          sig do
            params(
              id: String,
              location_index: Integer,
              description: String,
              max_visit_lateness: Integer,
              metadata: T.anything,
              sequence_order: Integer,
              service: Integer,
              setup: Integer,
              time_windows: T::Array[T::Array[Integer]]
            ).returns(T.attached_class)
          end
          def self.new(
            # Indicate the ID of this shipment pickup step. An error will be reported if there
            # are duplicate IDs for multiple shipment pick-ups. The IDs are case-sensitive.
            # Please note id is mandatory when using the shipments attribute.
            id:,
            # Indicate the index of the location for this shipment pickup. The index
            # references the locations present in the location array. The valid range of value
            # is \[0, length of location array).
            location_index:,
            # Specify a custom description for the shipment pickup step.
            description: nil,
            # It determines the allowable delay, in seconds, to begin a shipment pickup after
            # its designated time window has concluded. Please note that this parameter would
            # override the constraint.max_visit_lateness (global) if both are specified.
            max_visit_lateness: nil,
            # Specify any custom data that should be attached along with pickup fulfilment
            # details in the steps attribute of the optimized solution. Users can leverage
            # this property to provide additional details/context when sharing information
            # about the pickup step with integrated systems (TMS, Fleet Management, Driver
            # dispatch etc).
            #
            # Please note that the metadata content must always be specified in akey : value
            # pair format, where the “key” is always a string.
            metadata: nil,
            # Use this parameter to prioritize completing the shipment pickup relative to
            # certain other tasks. A task configured with a sequence_order of 2 will be done
            # after the task with sequence_order of 1, but before the task with sequence_order
            # of 3. Valid range of values for this input is \[0,100\].
            #
            # Please note that:
            #
            # - The shipment pickups's sequence order must be lesser than or equal to its
            #   corresponding delivery's sequence order.
            # - Only the tasks within the same route are compared and ordered as per their
            #   sequence_order.
            # - Tasks without a sequence_order are not involved in the comparison.
            # - Following is the precedence of sequence_order when used along side some of the
            #   other constraints:
            #
            #   - relations are prioritized over sequence_order comparisons.
            #   - sequence_order will override order_grouping configurations.
            sequence_order: nil,
            # Provide the time duration, in seconds, needed to complete the shipment pickup.
            # Default value is 0.
            service: nil,
            # Specify the set-up duration, in seconds, for the pickup. setup is the one-time
            # effort needed apart from working on the original task- for example, effort to
            # record some information for compliance, or effort to set-up the equipment, or
            # perform any other action for completing all steps required to fulfil the job.
            #
            # Please note that setup time is applied only once for a given task location.
            # setup time, unlike service time, is not repeated in case there are multiple
            # tasks at the same location.
            setup: nil,
            # Describe time periods within which the shipment pickup should be start. The time
            # periods should be expressed as a UNIX timestamp in seconds.
            #
            # Please note that the time periods should not overlap with each other and should
            # always follow the format of \[start_timestamp, end_timestamp\]
            time_windows: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                location_index: Integer,
                description: String,
                max_visit_lateness: Integer,
                metadata: T.anything,
                sequence_order: Integer,
                service: Integer,
                setup: Integer,
                time_windows: T::Array[T::Array[Integer]]
              }
            )
          end
          def to_hash
          end
        end

        class Volume < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Optimization::Shipment::Volume,
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
                Nextbillionai::Optimization::Shipment::Volume::Alignment::OrSymbol
              )
            )
          end
          attr_reader :alignment

          sig do
            params(
              alignment:
                Nextbillionai::Optimization::Shipment::Volume::Alignment::OrSymbol
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
          # with the shipment. These inputs will be used to arrange the items into the
          # loading compartment of the vehicle to utilize the three-dimensional space. If a
          # shipment consists of several different items, each with its own dimensions,
          # please specify the final characteristics for the task: total height, total
          # depth, total width.
          #
          # Please note that vehicles which contain the volume input, will only be
          # considered for arranging such items.
          sig do
            params(
              alignment:
                Nextbillionai::Optimization::Shipment::Volume::Alignment::OrSymbol,
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
                  Nextbillionai::Optimization::Shipment::Volume::Alignment::OrSymbol,
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
                  Nextbillionai::Optimization::Shipment::Volume::Alignment
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STRICT =
              T.let(
                :strict,
                Nextbillionai::Optimization::Shipment::Volume::Alignment::TaggedSymbol
              )
            PARALLEL =
              T.let(
                :parallel,
                Nextbillionai::Optimization::Shipment::Volume::Alignment::TaggedSymbol
              )
            FIXED_BOTTOM =
              T.let(
                :fixed_bottom,
                Nextbillionai::Optimization::Shipment::Volume::Alignment::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Nextbillionai::Optimization::Shipment::Volume::Alignment::TaggedSymbol
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
