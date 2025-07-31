# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::SnapToRoads#snap
    class SnapToRoadSnapResponse < NextbillionSDK::Internal::Type::BaseModel
      # @!attribute distance
      #   The total distance of the snapped path in meters.
      #
      #   @return [Integer, nil]
      optional :distance, Integer

      # @!attribute geojson
      #   A GeoJSON object with details of the snapped path. This object is returned when
      #   the `geometry` field is set to `geojson` in the input request, otherwise it is
      #   not present in the response. The contents of this object follow the
      #   [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
      #
      #   @return [NextbillionSDK::Models::SnapToRoadSnapResponse::Geojson, nil]
      optional :geojson, -> { NextbillionSDK::Models::SnapToRoadSnapResponse::Geojson }

      # @!attribute geometry
      #   An array of strings containing the encoded geometries of snapped paths in
      #   `polyline` or `polyline6` format.
      #
      #   @return [Array<String>, nil]
      optional :geometry, NextbillionSDK::Internal::Type::ArrayOf[String]

      # @!attribute msg
      #   Displays the error message in case of a failed request or operation. Please note
      #   that this parameter is not returned in the response in case of a successful
      #   request.
      #
      #   @return [String, nil]
      optional :msg, String

      # @!attribute road_info
      #   An object containing the maximum speed information for each road segment present
      #   in the route.
      #
      #   @return [NextbillionSDK::Models::SnapToRoadSnapResponse::RoadInfo, nil]
      optional :road_info, -> { NextbillionSDK::Models::SnapToRoadSnapResponse::RoadInfo }

      # @!attribute snapped_points
      #   An array of objects. Each object provides the details of a `path` coordinate
      #   point snapped to the nearest road.
      #
      #   @return [Array<NextbillionSDK::Models::SnapToRoadSnapResponse::SnappedPoint>, nil]
      optional :snapped_points,
               -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::SnapToRoadSnapResponse::SnappedPoint] },
               api_name: :snappedPoints

      # @!attribute status
      #   A string indicating the state of the response. On normal responses, the value
      #   will be `Ok`. Indicative HTTP error codes are returned for different errors. See
      #   the [API Errors Codes](#api-error-codes) section below for more information.
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(distance: nil, geojson: nil, geometry: nil, msg: nil, road_info: nil, snapped_points: nil, status: nil)
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::SnapToRoadSnapResponse} for more details.
      #
      #   Response Body
      #
      #   @param distance [Integer] The total distance of the snapped path in meters.
      #
      #   @param geojson [NextbillionSDK::Models::SnapToRoadSnapResponse::Geojson] A GeoJSON object with details of the snapped path. This object is returned when
      #
      #   @param geometry [Array<String>] An array of strings containing the encoded geometries of snapped paths in `polyl
      #
      #   @param msg [String] Displays the error message in case of a failed request or operation. Please note
      #
      #   @param road_info [NextbillionSDK::Models::SnapToRoadSnapResponse::RoadInfo] An object containing the maximum speed information for each road segment present
      #
      #   @param snapped_points [Array<NextbillionSDK::Models::SnapToRoadSnapResponse::SnappedPoint>] An array of objects. Each object provides the details of a `path` coordinate poi
      #
      #   @param status [String] A string indicating the state of the response. On normal responses, the value wi

      # @see NextbillionSDK::Models::SnapToRoadSnapResponse#geojson
      class Geojson < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute geometry
        #   An object with details of the geoJSON geometry of the snapped path.
        #
        #   @return [NextbillionSDK::Models::SnapToRoadSnapResponse::Geojson::Geometry, nil]
        optional :geometry, -> { NextbillionSDK::Models::SnapToRoadSnapResponse::Geojson::Geometry }

        # @!attribute properties
        #   Properties associated with the geoJSON shape of the snapped path.
        #
        #   @return [String, nil]
        optional :properties, String

        # @!attribute type
        #   Type of the GeoJSON object.
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(geometry: nil, properties: nil, type: nil)
        #   A GeoJSON object with details of the snapped path. This object is returned when
        #   the `geometry` field is set to `geojson` in the input request, otherwise it is
        #   not present in the response. The contents of this object follow the
        #   [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
        #
        #   @param geometry [NextbillionSDK::Models::SnapToRoadSnapResponse::Geojson::Geometry] An object with details of the geoJSON geometry of the snapped path.
        #
        #   @param properties [String] Properties associated with the geoJSON shape of the snapped path.
        #
        #   @param type [String] Type of the GeoJSON object.

        # @see NextbillionSDK::Models::SnapToRoadSnapResponse::Geojson#geometry
        class Geometry < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute coordinates
          #   An array of coordinates in the [longitude, latitude] format, representing the
          #   snapped path geometry.
          #
          #   @return [Array<Float>, nil]
          optional :coordinates, NextbillionSDK::Internal::Type::ArrayOf[Float]

          # @!attribute type
          #   Type of the geoJSON geometry
          #
          #   @return [String, nil]
          optional :type, String

          # @!method initialize(coordinates: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::SnapToRoadSnapResponse::Geojson::Geometry} for more
          #   details.
          #
          #   An object with details of the geoJSON geometry of the snapped path.
          #
          #   @param coordinates [Array<Float>] An array of coordinates in the [longitude, latitude] format, representing the sn
          #
          #   @param type [String] Type of the geoJSON geometry
        end
      end

      # @see NextbillionSDK::Models::SnapToRoadSnapResponse#road_info
      class RoadInfo < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute max_speed
        #   An array of objects containing maximum speed, in kilometers per hour, for each
        #   segment of the route. Each object represents one road segment.
        #
        #   @return [Array<NextbillionSDK::Models::SnapToRoadSnapResponse::RoadInfo::MaxSpeed>, nil]
        optional :max_speed,
                 -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::SnapToRoadSnapResponse::RoadInfo::MaxSpeed] }

        # @!method initialize(max_speed: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::SnapToRoadSnapResponse::RoadInfo} for more details.
        #
        #   An object containing the maximum speed information for each road segment present
        #   in the route.
        #
        #   @param max_speed [Array<NextbillionSDK::Models::SnapToRoadSnapResponse::RoadInfo::MaxSpeed>] An array of objects containing maximum speed, in kilometers per hour, for each s

        class MaxSpeed < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute length
          #   `length` refers to a sequence of 'n' consecutive vertices in the route geometry
          #   starting from the `offset`, forming a continuous section of route where the
          #   maximum speed is the same and is indicated in `value`.
          #
          #   @return [Integer, nil]
          optional :length, Integer

          # @!attribute offset
          #   `offset` is the index value of the vertex of route geometry, which is the
          #   starting point of the segment.
          #
          #   @return [Integer, nil]
          optional :offset, Integer

          # @!attribute value
          #   `value` denotes the maximum speed of this segment, in kilometers per hour.
          #
          #   - A value of "-1" indicates that the speed is unlimited for this road segment.
          #   - A value of "0" indicates that there is no information about the maximum speed
          #     for this road segment.
          #
          #   @return [Float, nil]
          optional :value, Float

          # @!method initialize(length: nil, offset: nil, value: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::SnapToRoadSnapResponse::RoadInfo::MaxSpeed} for more
          #   details.
          #
          #   @param length [Integer] `length` refers to a sequence of 'n' consecutive vertices in the route geometry
          #
          #   @param offset [Integer] `offset` is the index value of the vertex of route geometry, which is the starti
          #
          #   @param value [Float] `value` denotes the maximum speed of this segment, in kilometers per hour.
        end
      end

      class SnappedPoint < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute bearing
        #   The bearing, calculated as the angle from true north in clockwise direction, of
        #   the route leading to the next snapped point from the current `snapped_point`, in
        #   radians. In case of the last `snapped_point` of the route, the bearing indicates
        #   the direction of the route to the previous `snapped_location`.
        #
        #   @return [Float]
        required :bearing, Float

        # @!attribute distance
        #   The distance of the snapped point from the original input coordinate in meters.
        #
        #   @return [Float]
        required :distance, Float

        # @!attribute location
        #   The latitude and longitude coordinates of the snapped point.
        #
        #   @return [NextbillionSDK::Models::SnapToRoadSnapResponse::SnappedPoint::Location]
        required :location, -> { NextbillionSDK::Models::SnapToRoadSnapResponse::SnappedPoint::Location }

        # @!attribute name
        #   The name of the street or road that the input coordinate snapped to.
        #
        #   @return [String]
        required :name, String

        # @!attribute original_index
        #   The index of the input `path` coordinate point to which this snapped point
        #   corresponds to.
        #
        #   @return [Integer]
        required :original_index, Integer, api_name: :originalIndex

        # @!method initialize(bearing:, distance:, location:, name:, original_index:)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::SnapToRoadSnapResponse::SnappedPoint} for more details.
        #
        #   @param bearing [Float] The bearing, calculated as the angle from true north in clockwise direction, of
        #
        #   @param distance [Float] The distance of the snapped point from the original input coordinate in meters.
        #
        #   @param location [NextbillionSDK::Models::SnapToRoadSnapResponse::SnappedPoint::Location] The latitude and longitude coordinates of the snapped point.
        #
        #   @param name [String] The name of the street or road that the input coordinate snapped to.
        #
        #   @param original_index [Integer] The index of the input `path` coordinate point to which this snapped point corre

        # @see NextbillionSDK::Models::SnapToRoadSnapResponse::SnappedPoint#location
        class Location < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute latitude
          #   Latitude of the snapped point.
          #
          #   @return [Float]
          required :latitude, Float

          # @!attribute longitude
          #   Longitude of the snapped point.
          #
          #   @return [Float]
          required :longitude, Float

          # @!method initialize(latitude:, longitude:)
          #   The latitude and longitude coordinates of the snapped point.
          #
          #   @param latitude [Float] Latitude of the snapped point.
          #
          #   @param longitude [Float] Longitude of the snapped point.
        end
      end
    end
  end
end
