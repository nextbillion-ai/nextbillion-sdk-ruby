# frozen_string_literal: true

module Nextbillionai
  module Models
    class Position < Nextbillionai::Internal::Type::BaseModel
      # @!attribute lat
      #   The latitude of the searched place.
      #
      #   @return [String, nil]
      optional :lat, String

      # @!attribute lng
      #   The longitude of the searched place.
      #
      #   @return [String, nil]
      optional :lng, String

      # @!method initialize(lat: nil, lng: nil)
      #   Returns the location coordinates of the result.
      #
      #   @param lat [String] The latitude of the searched place.
      #
      #   @param lng [String] The longitude of the searched place.
    end
  end
end
