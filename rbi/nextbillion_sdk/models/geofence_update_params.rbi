# typed: strong

module NextbillionSDK
  module Models
    class GeofenceUpdateParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::GeofenceUpdateParams,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      # Use this object to update details of a circular geofence. Please note that this
      # object is mandatory only when `type` is `circle`. When the `type` is not
      # `circle`, the properties of this object will be ignored while creating the
      # geofence.
      sig { returns(T.nilable(NextbillionSDK::GeofenceUpdateParams::Circle)) }
      attr_reader :circle

      sig do
        params(
          circle: NextbillionSDK::GeofenceUpdateParams::Circle::OrHash
        ).void
      end
      attr_writer :circle

      # Use this object to update details of an isochrone based geofence. Please note
      # that this object is mandatory only when `type` is `isochrone`. When the `type`
      # is not `isochrone`, the properties of this object will be ignored while creating
      # the geofence.
      sig do
        returns(T.nilable(NextbillionSDK::GeofenceUpdateParams::Isochrone))
      end
      attr_reader :isochrone

      sig do
        params(
          isochrone: NextbillionSDK::GeofenceUpdateParams::Isochrone::OrHash
        ).void
      end
      attr_writer :isochrone

      # Updated the `meta_data` associated with a geofence. Use this field to define
      # custom attributes that provide more context and information about the geofence
      # being updated like country, group ID etc.
      #
      # The data being added should be in valid JSON object format (i.e. `key` and
      # `value` pairs). Max size allowed for the object is 65kb.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :meta_data

      sig { params(meta_data: T.anything).void }
      attr_writer :meta_data

      # Use this parameter to update the `name` of a geofence. Users can assign
      # meaningful custom names to their geofences.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Use this object to update details of a custom polygon geofence. Please note that
      # this object is mandatory only when `type` is `polygon`. When the `type` is not
      # `polygon`, the properties of this object will be ignored while creating the
      # geofence.
      #
      # Self-intersecting polygons or polygons containing other polygons are invalid and
      # will be removed while processing the request.
      #
      # Area of the polygon should be less than 2000 km<sup>2</sup>.
      sig { returns(T.nilable(NextbillionSDK::GeofenceUpdateParams::Polygon)) }
      attr_reader :polygon

      sig do
        params(
          polygon: NextbillionSDK::GeofenceUpdateParams::Polygon::OrHash
        ).void
      end
      attr_writer :polygon

      # Use this parameter to add/modify one or multiple `tags` of a geofence. `tags`
      # can be used to search or filter geofences (using `Get Geofence List` method).
      #
      # Valid values for updating `tags` consist of alphanumeric characters (A-Z, a-z,
      # 0-9) along with the underscore ('\_') and hyphen ('-') symbols.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # Use this parameter to update the `type` of a geofence. Please note that you will
      # need to provide required details for creating a geofence of the new `type`.
      # Check other parameters of this method to know more.
      sig do
        returns(T.nilable(NextbillionSDK::GeofenceUpdateParams::Type::OrSymbol))
      end
      attr_reader :type

      sig do
        params(type: NextbillionSDK::GeofenceUpdateParams::Type::OrSymbol).void
      end
      attr_writer :type

      sig do
        params(
          key: String,
          circle: NextbillionSDK::GeofenceUpdateParams::Circle::OrHash,
          isochrone: NextbillionSDK::GeofenceUpdateParams::Isochrone::OrHash,
          meta_data: T.anything,
          name: String,
          polygon: NextbillionSDK::GeofenceUpdateParams::Polygon::OrHash,
          tags: T::Array[String],
          type: NextbillionSDK::GeofenceUpdateParams::Type::OrSymbol,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # Use this object to update details of a circular geofence. Please note that this
        # object is mandatory only when `type` is `circle`. When the `type` is not
        # `circle`, the properties of this object will be ignored while creating the
        # geofence.
        circle: nil,
        # Use this object to update details of an isochrone based geofence. Please note
        # that this object is mandatory only when `type` is `isochrone`. When the `type`
        # is not `isochrone`, the properties of this object will be ignored while creating
        # the geofence.
        isochrone: nil,
        # Updated the `meta_data` associated with a geofence. Use this field to define
        # custom attributes that provide more context and information about the geofence
        # being updated like country, group ID etc.
        #
        # The data being added should be in valid JSON object format (i.e. `key` and
        # `value` pairs). Max size allowed for the object is 65kb.
        meta_data: nil,
        # Use this parameter to update the `name` of a geofence. Users can assign
        # meaningful custom names to their geofences.
        name: nil,
        # Use this object to update details of a custom polygon geofence. Please note that
        # this object is mandatory only when `type` is `polygon`. When the `type` is not
        # `polygon`, the properties of this object will be ignored while creating the
        # geofence.
        #
        # Self-intersecting polygons or polygons containing other polygons are invalid and
        # will be removed while processing the request.
        #
        # Area of the polygon should be less than 2000 km<sup>2</sup>.
        polygon: nil,
        # Use this parameter to add/modify one or multiple `tags` of a geofence. `tags`
        # can be used to search or filter geofences (using `Get Geofence List` method).
        #
        # Valid values for updating `tags` consist of alphanumeric characters (A-Z, a-z,
        # 0-9) along with the underscore ('\_') and hyphen ('-') symbols.
        tags: nil,
        # Use this parameter to update the `type` of a geofence. Please note that you will
        # need to provide required details for creating a geofence of the new `type`.
        # Check other parameters of this method to know more.
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            key: String,
            circle: NextbillionSDK::GeofenceUpdateParams::Circle,
            isochrone: NextbillionSDK::GeofenceUpdateParams::Isochrone,
            meta_data: T.anything,
            name: String,
            polygon: NextbillionSDK::GeofenceUpdateParams::Polygon,
            tags: T::Array[String],
            type: NextbillionSDK::GeofenceUpdateParams::Type::OrSymbol,
            request_options: NextbillionSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Circle < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::GeofenceUpdateParams::Circle,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # Use this parameter to update the coordinate of the location which will act as
        # the center of a circular geofence.
        sig { returns(NextbillionSDK::GeofenceUpdateParams::Circle::Center) }
        attr_reader :center

        sig do
          params(
            center: NextbillionSDK::GeofenceUpdateParams::Circle::Center::OrHash
          ).void
        end
        attr_writer :center

        # Use this parameter to update the radius of the circular geofence, in meters.
        # Maximum value allowed is 50000 meters.
        sig { returns(T.nilable(Float)) }
        attr_reader :radius

        sig { params(radius: Float).void }
        attr_writer :radius

        # Use this object to update details of a circular geofence. Please note that this
        # object is mandatory only when `type` is `circle`. When the `type` is not
        # `circle`, the properties of this object will be ignored while creating the
        # geofence.
        sig do
          params(
            center:
              NextbillionSDK::GeofenceUpdateParams::Circle::Center::OrHash,
            radius: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Use this parameter to update the coordinate of the location which will act as
          # the center of a circular geofence.
          center:,
          # Use this parameter to update the radius of the circular geofence, in meters.
          # Maximum value allowed is 50000 meters.
          radius: nil
        )
        end

        sig do
          override.returns(
            {
              center: NextbillionSDK::GeofenceUpdateParams::Circle::Center,
              radius: Float
            }
          )
        end
        def to_hash
        end

        class Center < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::GeofenceUpdateParams::Circle::Center,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # Latitude of the `center` location.
          sig { returns(T.nilable(Float)) }
          attr_reader :lat

          sig { params(lat: Float).void }
          attr_writer :lat

          # Longitude of the `center` location.
          sig { returns(T.nilable(Float)) }
          attr_reader :lon

          sig { params(lon: Float).void }
          attr_writer :lon

          # Use this parameter to update the coordinate of the location which will act as
          # the center of a circular geofence.
          sig { params(lat: Float, lon: Float).returns(T.attached_class) }
          def self.new(
            # Latitude of the `center` location.
            lat: nil,
            # Longitude of the `center` location.
            lon: nil
          )
          end

          sig { override.returns({ lat: Float, lon: Float }) }
          def to_hash
          end
        end
      end

      class Isochrone < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::GeofenceUpdateParams::Isochrone,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # Use this parameter to update the distance, in meters, for which an isochrone
        # polygon needs to be determined. When provided, the API would create a geofence
        # representing the area that can be reached after driving the given number of
        # meters starting from the point specified in `coordinates`.
        #
        # The maximum distance that can be specified is 60000 meters (60km).
        #
        # At least one of `contours_meter` or `contours_minute` is mandatory when `type`
        # is `isochrone`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :contours_meter

        sig { params(contours_meter: Integer).void }
        attr_writer :contours_meter

        # Use this parameter to update the duration, in minutes, for which an isochrone
        # polygon needs to be determined. When provided, the API would create a geofence
        # representing the area that can be reached after driving for the given number of
        # minutes starting from the point specified in `coordinates`.
        #
        # The maximum duration that can be specified is 40 minutes.
        #
        # At least one of `contours_meter` or `contours_minute` is mandatory when `type`
        # is `isochrone`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :contours_minute

        sig { params(contours_minute: Integer).void }
        attr_writer :contours_minute

        # Use this parameter to update the coordinates of the location, in
        # [latitude,longitude] format, which would act as the starting point for
        # identifying the isochrone polygon or the boundary of reachable area.
        sig { returns(T.nilable(String)) }
        attr_reader :coordinates

        sig { params(coordinates: String).void }
        attr_writer :coordinates

        # A floating point value from 0.0 to 1.0 that can be used to remove smaller
        # contours. A value of 1.0 will only return the largest contour for a given value.
        # A value of 0.5 drops any contours that are less than half the area of the
        # largest contour in the set of contours for that same value.
        #
        # Use this parameter to update the denoise value of the isochrone geofence.
        sig { returns(T.nilable(Float)) }
        attr_reader :denoise

        sig { params(denoise: Float).void }
        attr_writer :denoise

        # Use this parameter to update the `departure_time`, expressed as UNIX epoch
        # timestamp in seconds. The isochrone boundary will be determined based on the
        # typical traffic conditions at the given time.
        #
        # If no input is provided for this parameter then, the traffic conditions at the
        # time of making the request are considered by default. Please note that because
        # of this behavior the geofence boundaries may change even if the `departure_time`
        # was not specifically provided at the time of updating the geofence.
        sig { returns(T.nilable(Integer)) }
        attr_reader :departure_time

        sig { params(departure_time: Integer).void }
        attr_writer :departure_time

        # Use this parameter to update the driving mode that the service should use to
        # determine the isochrone line. For example, if you use `car`, the API will return
        # an isochrone polygon that a car can cover within the specified time or after
        # driving the specified distance. Using `truck` will return an isochrone that a
        # truck can reach after taking into account appropriate truck routing
        # restrictions.
        sig { returns(T.nilable(String)) }
        attr_reader :mode

        sig { params(mode: String).void }
        attr_writer :mode

        # Use this object to update details of an isochrone based geofence. Please note
        # that this object is mandatory only when `type` is `isochrone`. When the `type`
        # is not `isochrone`, the properties of this object will be ignored while creating
        # the geofence.
        sig do
          params(
            contours_meter: Integer,
            contours_minute: Integer,
            coordinates: String,
            denoise: Float,
            departure_time: Integer,
            mode: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Use this parameter to update the distance, in meters, for which an isochrone
          # polygon needs to be determined. When provided, the API would create a geofence
          # representing the area that can be reached after driving the given number of
          # meters starting from the point specified in `coordinates`.
          #
          # The maximum distance that can be specified is 60000 meters (60km).
          #
          # At least one of `contours_meter` or `contours_minute` is mandatory when `type`
          # is `isochrone`.
          contours_meter: nil,
          # Use this parameter to update the duration, in minutes, for which an isochrone
          # polygon needs to be determined. When provided, the API would create a geofence
          # representing the area that can be reached after driving for the given number of
          # minutes starting from the point specified in `coordinates`.
          #
          # The maximum duration that can be specified is 40 minutes.
          #
          # At least one of `contours_meter` or `contours_minute` is mandatory when `type`
          # is `isochrone`.
          contours_minute: nil,
          # Use this parameter to update the coordinates of the location, in
          # [latitude,longitude] format, which would act as the starting point for
          # identifying the isochrone polygon or the boundary of reachable area.
          coordinates: nil,
          # A floating point value from 0.0 to 1.0 that can be used to remove smaller
          # contours. A value of 1.0 will only return the largest contour for a given value.
          # A value of 0.5 drops any contours that are less than half the area of the
          # largest contour in the set of contours for that same value.
          #
          # Use this parameter to update the denoise value of the isochrone geofence.
          denoise: nil,
          # Use this parameter to update the `departure_time`, expressed as UNIX epoch
          # timestamp in seconds. The isochrone boundary will be determined based on the
          # typical traffic conditions at the given time.
          #
          # If no input is provided for this parameter then, the traffic conditions at the
          # time of making the request are considered by default. Please note that because
          # of this behavior the geofence boundaries may change even if the `departure_time`
          # was not specifically provided at the time of updating the geofence.
          departure_time: nil,
          # Use this parameter to update the driving mode that the service should use to
          # determine the isochrone line. For example, if you use `car`, the API will return
          # an isochrone polygon that a car can cover within the specified time or after
          # driving the specified distance. Using `truck` will return an isochrone that a
          # truck can reach after taking into account appropriate truck routing
          # restrictions.
          mode: nil
        )
        end

        sig do
          override.returns(
            {
              contours_meter: Integer,
              contours_minute: Integer,
              coordinates: String,
              denoise: Float,
              departure_time: Integer,
              mode: String
            }
          )
        end
        def to_hash
        end
      end

      class Polygon < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::GeofenceUpdateParams::Polygon,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # An object to collect geoJSON details of the `polygon` geofence. The contents of
        # this object follow the
        # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
        sig do
          returns(
            T.nilable(NextbillionSDK::GeofenceUpdateParams::Polygon::Geojson)
          )
        end
        attr_reader :geojson

        sig do
          params(
            geojson:
              NextbillionSDK::GeofenceUpdateParams::Polygon::Geojson::OrHash
          ).void
        end
        attr_writer :geojson

        # Use this object to update details of a custom polygon geofence. Please note that
        # this object is mandatory only when `type` is `polygon`. When the `type` is not
        # `polygon`, the properties of this object will be ignored while creating the
        # geofence.
        #
        # Self-intersecting polygons or polygons containing other polygons are invalid and
        # will be removed while processing the request.
        #
        # Area of the polygon should be less than 2000 km<sup>2</sup>.
        sig do
          params(
            geojson:
              NextbillionSDK::GeofenceUpdateParams::Polygon::Geojson::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # An object to collect geoJSON details of the `polygon` geofence. The contents of
          # this object follow the
          # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
          geojson: nil
        )
        end

        sig do
          override.returns(
            { geojson: NextbillionSDK::GeofenceUpdateParams::Polygon::Geojson }
          )
        end
        def to_hash
        end

        class Geojson < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::GeofenceUpdateParams::Polygon::Geojson,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # An array of coordinates in the [longitude, latitude] format, representing the
          # geofence boundary.
          sig { returns(T.nilable(T::Array[T::Array[Float]])) }
          attr_reader :geometry

          sig { params(geometry: T::Array[T::Array[Float]]).void }
          attr_writer :geometry

          # Type of the geoJSON geometry. Should always be `Polygon`.
          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          # An object to collect geoJSON details of the `polygon` geofence. The contents of
          # this object follow the
          # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
          sig do
            params(geometry: T::Array[T::Array[Float]], type: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # An array of coordinates in the [longitude, latitude] format, representing the
            # geofence boundary.
            geometry: nil,
            # Type of the geoJSON geometry. Should always be `Polygon`.
            type: nil
          )
          end

          sig do
            override.returns(
              { geometry: T::Array[T::Array[Float]], type: String }
            )
          end
          def to_hash
          end
        end
      end

      # Use this parameter to update the `type` of a geofence. Please note that you will
      # need to provide required details for creating a geofence of the new `type`.
      # Check other parameters of this method to know more.
      module Type
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, NextbillionSDK::GeofenceUpdateParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CIRCLE =
          T.let(
            :"`circle`",
            NextbillionSDK::GeofenceUpdateParams::Type::TaggedSymbol
          )
        POLYGON =
          T.let(
            :"`polygon`",
            NextbillionSDK::GeofenceUpdateParams::Type::TaggedSymbol
          )
        ISOCHRONE =
          T.let(
            :"`isochrone`",
            NextbillionSDK::GeofenceUpdateParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[NextbillionSDK::GeofenceUpdateParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
