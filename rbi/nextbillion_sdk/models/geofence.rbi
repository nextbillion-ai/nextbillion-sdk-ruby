# typed: strong

module NextbillionSDK
  module Models
    class GeofenceAPI < NextbillionSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(NextbillionSDK::GeofenceAPI, NextbillionSDK::Internal::AnyHash)
        end

      # ID of the geofence provided/generated at the time of creating the geofence.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(NextbillionSDK::GeofenceAPI::CircleCenter)) }
      attr_reader :circle_center

      sig do
        params(
          circle_center: NextbillionSDK::GeofenceAPI::CircleCenter::OrHash
        ).void
      end
      attr_writer :circle_center

      # When the type of the geofence is circle, this property returns the radius of the
      # geofence in meters (m).
      sig { returns(T.nilable(Float)) }
      attr_reader :circle_radius

      sig { params(circle_radius: Float).void }
      attr_writer :circle_radius

      # Time at which the geofence was created, expressed as a UNIX timestamp in
      # seconds.
      sig { returns(T.nilable(Integer)) }
      attr_reader :created_at

      sig { params(created_at: Integer).void }
      attr_writer :created_at

      # An object with geoJSON details of the geofence. The contents of this object
      # follow the [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
      sig { returns(T.nilable(NextbillionSDK::Geofence::PolygonGeojson)) }
      attr_reader :geojson

      sig do
        params(geojson: NextbillionSDK::Geofence::PolygonGeojson::OrHash).void
      end
      attr_writer :geojson

      # For a geofence based on isochrone contour determined using a specific driving
      # distance, this property returns the duration value, in meters.
      #
      # The value would be the same as that provided for the contours_meter parameter at
      # the time of creating or updating the geofence.
      sig { returns(T.nilable(Integer)) }
      attr_reader :ic_contours_meter

      sig { params(ic_contours_meter: Integer).void }
      attr_writer :ic_contours_meter

      # For a geofence based on isochrone contour determined using a specific driving
      # duration, this property returns the duration value, in minutes. The value would
      # be the same as the value provided for the contours_minute parameter at the time
      # of creating or updating the geofence.
      sig { returns(T.nilable(Integer)) }
      attr_reader :ic_contours_minute

      sig { params(ic_contours_minute: Integer).void }
      attr_writer :ic_contours_minute

      # For a geofence based on isochrone contour, this property returns the coordinates
      # of the location, in [latitude,longitude] format, which was used as the starting
      # point to identify the geofence boundary.
      #
      # The value would be the same as that provided for the coordinates parameter at
      # the time of creating or updating the geofence.
      sig { returns(T.nilable(String)) }
      attr_reader :ic_coordinates

      sig { params(ic_coordinates: String).void }
      attr_writer :ic_coordinates

      # For a geofence based on isochrone contour, this property returns the denoise
      # value which would be the same as that provided for the denoise parameter at the
      # time of creating or updating the geofence.
      sig { returns(T.nilable(Float)) }
      attr_reader :ic_denoise

      sig { params(ic_denoise: Float).void }
      attr_writer :ic_denoise

      # For a geofence based on isochrone contour, this property returns the departure
      # time, as a UNIX epoch timestamp in seconds, which was used to determine the
      # geofence boundary after taking into account the traffic conditions at the time.
      #
      # The value would be the same as that provided for the departure_time parameter at
      # the time of creating or updating the geofence.
      sig { returns(T.nilable(Integer)) }
      attr_reader :ic_departure_time

      sig { params(ic_departure_time: Integer).void }
      attr_writer :ic_departure_time

      # For a geofence based on isochrone contour, this property returns the driving
      # mode used to determine the geofence boundary.
      #
      # The value would be the same as that provided for the mode parameter at the time
      # of creating or updating the geofence.
      sig { returns(T.nilable(Float)) }
      attr_reader :ic_mode

      sig { params(ic_mode: Float).void }
      attr_writer :ic_mode

      # Metadata of the geofence added at the time of creating or updating it.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :meta_data

      sig { params(meta_data: T.anything).void }
      attr_writer :meta_data

      # Name of the geofence added at the time of creating or updating it.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # An array of strings representing the tags associated with the geofence added at
      # the time of creating or updating it.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # Type of the geofence.
      sig do
        returns(T.nilable(NextbillionSDK::GeofenceAPI::Type::TaggedSymbol))
      end
      attr_reader :type

      sig { params(type: NextbillionSDK::GeofenceAPI::Type::OrSymbol).void }
      attr_writer :type

      # Time at which the geofence was last updated, expressed as a UNIX timestamp in
      # seconds.
      sig { returns(T.nilable(Integer)) }
      attr_reader :updated_at

      sig { params(updated_at: Integer).void }
      attr_writer :updated_at

      # An object with details of the geofence.
      sig do
        params(
          id: String,
          circle_center: NextbillionSDK::GeofenceAPI::CircleCenter::OrHash,
          circle_radius: Float,
          created_at: Integer,
          geojson: NextbillionSDK::Geofence::PolygonGeojson::OrHash,
          ic_contours_meter: Integer,
          ic_contours_minute: Integer,
          ic_coordinates: String,
          ic_denoise: Float,
          ic_departure_time: Integer,
          ic_mode: Float,
          meta_data: T.anything,
          name: String,
          tags: T::Array[String],
          type: NextbillionSDK::GeofenceAPI::Type::OrSymbol,
          updated_at: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # ID of the geofence provided/generated at the time of creating the geofence.
        id: nil,
        circle_center: nil,
        # When the type of the geofence is circle, this property returns the radius of the
        # geofence in meters (m).
        circle_radius: nil,
        # Time at which the geofence was created, expressed as a UNIX timestamp in
        # seconds.
        created_at: nil,
        # An object with geoJSON details of the geofence. The contents of this object
        # follow the [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
        geojson: nil,
        # For a geofence based on isochrone contour determined using a specific driving
        # distance, this property returns the duration value, in meters.
        #
        # The value would be the same as that provided for the contours_meter parameter at
        # the time of creating or updating the geofence.
        ic_contours_meter: nil,
        # For a geofence based on isochrone contour determined using a specific driving
        # duration, this property returns the duration value, in minutes. The value would
        # be the same as the value provided for the contours_minute parameter at the time
        # of creating or updating the geofence.
        ic_contours_minute: nil,
        # For a geofence based on isochrone contour, this property returns the coordinates
        # of the location, in [latitude,longitude] format, which was used as the starting
        # point to identify the geofence boundary.
        #
        # The value would be the same as that provided for the coordinates parameter at
        # the time of creating or updating the geofence.
        ic_coordinates: nil,
        # For a geofence based on isochrone contour, this property returns the denoise
        # value which would be the same as that provided for the denoise parameter at the
        # time of creating or updating the geofence.
        ic_denoise: nil,
        # For a geofence based on isochrone contour, this property returns the departure
        # time, as a UNIX epoch timestamp in seconds, which was used to determine the
        # geofence boundary after taking into account the traffic conditions at the time.
        #
        # The value would be the same as that provided for the departure_time parameter at
        # the time of creating or updating the geofence.
        ic_departure_time: nil,
        # For a geofence based on isochrone contour, this property returns the driving
        # mode used to determine the geofence boundary.
        #
        # The value would be the same as that provided for the mode parameter at the time
        # of creating or updating the geofence.
        ic_mode: nil,
        # Metadata of the geofence added at the time of creating or updating it.
        meta_data: nil,
        # Name of the geofence added at the time of creating or updating it.
        name: nil,
        # An array of strings representing the tags associated with the geofence added at
        # the time of creating or updating it.
        tags: nil,
        # Type of the geofence.
        type: nil,
        # Time at which the geofence was last updated, expressed as a UNIX timestamp in
        # seconds.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            circle_center: NextbillionSDK::GeofenceAPI::CircleCenter,
            circle_radius: Float,
            created_at: Integer,
            geojson: NextbillionSDK::Geofence::PolygonGeojson,
            ic_contours_meter: Integer,
            ic_contours_minute: Integer,
            ic_coordinates: String,
            ic_denoise: Float,
            ic_departure_time: Integer,
            ic_mode: Float,
            meta_data: T.anything,
            name: String,
            tags: T::Array[String],
            type: NextbillionSDK::GeofenceAPI::Type::TaggedSymbol,
            updated_at: Integer
          }
        )
      end
      def to_hash
      end

      class CircleCenter < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::GeofenceAPI::CircleCenter,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # Latitude of the location.
        sig { returns(T.nilable(Float)) }
        attr_reader :lat

        sig { params(lat: Float).void }
        attr_writer :lat

        # Longitude of the location.
        sig { returns(T.nilable(Float)) }
        attr_reader :lon

        sig { params(lon: Float).void }
        attr_writer :lon

        sig { params(lat: Float, lon: Float).returns(T.attached_class) }
        def self.new(
          # Latitude of the location.
          lat: nil,
          # Longitude of the location.
          lon: nil
        )
        end

        sig { override.returns({ lat: Float, lon: Float }) }
        def to_hash
        end
      end

      # Type of the geofence.
      module Type
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, NextbillionSDK::GeofenceAPI::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CIRCLE = T.let(:circle, NextbillionSDK::GeofenceAPI::Type::TaggedSymbol)
        POLYGON =
          T.let(:polygon, NextbillionSDK::GeofenceAPI::Type::TaggedSymbol)
        ISOCHRONE =
          T.let(:isochrone, NextbillionSDK::GeofenceAPI::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[NextbillionSDK::GeofenceAPI::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
