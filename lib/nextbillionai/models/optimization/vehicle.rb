# frozen_string_literal: true

module Nextbillionai
  module Models
    module Optimization
      class Vehicle < Nextbillionai::Internal::Type::BaseModel
        # @!attribute id
        #   Specify a unique ID for the vehicle.
        #
        #   @return [String]
        required :id, String

        # @!attribute location
        #   Specify the location coordinates where the vehicle is currently located. This
        #   input is mandatory for each vehicle.
        #
        #   @return [Nextbillionai::Models::Optimization::Location]
        required :location, -> { Nextbillionai::Optimization::Location }

        # @!attribute attributes
        #   Specify custom attributes for the vehicle. Each attribute should be created as a
        #   key:value pair. These attributes can be used in the orders.vehicle_preferences
        #   input to refine the search of vehicles for each order.
        #
        #   The maximum number of key:value pairs that can be specified under attributes for
        #   a given vehicle, is limited to 30.
        #
        #   @return [Object, nil]
        optional :attributes, Nextbillionai::Internal::Type::Unknown

        # @!attribute priority
        #   Specify the priority for this vehicle. A higher value indicates a higher
        #   priority. When specified, it will override any priority score deduced from
        #   vehicle_attribute_priority_mappings for this vehicle. Valid values are \[1, 10\]
        #   and default is 0.
        #
        #   @return [Integer, nil]
        optional :priority, Integer

        # @!attribute remaining_waypoints
        #   An array of objects to collect the location coordinates of the stops remaining
        #   on an ongoing trip of the vehicle. The service can assign new orders to the
        #   vehicle if they are cost-effective. Once a new order is assigned, the vehicle
        #   must complete all the steps in the ongoing trip before proceeding to pickup the
        #   newly assigned order.
        #
        #   Please note that a maximum of 10 waypoints can be specified for a given vehicle.
        #
        #   @return [Array<Nextbillionai::Models::Optimization::Location>, nil]
        optional :remaining_waypoints,
                 -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Optimization::Location] }

        # @!method initialize(id:, location:, attributes: nil, priority: nil, remaining_waypoints: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Optimization::Vehicle} for more details.
        #
        #   @param id [String] Specify a unique ID for the vehicle.
        #
        #   @param location [Nextbillionai::Models::Optimization::Location] Specify the location coordinates where the vehicle is currently located. This in
        #
        #   @param attributes [Object] Specify custom attributes for the vehicle. Each attribute should be created as a
        #
        #   @param priority [Integer] Specify the priority for this vehicle. A higher value indicates a higher priorit
        #
        #   @param remaining_waypoints [Array<Nextbillionai::Models::Optimization::Location>] An array of objects to collect the location coordinates of the stops remaining o
      end
    end
  end
end
