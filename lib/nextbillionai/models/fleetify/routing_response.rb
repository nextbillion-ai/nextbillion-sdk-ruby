# frozen_string_literal: true

module Nextbillionai
  module Models
    module Fleetify
      class RoutingResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute approaches
        #   Returns the configuration of approaches for each step, that is used when
        #   generating the route to help the driver with turn-by-turn navigation.
        #
        #   @return [String, nil]
        optional :approaches, String

        # @!attribute avoid
        #   Returns the objects and maneuvers that will be avoided in the route that is
        #   built when driver starts the in-app turn-by-turn navigation.
        #
        #   @return [String, nil]
        optional :avoid, String

        # @!attribute hazmat_type
        #   Returns the hazardous cargo type that the truck is carrying. The hazardous cargo
        #   type is used to determine the compliant routes that the driver can take while
        #   navigating the dispatched route.
        #
        #   @return [String, nil]
        optional :hazmat_type, String

        # @!attribute mode
        #   Returns the driving mode that is used to build the route when driver starts the
        #   in-app turn-by-turn navigation.
        #
        #   @return [String, nil]
        optional :mode, String

        # @!attribute truck_axle_load
        #   Returns the total load per axle of the truck, in tonnes, used to determine
        #   compliant routes that the driver can take when he starts navigating the
        #   dispatched route.
        #
        #   @return [String, nil]
        optional :truck_axle_load, String

        # @!attribute truck_size
        #   Returns the truck dimensions, in centimeters, used to determine compliant routes
        #   that the driver can take when he starts navigating the dispatched route.
        #
        #   @return [String, nil]
        optional :truck_size, String

        # @!attribute truck_weight
        #   Returns the truck weight that will determine compliant routes that can be used
        #   by the driver during navigation.
        #
        #   @return [String, nil]
        optional :truck_weight, String

        # @!method initialize(approaches: nil, avoid: nil, hazmat_type: nil, mode: nil, truck_axle_load: nil, truck_size: nil, truck_weight: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Fleetify::RoutingResponse} for more details.
        #
        #   An object returning the routing characteristics that are used to generate the
        #   route and turn-by-turn navigation steps for the dispatched route. The route and
        #   navigation steps are available when driver uses the in-app navigation.
        #
        #   Please note the routing characteristics returned here are the same as those
        #   configured in the input request. The fields which were not specified in the
        #   input will be returned as blanks.
        #
        #   @param approaches [String] Returns the configuration of approaches for each step, that is used when generat
        #
        #   @param avoid [String] Returns the objects and maneuvers that will be avoided in the route that is buil
        #
        #   @param hazmat_type [String] Returns the hazardous cargo type that the truck is carrying. The hazardous cargo
        #
        #   @param mode [String] Returns the driving mode that is used to build the route when driver starts the
        #
        #   @param truck_axle_load [String] Returns the total load per axle of the truck, in tonnes, used to determine compl
        #
        #   @param truck_size [String] Returns the truck dimensions, in centimeters, used to determine compliant routes
        #
        #   @param truck_weight [String] Returns the truck weight that will determine compliant routes that can be used b
      end
    end
  end
end
