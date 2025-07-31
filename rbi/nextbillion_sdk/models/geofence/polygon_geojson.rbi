# typed: strong

module NextbillionSDK
  module Models
    module Geofence
      class PolygonGeojson < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Geofence::PolygonGeojson,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # An array of coordinates in the [longitude, latitude] format, representing the
        # geofence boundary.
        sig { returns(T.nilable(T::Array[T::Array[Float]])) }
        attr_reader :coordinates

        sig { params(coordinates: T::Array[T::Array[Float]]).void }
        attr_writer :coordinates

        # Type of the geoJSON geometry. Will always be `Polygon`.
        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        # An object with geoJSON details of the geofence. The contents of this object
        # follow the [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
        sig do
          params(coordinates: T::Array[T::Array[Float]], type: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # An array of coordinates in the [longitude, latitude] format, representing the
          # geofence boundary.
          coordinates: nil,
          # Type of the geoJSON geometry. Will always be `Polygon`.
          type: nil
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
