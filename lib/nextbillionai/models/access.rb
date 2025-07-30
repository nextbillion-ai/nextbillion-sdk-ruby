# frozen_string_literal: true

module Nextbillionai
  module Models
    class Access < Nextbillionai::Internal::Type::BaseModel
      # @!attribute lat
      #   The latitude of the access point of the search result.
      #
      #   @return [Float, nil]
      optional :lat, Float

      # @!attribute lng
      #   The longitude of the access point of the search result.
      #
      #   @return [Float, nil]
      optional :lng, Float

      # @!method initialize(lat: nil, lng: nil)
      #   An array returning the location coordinates of all the access points of the
      #   search result.
      #
      #   @param lat [Float] The latitude of the access point of the search result.
      #
      #   @param lng [Float] The longitude of the access point of the search result.
    end
  end
end
