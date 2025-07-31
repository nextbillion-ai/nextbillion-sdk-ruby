# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      module Asset
        # @see NextbillionSDK::Resources::Skynet::Asset::Location#list
        class LocationListResponse < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data, nil]
          optional :data, -> { NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data }

          # @!attribute message
          #   Displays the error message in case of a failed request. If the request is
          #   successful, this field is not present in the response.
          #
          #   @return [String, nil]
          optional :message, String

          # @!attribute status
          #   A string indicating the state of the response. On successful responses, the
          #   value will be `Ok`. Indicative error messages are returned for different errors.
          #   See the [API Error Codes](#api-error-codes) section below for more information.
          #
          #   @return [String, nil]
          optional :status, String

          # @!method initialize(data: nil, message: nil, status: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Skynet::Asset::LocationListResponse} for more details.
          #
          #   @param data [NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data]
          #
          #   @param message [String] Displays the error message in case of a failed request. If the request is succes
          #
          #   @param status [String] A string indicating the state of the response. On successful responses, the valu

          # @see NextbillionSDK::Models::Skynet::Asset::LocationListResponse#data
          class Data < NextbillionSDK::Internal::Type::BaseModel
            # @!attribute distance
            #   Distance of the path, in meters, formed by connecting all tracked locations
            #   returned.
            #
            #   Please note that `distance` is returned only when the `mapmatch` property of
            #   `correction` parameter is set to 1.
            #
            #   @return [Float, nil]
            optional :distance, Float

            # @!attribute geojson
            #   An object with geoJSON details of the route. It is returned only when the
            #   `mapmatch` property of the `correction` parameter is set to 1 and
            #   `geometry_type` is `geojson, otherwise it is not present in the response. The
            #   contents of this object follow the
            #   [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
            #
            #   @return [NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data::Geojson, nil]
            optional :geojson, -> { NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data::Geojson }

            # @!attribute geometry
            #   Geometry of tracked locations in the requested format. It is returned only if
            #   the `mapmatch` property of the ‘correction’ parameter is set to 1.
            #
            #   @return [Array<String>, nil]
            optional :geometry, NextbillionSDK::Internal::Type::ArrayOf[String]

            # @!attribute list
            #   An array of objects with details of the tracked locations of the `asset`. Each
            #   object represents one tracked location.
            #
            #   @return [Array<NextbillionSDK::Models::Skynet::Asset::TrackLocation>, nil]
            optional :list,
                     -> {
                       NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Skynet::Asset::TrackLocation]
                     }

            # @!attribute page
            #   An object with pagination details of the search results. Use this object to
            #   implement pagination in your application.
            #
            #   @return [NextbillionSDK::Models::Skynet::Pagination, nil]
            optional :page, -> { NextbillionSDK::Skynet::Pagination }

            # @!attribute snapped_points
            #   An array of objects with details about the snapped points for each of the
            #   tracked locations returned for the `asset`.
            #
            #   Please note that this property is returned only when the `mapmatch` property of
            #   `correction` parameter is set to 1.
            #
            #   @return [Array<NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data::SnappedPoint>, nil]
            optional :snapped_points,
                     -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data::SnappedPoint] }

            # @!method initialize(distance: nil, geojson: nil, geometry: nil, list: nil, page: nil, snapped_points: nil)
            #   Some parameter documentations has been truncated, see
            #   {NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data} for more
            #   details.
            #
            #   @param distance [Float] Distance of the path, in meters, formed by connecting all tracked locations retu
            #
            #   @param geojson [NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data::Geojson] An object with geoJSON details of the route. It is returned only when the `mapma
            #
            #   @param geometry [Array<String>] Geometry of tracked locations in the requested format. It is returned only if th
            #
            #   @param list [Array<NextbillionSDK::Models::Skynet::Asset::TrackLocation>] An array of objects with details of the tracked locations of the `asset`. Each o
            #
            #   @param page [NextbillionSDK::Models::Skynet::Pagination] An object with pagination details of the search results. Use this object to impl
            #
            #   @param snapped_points [Array<NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data::SnappedPoint>] An array of objects with details about the snapped points for each of the tracke

            # @see NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data#geojson
            class Geojson < NextbillionSDK::Internal::Type::BaseModel
              # @!attribute geometry
              #   An object with details of the geoJSON geometry of the route.
              #
              #   @return [NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data::Geojson::Geometry, nil]
              optional :geometry,
                       -> { NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data::Geojson::Geometry }

              # @!attribute type
              #   Type of the geoJSON object.
              #
              #   @return [String, nil]
              optional :type, String

              # @!method initialize(geometry: nil, type: nil)
              #   An object with geoJSON details of the route. It is returned only when the
              #   `mapmatch` property of the `correction` parameter is set to 1 and
              #   `geometry_type` is `geojson, otherwise it is not present in the response. The
              #   contents of this object follow the
              #   [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
              #
              #   @param geometry [NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data::Geojson::Geometry] An object with details of the geoJSON geometry of the route.
              #
              #   @param type [String] Type of the geoJSON object.

              # @see NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data::Geojson#geometry
              class Geometry < NextbillionSDK::Internal::Type::BaseModel
                # @!attribute coordinates
                #   An array of coordinates in the [longitude, latitude] format, representing the
                #   route geometry.
                #
                #   @return [Array<Float>, nil]
                optional :coordinates, NextbillionSDK::Internal::Type::ArrayOf[Float]

                # @!attribute type
                #   Type of the geoJSON geometry.
                #
                #   @return [String, nil]
                optional :type, String

                # @!method initialize(coordinates: nil, type: nil)
                #   Some parameter documentations has been truncated, see
                #   {NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data::Geojson::Geometry}
                #   for more details.
                #
                #   An object with details of the geoJSON geometry of the route.
                #
                #   @param coordinates [Array<Float>] An array of coordinates in the [longitude, latitude] format, representing the ro
                #
                #   @param type [String] Type of the geoJSON geometry.
              end
            end

            class SnappedPoint < NextbillionSDK::Internal::Type::BaseModel
              # @!attribute bearing
              #   The bearing angle of the snapped point from the original tracked location, in
              #   radians. It indicates the direction of the snapped point.
              #
              #   @return [String, nil]
              optional :bearing, String

              # @!attribute distance
              #   The distance of the snapped point from the original tracked location, in meters.
              #
              #   @return [Float, nil]
              optional :distance, Float

              # @!attribute location
              #   The latitude and longitude coordinates of the snapped point.
              #
              #   @return [NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data::SnappedPoint::Location, nil]
              optional :location,
                       -> { NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data::SnappedPoint::Location }

              # @!attribute name
              #   The name of the street or road of the snapped point.
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute original_index
              #   The index of the tracked location to which this snapped point corresponds to.
              #
              #   @return [String, nil]
              optional :original_index, String, api_name: :originalIndex

              # @!method initialize(bearing: nil, distance: nil, location: nil, name: nil, original_index: nil)
              #   Some parameter documentations has been truncated, see
              #   {NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data::SnappedPoint}
              #   for more details.
              #
              #   @param bearing [String] The bearing angle of the snapped point from the original tracked location, in ra
              #
              #   @param distance [Float] The distance of the snapped point from the original tracked location, in meters.
              #
              #   @param location [NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data::SnappedPoint::Location] The latitude and longitude coordinates of the snapped point.
              #
              #   @param name [String] The name of the street or road of the snapped point.
              #
              #   @param original_index [String] The index of the tracked location to which this snapped point corresponds to.

              # @see NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data::SnappedPoint#location
              class Location < NextbillionSDK::Internal::Type::BaseModel
                # @!attribute lat
                #   Latitude of the snapped point.
                #
                #   @return [Float, nil]
                optional :lat, Float

                # @!attribute lon
                #   Longitude of the snapped point.
                #
                #   @return [Float, nil]
                optional :lon, Float

                # @!method initialize(lat: nil, lon: nil)
                #   The latitude and longitude coordinates of the snapped point.
                #
                #   @param lat [Float] Latitude of the snapped point.
                #
                #   @param lon [Float] Longitude of the snapped point.
              end
            end
          end
        end
      end
    end
  end
end
