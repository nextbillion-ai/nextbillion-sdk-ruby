# typed: strong

module NextbillionSDK
  module Models
    module Fleetify
      RouteStepCompletionMode = Routes::RouteStepCompletionMode

      module Routes
        # Specify the mode of completion to be used for the step. Currently, following
        # values are allowed:
        #
        # - manual: Steps must be marked as completed manually through the Driver App.
        # - geofence: Steps are marked as completed automatically based on the entry
        #   conditions and geofence specified.
        # - geofence_manual_fallback: Steps will be marked as completed automatically
        #   based on geofence and entry condition configurations but there will also be a
        #   provision for manually updating the status in case, geofence detection fails.
        module RouteStepCompletionMode
          extend NextbillionSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                NextbillionSDK::Fleetify::Routes::RouteStepCompletionMode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MANUAL =
            T.let(
              :manual,
              NextbillionSDK::Fleetify::Routes::RouteStepCompletionMode::TaggedSymbol
            )
          GEOFENCE =
            T.let(
              :geofence,
              NextbillionSDK::Fleetify::Routes::RouteStepCompletionMode::TaggedSymbol
            )
          GEOFENCE_MANUAL_FALLBACK =
            T.let(
              :geofence_manual_fallback,
              NextbillionSDK::Fleetify::Routes::RouteStepCompletionMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                NextbillionSDK::Fleetify::Routes::RouteStepCompletionMode::TaggedSymbol
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
