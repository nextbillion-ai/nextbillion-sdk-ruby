# frozen_string_literal: true

module Nextbillionai
  module Models
    module Geofence
      # @see Nextbillionai::Resources::Geofence::Console#preview
      class ConsolePreviewResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Nextbillionai::Models::Geofence::ConsolePreviewResponse::Data, nil]
        optional :data, -> { Nextbillionai::Models::Geofence::ConsolePreviewResponse::Data }

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!method initialize(data: nil, message: nil)
        #   @param data [Nextbillionai::Models::Geofence::ConsolePreviewResponse::Data]
        #   @param message [String]

        # @see Nextbillionai::Models::Geofence::ConsolePreviewResponse#data
        class Data < Nextbillionai::Internal::Type::BaseModel
          # @!attribute geojson
          #   An object with geoJSON details of the geofence. The contents of this object
          #   follow the [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
          #
          #   @return [Nextbillionai::Models::Geofence::PolygonGeojson, nil]
          optional :geojson, -> { Nextbillionai::Geofence::PolygonGeojson }

          # @!method initialize(geojson: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Geofence::ConsolePreviewResponse::Data} for more
          #   details.
          #
          #   @param geojson [Nextbillionai::Models::Geofence::PolygonGeojson] An object with geoJSON details of the geofence. The contents of this object foll
        end
      end
    end
  end
end
