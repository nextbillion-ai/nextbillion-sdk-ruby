# typed: strong

module Nextbillionai
  module Models
    module Optimization
      class DriverAssignmentAssignParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Optimization::DriverAssignmentAssignParams,
              Nextbillionai::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # Specify the filtering criterion for the vehicles with respect to each order's
        # location. `filter` is a mandatory input for all requests.
        sig do
          returns(
            Nextbillionai::Optimization::DriverAssignmentAssignParams::Filter
          )
        end
        attr_reader :filter

        sig do
          params(
            filter:
              Nextbillionai::Optimization::DriverAssignmentAssignParams::Filter::OrHash
          ).void
        end
        attr_writer :filter

        # Collects the details of open orders to be fulfilled. Each object represents one
        # order. All requests must include `orders` as a mandatory input. A maximum of 200
        # orders is allowed per request.
        sig do
          returns(
            T::Array[
              Nextbillionai::Optimization::DriverAssignmentAssignParams::Order
            ]
          )
        end
        attr_accessor :orders

        # Collects the details of vehicles available to fulfill the orders. Each object
        # represents one vehicle. All requests must include `vehicles` as a mandatory
        # input. A maximum of 100 vehicles is allowed per request.
        sig { returns(T::Array[Nextbillionai::Optimization::Vehicle]) }
        attr_accessor :vehicles

        # Configure the assignment constraints and response settings.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Optimization::DriverAssignmentAssignParams::Options
            )
          )
        end
        attr_reader :options

        sig do
          params(
            options:
              Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::OrHash
          ).void
        end
        attr_writer :options

        sig do
          params(
            key: String,
            filter:
              Nextbillionai::Optimization::DriverAssignmentAssignParams::Filter::OrHash,
            orders:
              T::Array[
                Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::OrHash
              ],
            vehicles: T::Array[Nextbillionai::Optimization::Vehicle::OrHash],
            options:
              Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::OrHash,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # Specify the filtering criterion for the vehicles with respect to each order's
          # location. `filter` is a mandatory input for all requests.
          filter:,
          # Collects the details of open orders to be fulfilled. Each object represents one
          # order. All requests must include `orders` as a mandatory input. A maximum of 200
          # orders is allowed per request.
          orders:,
          # Collects the details of vehicles available to fulfill the orders. Each object
          # represents one vehicle. All requests must include `vehicles` as a mandatory
          # input. A maximum of 100 vehicles is allowed per request.
          vehicles:,
          # Configure the assignment constraints and response settings.
          options: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              filter:
                Nextbillionai::Optimization::DriverAssignmentAssignParams::Filter,
              orders:
                T::Array[
                  Nextbillionai::Optimization::DriverAssignmentAssignParams::Order
                ],
              vehicles: T::Array[Nextbillionai::Optimization::Vehicle],
              options:
                Nextbillionai::Optimization::DriverAssignmentAssignParams::Options,
              request_options: Nextbillionai::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Filter < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Optimization::DriverAssignmentAssignParams::Filter,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Defines a `driving_distance` filter, in meters. If a vehicle needs to drive
          # further than this distance to reach a pickup location, it will not be assigned
          # to that order. Valid range of values for this filter is \[1, 10000\].
          sig { returns(T.nilable(Float)) }
          attr_reader :driving_distance

          sig { params(driving_distance: Float).void }
          attr_writer :driving_distance

          # Specify a duration, in seconds, which will be used to filter out ineligible
          # vehicles for each order. Any vehicle which would take more time than specified
          # here, to reach the pickup location of a given order, will be ruled out for
          # assignment for that particular order. Valid values for `pickup_eta` are \[1,
          # 3600\].
          sig { returns(T.nilable(Integer)) }
          attr_reader :pickup_eta

          sig { params(pickup_eta: Integer).void }
          attr_writer :pickup_eta

          # Specify a radius, in meters, which will be used to filter out ineligible
          # vehicles for each order. The pickup location of an order will act as the center
          # of the circle when identifying eligible vehicles. Valid values for `radius` are
          # \[1, 10000\].
          sig { returns(T.nilable(Float)) }
          attr_reader :radius

          sig { params(radius: Float).void }
          attr_writer :radius

          # Specify the filtering criterion for the vehicles with respect to each order's
          # location. `filter` is a mandatory input for all requests.
          sig do
            params(
              driving_distance: Float,
              pickup_eta: Integer,
              radius: Float
            ).returns(T.attached_class)
          end
          def self.new(
            # Defines a `driving_distance` filter, in meters. If a vehicle needs to drive
            # further than this distance to reach a pickup location, it will not be assigned
            # to that order. Valid range of values for this filter is \[1, 10000\].
            driving_distance: nil,
            # Specify a duration, in seconds, which will be used to filter out ineligible
            # vehicles for each order. Any vehicle which would take more time than specified
            # here, to reach the pickup location of a given order, will be ruled out for
            # assignment for that particular order. Valid values for `pickup_eta` are \[1,
            # 3600\].
            pickup_eta: nil,
            # Specify a radius, in meters, which will be used to filter out ineligible
            # vehicles for each order. The pickup location of an order will act as the center
            # of the circle when identifying eligible vehicles. Valid values for `radius` are
            # \[1, 10000\].
            radius: nil
          )
          end

          sig do
            override.returns(
              { driving_distance: Float, pickup_eta: Integer, radius: Float }
            )
          end
          def to_hash
          end
        end

        class Order < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Optimization::DriverAssignmentAssignParams::Order,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Specify a unique ID for the order.
          sig { returns(String) }
          attr_accessor :id

          # Specify the location coordinates of the pickup location of the order. This input
          # is mandatory for each order.
          sig do
            returns(
              Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::Pickup
            )
          end
          attr_reader :pickup

          sig do
            params(
              pickup:
                Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::Pickup::OrHash
            ).void
          end
          attr_writer :pickup

          # Specify custom attributes for the orders. Each attribute should be created as a
          # `key:value` pair. The **keys** provided can be used in
          # `options.order_attribute_priority_mappings` to assign a custom priority for this
          # order based on its attributes.
          #
          # The maximum number of key:value pairs that can be specified under `attributes`
          # for a given order, is limited to 30.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :attributes

          sig { params(attributes: T.anything).void }
          attr_writer :attributes

          # Use this parameter to specify the location coordinates of the destination of the
          # trip or the intermediate stops to be completed before it.
          #
          # Please note
          #
          # - The last location provided is treated as the destination of the trip.
          # - `dropoffs` is mandatory when `dropoff_details` is set to **true**.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::Dropoff
                ]
              )
            )
          end
          attr_reader :dropoffs

          sig do
            params(
              dropoffs:
                T::Array[
                  Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::Dropoff::OrHash
                ]
            ).void
          end
          attr_writer :dropoffs

          # Specify the priority for this order. A higher value indicates a higher priority.
          # When specified, it will override any priority score deduced from
          # `order_attribute_priority_mappings` for this order. Valid values are \[1, 10\]
          # and default is 0.
          sig { returns(T.nilable(Integer)) }
          attr_reader :priority

          sig { params(priority: Integer).void }
          attr_writer :priority

          # Specify the service time, in seconds, for the order. Service time is the
          # duration that the driver is likely to wait at the pickup location after
          # arriving. The impact of the service time is realized in the ETA for the
          # "dropoff" type step.
          sig { returns(T.nilable(Integer)) }
          attr_reader :service_time

          sig { params(service_time: Integer).void }
          attr_writer :service_time

          # Define custom preferences for task assignment based on vehicle's attributes. If
          # multiple criteria are provided, they are evaluated using an AND
          # condition—meaning all specified criteria must be met individually for a vehicle
          # to be considered.
          #
          # For example, if `required_all_of_attributes`, `required_any_of_attributes`, and
          # `exclude_all_of_attributes` are all provided, an eligible vehicle must satisfy
          # the following to be considered for assignments:
          #
          # 1.  Meet all conditions specified in `required_all_of_attributes`.
          # 2.  Meet at least one of the conditions listed in `required_any_of_attributes`.
          # 3.  Not meet any conditions mentioned in `exclude_all_of_attributes`.
          #
          # Consequently, a vehicle which does not have any `attributes` defined can't be
          # assigned to an order which has `vehicle_preferences` configured.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences
              )
            )
          end
          attr_reader :vehicle_preferences

          sig do
            params(
              vehicle_preferences:
                Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::OrHash
            ).void
          end
          attr_writer :vehicle_preferences

          sig do
            params(
              id: String,
              pickup:
                Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::Pickup::OrHash,
              attributes: T.anything,
              dropoffs:
                T::Array[
                  Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::Dropoff::OrHash
                ],
              priority: Integer,
              service_time: Integer,
              vehicle_preferences:
                Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Specify a unique ID for the order.
            id:,
            # Specify the location coordinates of the pickup location of the order. This input
            # is mandatory for each order.
            pickup:,
            # Specify custom attributes for the orders. Each attribute should be created as a
            # `key:value` pair. The **keys** provided can be used in
            # `options.order_attribute_priority_mappings` to assign a custom priority for this
            # order based on its attributes.
            #
            # The maximum number of key:value pairs that can be specified under `attributes`
            # for a given order, is limited to 30.
            attributes: nil,
            # Use this parameter to specify the location coordinates of the destination of the
            # trip or the intermediate stops to be completed before it.
            #
            # Please note
            #
            # - The last location provided is treated as the destination of the trip.
            # - `dropoffs` is mandatory when `dropoff_details` is set to **true**.
            dropoffs: nil,
            # Specify the priority for this order. A higher value indicates a higher priority.
            # When specified, it will override any priority score deduced from
            # `order_attribute_priority_mappings` for this order. Valid values are \[1, 10\]
            # and default is 0.
            priority: nil,
            # Specify the service time, in seconds, for the order. Service time is the
            # duration that the driver is likely to wait at the pickup location after
            # arriving. The impact of the service time is realized in the ETA for the
            # "dropoff" type step.
            service_time: nil,
            # Define custom preferences for task assignment based on vehicle's attributes. If
            # multiple criteria are provided, they are evaluated using an AND
            # condition—meaning all specified criteria must be met individually for a vehicle
            # to be considered.
            #
            # For example, if `required_all_of_attributes`, `required_any_of_attributes`, and
            # `exclude_all_of_attributes` are all provided, an eligible vehicle must satisfy
            # the following to be considered for assignments:
            #
            # 1.  Meet all conditions specified in `required_all_of_attributes`.
            # 2.  Meet at least one of the conditions listed in `required_any_of_attributes`.
            # 3.  Not meet any conditions mentioned in `exclude_all_of_attributes`.
            #
            # Consequently, a vehicle which does not have any `attributes` defined can't be
            # assigned to an order which has `vehicle_preferences` configured.
            vehicle_preferences: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                pickup:
                  Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::Pickup,
                attributes: T.anything,
                dropoffs:
                  T::Array[
                    Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::Dropoff
                  ],
                priority: Integer,
                service_time: Integer,
                vehicle_preferences:
                  Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences
              }
            )
          end
          def to_hash
          end

          class Pickup < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::Pickup,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Latitude of the pickup location.
            sig { returns(T.nilable(Float)) }
            attr_reader :lat

            sig { params(lat: Float).void }
            attr_writer :lat

            # Longitude of the pickup location.
            sig { returns(T.nilable(Float)) }
            attr_reader :lng

            sig { params(lng: Float).void }
            attr_writer :lng

            # Specify the location coordinates of the pickup location of the order. This input
            # is mandatory for each order.
            sig { params(lat: Float, lng: Float).returns(T.attached_class) }
            def self.new(
              # Latitude of the pickup location.
              lat: nil,
              # Longitude of the pickup location.
              lng: nil
            )
            end

            sig { override.returns({ lat: Float, lng: Float }) }
            def to_hash
            end
          end

          class Dropoff < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::Dropoff,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Latitude of the stop location.
            sig { returns(T.nilable(Float)) }
            attr_reader :lat

            sig { params(lat: Float).void }
            attr_writer :lat

            # Longitude of the stop location.
            sig { returns(T.nilable(Float)) }
            attr_reader :lng

            sig { params(lng: Float).void }
            attr_writer :lng

            sig { params(lat: Float, lng: Float).returns(T.attached_class) }
            def self.new(
              # Latitude of the stop location.
              lat: nil,
              # Longitude of the stop location.
              lng: nil
            )
            end

            sig { override.returns({ lat: Float, lng: Float }) }
            def to_hash
            end
          end

          class VehiclePreferences < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # An array of objects to add exclusion requirements for the order. A vehicle must
            # **not meet any of the conditions** specified here to be considered for
            # assignment. Each object represents a single condition. Please note that a
            # maximum of 10 conditions can be added here for a given order.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::ExcludeAllOfAttribute
                  ]
                )
              )
            end
            attr_reader :exclude_all_of_attributes

            sig do
              params(
                exclude_all_of_attributes:
                  T::Array[
                    Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::ExcludeAllOfAttribute::OrHash
                  ]
              ).void
            end
            attr_writer :exclude_all_of_attributes

            # An array of objects to add mandatory requirements for the order. A vehicle must
            # **meet** **all conditions** specified here to be considered for assignment. Each
            # object represents a single condition. Please note that a maximum of 10
            # conditions can be added here for a given order.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::RequiredAllOfAttribute
                  ]
                )
              )
            end
            attr_reader :required_all_of_attributes

            sig do
              params(
                required_all_of_attributes:
                  T::Array[
                    Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::RequiredAllOfAttribute::OrHash
                  ]
              ).void
            end
            attr_writer :required_all_of_attributes

            # An array of objects to add optional requirements for the order. A vehicle must
            # **meet** **at least one of the conditions** specified here to be considered for
            # assignment. Each object represents a single condition. Please note that a
            # maximum of 10 conditions can be added here for a given order.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::RequiredAnyOfAttribute
                  ]
                )
              )
            end
            attr_reader :required_any_of_attributes

            sig do
              params(
                required_any_of_attributes:
                  T::Array[
                    Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::RequiredAnyOfAttribute::OrHash
                  ]
              ).void
            end
            attr_writer :required_any_of_attributes

            # Define custom preferences for task assignment based on vehicle's attributes. If
            # multiple criteria are provided, they are evaluated using an AND
            # condition—meaning all specified criteria must be met individually for a vehicle
            # to be considered.
            #
            # For example, if `required_all_of_attributes`, `required_any_of_attributes`, and
            # `exclude_all_of_attributes` are all provided, an eligible vehicle must satisfy
            # the following to be considered for assignments:
            #
            # 1.  Meet all conditions specified in `required_all_of_attributes`.
            # 2.  Meet at least one of the conditions listed in `required_any_of_attributes`.
            # 3.  Not meet any conditions mentioned in `exclude_all_of_attributes`.
            #
            # Consequently, a vehicle which does not have any `attributes` defined can't be
            # assigned to an order which has `vehicle_preferences` configured.
            sig do
              params(
                exclude_all_of_attributes:
                  T::Array[
                    Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::ExcludeAllOfAttribute::OrHash
                  ],
                required_all_of_attributes:
                  T::Array[
                    Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::RequiredAllOfAttribute::OrHash
                  ],
                required_any_of_attributes:
                  T::Array[
                    Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::RequiredAnyOfAttribute::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # An array of objects to add exclusion requirements for the order. A vehicle must
              # **not meet any of the conditions** specified here to be considered for
              # assignment. Each object represents a single condition. Please note that a
              # maximum of 10 conditions can be added here for a given order.
              exclude_all_of_attributes: nil,
              # An array of objects to add mandatory requirements for the order. A vehicle must
              # **meet** **all conditions** specified here to be considered for assignment. Each
              # object represents a single condition. Please note that a maximum of 10
              # conditions can be added here for a given order.
              required_all_of_attributes: nil,
              # An array of objects to add optional requirements for the order. A vehicle must
              # **meet** **at least one of the conditions** specified here to be considered for
              # assignment. Each object represents a single condition. Please note that a
              # maximum of 10 conditions can be added here for a given order.
              required_any_of_attributes: nil
            )
            end

            sig do
              override.returns(
                {
                  exclude_all_of_attributes:
                    T::Array[
                      Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::ExcludeAllOfAttribute
                    ],
                  required_all_of_attributes:
                    T::Array[
                      Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::RequiredAllOfAttribute
                    ],
                  required_any_of_attributes:
                    T::Array[
                      Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::RequiredAnyOfAttribute
                    ]
                }
              )
            end
            def to_hash
            end

            class ExcludeAllOfAttribute < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::ExcludeAllOfAttribute,
                    Nextbillionai::Internal::AnyHash
                  )
                end

              # Specify the name of the attribute. The `attribute` is compared to the keys (of
              # each `key:value` pair) in `vehicles.attributes` during evaluation.
              sig { returns(String) }
              attr_accessor :attribute

              # Specify the operator to denote the relation between `attribute` and the `value`
              # specified above. The `attribute` , `operator` and `value` together constitute
              # the condition that a vehicle must meet to be eligible for assignment. Currently,
              # we support following operators currently:
              #
              # - Equal to (==)
              # - Less than (<)
              # - Less tha equal to (<=)
              # - Greater than (>)
              # - Greater than equal to (>=)
              # - Contains (contains)
              #
              # Please note that when using "contains" operator only one `value` can be
              # specified and the corresponding `attribute` must contain multiple values when
              # defined for a vehicle.
              sig { returns(String) }
              attr_accessor :operator

              # Specify the desired value of the attribute to be applied for this order. `value`
              # provided here is compared to the values (of each `key:value` pair) in
              # `vehicles.attributes` during evaluation.
              sig { returns(String) }
              attr_accessor :value

              sig do
                params(
                  attribute: String,
                  operator: String,
                  value: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Specify the name of the attribute. The `attribute` is compared to the keys (of
                # each `key:value` pair) in `vehicles.attributes` during evaluation.
                attribute:,
                # Specify the operator to denote the relation between `attribute` and the `value`
                # specified above. The `attribute` , `operator` and `value` together constitute
                # the condition that a vehicle must meet to be eligible for assignment. Currently,
                # we support following operators currently:
                #
                # - Equal to (==)
                # - Less than (<)
                # - Less tha equal to (<=)
                # - Greater than (>)
                # - Greater than equal to (>=)
                # - Contains (contains)
                #
                # Please note that when using "contains" operator only one `value` can be
                # specified and the corresponding `attribute` must contain multiple values when
                # defined for a vehicle.
                operator:,
                # Specify the desired value of the attribute to be applied for this order. `value`
                # provided here is compared to the values (of each `key:value` pair) in
                # `vehicles.attributes` during evaluation.
                value:
              )
              end

              sig do
                override.returns(
                  { attribute: String, operator: String, value: String }
                )
              end
              def to_hash
              end
            end

            class RequiredAllOfAttribute < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::RequiredAllOfAttribute,
                    Nextbillionai::Internal::AnyHash
                  )
                end

              # Specify the name of the attribute. The `attribute` is compared to the keys (of
              # each `key:value` pair) in `vehicles.attributes` during evaluation.
              sig { returns(String) }
              attr_accessor :attribute

              # Specify the operator to denote the relation between `attribute` and the `value`
              # specified above. The `attribute` , `operator` and `value` together constitute
              # the condition that a vehicle must meet to be eligible for assignment. Currently,
              # we support following operators currently:
              #
              # - Equal to (==)
              # - Less than (<)
              # - Less tha equal to (<=)
              # - Greater than (>)
              # - Greater than equal to (>=)
              # - Contains (contains)
              #
              # Please note that when using "contains" operator only one `value` can be
              # specified and the corresponding `attribute` must contain multiple values when
              # defined for a vehicle.
              sig { returns(String) }
              attr_accessor :operator

              # Specify the desired value of the attribute to be applied for this order. `value`
              # provided here is compared to the values (of each `key:value` pair) in
              # `vehicles.attributes` during evaluation.
              sig { returns(String) }
              attr_accessor :value

              sig do
                params(
                  attribute: String,
                  operator: String,
                  value: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Specify the name of the attribute. The `attribute` is compared to the keys (of
                # each `key:value` pair) in `vehicles.attributes` during evaluation.
                attribute:,
                # Specify the operator to denote the relation between `attribute` and the `value`
                # specified above. The `attribute` , `operator` and `value` together constitute
                # the condition that a vehicle must meet to be eligible for assignment. Currently,
                # we support following operators currently:
                #
                # - Equal to (==)
                # - Less than (<)
                # - Less tha equal to (<=)
                # - Greater than (>)
                # - Greater than equal to (>=)
                # - Contains (contains)
                #
                # Please note that when using "contains" operator only one `value` can be
                # specified and the corresponding `attribute` must contain multiple values when
                # defined for a vehicle.
                operator:,
                # Specify the desired value of the attribute to be applied for this order. `value`
                # provided here is compared to the values (of each `key:value` pair) in
                # `vehicles.attributes` during evaluation.
                value:
              )
              end

              sig do
                override.returns(
                  { attribute: String, operator: String, value: String }
                )
              end
              def to_hash
              end
            end

            class RequiredAnyOfAttribute < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Optimization::DriverAssignmentAssignParams::Order::VehiclePreferences::RequiredAnyOfAttribute,
                    Nextbillionai::Internal::AnyHash
                  )
                end

              # Specify the name of the attribute. The `attribute` is compared to the keys (of
              # each `key:value` pair) in `vehicles.attributes` during evaluation.
              sig { returns(String) }
              attr_accessor :attribute

              # Specify the operator to denote the relation between `attribute` and the `value`
              # specified above. The `attribute` , `operator` and `value` together constitute
              # the condition that a vehicle must meet to be eligible for assignment. Currently,
              # we support following operators currently:
              #
              # - Equal to (==)
              # - Less than (<)
              # - Less tha equal to (<=)
              # - Greater than (>)
              # - Greater than equal to (>=)
              # - Contains (contains)
              #
              # Please note that when using "contains" operator only one `value` can be
              # specified and the corresponding `attribute` must contain multiple values when
              # defined for a vehicle.
              sig { returns(String) }
              attr_accessor :operator

              # Specify the desired value of the attribute to be applied for this order. `value`
              # provided here is compared to the values (of each `key:value` pair) in
              # `vehicles.attributes` during evaluation.
              sig { returns(String) }
              attr_accessor :value

              sig do
                params(
                  attribute: String,
                  operator: String,
                  value: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Specify the name of the attribute. The `attribute` is compared to the keys (of
                # each `key:value` pair) in `vehicles.attributes` during evaluation.
                attribute:,
                # Specify the operator to denote the relation between `attribute` and the `value`
                # specified above. The `attribute` , `operator` and `value` together constitute
                # the condition that a vehicle must meet to be eligible for assignment. Currently,
                # we support following operators currently:
                #
                # - Equal to (==)
                # - Less than (<)
                # - Less tha equal to (<=)
                # - Greater than (>)
                # - Greater than equal to (>=)
                # - Contains (contains)
                #
                # Please note that when using "contains" operator only one `value` can be
                # specified and the corresponding `attribute` must contain multiple values when
                # defined for a vehicle.
                operator:,
                # Specify the desired value of the attribute to be applied for this order. `value`
                # provided here is compared to the values (of each `key:value` pair) in
                # `vehicles.attributes` during evaluation.
                value:
              )
              end

              sig do
                override.returns(
                  { attribute: String, operator: String, value: String }
                )
              end
              def to_hash
              end
            end
          end
        end

        class Options < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Optimization::DriverAssignmentAssignParams::Options,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Specify the maximum number of potential, alternate vehicle assignments to be
          # returned for each order, apart from the vehicle which was assigned as
          # recommended. Please note that:
          #
          # - The maximum number of alternate assignments that can be requested are 3.
          # - It is not necessary that the service will return the specified number of
          #   alternate assignments for each order. The number of alternate assignments
          #   returned will depend on the number of vehicles provided in the input.
          # - Order which could not be assigned to any vehicles due to their `filter` or
          #   attribute matching criteria will not be eligible for alternate assignments as
          #   well.
          sig { returns(T.nilable(Integer)) }
          attr_reader :alternate_assignments

          sig { params(alternate_assignments: Integer).void }
          attr_writer :alternate_assignments

          # When **true**, the service returns the drop-off steps for each trip and related
          # details in the response. Defaults to **false**.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :dropoff_details

          sig { params(dropoff_details: T::Boolean).void }
          attr_writer :dropoff_details

          # Collection of rules for assigning custom priority to orders based on their
          # attributes. In case an order satisfies more than one rule, the highest priority
          # score from all the rules satisfied, would be the effective priority score for
          # such an order.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::OrderAttributePriorityMapping
                ]
              )
            )
          end
          attr_reader :order_attribute_priority_mappings

          sig do
            params(
              order_attribute_priority_mappings:
                T::Array[
                  Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::OrderAttributePriorityMapping::OrHash
                ]
            ).void
          end
          attr_writer :order_attribute_priority_mappings

          # Choose a travel cost that will be used by the service for assigning vehicles
          # efficiently from a set of qualifying ones.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::TravelCost::OrSymbol
              )
            )
          end
          attr_reader :travel_cost

          sig do
            params(
              travel_cost:
                Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::TravelCost::OrSymbol
            ).void
          end
          attr_writer :travel_cost

          # Collection of rules for assigning custom priority to vehicles based on their
          # attributes. In case a vehicle satisfies more than one rule, the highest priority
          # score from all the rules satisfied, would be the effective priority score for
          # such a vehicle.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::VehicleAttributePriorityMapping
                ]
              )
            )
          end
          attr_reader :vehicle_attribute_priority_mappings

          sig do
            params(
              vehicle_attribute_priority_mappings:
                T::Array[
                  Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::VehicleAttributePriorityMapping::OrHash
                ]
            ).void
          end
          attr_writer :vehicle_attribute_priority_mappings

          # Configure the assignment constraints and response settings.
          sig do
            params(
              alternate_assignments: Integer,
              dropoff_details: T::Boolean,
              order_attribute_priority_mappings:
                T::Array[
                  Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::OrderAttributePriorityMapping::OrHash
                ],
              travel_cost:
                Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::TravelCost::OrSymbol,
              vehicle_attribute_priority_mappings:
                T::Array[
                  Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::VehicleAttributePriorityMapping::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # Specify the maximum number of potential, alternate vehicle assignments to be
            # returned for each order, apart from the vehicle which was assigned as
            # recommended. Please note that:
            #
            # - The maximum number of alternate assignments that can be requested are 3.
            # - It is not necessary that the service will return the specified number of
            #   alternate assignments for each order. The number of alternate assignments
            #   returned will depend on the number of vehicles provided in the input.
            # - Order which could not be assigned to any vehicles due to their `filter` or
            #   attribute matching criteria will not be eligible for alternate assignments as
            #   well.
            alternate_assignments: nil,
            # When **true**, the service returns the drop-off steps for each trip and related
            # details in the response. Defaults to **false**.
            dropoff_details: nil,
            # Collection of rules for assigning custom priority to orders based on their
            # attributes. In case an order satisfies more than one rule, the highest priority
            # score from all the rules satisfied, would be the effective priority score for
            # such an order.
            order_attribute_priority_mappings: nil,
            # Choose a travel cost that will be used by the service for assigning vehicles
            # efficiently from a set of qualifying ones.
            travel_cost: nil,
            # Collection of rules for assigning custom priority to vehicles based on their
            # attributes. In case a vehicle satisfies more than one rule, the highest priority
            # score from all the rules satisfied, would be the effective priority score for
            # such a vehicle.
            vehicle_attribute_priority_mappings: nil
          )
          end

          sig do
            override.returns(
              {
                alternate_assignments: Integer,
                dropoff_details: T::Boolean,
                order_attribute_priority_mappings:
                  T::Array[
                    Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::OrderAttributePriorityMapping
                  ],
                travel_cost:
                  Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::TravelCost::OrSymbol,
                vehicle_attribute_priority_mappings:
                  T::Array[
                    Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::VehicleAttributePriorityMapping
                  ]
              }
            )
          end
          def to_hash
          end

          class OrderAttributePriorityMapping < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::OrderAttributePriorityMapping,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Specify the name of the attribute. The `attribute` is compared to the keys (of
            # each `key:value` pair) in `orders.attributes` during evaluation.
            sig { returns(String) }
            attr_accessor :attribute

            # Specify the operator to denote the relation between `attribute` and the `value`
            # specified above. The `attribute` , `operator` and `value` together constitute
            # the condition that an order must meet to assume the specified priority. We
            # support the following operators currently:
            #
            # - Equal to (==)
            # - Less than (<)
            # - Less tha equal to (<=)
            # - Greater than (>)
            # - Greater than equal to (>=)
            # - Contains (contains)
            #
            # Please note that when using "contains" operator only one `value` can be
            # specified and the corresponding `attribute` must contain multiple values when
            # defined for an order.
            sig { returns(String) }
            attr_accessor :operator

            # Specify the priority score that should be assigned when an order qualifies the
            # criteria specified above. A higher value indicates a higher priority. Valid
            # values are \[1,10\].
            sig { returns(String) }
            attr_accessor :priority

            # Specify the desired value of the attribute to be applied for this order. `value`
            # provided here is compared to the values (of each `key:value` pair) in
            # `orders.attributes` during evaluation.
            sig { returns(String) }
            attr_accessor :value

            sig do
              params(
                attribute: String,
                operator: String,
                priority: String,
                value: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Specify the name of the attribute. The `attribute` is compared to the keys (of
              # each `key:value` pair) in `orders.attributes` during evaluation.
              attribute:,
              # Specify the operator to denote the relation between `attribute` and the `value`
              # specified above. The `attribute` , `operator` and `value` together constitute
              # the condition that an order must meet to assume the specified priority. We
              # support the following operators currently:
              #
              # - Equal to (==)
              # - Less than (<)
              # - Less tha equal to (<=)
              # - Greater than (>)
              # - Greater than equal to (>=)
              # - Contains (contains)
              #
              # Please note that when using "contains" operator only one `value` can be
              # specified and the corresponding `attribute` must contain multiple values when
              # defined for an order.
              operator:,
              # Specify the priority score that should be assigned when an order qualifies the
              # criteria specified above. A higher value indicates a higher priority. Valid
              # values are \[1,10\].
              priority:,
              # Specify the desired value of the attribute to be applied for this order. `value`
              # provided here is compared to the values (of each `key:value` pair) in
              # `orders.attributes` during evaluation.
              value:
            )
            end

            sig do
              override.returns(
                {
                  attribute: String,
                  operator: String,
                  priority: String,
                  value: String
                }
              )
            end
            def to_hash
            end
          end

          # Choose a travel cost that will be used by the service for assigning vehicles
          # efficiently from a set of qualifying ones.
          module TravelCost
            extend Nextbillionai::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::TravelCost
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DRIVING_ETA =
              T.let(
                :driving_eta,
                Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::TravelCost::TaggedSymbol
              )
            DRIVING_DISTANCE =
              T.let(
                :driving_distance,
                Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::TravelCost::TaggedSymbol
              )
            STRAIGHT_LINE_DISTANCE =
              T.let(
                :straight_line_distance,
                Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::TravelCost::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::TravelCost::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class VehicleAttributePriorityMapping < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Optimization::DriverAssignmentAssignParams::Options::VehicleAttributePriorityMapping,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Specify the name of the attribute. The `attribute` is compared to the keys (of
            # each `key:value` pair) in `vehicles.attributes` during evaluation.
            sig { returns(String) }
            attr_accessor :attribute

            # Specify the operator to denote the relation between `attribute` and the `value`
            # specified above. The `attribute` , `operator` and `value` together constitute
            # the condition that a vehicle must meet to assume the specified priority. We
            # support the following operators currently:
            #
            # - Equal to (==)
            # - Less than (<)
            # - Less tha equal to (<=)
            # - Greater than (>)
            # - Greater than equal to (>=)
            # - Contains (contains)
            #
            # Please note that when using "contains" operator only one `value` can be
            # specified and the corresponding `attribute` must contain multiple values when
            # defined for a vehicle.
            sig { returns(String) }
            attr_accessor :operator

            # Specify the priority score that should be assigned when a vehicle qualifies the
            # criteria specified above. A higher value indicates a higher priority. Valid
            # values are \[1,10\].
            sig { returns(String) }
            attr_accessor :priority

            # Specify the desired value of the attribute to be applied for this vehicle.
            # `value` provided here is compared to the values (of each `key:value` pair) in
            # `vehicles.attributes` during evaluation.
            sig { returns(String) }
            attr_accessor :value

            sig do
              params(
                attribute: String,
                operator: String,
                priority: String,
                value: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Specify the name of the attribute. The `attribute` is compared to the keys (of
              # each `key:value` pair) in `vehicles.attributes` during evaluation.
              attribute:,
              # Specify the operator to denote the relation between `attribute` and the `value`
              # specified above. The `attribute` , `operator` and `value` together constitute
              # the condition that a vehicle must meet to assume the specified priority. We
              # support the following operators currently:
              #
              # - Equal to (==)
              # - Less than (<)
              # - Less tha equal to (<=)
              # - Greater than (>)
              # - Greater than equal to (>=)
              # - Contains (contains)
              #
              # Please note that when using "contains" operator only one `value` can be
              # specified and the corresponding `attribute` must contain multiple values when
              # defined for a vehicle.
              operator:,
              # Specify the priority score that should be assigned when a vehicle qualifies the
              # criteria specified above. A higher value indicates a higher priority. Valid
              # values are \[1,10\].
              priority:,
              # Specify the desired value of the attribute to be applied for this vehicle.
              # `value` provided here is compared to the values (of each `key:value` pair) in
              # `vehicles.attributes` during evaluation.
              value:
            )
            end

            sig do
              override.returns(
                {
                  attribute: String,
                  operator: String,
                  priority: String,
                  value: String
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
