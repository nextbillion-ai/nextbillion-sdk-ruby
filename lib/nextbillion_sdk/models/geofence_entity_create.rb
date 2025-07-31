# frozen_string_literal: true

module NextbillionSDK
  module Models
    class GeofenceEntityCreate < NextbillionSDK::Internal::Type::BaseModel
      # @!attribute type
      #   Specify the type of the geofence that is being created.
      #
      #   @return [Symbol, NextbillionSDK::Models::GeofenceEntityCreate::Type]
      required :type, enum: -> { NextbillionSDK::GeofenceEntityCreate::Type }

      # @!attribute circle
      #   Provide the details to create a circular geofence. Please note that this object
      #   is mandatory when `type` is `circle`. When the `type` is not `circle`, the
      #   properties of this object will be ignored while creating the geofence.
      #
      #   @return [NextbillionSDK::Models::GeofenceEntityCreate::Circle, nil]
      optional :circle, -> { NextbillionSDK::GeofenceEntityCreate::Circle }

      # @!attribute custom_id
      #   Set an unique ID for the new geofence. If not provided, an ID will be
      #   automatically generated in UUID format. A valid `custom_id` can contain letters,
      #   numbers, "-", & "\_" only.
      #
      #   Please note that the ID of a geofence can not be changed once it is created.
      #
      #   @return [String, nil]
      optional :custom_id, String

      # @!attribute isochrone
      #   Provide the details to create an isochrone based geofence. Use this object when
      #   `type` is `isochrone`. When the `type` is not `isochrone`, the properties of
      #   this object will be ignored while creating the geofence.
      #
      #   @return [NextbillionSDK::Models::GeofenceEntityCreate::Isochrone, nil]
      optional :isochrone, -> { NextbillionSDK::GeofenceEntityCreate::Isochrone }

      # @!attribute meta_data
      #   Metadata of the geofence. Use this field to define custom attributes that
      #   provide more context and information about the geofence being created like
      #   country, group ID etc.
      #
      #   The data being added should be in valid JSON object format (i.e. `key` and
      #   `value` pairs). Max size allowed for the object is 65kb.
      #
      #   @return [Object, nil]
      optional :meta_data, NextbillionSDK::Internal::Type::Unknown

      # @!attribute name
      #   Name of the geofence. Use this field to assign a meaningful, custom name to the
      #   geofence being created.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute polygon
      #   Provide the details to create a custom polygon type of geofence. Please note
      #   that this object is mandatory when `type` is `polygon`. When the `type` is not
      #   `polygon`, the properties of this object will be ignored while creating the
      #   geofence.
      #
      #   Self-intersecting polygons or polygons containing other polygons are invalid and
      #   will be removed while processing the request.
      #
      #   Area of the polygon should be less than 2000 km<sup>2</sup>.
      #
      #   @return [NextbillionSDK::Models::GeofenceEntityCreate::Polygon, nil]
      optional :polygon, -> { NextbillionSDK::GeofenceEntityCreate::Polygon }

      # @!attribute tags
      #   An array of strings to associate multiple tags to the geofence. `tags` can be
      #   used to search or filter geofences (using `Get Geofence List` method).
      #
      #   Create valid `tags` using a string consisting of alphanumeric characters (A-Z,
      #   a-z, 0-9) along with the underscore ('\_') and hyphen ('-') symbols.
      #
      #   @return [Array<String>, nil]
      optional :tags, NextbillionSDK::Internal::Type::ArrayOf[String]

      # @!method initialize(type:, circle: nil, custom_id: nil, isochrone: nil, meta_data: nil, name: nil, polygon: nil, tags: nil)
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::GeofenceEntityCreate} for more details.
      #
      #   @param type [Symbol, NextbillionSDK::Models::GeofenceEntityCreate::Type] Specify the type of the geofence that is being created.
      #
      #   @param circle [NextbillionSDK::Models::GeofenceEntityCreate::Circle] Provide the details to create a circular geofence. Please note that this object
      #
      #   @param custom_id [String] Set an unique ID for the new geofence. If not provided, an ID will be automatica
      #
      #   @param isochrone [NextbillionSDK::Models::GeofenceEntityCreate::Isochrone] Provide the details to create an isochrone based geofence. Use this object when
      #
      #   @param meta_data [Object] Metadata of the geofence. Use this field to define custom attributes that provid
      #
      #   @param name [String] Name of the geofence. Use this field to assign a meaningful, custom name to the
      #
      #   @param polygon [NextbillionSDK::Models::GeofenceEntityCreate::Polygon] Provide the details to create a custom polygon type of geofence. Please note tha
      #
      #   @param tags [Array<String>] An array of strings to associate multiple tags to the geofence. `tags` can be us

      # Specify the type of the geofence that is being created.
      #
      # @see NextbillionSDK::Models::GeofenceEntityCreate#type
      module Type
        extend NextbillionSDK::Internal::Type::Enum

        CIRCLE = :"`circle`"
        POLYGON = :"`polygon`"
        ISOCHRONE = :"`isochrone`"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see NextbillionSDK::Models::GeofenceEntityCreate#circle
      class Circle < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute center
        #   Coordinate of the location which will act as the center of a circular geofence.
        #
        #   @return [NextbillionSDK::Models::GeofenceEntityCreate::Circle::Center]
        required :center, -> { NextbillionSDK::GeofenceEntityCreate::Circle::Center }

        # @!attribute radius
        #   Radius of the circular geofence, in meters. Maximum value allowed is 50000
        #   meters.
        #
        #   @return [Float]
        required :radius, Float

        # @!method initialize(center:, radius:)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::GeofenceEntityCreate::Circle} for more details.
        #
        #   Provide the details to create a circular geofence. Please note that this object
        #   is mandatory when `type` is `circle`. When the `type` is not `circle`, the
        #   properties of this object will be ignored while creating the geofence.
        #
        #   @param center [NextbillionSDK::Models::GeofenceEntityCreate::Circle::Center] Coordinate of the location which will act as the center of a circular geofence.
        #
        #   @param radius [Float] Radius of the circular geofence, in meters. Maximum value allowed is 50000 meter

        # @see NextbillionSDK::Models::GeofenceEntityCreate::Circle#center
        class Center < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute lat
          #   Latitude of the `center` location.
          #
          #   @return [Float]
          required :lat, Float

          # @!attribute lon
          #   Longitude of the `center` location.
          #
          #   @return [Float]
          required :lon, Float

          # @!method initialize(lat:, lon:)
          #   Coordinate of the location which will act as the center of a circular geofence.
          #
          #   @param lat [Float] Latitude of the `center` location.
          #
          #   @param lon [Float] Longitude of the `center` location.
        end
      end

      # @see NextbillionSDK::Models::GeofenceEntityCreate#isochrone
      class Isochrone < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute coordinates
        #   Coordinates of the location, in [latitude,longitude] format, which would act as
        #   the starting point for identifying the isochrone polygon or the boundary of
        #   reachable area. This parameter is mandatory when `type` is `isochrone`.
        #
        #   @return [String]
        required :coordinates, String

        # @!attribute contours_meter
        #   The distance, in meters, for which an isochrone polygon needs to be determined.
        #   When provided, the API would create a geofence representing the area that can be
        #   reached after driving the given number of meters starting from the point
        #   specified in `coordinates`.
        #
        #   The maximum distance that can be specified is 60000 meters (60km).
        #
        #   At least one of `contours_meter` or `contours_minute` is mandatory when `type`
        #   is `isochrone`.
        #
        #   @return [Integer, nil]
        optional :contours_meter, Integer

        # @!attribute contours_minute
        #   The duration, in minutes, for which an isochrone polygon needs to be determined.
        #   When provided, the API would create a geofence representing the area that can be
        #   reached after driving for the given number of minutes starting from the point
        #   specified in `coordinates`.
        #
        #   The maximum duration that can be specified is 40 minutes.
        #
        #   At least one of `contours_meter` or `contours_minute` is mandatory when `type`
        #   is `isochrone`.
        #
        #   @return [Integer, nil]
        optional :contours_minute, Integer

        # @!attribute denoise
        #   A floating point value from 0.0 to 1.0 that can be used to remove smaller
        #   contours. A value of 1.0 will only return the largest contour for a given value.
        #   A value of 0.5 drops any contours that are less than half the area of the
        #   largest contour in the set of contours for that same value.
        #
        #   @return [Float, nil]
        optional :denoise, Float

        # @!attribute departure_time
        #   A UNIX epoch timestamp in seconds format that can be used to set the departure
        #   time. The isochrone boundary will be determined based on the typical traffic
        #   conditions at the given time. If no input is provided for this parameter then
        #   the traffic conditions at the time of making the request are considered
        #
        #   @return [Integer, nil]
        optional :departure_time, Integer

        # @!attribute mode
        #   Set which driving mode the service should use to determine the isochrone line.
        #
        #   For example, if you use `car`, the API will return an isochrone polygon that a
        #   car can cover within the specified time or after driving the specified distance.
        #   Using `truck` will return an isochrone that a truck can reach after taking into
        #   account appropriate truck routing restrictions.
        #
        #   @return [Symbol, NextbillionSDK::Models::GeofenceEntityCreate::Isochrone::Mode, nil]
        optional :mode, enum: -> { NextbillionSDK::GeofenceEntityCreate::Isochrone::Mode }

        # @!method initialize(coordinates:, contours_meter: nil, contours_minute: nil, denoise: nil, departure_time: nil, mode: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::GeofenceEntityCreate::Isochrone} for more details.
        #
        #   Provide the details to create an isochrone based geofence. Use this object when
        #   `type` is `isochrone`. When the `type` is not `isochrone`, the properties of
        #   this object will be ignored while creating the geofence.
        #
        #   @param coordinates [String] Coordinates of the location, in [latitude,longitude] format, which would act as
        #
        #   @param contours_meter [Integer] The distance, in meters, for which an isochrone polygon needs to be determined.
        #
        #   @param contours_minute [Integer] The duration, in minutes, for which an isochrone polygon needs to be determined.
        #
        #   @param denoise [Float] A floating point value from 0.0 to 1.0 that can be used to remove smaller contou
        #
        #   @param departure_time [Integer] A UNIX epoch timestamp in seconds format that can be used to set the departure t
        #
        #   @param mode [Symbol, NextbillionSDK::Models::GeofenceEntityCreate::Isochrone::Mode] Set which driving mode the service should use to determine the isochrone line.

        # Set which driving mode the service should use to determine the isochrone line.
        #
        # For example, if you use `car`, the API will return an isochrone polygon that a
        # car can cover within the specified time or after driving the specified distance.
        # Using `truck` will return an isochrone that a truck can reach after taking into
        # account appropriate truck routing restrictions.
        #
        # @see NextbillionSDK::Models::GeofenceEntityCreate::Isochrone#mode
        module Mode
          extend NextbillionSDK::Internal::Type::Enum

          CAR = :"`car`"
          TRUCK = :"`truck`"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see NextbillionSDK::Models::GeofenceEntityCreate#polygon
      class Polygon < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute geojson
        #   An object to collect geoJSON details of the geofence. The contents of this
        #   object follow the
        #   [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
        #
        #   @return [NextbillionSDK::Models::GeofenceEntityCreate::Polygon::Geojson]
        required :geojson, -> { NextbillionSDK::GeofenceEntityCreate::Polygon::Geojson }

        # @!method initialize(geojson:)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::GeofenceEntityCreate::Polygon} for more details.
        #
        #   Provide the details to create a custom polygon type of geofence. Please note
        #   that this object is mandatory when `type` is `polygon`. When the `type` is not
        #   `polygon`, the properties of this object will be ignored while creating the
        #   geofence.
        #
        #   Self-intersecting polygons or polygons containing other polygons are invalid and
        #   will be removed while processing the request.
        #
        #   Area of the polygon should be less than 2000 km<sup>2</sup>.
        #
        #   @param geojson [NextbillionSDK::Models::GeofenceEntityCreate::Polygon::Geojson] An object to collect geoJSON details of the geofence. The contents of this objec

        # @see NextbillionSDK::Models::GeofenceEntityCreate::Polygon#geojson
        class Geojson < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute coordinates
          #   An array of coordinates in the [longitude, latitude] format, representing the
          #   geofence boundary.
          #
          #   @return [Array<Array<Float>>]
          required :coordinates,
                   NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Internal::Type::ArrayOf[Float]]

          # @!attribute type
          #   Type of the geoJSON geometry. Should always be `Polygon`.
          #
          #   @return [String]
          required :type, String

          # @!method initialize(coordinates:, type:)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::GeofenceEntityCreate::Polygon::Geojson} for more
          #   details.
          #
          #   An object to collect geoJSON details of the geofence. The contents of this
          #   object follow the
          #   [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
          #
          #   @param coordinates [Array<Array<Float>>] An array of coordinates in the [longitude, latitude] format, representing the ge
          #
          #   @param type [String] Type of the geoJSON geometry. Should always be `Polygon`.
        end
      end
    end
  end
end
