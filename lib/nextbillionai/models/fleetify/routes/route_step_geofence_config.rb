# frozen_string_literal: true

module Nextbillionai
  module Models
    module Fleetify
      module Routes
        class RouteStepGeofenceConfig < Nextbillionai::Internal::Type::BaseModel
          # @!attribute radius
          #   Specify the radius of the cicular geofence, in meters. Once specified, the
          #   service will create a geofence with task's location as the center of the circle
          #   having the given radius. Valid values for radius are \[10, 5000\].
          #
          #   @return [Float, nil]
          optional :radius, Float

          # @!attribute type
          #   Specify the type of the geofence. Currently, circle is the only suppoeted value.
          #
          #   @return [Symbol, Nextbillionai::Models::Fleetify::Routes::RouteStepGeofenceConfig::Type, nil]
          optional :type, enum: -> { Nextbillionai::Fleetify::Routes::RouteStepGeofenceConfig::Type }

          # @!method initialize(radius: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Fleetify::Routes::RouteStepGeofenceConfig} for more
          #   details.
          #
          #   Specify the configurations of the geofence which will be used to detect presence
          #   of the driver and complete the tasks automatically. Please note that this
          #   attribute is required when completion_mode is either "geofence" or
          #   "geofence_manual_fallback".
          #
          #   @param radius [Float] Specify the radius of the cicular geofence, in meters. Once specified, the servi
          #
          #   @param type [Symbol, Nextbillionai::Models::Fleetify::Routes::RouteStepGeofenceConfig::Type] Specify the type of the geofence. Currently, circle is the only suppoeted value.

          # Specify the type of the geofence. Currently, circle is the only suppoeted value.
          #
          # @see Nextbillionai::Models::Fleetify::Routes::RouteStepGeofenceConfig#type
          module Type
            extend Nextbillionai::Internal::Type::Enum

            CIRCLE = :circle

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      RouteStepGeofenceConfig = Routes::RouteStepGeofenceConfig
    end
  end
end
