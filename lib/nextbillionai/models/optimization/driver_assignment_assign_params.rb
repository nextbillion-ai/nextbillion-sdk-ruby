# frozen_string_literal: true

module Nextbillionai
  module Models
    module Optimization
      # @see Nextbillionai::Resources::Optimization::DriverAssignment#assign
      class DriverAssignmentAssignParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute filter
        #   Specify the filtering criterion for the vehicles with respect to each order's
        #   location. filter is a mandatory input for all requests.
        #
        #   @return [Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Filter]
        required :filter, -> { Nextbillionai::Optimization::DriverAssignmentAssignParams::Filter }

        # @!attribute orders
        #   Collects the details of open orders to be fulfilled. Each object represents one
        #   order. All requests must include orders as a mandatory input. A maximum of 200
        #   orders is allowed per request.
        #
        #   @return [Array<Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order>]
        required :orders,
                 -> {
                   Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Optimization::DriverAssignmentAssignParams::Order]
                 }

        # @!attribute vehicles
        #   Collects the details of vehicles available to fulfill the orders. Each object
        #   represents one vehicle. All requests must include vehicles as a mandatory input.
        #   A maximum of 100 vehicles is allowed per request.
        #
        #   @return [Array<Nextbillionai::Models::Optimization::Vehicle>]
        required :vehicles,
                 -> {
                   Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Optimization::Vehicle]
                 }

        # @!attribute options
        #   Configure the assignment constraints and response settings.
        #
        #   @return [Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Options, nil]
        optional :options, -> { Nextbillionai::Optimization::DriverAssignmentAssignParams::Options }

        # @!method initialize(key:, filter:, orders:, vehicles:, options: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Optimization::DriverAssignmentAssignParams} for more
        #   details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param filter [Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Filter] Specify the filtering criterion for the vehicles with respect to each order's lo
        #
        #   @param orders [Array<Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order>] Collects the details of open orders to be fulfilled. Each object represents one
        #
        #   @param vehicles [Array<Nextbillionai::Models::Optimization::Vehicle>] Collects the details of vehicles available to fulfill the orders. Each object re
        #
        #   @param options [Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Options] Configure the assignment constraints and response settings.
        #
        #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Nextbillionai::Internal::Type::BaseModel
          # @!attribute driving_distance
          #   Defines a driving_distance filter, in meters. If a vehicle needs to drive
          #   further than this distance to reach a pickup location, it will not be assigned
          #   to that order. Valid range of values for this filter is \[1, 10000\].
          #
          #   @return [Float, nil]
          optional :driving_distance, Float

          # @!attribute pickup_eta
          #   Specify a duration, in seconds, which will be used to filter out ineligible
          #   vehicles for each order. Any vehicle which would take more time than specified
          #   here, to reach the pickup location of a given order, will be ruled out for
          #   assignment for that particular order. Valid values for pickup_eta are \[1,
          #   3600\].
          #
          #   @return [Integer, nil]
          optional :pickup_eta, Integer

          # @!attribute radius
          #   Specify a radius, in meters, which will be used to filter out ineligible
          #   vehicles for each order. The pickup location of an order will act as the center
          #   of the circle when identifying eligible vehicles. Valid values for radius are
          #   \[1, 10000\].
          #
          #   @return [Float, nil]
          optional :radius, Float

          # @!method initialize(driving_distance: nil, pickup_eta: nil, radius: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Filter} for
          #   more details.
          #
          #   Specify the filtering criterion for the vehicles with respect to each order's
          #   location. filter is a mandatory input for all requests.
          #
          #   @param driving_distance [Float] Defines a driving_distance filter, in meters. If a vehicle needs to drive furthe
          #
          #   @param pickup_eta [Integer] Specify a duration, in seconds, which will be used to filter out ineligible vehi
          #
          #   @param radius [Float] Specify a radius, in meters, which will be used to filter out ineligible vehicle
        end

        class Order < Nextbillionai::Internal::Type::BaseModel
          # @!attribute id
          #   Specify a unique ID for the order.
          #
          #   @return [String]
          required :id, String

          # @!attribute pickup
          #   Specify the location coordinates of the pickup location of the order. This input
          #   is mandatory for each order.
          #
          #   @return [Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order::Pickup]
          required :pickup, -> { Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::Pickup }

          # @!attribute attributes
          #   Specify custom attributes for the orders. Each attribute should be created as a
          #   key:value pair. The **keys** provided can be used in
          #   options.order_attribute_priority_mappings to assign a custom priority for this
          #   order based on its attributes.
          #
          #   The maximum number of key:value pairs that can be specified under attributes for
          #   a given order, is limited to 30.
          #
          #   @return [Object, nil]
          optional :attributes, Nextbillionai::Internal::Type::Unknown

          # @!attribute dropoffs
          #   Use this parameter to specify the location coordinates of the destination of the
          #   trip or the intermediate stops to be completed before it.
          #
          #   Please note
          #
          #   - The last location provided is treated as the destination of the trip.
          #   - dropoffs is mandatory when dropoff_details is set to **true**.
          #
          #   @return [Array<Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order::Dropoff>, nil]
          optional :dropoffs,
                   -> {
                     Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::Dropoff]
                   }

          # @!attribute priority
          #   Specify the priority for this order. A higher value indicates a higher priority.
          #   When specified, it will override any priority score deduced from
          #   order_attribute_priority_mappings for this order. Valid values are \[1, 10\] and
          #   default is 0.
          #
          #   @return [Integer, nil]
          optional :priority, Integer

          # @!attribute service_time
          #   Specify the service time, in seconds, for the order. Service time is the
          #   duration that the driver is likely to wait at the pickup location after
          #   arriving. The impact of the service time is realized in the ETA for the
          #   "dropoff" type step.
          #
          #   @return [Integer, nil]
          optional :service_time, Integer

          # @!attribute vehicle_preferences
          #   Define custom preferences for task assignment based on vehicle's attributes. If
          #   multiple criteria are provided, they are evaluated using an AND
          #   condition—meaning all specified criteria must be met individually for a vehicle
          #   to be considered.
          #
          #   For example, if required_all_of_attributes, required_any_of_attributes, and
          #   exclude_all_of_attributes are all provided, an eligible vehicle must satisfy the
          #   following to be considered for assignments:
          #
          #   1.  Meet all conditions specified in required_all_of_attributes.
          #   2.  Meet at least one of the conditions listed in required_any_of_attributes.
          #   3.  Not meet any conditions mentioned in exclude_all_of_attributes.
          #
          #   Consequently, a vehicle which does not have any attributes defined can't be
          #   assigned to an order which has vehicle_preferences configured.
          #
          #   @return [Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences, nil]
          optional :vehicle_preferences,
                   -> { Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences }

          # @!method initialize(id:, pickup:, attributes: nil, dropoffs: nil, priority: nil, service_time: nil, vehicle_preferences: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order} for
          #   more details.
          #
          #   @param id [String] Specify a unique ID for the order.
          #
          #   @param pickup [Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order::Pickup] Specify the location coordinates of the pickup location of the order. This input
          #
          #   @param attributes [Object] Specify custom attributes for the orders. Each attribute should be created as a
          #
          #   @param dropoffs [Array<Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order::Dropoff>] Use this parameter to specify the location coordinates of the destination of the
          #
          #   @param priority [Integer] Specify the priority for this order. A higher value indicates a higher priority.
          #
          #   @param service_time [Integer] Specify the service time, in seconds, for the order. Service time is the duratio
          #
          #   @param vehicle_preferences [Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences] Define custom preferences for task assignment based on vehicle's attributes. If

          # @see Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order#pickup
          class Pickup < Nextbillionai::Internal::Type::BaseModel
            # @!attribute lat
            #   Latitude of the pickup location.
            #
            #   @return [Float, nil]
            optional :lat, Float

            # @!attribute lng
            #   Longitude of the pickup location.
            #
            #   @return [Float, nil]
            optional :lng, Float

            # @!method initialize(lat: nil, lng: nil)
            #   Specify the location coordinates of the pickup location of the order. This input
            #   is mandatory for each order.
            #
            #   @param lat [Float] Latitude of the pickup location.
            #
            #   @param lng [Float] Longitude of the pickup location.
          end

          class Dropoff < Nextbillionai::Internal::Type::BaseModel
            # @!attribute lat
            #   Latitude of the stop location.
            #
            #   @return [Float, nil]
            optional :lat, Float

            # @!attribute lng
            #   Longitude of the stop location.
            #
            #   @return [Float, nil]
            optional :lng, Float

            # @!method initialize(lat: nil, lng: nil)
            #   @param lat [Float] Latitude of the stop location.
            #
            #   @param lng [Float] Longitude of the stop location.
          end

          # @see Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order#vehicle_preferences
          class VehiclePreferences < Nextbillionai::Internal::Type::BaseModel
            # @!attribute exclude_all_of_attributes
            #   An array of objects to add exclusion requirements for the order. A vehicle must
            #   **not meet any of the conditions** specified here to be considered for
            #   assignment. Each object represents a single condition. Please note that a
            #   maximum of 10 conditions can be added here for a given order.
            #
            #   @return [Array<Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::ExcludeAllOfAttribute>, nil]
            optional :exclude_all_of_attributes,
                     -> do
                       Nextbillionai::Internal::Type::ArrayOf[
                         Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::ExcludeAllOfAttribute
                       ]
                     end

            # @!attribute required_all_of_attributes
            #   An array of objects to add mandatory requirements for the order. A vehicle must
            #   **meet** **all conditions** specified here to be considered for assignment. Each
            #   object represents a single condition. Please note that a maximum of 10
            #   conditions can be added here for a given order.
            #
            #   @return [Array<Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::RequiredAllOfAttribute>, nil]
            optional :required_all_of_attributes,
                     -> do
                       Nextbillionai::Internal::Type::ArrayOf[
                         Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::RequiredAllOfAttribute
                       ]
                     end

            # @!attribute required_any_of_attributes
            #   An array of objects to add optional requirements for the order. A vehicle must
            #   **meet** **at least one of the conditions** specified here to be considered for
            #   assignment. Each object represents a single condition. Please note that a
            #   maximum of 10 conditions can be added here for a given order.
            #
            #   @return [Array<Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::RequiredAnyOfAttribute>, nil]
            optional :required_any_of_attributes,
                     -> do
                       Nextbillionai::Internal::Type::ArrayOf[
                         Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::RequiredAnyOfAttribute
                       ]
                     end

            # @!method initialize(exclude_all_of_attributes: nil, required_all_of_attributes: nil, required_any_of_attributes: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences}
            #   for more details.
            #
            #   Define custom preferences for task assignment based on vehicle's attributes. If
            #   multiple criteria are provided, they are evaluated using an AND
            #   condition—meaning all specified criteria must be met individually for a vehicle
            #   to be considered.
            #
            #   For example, if required_all_of_attributes, required_any_of_attributes, and
            #   exclude_all_of_attributes are all provided, an eligible vehicle must satisfy the
            #   following to be considered for assignments:
            #
            #   1.  Meet all conditions specified in required_all_of_attributes.
            #   2.  Meet at least one of the conditions listed in required_any_of_attributes.
            #   3.  Not meet any conditions mentioned in exclude_all_of_attributes.
            #
            #   Consequently, a vehicle which does not have any attributes defined can't be
            #   assigned to an order which has vehicle_preferences configured.
            #
            #   @param exclude_all_of_attributes [Array<Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::ExcludeAllOfAttribute>] An array of objects to add exclusion requirements for the order. A vehicle must
            #
            #   @param required_all_of_attributes [Array<Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::RequiredAllOfAttribute>] An array of objects to add mandatory requirements for the order. A vehicle must
            #
            #   @param required_any_of_attributes [Array<Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::RequiredAnyOfAttribute>] An array of objects to add optional requirements for the order. A vehicle
            #   must \*

            class ExcludeAllOfAttribute < Nextbillionai::Internal::Type::BaseModel
              # @!attribute attribute
              #   Specify the name of the attribute. The attribute is compared to the keys (of
              #   each key:value pair) in vehicles.attributes during evaluation.
              #
              #   @return [String]
              required :attribute, String

              # @!attribute operator
              #   Specify the operator to denote the relation between attribute and the value
              #   specified above. The attribute , operator and value together constitute the
              #   condition that a vehicle must meet to be eligible for assignment. Currently, we
              #   support following operators currently:
              #
              #   - Equal to (==)
              #   - Less than (<)
              #   - Less tha equal to (<=)
              #   - Greater than (>)
              #   - Greater than equal to (>=)
              #   - Contains (contains)
              #
              #   Please note that when using "contains" operator only one value can be specified
              #   and the corresponding attribute must contain multiple values when defined for a
              #   vehicle.
              #
              #   @return [String]
              required :operator, String

              # @!attribute value
              #   Specify the desired value of the attribute to be applied for this order. value
              #   provided here is compared to the values (of each key:value pair) in
              #   vehicles.attributes during evaluation.
              #
              #   @return [String]
              required :value, String

              # @!method initialize(attribute:, operator:, value:)
              #   Some parameter documentations has been truncated, see
              #   {Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::ExcludeAllOfAttribute}
              #   for more details.
              #
              #   @param attribute [String] Specify the name of the attribute. The attribute is compared to the keys (of eac
              #
              #   @param operator [String] Specify the operator to denote the relation between attribute and the value spec
              #
              #   @param value [String] Specify the desired value of the attribute to be applied for this order. value p
            end

            class RequiredAllOfAttribute < Nextbillionai::Internal::Type::BaseModel
              # @!attribute attribute
              #   Specify the name of the attribute. The attribute is compared to the keys (of
              #   each key:value pair) in vehicles.attributes during evaluation.
              #
              #   @return [String]
              required :attribute, String

              # @!attribute operator
              #   Specify the operator to denote the relation between attribute and the value
              #   specified above. The attribute , operator and value together constitute the
              #   condition that a vehicle must meet to be eligible for assignment. Currently, we
              #   support following operators currently:
              #
              #   - Equal to (==)
              #   - Less than (<)
              #   - Less tha equal to (<=)
              #   - Greater than (>)
              #   - Greater than equal to (>=)
              #   - Contains (contains)
              #
              #   Please note that when using "contains" operator only one value can be specified
              #   and the corresponding attribute must contain multiple values when defined for a
              #   vehicle.
              #
              #   @return [String]
              required :operator, String

              # @!attribute value
              #   Specify the desired value of the attribute to be applied for this order. value
              #   provided here is compared to the values (of each key:value pair) in
              #   vehicles.attributes during evaluation.
              #
              #   @return [String]
              required :value, String

              # @!method initialize(attribute:, operator:, value:)
              #   Some parameter documentations has been truncated, see
              #   {Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::RequiredAllOfAttribute}
              #   for more details.
              #
              #   @param attribute [String] Specify the name of the attribute. The attribute is compared to the keys (of eac
              #
              #   @param operator [String] Specify the operator to denote the relation between attribute and the value spec
              #
              #   @param value [String] Specify the desired value of the attribute to be applied for this order. value p
            end

            class RequiredAnyOfAttribute < Nextbillionai::Internal::Type::BaseModel
              # @!attribute attribute
              #   Specify the name of the attribute. The attribute is compared to the keys (of
              #   each key:value pair) in vehicles.attributes during evaluation.
              #
              #   @return [String]
              required :attribute, String

              # @!attribute operator
              #   Specify the operator to denote the relation between attribute and the value
              #   specified above. The attribute , operator and value together constitute the
              #   condition that a vehicle must meet to be eligible for assignment. Currently, we
              #   support following operators currently:
              #
              #   - Equal to (==)
              #   - Less than (<)
              #   - Less tha equal to (<=)
              #   - Greater than (>)
              #   - Greater than equal to (>=)
              #   - Contains (contains)
              #
              #   Please note that when using "contains" operator only one value can be specified
              #   and the corresponding attribute must contain multiple values when defined for a
              #   vehicle.
              #
              #   @return [String]
              required :operator, String

              # @!attribute value
              #   Specify the desired value of the attribute to be applied for this order. value
              #   provided here is compared to the values (of each key:value pair) in
              #   vehicles.attributes during evaluation.
              #
              #   @return [String]
              required :value, String

              # @!method initialize(attribute:, operator:, value:)
              #   Some parameter documentations has been truncated, see
              #   {Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::RequiredAnyOfAttribute}
              #   for more details.
              #
              #   @param attribute [String] Specify the name of the attribute. The attribute is compared to the keys (of eac
              #
              #   @param operator [String] Specify the operator to denote the relation between attribute and the value spec
              #
              #   @param value [String] Specify the desired value of the attribute to be applied for this order. value p
            end
          end
        end

        class Options < Nextbillionai::Internal::Type::BaseModel
          # @!attribute alternate_assignments
          #   Specify the maximum number of potential, alternate vehicle assignments to be
          #   returned for each order, apart from the vehicle which was assigned as
          #   recommended. Please note that:
          #
          #   - The maximum number of alternate assignments that can be requested are 3.
          #   - It is not necessary that the service will return the specified number of
          #     alternate assignments for each order. The number of alternate assignments
          #     returned will depend on the number of vehicles provided in the input.
          #   - Order which could not be assigned to any vehicles due to their filter or
          #     attribute matching criteria will not be eligible for alternate assignments as
          #     well.
          #
          #   @return [Integer, nil]
          optional :alternate_assignments, Integer

          # @!attribute dropoff_details
          #   When **true**, the service returns the drop-off steps for each trip and related
          #   details in the response. Defaults to **false**.
          #
          #   @return [Boolean, nil]
          optional :dropoff_details, Nextbillionai::Internal::Type::Boolean

          # @!attribute order_attribute_priority_mappings
          #   Collection of rules for assigning custom priority to orders based on their
          #   attributes. In case an order satisfies more than one rule, the highest priority
          #   score from all the rules satisfied, would be the effective priority score for
          #   such an order.
          #
          #   @return [Array<Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Options::OrderAttributePriorityMapping>, nil]
          optional :order_attribute_priority_mappings,
                   -> {
                     Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::OrderAttributePriorityMapping]
                   }

          # @!attribute travel_cost
          #   Choose a travel cost that will be used by the service for assigning vehicles
          #   efficiently from a set of qualifying ones.
          #
          #   @return [Symbol, Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Options::TravelCost, nil]
          optional :travel_cost,
                   enum: -> { Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::TravelCost }

          # @!attribute vehicle_attribute_priority_mappings
          #   Collection of rules for assigning custom priority to vehicles based on their
          #   attributes. In case a vehicle satisfies more than one rule, the highest priority
          #   score from all the rules satisfied, would be the effective priority score for
          #   such a vehicle.
          #
          #   @return [Array<Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Options::VehicleAttributePriorityMapping>, nil]
          optional :vehicle_attribute_priority_mappings,
                   -> {
                     Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::VehicleAttributePriorityMapping]
                   }

          # @!method initialize(alternate_assignments: nil, dropoff_details: nil, order_attribute_priority_mappings: nil, travel_cost: nil, vehicle_attribute_priority_mappings: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Options} for
          #   more details.
          #
          #   Configure the assignment constraints and response settings.
          #
          #   @param alternate_assignments [Integer] Specify the maximum number of potential, alternate vehicle assignments to be ret
          #
          #   @param dropoff_details [Boolean] When **true**, the service returns the drop-off steps for each trip and related
          #
          #   @param order_attribute_priority_mappings [Array<Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Options::OrderAttributePriorityMapping>] Collection of rules for assigning custom priority to orders based on their attri
          #
          #   @param travel_cost [Symbol, Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Options::TravelCost] Choose a travel cost that will be used by the service for assigning vehicles eff
          #
          #   @param vehicle_attribute_priority_mappings [Array<Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Options::VehicleAttributePriorityMapping>] Collection of rules for assigning custom priority to vehicles based on their att

          class OrderAttributePriorityMapping < Nextbillionai::Internal::Type::BaseModel
            # @!attribute attribute
            #   Specify the name of the attribute. The attribute is compared to the keys (of
            #   each key:value pair) in orders.attributes during evaluation.
            #
            #   @return [String]
            required :attribute, String

            # @!attribute operator
            #   Specify the operator to denote the relation between attribute and the value
            #   specified above. The attribute , operator and value together constitute the
            #   condition that an order must meet to assume the specified priority. We support
            #   the following operators currently:
            #
            #   - Equal to (==)
            #   - Less than (<)
            #   - Less tha equal to (<=)
            #   - Greater than (>)
            #   - Greater than equal to (>=)
            #   - Contains (contains)
            #
            #   Please note that when using "contains" operator only one value can be specified
            #   and the corresponding attribute must contain multiple values when defined for an
            #   order.
            #
            #   @return [String]
            required :operator, String

            # @!attribute priority
            #   Specify the priority score that should be assigned when an order qualifies the
            #   criteria specified above. A higher value indicates a higher priority. Valid
            #   values are \[1,10\].
            #
            #   @return [String]
            required :priority, String

            # @!attribute value
            #   Specify the desired value of the attribute to be applied for this order. value
            #   provided here is compared to the values (of each key:value pair) in
            #   orders.attributes during evaluation.
            #
            #   @return [String]
            required :value, String

            # @!method initialize(attribute:, operator:, priority:, value:)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Options::OrderAttributePriorityMapping}
            #   for more details.
            #
            #   @param attribute [String] Specify the name of the attribute. The attribute is compared to the keys (of eac
            #
            #   @param operator [String] Specify the operator to denote the relation between attribute and the value spec
            #
            #   @param priority [String] Specify the priority score that should be assigned when an order qualifies the c
            #
            #   @param value [String] Specify the desired value of the attribute to be applied for this order. value p
          end

          # Choose a travel cost that will be used by the service for assigning vehicles
          # efficiently from a set of qualifying ones.
          #
          # @see Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Options#travel_cost
          module TravelCost
            extend Nextbillionai::Internal::Type::Enum

            DRIVING_ETA = :driving_eta
            DRIVING_DISTANCE = :driving_distance
            STRAIGHT_LINE_DISTANCE = :straight_line_distance

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class VehicleAttributePriorityMapping < Nextbillionai::Internal::Type::BaseModel
            # @!attribute attribute
            #   Specify the name of the attribute. The attribute is compared to the keys (of
            #   each key:value pair) in vehicles.attributes during evaluation.
            #
            #   @return [String]
            required :attribute, String

            # @!attribute operator
            #   Specify the operator to denote the relation between attribute and the value
            #   specified above. The attribute , operator and value together constitute the
            #   condition that a vehicle must meet to assume the specified priority. We support
            #   the following operators currently:
            #
            #   - Equal to (==)
            #   - Less than (<)
            #   - Less tha equal to (<=)
            #   - Greater than (>)
            #   - Greater than equal to (>=)
            #   - Contains (contains)
            #
            #   Please note that when using "contains" operator only one value can be specified
            #   and the corresponding attribute must contain multiple values when defined for a
            #   vehicle.
            #
            #   @return [String]
            required :operator, String

            # @!attribute priority
            #   Specify the priority score that should be assigned when a vehicle qualifies the
            #   criteria specified above. A higher value indicates a higher priority. Valid
            #   values are \[1,10\].
            #
            #   @return [String]
            required :priority, String

            # @!attribute value
            #   Specify the desired value of the attribute to be applied for this vehicle. value
            #   provided here is compared to the values (of each key:value pair) in
            #   vehicles.attributes during evaluation.
            #
            #   @return [String]
            required :value, String

            # @!method initialize(attribute:, operator:, priority:, value:)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Options::VehicleAttributePriorityMapping}
            #   for more details.
            #
            #   @param attribute [String] Specify the name of the attribute. The attribute is compared to the keys (of eac
            #
            #   @param operator [String] Specify the operator to denote the relation between attribute and the value spec
            #
            #   @param priority [String] Specify the priority score that should be assigned when a vehicle qualifies the
            #
            #   @param value [String] Specify the desired value of the attribute to be applied for this vehicle. value
          end
        end
      end
    end
  end
end
