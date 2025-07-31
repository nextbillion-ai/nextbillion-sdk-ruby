# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Optimization
      class Location < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute lat
        #   Latitude of location.
        #
        #   @return [Float]
        required :lat, Float

        # @!attribute lon
        #   Longitude of location.
        #
        #   @return [Float]
        required :lon, Float

        # @!method initialize(lat:, lon:)
        #   Location info.
        #
        #   @param lat [Float] Latitude of location.
        #
        #   @param lon [Float] Longitude of location.
      end
    end
  end
end
