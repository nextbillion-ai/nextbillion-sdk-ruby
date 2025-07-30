# frozen_string_literal: true

module NextbillionSDK
  module Models
    class MapView < NextbillionSDK::Internal::Type::BaseModel
      # @!attribute east
      #   Longitude of the eastern-side of the box.
      #
      #   @return [String, nil]
      optional :east, String

      # @!attribute north
      #   Longitude of the northern-side of the box.
      #
      #   @return [String, nil]
      optional :north, String

      # @!attribute south
      #   Longitude of the southern-side of the box.
      #
      #   @return [String, nil]
      optional :south, String

      # @!attribute west
      #   Longitude of the western-side of the box.
      #
      #   @return [String, nil]
      optional :west, String

      # @!method initialize(east: nil, north: nil, south: nil, west: nil)
      #   The bounding box enclosing the geometric shape (area or line) that an individual
      #   result covers. place typed results have no mapView.
      #
      #   @param east [String] Longitude of the eastern-side of the box.
      #
      #   @param north [String] Longitude of the northern-side of the box.
      #
      #   @param south [String] Longitude of the southern-side of the box.
      #
      #   @param west [String] Longitude of the western-side of the box.
    end
  end
end
