# typed: strong

module NextbillionSDK
  module Models
    class GeofenceEntityCreate < NextbillionSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::GeofenceEntityCreate,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # Specify the type of the geofence that is being created.
      sig { returns(NextbillionSDK::GeofenceEntityCreate::Type::OrSymbol) }
      attr_accessor :type

      # Provide the details to create a circular geofence. Please note that this object
      # is mandatory when `type` is `circle`. When the `type` is not `circle`, the
      # properties of this object will be ignored while creating the geofence.
      sig { returns(T.nilable(NextbillionSDK::GeofenceEntityCreate::Circle)) }
      attr_reader :circle

      sig do
        params(
          circle: NextbillionSDK::GeofenceEntityCreate::Circle::OrHash
        ).void
      end
      attr_writer :circle

      # Set an unique ID for the new geofence. If not provided, an ID will be
      # automatically generated in UUID format. A valid `custom_id` can contain letters,
      # numbers, "-", & "\_" only.
      #
      # Please note that the ID of a geofence can not be changed once it is created.
      sig { returns(T.nilable(String)) }
      attr_reader :custom_id

      sig { params(custom_id: String).void }
      attr_writer :custom_id

      # Provide the details to create an isochrone based geofence. Use this object when
      # `type` is `isochrone`. When the `type` is not `isochrone`, the properties of
      # this object will be ignored while creating the geofence.
      sig do
        returns(T.nilable(NextbillionSDK::GeofenceEntityCreate::Isochrone))
      end
      attr_reader :isochrone

      sig do
        params(
          isochrone: NextbillionSDK::GeofenceEntityCreate::Isochrone::OrHash
        ).void
      end
      attr_writer :isochrone

      # Metadata of the geofence. Use this field to define custom attributes that
      # provide more context and information about the geofence being created like
      # country, group ID etc.
      #
      # The data being added should be in valid JSON object format (i.e. `key` and
      # `value` pairs). Max size allowed for the object is 65kb.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :meta_data

      sig { params(meta_data: T.anything).void }
      attr_writer :meta_data

      # Name of the geofence. Use this field to assign a meaningful, custom name to the
      # geofence being created.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Provide the details to create a custom polygon type of geofence. Please note
      # that this object is mandatory when `type` is `polygon`. When the `type` is not
      # `polygon`, the properties of this object will be ignored while creating the
      # geofence.
      #
      # Self-intersecting polygons or polygons containing other polygons are invalid and
      # will be removed while processing the request.
      #
      # Area of the polygon should be less than 2000 km<sup>2</sup>.
      sig { returns(T.nilable(NextbillionSDK::GeofenceEntityCreate::Polygon)) }
      attr_reader :polygon

      sig do
        params(
          polygon: NextbillionSDK::GeofenceEntityCreate::Polygon::OrHash
        ).void
      end
      attr_writer :polygon

      # An array of strings to associate multiple tags to the geofence. `tags` can be
      # used to search or filter geofences (using `Get Geofence List` method).
      #
      # Create valid `tags` using a string consisting of alphanumeric characters (A-Z,
      # a-z, 0-9) along with the underscore ('\_') and hyphen ('-') symbols.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      sig do
        params(
          type: NextbillionSDK::GeofenceEntityCreate::Type::OrSymbol,
          circle: NextbillionSDK::GeofenceEntityCreate::Circle::OrHash,
          custom_id: String,
          isochrone: NextbillionSDK::GeofenceEntityCreate::Isochrone::OrHash,
          meta_data: T.anything,
          name: String,
          polygon: NextbillionSDK::GeofenceEntityCreate::Polygon::OrHash,
          tags: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # Specify the type of the geofence that is being created.
        type:,
        # Provide the details to create a circular geofence. Please note that this object
        # is mandatory when `type` is `circle`. When the `type` is not `circle`, the
        # properties of this object will be ignored while creating the geofence.
        circle: nil,
        # Set an unique ID for the new geofence. If not provided, an ID will be
        # automatically generated in UUID format. A valid `custom_id` can contain letters,
        # numbers, "-", & "\_" only.
        #
        # Please note that the ID of a geofence can not be changed once it is created.
        custom_id: nil,
        # Provide the details to create an isochrone based geofence. Use this object when
        # `type` is `isochrone`. When the `type` is not `isochrone`, the properties of
        # this object will be ignored while creating the geofence.
        isochrone: nil,
        # Metadata of the geofence. Use this field to define custom attributes that
        # provide more context and information about the geofence being created like
        # country, group ID etc.
        #
        # The data being added should be in valid JSON object format (i.e. `key` and
        # `value` pairs). Max size allowed for the object is 65kb.
        meta_data: nil,
        # Name of the geofence. Use this field to assign a meaningful, custom name to the
        # geofence being created.
        name: nil,
        # Provide the details to create a custom polygon type of geofence. Please note
        # that this object is mandatory when `type` is `polygon`. When the `type` is not
        # `polygon`, the properties of this object will be ignored while creating the
        # geofence.
        #
        # Self-intersecting polygons or polygons containing other polygons are invalid and
        # will be removed while processing the request.
        #
        # Area of the polygon should be less than 2000 km<sup>2</sup>.
        polygon: nil,
        # An array of strings to associate multiple tags to the geofence. `tags` can be
        # used to search or filter geofences (using `Get Geofence List` method).
        #
        # Create valid `tags` using a string consisting of alphanumeric characters (A-Z,
        # a-z, 0-9) along with the underscore ('\_') and hyphen ('-') symbols.
        tags: nil
      )
      end

      sig do
        override.returns(
          {
            type: NextbillionSDK::GeofenceEntityCreate::Type::OrSymbol,
            circle: NextbillionSDK::GeofenceEntityCreate::Circle,
            custom_id: String,
            isochrone: NextbillionSDK::GeofenceEntityCreate::Isochrone,
            meta_data: T.anything,
            name: String,
            polygon: NextbillionSDK::GeofenceEntityCreate::Polygon,
            tags: T::Array[String]
          }
        )
      end
      def to_hash
      end

      # Specify the type of the geofence that is being created.
      module Type
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, NextbillionSDK::GeofenceEntityCreate::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CIRCLE =
          T.let(
            :"`circle`",
            NextbillionSDK::GeofenceEntityCreate::Type::TaggedSymbol
          )
        POLYGON =
          T.let(
            :"`polygon`",
            NextbillionSDK::GeofenceEntityCreate::Type::TaggedSymbol
          )
        ISOCHRONE =
          T.let(
            :"`isochrone`",
            NextbillionSDK::GeofenceEntityCreate::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[NextbillionSDK::GeofenceEntityCreate::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Circle < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::GeofenceEntityCreate::Circle,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # Coordinate of the location which will act as the center of a circular geofence.
        sig { returns(NextbillionSDK::GeofenceEntityCreate::Circle::Center) }
        attr_reader :center

        sig do
          params(
            center: NextbillionSDK::GeofenceEntityCreate::Circle::Center::OrHash
          ).void
        end
        attr_writer :center

        # Radius of the circular geofence, in meters. Maximum value allowed is 50000
        # meters.
        sig { returns(Float) }
        attr_accessor :radius

        # Provide the details to create a circular geofence. Please note that this object
        # is mandatory when `type` is `circle`. When the `type` is not `circle`, the
        # properties of this object will be ignored while creating the geofence.
        sig do
          params(
            center:
              NextbillionSDK::GeofenceEntityCreate::Circle::Center::OrHash,
            radius: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # Coordinate of the location which will act as the center of a circular geofence.
          center:,
          # Radius of the circular geofence, in meters. Maximum value allowed is 50000
          # meters.
          radius:
        )
        end

        sig do
          override.returns(
            {
              center: NextbillionSDK::GeofenceEntityCreate::Circle::Center,
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
                NextbillionSDK::GeofenceEntityCreate::Circle::Center,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # Latitude of the `center` location.
          sig { returns(Float) }
          attr_accessor :lat

          # Longitude of the `center` location.
          sig { returns(Float) }
          attr_accessor :lon

          # Coordinate of the location which will act as the center of a circular geofence.
          sig { params(lat: Float, lon: Float).returns(T.attached_class) }
          def self.new(
            # Latitude of the `center` location.
            lat:,
            # Longitude of the `center` location.
            lon:
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
              NextbillionSDK::GeofenceEntityCreate::Isochrone,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # Coordinates of the location, in [latitude,longitude] format, which would act as
        # the starting point for identifying the isochrone polygon or the boundary of
        # reachable area. This parameter is mandatory when `type` is `isochrone`.
        sig { returns(String) }
        attr_accessor :coordinates

        # The distance, in meters, for which an isochrone polygon needs to be determined.
        # When provided, the API would create a geofence representing the area that can be
        # reached after driving the given number of meters starting from the point
        # specified in `coordinates`.
        #
        # The maximum distance that can be specified is 60000 meters (60km).
        #
        # At least one of `contours_meter` or `contours_minute` is mandatory when `type`
        # is `isochrone`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :contours_meter

        sig { params(contours_meter: Integer).void }
        attr_writer :contours_meter

        # The duration, in minutes, for which an isochrone polygon needs to be determined.
        # When provided, the API would create a geofence representing the area that can be
        # reached after driving for the given number of minutes starting from the point
        # specified in `coordinates`.
        #
        # The maximum duration that can be specified is 40 minutes.
        #
        # At least one of `contours_meter` or `contours_minute` is mandatory when `type`
        # is `isochrone`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :contours_minute

        sig { params(contours_minute: Integer).void }
        attr_writer :contours_minute

        # A floating point value from 0.0 to 1.0 that can be used to remove smaller
        # contours. A value of 1.0 will only return the largest contour for a given value.
        # A value of 0.5 drops any contours that are less than half the area of the
        # largest contour in the set of contours for that same value.
        sig { returns(T.nilable(Float)) }
        attr_reader :denoise

        sig { params(denoise: Float).void }
        attr_writer :denoise

        # A UNIX epoch timestamp in seconds format that can be used to set the departure
        # time. The isochrone boundary will be determined based on the typical traffic
        # conditions at the given time. If no input is provided for this parameter then
        # the traffic conditions at the time of making the request are considered
        sig { returns(T.nilable(Integer)) }
        attr_reader :departure_time

        sig { params(departure_time: Integer).void }
        attr_writer :departure_time

        # Set which driving mode the service should use to determine the isochrone line.
        #
        # For example, if you use `car`, the API will return an isochrone polygon that a
        # car can cover within the specified time or after driving the specified distance.
        # Using `truck` will return an isochrone that a truck can reach after taking into
        # account appropriate truck routing restrictions.
        sig do
          returns(
            T.nilable(
              NextbillionSDK::GeofenceEntityCreate::Isochrone::Mode::OrSymbol
            )
          )
        end
        attr_reader :mode

        sig do
          params(
            mode:
              NextbillionSDK::GeofenceEntityCreate::Isochrone::Mode::OrSymbol
          ).void
        end
        attr_writer :mode

        # Provide the details to create an isochrone based geofence. Use this object when
        # `type` is `isochrone`. When the `type` is not `isochrone`, the properties of
        # this object will be ignored while creating the geofence.
        sig do
          params(
            coordinates: String,
            contours_meter: Integer,
            contours_minute: Integer,
            denoise: Float,
            departure_time: Integer,
            mode:
              NextbillionSDK::GeofenceEntityCreate::Isochrone::Mode::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Coordinates of the location, in [latitude,longitude] format, which would act as
          # the starting point for identifying the isochrone polygon or the boundary of
          # reachable area. This parameter is mandatory when `type` is `isochrone`.
          coordinates:,
          # The distance, in meters, for which an isochrone polygon needs to be determined.
          # When provided, the API would create a geofence representing the area that can be
          # reached after driving the given number of meters starting from the point
          # specified in `coordinates`.
          #
          # The maximum distance that can be specified is 60000 meters (60km).
          #
          # At least one of `contours_meter` or `contours_minute` is mandatory when `type`
          # is `isochrone`.
          contours_meter: nil,
          # The duration, in minutes, for which an isochrone polygon needs to be determined.
          # When provided, the API would create a geofence representing the area that can be
          # reached after driving for the given number of minutes starting from the point
          # specified in `coordinates`.
          #
          # The maximum duration that can be specified is 40 minutes.
          #
          # At least one of `contours_meter` or `contours_minute` is mandatory when `type`
          # is `isochrone`.
          contours_minute: nil,
          # A floating point value from 0.0 to 1.0 that can be used to remove smaller
          # contours. A value of 1.0 will only return the largest contour for a given value.
          # A value of 0.5 drops any contours that are less than half the area of the
          # largest contour in the set of contours for that same value.
          denoise: nil,
          # A UNIX epoch timestamp in seconds format that can be used to set the departure
          # time. The isochrone boundary will be determined based on the typical traffic
          # conditions at the given time. If no input is provided for this parameter then
          # the traffic conditions at the time of making the request are considered
          departure_time: nil,
          # Set which driving mode the service should use to determine the isochrone line.
          #
          # For example, if you use `car`, the API will return an isochrone polygon that a
          # car can cover within the specified time or after driving the specified distance.
          # Using `truck` will return an isochrone that a truck can reach after taking into
          # account appropriate truck routing restrictions.
          mode: nil
        )
        end

        sig do
          override.returns(
            {
              coordinates: String,
              contours_meter: Integer,
              contours_minute: Integer,
              denoise: Float,
              departure_time: Integer,
              mode:
                NextbillionSDK::GeofenceEntityCreate::Isochrone::Mode::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Set which driving mode the service should use to determine the isochrone line.
        #
        # For example, if you use `car`, the API will return an isochrone polygon that a
        # car can cover within the specified time or after driving the specified distance.
        # Using `truck` will return an isochrone that a truck can reach after taking into
        # account appropriate truck routing restrictions.
        module Mode
          extend NextbillionSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                NextbillionSDK::GeofenceEntityCreate::Isochrone::Mode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CAR =
            T.let(
              :"`car`",
              NextbillionSDK::GeofenceEntityCreate::Isochrone::Mode::TaggedSymbol
            )
          TRUCK =
            T.let(
              :"`truck`",
              NextbillionSDK::GeofenceEntityCreate::Isochrone::Mode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                NextbillionSDK::GeofenceEntityCreate::Isochrone::Mode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Polygon < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::GeofenceEntityCreate::Polygon,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # An object to collect geoJSON details of the geofence. The contents of this
        # object follow the
        # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
        sig { returns(NextbillionSDK::GeofenceEntityCreate::Polygon::Geojson) }
        attr_reader :geojson

        sig do
          params(
            geojson:
              NextbillionSDK::GeofenceEntityCreate::Polygon::Geojson::OrHash
          ).void
        end
        attr_writer :geojson

        # Provide the details to create a custom polygon type of geofence. Please note
        # that this object is mandatory when `type` is `polygon`. When the `type` is not
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
              NextbillionSDK::GeofenceEntityCreate::Polygon::Geojson::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # An object to collect geoJSON details of the geofence. The contents of this
          # object follow the
          # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
          geojson:
        )
        end

        sig do
          override.returns(
            { geojson: NextbillionSDK::GeofenceEntityCreate::Polygon::Geojson }
          )
        end
        def to_hash
        end

        class Geojson < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::GeofenceEntityCreate::Polygon::Geojson,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # An array of coordinates in the [longitude, latitude] format, representing the
          # geofence boundary.
          sig { returns(T::Array[T::Array[Float]]) }
          attr_accessor :coordinates

          # Type of the geoJSON geometry. Should always be `Polygon`.
          sig { returns(String) }
          attr_accessor :type

          # An object to collect geoJSON details of the geofence. The contents of this
          # object follow the
          # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
          sig do
            params(
              coordinates: T::Array[T::Array[Float]],
              type: String
            ).returns(T.attached_class)
          end
          def self.new(
            # An array of coordinates in the [longitude, latitude] format, representing the
            # geofence boundary.
            coordinates:,
            # Type of the geoJSON geometry. Should always be `Polygon`.
            type:
          )
          end

          sig do
            override.returns(
              { coordinates: T::Array[T::Array[Float]], type: String }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
