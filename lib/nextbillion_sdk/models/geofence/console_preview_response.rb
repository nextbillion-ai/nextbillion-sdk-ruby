# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Geofence
      # @see NextbillionSDK::Resources::Geofence::Console#preview
      class ConsolePreviewResponse < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [NextbillionSDK::Models::Geofence::ConsolePreviewResponse::Data, nil]
        optional :data, -> { NextbillionSDK::Models::Geofence::ConsolePreviewResponse::Data }

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!method initialize(data: nil, message: nil)
        #   @param data [NextbillionSDK::Models::Geofence::ConsolePreviewResponse::Data]
        #   @param message [String]

        # @see NextbillionSDK::Models::Geofence::ConsolePreviewResponse#data
        class Data < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute geojson
          #   An object with geoJSON details of the geofence. The contents of this object
          #   follow the [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
          #
          #   @return [NextbillionSDK::Models::Geofence::PolygonGeojson, nil]
          optional :geojson, -> { NextbillionSDK::Geofence::PolygonGeojson }

          # @!method initialize(geojson: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Geofence::ConsolePreviewResponse::Data} for more
          #   details.
          #
          #   @param geojson [NextbillionSDK::Models::Geofence::PolygonGeojson] An object with geoJSON details of the geofence. The contents of this object foll
        end
      end
    end
  end
end
