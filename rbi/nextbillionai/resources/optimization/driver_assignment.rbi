# typed: strong

module Nextbillionai
  module Resources
    class Optimization
      class DriverAssignment
        # Assigns available drivers (vehicles) to open orders based on specified criteria
        # and constraints.
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
          ).returns(
            Nextbillionai::Models::Optimization::DriverAssignmentAssignResponse
          )
        end
        def assign(
          # Query param: A key is a unique identifier that is required to authenticate a
          # request to the API.
          key:,
          # Body param: Specify the filtering criterion for the vehicles with respect to
          # each order's location. `filter` is a mandatory input for all requests.
          filter:,
          # Body param: Collects the details of open orders to be fulfilled. Each object
          # represents one order. All requests must include `orders` as a mandatory input. A
          # maximum of 200 orders is allowed per request.
          orders:,
          # Body param: Collects the details of vehicles available to fulfill the orders.
          # Each object represents one vehicle. All requests must include `vehicles` as a
          # mandatory input. A maximum of 100 vehicles is allowed per request.
          vehicles:,
          # Body param: Configure the assignment constraints and response settings.
          options: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Nextbillionai::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
