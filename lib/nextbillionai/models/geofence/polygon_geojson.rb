# frozen_string_literal: true

module Nextbillionai
  module Models
    module Geofence
      class PolygonGeojson < Nextbillionai::Internal::Type::BaseModel
        # @!attribute coordinates
        #   An array of coordinates in the [longitude, latitude] format, representing the
        #   geofence boundary.
        #
        #   @return [Array<Array<Float>>, nil]
        optional :coordinates,
                 Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Internal::Type::ArrayOf[Float]]

        # @!attribute type
        #   Type of the geoJSON geometry. Will always be Polygon.
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(coordinates: nil, type: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Geofence::PolygonGeojson} for more details.
        #
        #   An object with geoJSON details of the geofence. The contents of this object
        #   follow the [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
        #
        #   @param coordinates [Array<Array<Float>>] An array of coordinates in the [longitude, latitude] format, representing the ge
        #
        #   @param type [String] Type of the geoJSON geometry. Will always be Polygon.
      end
    end
  end
end
