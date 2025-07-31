# frozen_string_literal: true

module NextbillionSDK
  module Models
    class GeofenceAPI < NextbillionSDK::Internal::Type::BaseModel
      # @!attribute id
      #   ID of the geofence provided/generated at the time of creating the geofence.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute circle_center
      #
      #   @return [NextbillionSDK::Models::GeofenceAPI::CircleCenter, nil]
      optional :circle_center, -> { NextbillionSDK::GeofenceAPI::CircleCenter }

      # @!attribute circle_radius
      #   When the `type` of the geofence is `circle`, this property returns the radius of
      #   the geofence in meters (m).
      #
      #   @return [Float, nil]
      optional :circle_radius, Float

      # @!attribute created_at
      #   Time at which the geofence was created, expressed as a UNIX timestamp in
      #   seconds.
      #
      #   @return [Integer, nil]
      optional :created_at, Integer

      # @!attribute geojson
      #   An object with geoJSON details of the geofence. The contents of this object
      #   follow the [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
      #
      #   @return [NextbillionSDK::Models::Geofence::PolygonGeojson, nil]
      optional :geojson, -> { NextbillionSDK::Geofence::PolygonGeojson }

      # @!attribute ic_contours_meter
      #   For a geofence based on isochrone contour determined using a specific driving
      #   distance, this property returns the duration value, in meters.
      #
      #   The value would be the same as that provided for the `contours_meter` parameter
      #   at the time of creating or updating the geofence.
      #
      #   @return [Integer, nil]
      optional :ic_contours_meter, Integer

      # @!attribute ic_contours_minute
      #   For a geofence based on isochrone contour determined using a specific driving
      #   duration, this property returns the duration value, in minutes. The value would
      #   be the same as the value provided for the `contours_minute` parameter at the
      #   time of creating or updating the geofence.
      #
      #   @return [Integer, nil]
      optional :ic_contours_minute, Integer

      # @!attribute ic_coordinates
      #   For a geofence based on isochrone contour, this property returns the coordinates
      #   of the location, in [latitude,longitude] format, which was used as the starting
      #   point to identify the geofence boundary.
      #
      #   The value would be the same as that provided for the `coordinates` parameter at
      #   the time of creating or updating the geofence.
      #
      #   @return [String, nil]
      optional :ic_coordinates, String

      # @!attribute ic_denoise
      #   For a geofence based on isochrone contour, this property returns the denoise
      #   value which would be the same as that provided for the `denoise` parameter at
      #   the time of creating or updating the geofence.
      #
      #   @return [Float, nil]
      optional :ic_denoise, Float

      # @!attribute ic_departure_time
      #   For a geofence based on isochrone contour, this property returns the departure
      #   time, as a UNIX epoch timestamp in seconds, which was used to determine the
      #   geofence boundary after taking into account the traffic conditions at the time.
      #
      #   The value would be the same as that provided for the `departure_time` parameter
      #   at the time of creating or updating the geofence.
      #
      #   @return [Integer, nil]
      optional :ic_departure_time, Integer

      # @!attribute ic_mode
      #   For a geofence based on isochrone contour, this property returns the driving
      #   mode used to determine the geofence boundary.
      #
      #   The value would be the same as that provided for the `mode` parameter at the
      #   time of creating or updating the geofence.
      #
      #   @return [Float, nil]
      optional :ic_mode, Float

      # @!attribute meta_data
      #   Metadata of the geofence added at the time of creating or updating it.
      #
      #   @return [Object, nil]
      optional :meta_data, NextbillionSDK::Internal::Type::Unknown

      # @!attribute name
      #   Name of the geofence added at the time of creating or updating it.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute tags
      #   An array of strings representing the `tags` associated with the geofence added
      #   at the time of creating or updating it.
      #
      #   @return [Array<String>, nil]
      optional :tags, NextbillionSDK::Internal::Type::ArrayOf[String]

      # @!attribute type
      #   Type of the geofence.
      #
      #   @return [Symbol, NextbillionSDK::Models::GeofenceAPI::Type, nil]
      optional :type, enum: -> { NextbillionSDK::GeofenceAPI::Type }

      # @!attribute updated_at
      #   Time at which the geofence was last updated, expressed as a UNIX timestamp in
      #   seconds.
      #
      #   @return [Integer, nil]
      optional :updated_at, Integer

      # @!method initialize(id: nil, circle_center: nil, circle_radius: nil, created_at: nil, geojson: nil, ic_contours_meter: nil, ic_contours_minute: nil, ic_coordinates: nil, ic_denoise: nil, ic_departure_time: nil, ic_mode: nil, meta_data: nil, name: nil, tags: nil, type: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::GeofenceAPI} for more details.
      #
      #   An object with details of the geofence.
      #
      #   @param id [String] ID of the geofence provided/generated at the time of creating the geofence.
      #
      #   @param circle_center [NextbillionSDK::Models::GeofenceAPI::CircleCenter]
      #
      #   @param circle_radius [Float] When the `type` of the geofence is `circle`, this property returns the radius of
      #
      #   @param created_at [Integer] Time at which the geofence was created, expressed as a UNIX timestamp in seconds
      #
      #   @param geojson [NextbillionSDK::Models::Geofence::PolygonGeojson] An object with geoJSON details of the geofence. The contents of this object foll
      #
      #   @param ic_contours_meter [Integer] For a geofence based on isochrone contour determined using a specific driving di
      #
      #   @param ic_contours_minute [Integer] For a geofence based on isochrone contour determined using a specific driving du
      #
      #   @param ic_coordinates [String] For a geofence based on isochrone contour, this property returns the coordinates
      #
      #   @param ic_denoise [Float] For a geofence based on isochrone contour, this property returns the denoise val
      #
      #   @param ic_departure_time [Integer] For a geofence based on isochrone contour, this property returns the departure t
      #
      #   @param ic_mode [Float] For a geofence based on isochrone contour, this property returns the driving mod
      #
      #   @param meta_data [Object] Metadata of the geofence added at the time of creating or updating it.
      #
      #   @param name [String] Name of the geofence added at the time of creating or updating it.
      #
      #   @param tags [Array<String>] An array of strings representing the `tags` associated with the geofence added a
      #
      #   @param type [Symbol, NextbillionSDK::Models::GeofenceAPI::Type] Type of the geofence.
      #
      #   @param updated_at [Integer] Time at which the geofence was last updated, expressed as a UNIX timestamp in se

      # @see NextbillionSDK::Models::GeofenceAPI#circle_center
      class CircleCenter < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute lat
        #   Latitude of the location.
        #
        #   @return [Float, nil]
        optional :lat, Float

        # @!attribute lon
        #   Longitude of the location.
        #
        #   @return [Float, nil]
        optional :lon, Float

        # @!method initialize(lat: nil, lon: nil)
        #   @param lat [Float] Latitude of the location.
        #
        #   @param lon [Float] Longitude of the location.
      end

      # Type of the geofence.
      #
      # @see NextbillionSDK::Models::GeofenceAPI#type
      module Type
        extend NextbillionSDK::Internal::Type::Enum

        CIRCLE = :"`circle`"
        POLYGON = :"`polygon`"
        ISOCHRONE = :"`isochrone`"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
