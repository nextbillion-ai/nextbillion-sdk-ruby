# typed: strong

module Nextbillionai
  module Models
    module Optimization
      class Vehicle < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Optimization::Vehicle,
              Nextbillionai::Internal::AnyHash
            )
          end

        # Specify a unique ID for the vehicle.
        sig { returns(String) }
        attr_accessor :id

        # Specify the location coordinates where the vehicle is currently located. This
        # input is mandatory for each vehicle.
        sig { returns(Nextbillionai::Optimization::Vehicle::Location) }
        attr_reader :location

        sig do
          params(
            location: Nextbillionai::Optimization::Vehicle::Location::OrHash
          ).void
        end
        attr_writer :location

        # Specify custom attributes for the vehicle. Each attribute should be created as a
        # `key:value` pair. These attributes can be used in the
        # `orders.vehicle_preferences` input to refine the search of vehicles for each
        # order.
        #
        # The maximum number of key:value pairs that can be specified under `attributes`
        # for a given vehicle, is limited to 30.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :attributes

        sig { params(attributes: T.anything).void }
        attr_writer :attributes

        # Specify the priority for this vehicle. A higher value indicates a higher
        # priority. When specified, it will override any priority score deduced from
        # `vehicle_attribute_priority_mappings` for this vehicle. Valid values are \[1,
        # 10\] and default is 0.
        sig { returns(T.nilable(Integer)) }
        attr_reader :priority

        sig { params(priority: Integer).void }
        attr_writer :priority

        # An array of objects to collect the location coordinates of the stops remaining
        # on an ongoing trip of the vehicle. The service can assign new orders to the
        # vehicle if they are cost-effective. Once a new order is assigned, the vehicle
        # must complete all the steps in the ongoing trip before proceeding to pickup the
        # newly assigned order.
        #
        # Please note that a maximum of 10 waypoints can be specified for a given vehicle.
        sig do
          returns(T.nilable(T::Array[Nextbillionai::Optimization::Location]))
        end
        attr_reader :remaining_waypoints

        sig do
          params(
            remaining_waypoints:
              T::Array[Nextbillionai::Optimization::Location::OrHash]
          ).void
        end
        attr_writer :remaining_waypoints

        sig do
          params(
            id: String,
            location: Nextbillionai::Optimization::Vehicle::Location::OrHash,
            attributes: T.anything,
            priority: Integer,
            remaining_waypoints:
              T::Array[Nextbillionai::Optimization::Location::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Specify a unique ID for the vehicle.
          id:,
          # Specify the location coordinates where the vehicle is currently located. This
          # input is mandatory for each vehicle.
          location:,
          # Specify custom attributes for the vehicle. Each attribute should be created as a
          # `key:value` pair. These attributes can be used in the
          # `orders.vehicle_preferences` input to refine the search of vehicles for each
          # order.
          #
          # The maximum number of key:value pairs that can be specified under `attributes`
          # for a given vehicle, is limited to 30.
          attributes: nil,
          # Specify the priority for this vehicle. A higher value indicates a higher
          # priority. When specified, it will override any priority score deduced from
          # `vehicle_attribute_priority_mappings` for this vehicle. Valid values are \[1,
          # 10\] and default is 0.
          priority: nil,
          # An array of objects to collect the location coordinates of the stops remaining
          # on an ongoing trip of the vehicle. The service can assign new orders to the
          # vehicle if they are cost-effective. Once a new order is assigned, the vehicle
          # must complete all the steps in the ongoing trip before proceeding to pickup the
          # newly assigned order.
          #
          # Please note that a maximum of 10 waypoints can be specified for a given vehicle.
          remaining_waypoints: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              location: Nextbillionai::Optimization::Vehicle::Location,
              attributes: T.anything,
              priority: Integer,
              remaining_waypoints:
                T::Array[Nextbillionai::Optimization::Location]
            }
          )
        end
        def to_hash
        end

        class Location < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Optimization::Vehicle::Location,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Latitude of the vehicle's current location.
          sig { returns(T.nilable(Float)) }
          attr_reader :lat

          sig { params(lat: Float).void }
          attr_writer :lat

          # Longitude of the vehicle's current location.
          sig { returns(T.nilable(Float)) }
          attr_reader :lng

          sig { params(lng: Float).void }
          attr_writer :lng

          # Specify the location coordinates where the vehicle is currently located. This
          # input is mandatory for each vehicle.
          sig { params(lat: Float, lng: Float).returns(T.attached_class) }
          def self.new(
            # Latitude of the vehicle's current location.
            lat: nil,
            # Longitude of the vehicle's current location.
            lng: nil
          )
          end

          sig { override.returns({ lat: Float, lng: Float }) }
          def to_hash
          end
        end
      end
    end
  end
end
