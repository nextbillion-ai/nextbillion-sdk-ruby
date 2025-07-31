# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::Geofence#update
    class GeofenceUpdateParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute circle
      #   Use this object to update details of a circular geofence. Please note that this
      #   object is mandatory only when `type` is `circle`. When the `type` is not
      #   `circle`, the properties of this object will be ignored while creating the
      #   geofence.
      #
      #   @return [NextbillionSDK::Models::GeofenceUpdateParams::Circle, nil]
      optional :circle, -> { NextbillionSDK::GeofenceUpdateParams::Circle }

      # @!attribute isochrone
      #   Use this object to update details of an isochrone based geofence. Please note
      #   that this object is mandatory only when `type` is `isochrone`. When the `type`
      #   is not `isochrone`, the properties of this object will be ignored while creating
      #   the geofence.
      #
      #   @return [NextbillionSDK::Models::GeofenceUpdateParams::Isochrone, nil]
      optional :isochrone, -> { NextbillionSDK::GeofenceUpdateParams::Isochrone }

      # @!attribute meta_data
      #   Updated the `meta_data` associated with a geofence. Use this field to define
      #   custom attributes that provide more context and information about the geofence
      #   being updated like country, group ID etc.
      #
      #   The data being added should be in valid JSON object format (i.e. `key` and
      #   `value` pairs). Max size allowed for the object is 65kb.
      #
      #   @return [Object, nil]
      optional :meta_data, NextbillionSDK::Internal::Type::Unknown

      # @!attribute name
      #   Use this parameter to update the `name` of a geofence. Users can assign
      #   meaningful custom names to their geofences.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute polygon
      #   Use this object to update details of a custom polygon geofence. Please note that
      #   this object is mandatory only when `type` is `polygon`. When the `type` is not
      #   `polygon`, the properties of this object will be ignored while creating the
      #   geofence.
      #
      #   Self-intersecting polygons or polygons containing other polygons are invalid and
      #   will be removed while processing the request.
      #
      #   Area of the polygon should be less than 2000 km<sup>2</sup>.
      #
      #   @return [NextbillionSDK::Models::GeofenceUpdateParams::Polygon, nil]
      optional :polygon, -> { NextbillionSDK::GeofenceUpdateParams::Polygon }

      # @!attribute tags
      #   Use this parameter to add/modify one or multiple `tags` of a geofence. `tags`
      #   can be used to search or filter geofences (using `Get Geofence List` method).
      #
      #   Valid values for updating `tags` consist of alphanumeric characters (A-Z, a-z,
      #   0-9) along with the underscore ('\_') and hyphen ('-') symbols.
      #
      #   @return [Array<String>, nil]
      optional :tags, NextbillionSDK::Internal::Type::ArrayOf[String]

      # @!attribute type
      #   Use this parameter to update the `type` of a geofence. Please note that you will
      #   need to provide required details for creating a geofence of the new `type`.
      #   Check other parameters of this method to know more.
      #
      #   @return [Symbol, NextbillionSDK::Models::GeofenceUpdateParams::Type, nil]
      optional :type, enum: -> { NextbillionSDK::GeofenceUpdateParams::Type }

      # @!method initialize(key:, circle: nil, isochrone: nil, meta_data: nil, name: nil, polygon: nil, tags: nil, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::GeofenceUpdateParams} for more details.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param circle [NextbillionSDK::Models::GeofenceUpdateParams::Circle] Use this object to update details of a circular geofence. Please note that this
      #
      #   @param isochrone [NextbillionSDK::Models::GeofenceUpdateParams::Isochrone] Use this object to update details of an isochrone based geofence. Please note th
      #
      #   @param meta_data [Object] Updated the `meta_data` associated with a geofence. Use this field to define cus
      #
      #   @param name [String] Use this parameter to update the `name` of a geofence. Users can assign meaningf
      #
      #   @param polygon [NextbillionSDK::Models::GeofenceUpdateParams::Polygon] Use this object to update details of a custom polygon geofence. Please note that
      #
      #   @param tags [Array<String>] Use this parameter to add/modify one or multiple `tags` of a geofence. `tags` ca
      #
      #   @param type [Symbol, NextbillionSDK::Models::GeofenceUpdateParams::Type] Use this parameter to update the `type` of a geofence. Please note that you will
      #
      #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]

      class Circle < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute center
        #   Use this parameter to update the coordinate of the location which will act as
        #   the center of a circular geofence.
        #
        #   @return [NextbillionSDK::Models::GeofenceUpdateParams::Circle::Center]
        required :center, -> { NextbillionSDK::GeofenceUpdateParams::Circle::Center }

        # @!attribute radius
        #   Use this parameter to update the radius of the circular geofence, in meters.
        #   Maximum value allowed is 50000 meters.
        #
        #   @return [Float, nil]
        optional :radius, Float

        # @!method initialize(center:, radius: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::GeofenceUpdateParams::Circle} for more details.
        #
        #   Use this object to update details of a circular geofence. Please note that this
        #   object is mandatory only when `type` is `circle`. When the `type` is not
        #   `circle`, the properties of this object will be ignored while creating the
        #   geofence.
        #
        #   @param center [NextbillionSDK::Models::GeofenceUpdateParams::Circle::Center] Use this parameter to update the coordinate of the location which will act as th
        #
        #   @param radius [Float] Use this parameter to update the radius of the circular geofence, in meters. Max

        # @see NextbillionSDK::Models::GeofenceUpdateParams::Circle#center
        class Center < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute lat
          #   Latitude of the `center` location.
          #
          #   @return [Float, nil]
          optional :lat, Float

          # @!attribute lon
          #   Longitude of the `center` location.
          #
          #   @return [Float, nil]
          optional :lon, Float

          # @!method initialize(lat: nil, lon: nil)
          #   Use this parameter to update the coordinate of the location which will act as
          #   the center of a circular geofence.
          #
          #   @param lat [Float] Latitude of the `center` location.
          #
          #   @param lon [Float] Longitude of the `center` location.
        end
      end

      class Isochrone < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute contours_meter
        #   Use this parameter to update the distance, in meters, for which an isochrone
        #   polygon needs to be determined. When provided, the API would create a geofence
        #   representing the area that can be reached after driving the given number of
        #   meters starting from the point specified in `coordinates`.
        #
        #   The maximum distance that can be specified is 60000 meters (60km).
        #
        #   At least one of `contours_meter` or `contours_minute` is mandatory when `type`
        #   is `isochrone`.
        #
        #   @return [Integer, nil]
        optional :contours_meter, Integer

        # @!attribute contours_minute
        #   Use this parameter to update the duration, in minutes, for which an isochrone
        #   polygon needs to be determined. When provided, the API would create a geofence
        #   representing the area that can be reached after driving for the given number of
        #   minutes starting from the point specified in `coordinates`.
        #
        #   The maximum duration that can be specified is 40 minutes.
        #
        #   At least one of `contours_meter` or `contours_minute` is mandatory when `type`
        #   is `isochrone`.
        #
        #   @return [Integer, nil]
        optional :contours_minute, Integer

        # @!attribute coordinates
        #   Use this parameter to update the coordinates of the location, in
        #   [latitude,longitude] format, which would act as the starting point for
        #   identifying the isochrone polygon or the boundary of reachable area.
        #
        #   @return [String, nil]
        optional :coordinates, String

        # @!attribute denoise
        #   A floating point value from 0.0 to 1.0 that can be used to remove smaller
        #   contours. A value of 1.0 will only return the largest contour for a given value.
        #   A value of 0.5 drops any contours that are less than half the area of the
        #   largest contour in the set of contours for that same value.
        #
        #   Use this parameter to update the denoise value of the isochrone geofence.
        #
        #   @return [Float, nil]
        optional :denoise, Float

        # @!attribute departure_time
        #   Use this parameter to update the `departure_time`, expressed as UNIX epoch
        #   timestamp in seconds. The isochrone boundary will be determined based on the
        #   typical traffic conditions at the given time.
        #
        #   If no input is provided for this parameter then, the traffic conditions at the
        #   time of making the request are considered by default. Please note that because
        #   of this behavior the geofence boundaries may change even if the `departure_time`
        #   was not specifically provided at the time of updating the geofence.
        #
        #   @return [Integer, nil]
        optional :departure_time, Integer

        # @!attribute mode
        #   Use this parameter to update the driving mode that the service should use to
        #   determine the isochrone line. For example, if you use `car`, the API will return
        #   an isochrone polygon that a car can cover within the specified time or after
        #   driving the specified distance. Using `truck` will return an isochrone that a
        #   truck can reach after taking into account appropriate truck routing
        #   restrictions.
        #
        #   @return [String, nil]
        optional :mode, String

        # @!method initialize(contours_meter: nil, contours_minute: nil, coordinates: nil, denoise: nil, departure_time: nil, mode: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::GeofenceUpdateParams::Isochrone} for more details.
        #
        #   Use this object to update details of an isochrone based geofence. Please note
        #   that this object is mandatory only when `type` is `isochrone`. When the `type`
        #   is not `isochrone`, the properties of this object will be ignored while creating
        #   the geofence.
        #
        #   @param contours_meter [Integer] Use this parameter to update the distance, in meters, for which an isochrone pol
        #
        #   @param contours_minute [Integer] Use this parameter to update the duration, in minutes, for which an isochrone po
        #
        #   @param coordinates [String] Use this parameter to update the coordinates of the location, in [latitude,longi
        #
        #   @param denoise [Float] A floating point value from 0.0 to 1.0 that can be used to remove smaller contou
        #
        #   @param departure_time [Integer] Use this parameter to update the `departure_time`, expressed as UNIX epoch times
        #
        #   @param mode [String] Use this parameter to update the driving mode that the service should use to det
      end

      class Polygon < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute geojson
        #   An object to collect geoJSON details of the `polygon` geofence. The contents of
        #   this object follow the
        #   [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
        #
        #   @return [NextbillionSDK::Models::GeofenceUpdateParams::Polygon::Geojson, nil]
        optional :geojson, -> { NextbillionSDK::GeofenceUpdateParams::Polygon::Geojson }

        # @!method initialize(geojson: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::GeofenceUpdateParams::Polygon} for more details.
        #
        #   Use this object to update details of a custom polygon geofence. Please note that
        #   this object is mandatory only when `type` is `polygon`. When the `type` is not
        #   `polygon`, the properties of this object will be ignored while creating the
        #   geofence.
        #
        #   Self-intersecting polygons or polygons containing other polygons are invalid and
        #   will be removed while processing the request.
        #
        #   Area of the polygon should be less than 2000 km<sup>2</sup>.
        #
        #   @param geojson [NextbillionSDK::Models::GeofenceUpdateParams::Polygon::Geojson] An object to collect geoJSON details of the `polygon` geofence. The contents of

        # @see NextbillionSDK::Models::GeofenceUpdateParams::Polygon#geojson
        class Geojson < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute geometry
          #   An array of coordinates in the [longitude, latitude] format, representing the
          #   geofence boundary.
          #
          #   @return [Array<Array<Float>>, nil]
          optional :geometry,
                   NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Internal::Type::ArrayOf[Float]]

          # @!attribute type
          #   Type of the geoJSON geometry. Should always be `Polygon`.
          #
          #   @return [String, nil]
          optional :type, String

          # @!method initialize(geometry: nil, type: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::GeofenceUpdateParams::Polygon::Geojson} for more
          #   details.
          #
          #   An object to collect geoJSON details of the `polygon` geofence. The contents of
          #   this object follow the
          #   [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
          #
          #   @param geometry [Array<Array<Float>>] An array of coordinates in the [longitude, latitude] format, representing the ge
          #
          #   @param type [String] Type of the geoJSON geometry. Should always be `Polygon`.
        end
      end

      # Use this parameter to update the `type` of a geofence. Please note that you will
      # need to provide required details for creating a geofence of the new `type`.
      # Check other parameters of this method to know more.
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
