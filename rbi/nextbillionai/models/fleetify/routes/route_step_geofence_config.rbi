# typed: strong

module Nextbillionai
  module Models
    module Fleetify
      RouteStepGeofenceConfig = Routes::RouteStepGeofenceConfig

      module Routes
        class RouteStepGeofenceConfig < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Fleetify::Routes::RouteStepGeofenceConfig,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Specify the radius of the cicular geofence, in meters. Once specified, the
          # service will create a geofence with task's location as the center of the circle
          # having the given radius. Valid values for `radius` are \[10, 5000\].
          sig { returns(T.nilable(Float)) }
          attr_reader :radius

          sig { params(radius: Float).void }
          attr_writer :radius

          # Specify the type of the geofence. Currently, `circle` is the only suppoeted
          # value.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Fleetify::Routes::RouteStepGeofenceConfig::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Nextbillionai::Fleetify::Routes::RouteStepGeofenceConfig::Type::OrSymbol
            ).void
          end
          attr_writer :type

          # Specify the configurations of the geofence which will be used to detect presence
          # of the driver and complete the tasks automatically. Please note that this
          # attribute is required when `completion_mode` is either "geofence" or
          # "geofence_manual_fallback".
          sig do
            params(
              radius: Float,
              type:
                Nextbillionai::Fleetify::Routes::RouteStepGeofenceConfig::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Specify the radius of the cicular geofence, in meters. Once specified, the
            # service will create a geofence with task's location as the center of the circle
            # having the given radius. Valid values for `radius` are \[10, 5000\].
            radius: nil,
            # Specify the type of the geofence. Currently, `circle` is the only suppoeted
            # value.
            type: nil
          )
          end

          sig do
            override.returns(
              {
                radius: Float,
                type:
                  Nextbillionai::Fleetify::Routes::RouteStepGeofenceConfig::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Specify the type of the geofence. Currently, `circle` is the only suppoeted
          # value.
          module Type
            extend Nextbillionai::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Nextbillionai::Fleetify::Routes::RouteStepGeofenceConfig::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CIRCLE =
              T.let(
                :circle,
                Nextbillionai::Fleetify::Routes::RouteStepGeofenceConfig::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Nextbillionai::Fleetify::Routes::RouteStepGeofenceConfig::Type::TaggedSymbol
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
