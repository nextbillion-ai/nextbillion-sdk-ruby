# typed: strong

module Nextbillionai
  module Models
    module Fleetify
      class RoutingResponse < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Fleetify::RoutingResponse,
              Nextbillionai::Internal::AnyHash
            )
          end

        # Returns the configuration of approaches for each step, that is used when
        # generating the route to help the driver with turn-by-turn navigation.
        sig { returns(T.nilable(String)) }
        attr_reader :approaches

        sig { params(approaches: String).void }
        attr_writer :approaches

        # Returns the objects and maneuvers that will be avoided in the route that is
        # built when driver starts the in-app turn-by-turn navigation.
        sig { returns(T.nilable(String)) }
        attr_reader :avoid

        sig { params(avoid: String).void }
        attr_writer :avoid

        # Returns the hazardous cargo type that the truck is carrying. The hazardous cargo
        # type is used to determine the compliant routes that the driver can take while
        # navigating the dispatched route.
        sig { returns(T.nilable(String)) }
        attr_reader :hazmat_type

        sig { params(hazmat_type: String).void }
        attr_writer :hazmat_type

        # Returns the driving mode that is used to build the route when driver starts the
        # in-app turn-by-turn navigation.
        sig { returns(T.nilable(String)) }
        attr_reader :mode

        sig { params(mode: String).void }
        attr_writer :mode

        # Returns the total load per axle of the truck, in tonnes, used to determine
        # compliant routes that the driver can take when he starts navigating the
        # dispatched route.
        sig { returns(T.nilable(String)) }
        attr_reader :truck_axle_load

        sig { params(truck_axle_load: String).void }
        attr_writer :truck_axle_load

        # Returns the truck dimensions, in centimeters, used to determine compliant routes
        # that the driver can take when he starts navigating the dispatched route.
        sig { returns(T.nilable(String)) }
        attr_reader :truck_size

        sig { params(truck_size: String).void }
        attr_writer :truck_size

        # Returns the truck weight that will determine compliant routes that can be used
        # by the driver during navigation.
        sig { returns(T.nilable(String)) }
        attr_reader :truck_weight

        sig { params(truck_weight: String).void }
        attr_writer :truck_weight

        # An object returning the routing characteristics that are used to generate the
        # route and turn-by-turn navigation steps for the dispatched route. The route and
        # navigation steps are available when driver uses the in-app navigation.
        #
        # Please note the routing characteristics returned here are the same as those
        # configured in the input request. The fields which were not specified in the
        # input will be returned as blanks.
        sig do
          params(
            approaches: String,
            avoid: String,
            hazmat_type: String,
            mode: String,
            truck_axle_load: String,
            truck_size: String,
            truck_weight: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Returns the configuration of approaches for each step, that is used when
          # generating the route to help the driver with turn-by-turn navigation.
          approaches: nil,
          # Returns the objects and maneuvers that will be avoided in the route that is
          # built when driver starts the in-app turn-by-turn navigation.
          avoid: nil,
          # Returns the hazardous cargo type that the truck is carrying. The hazardous cargo
          # type is used to determine the compliant routes that the driver can take while
          # navigating the dispatched route.
          hazmat_type: nil,
          # Returns the driving mode that is used to build the route when driver starts the
          # in-app turn-by-turn navigation.
          mode: nil,
          # Returns the total load per axle of the truck, in tonnes, used to determine
          # compliant routes that the driver can take when he starts navigating the
          # dispatched route.
          truck_axle_load: nil,
          # Returns the truck dimensions, in centimeters, used to determine compliant routes
          # that the driver can take when he starts navigating the dispatched route.
          truck_size: nil,
          # Returns the truck weight that will determine compliant routes that can be used
          # by the driver during navigation.
          truck_weight: nil
        )
        end

        sig do
          override.returns(
            {
              approaches: String,
              avoid: String,
              hazmat_type: String,
              mode: String,
              truck_axle_load: String,
              truck_size: String,
              truck_weight: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
