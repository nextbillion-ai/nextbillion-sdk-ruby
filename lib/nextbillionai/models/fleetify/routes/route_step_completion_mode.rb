# frozen_string_literal: true

module Nextbillionai
  module Models
    module Fleetify
      module Routes
        # Specify the mode of completion to be used for the step. Currently, following
        # values are allowed:
        #
        # - `manual`: Steps must be marked as completed manually through the Driver App.
        # - `geofence`: Steps are marked as completed automatically based on the entry
        #   conditions and geofence specified.
        # - `geofence_manual_fallback`: Steps will be marked as completed automatically
        #   based on geofence and entry condition configurations but there will also be a
        #   provision for manually updating the status in case, geofence detection fails.
        module RouteStepCompletionMode
          extend Nextbillionai::Internal::Type::Enum

          MANUAL = :"`manual`"
          GEOFENCE = :"`geofence`"
          GEOFENCE_MANUAL_FALLBACK = :"`geofence_manual_fallback`"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      RouteStepCompletionMode = Routes::RouteStepCompletionMode
    end
  end
end
