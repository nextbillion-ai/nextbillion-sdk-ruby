# typed: strong

module NextbillionSDK
  module Models
    class SnapToRoadSnapResponse < NextbillionSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::Models::SnapToRoadSnapResponse,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # The total distance of the snapped path in meters.
      sig { returns(T.nilable(Integer)) }
      attr_reader :distance

      sig { params(distance: Integer).void }
      attr_writer :distance

      # A GeoJSON object with details of the snapped path. This object is returned when
      # the geometry field is set to geojson in the input request, otherwise it is not
      # present in the response. The contents of this object follow the
      # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
      sig do
        returns(
          T.nilable(NextbillionSDK::Models::SnapToRoadSnapResponse::Geojson)
        )
      end
      attr_reader :geojson

      sig do
        params(
          geojson:
            NextbillionSDK::Models::SnapToRoadSnapResponse::Geojson::OrHash
        ).void
      end
      attr_writer :geojson

      # An array of strings containing the encoded geometries of snapped paths in
      # polyline or polyline6 format.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :geometry

      sig { params(geometry: T::Array[String]).void }
      attr_writer :geometry

      # Displays the error message in case of a failed request or operation. Please note
      # that this parameter is not returned in the response in case of a successful
      # request.
      sig { returns(T.nilable(String)) }
      attr_reader :msg

      sig { params(msg: String).void }
      attr_writer :msg

      # An object containing the maximum speed information for each road segment present
      # in the route.
      sig do
        returns(
          T.nilable(NextbillionSDK::Models::SnapToRoadSnapResponse::RoadInfo)
        )
      end
      attr_reader :road_info

      sig do
        params(
          road_info:
            NextbillionSDK::Models::SnapToRoadSnapResponse::RoadInfo::OrHash
        ).void
      end
      attr_writer :road_info

      # An array of objects. Each object provides the details of a path coordinate point
      # snapped to the nearest road.
      sig do
        returns(
          T.nilable(
            T::Array[
              NextbillionSDK::Models::SnapToRoadSnapResponse::SnappedPoint
            ]
          )
        )
      end
      attr_reader :snapped_points

      sig do
        params(
          snapped_points:
            T::Array[
              NextbillionSDK::Models::SnapToRoadSnapResponse::SnappedPoint::OrHash
            ]
        ).void
      end
      attr_writer :snapped_points

      # A string indicating the state of the response. On normal responses, the value
      # will be Ok. Indicative HTTP error codes are returned for different errors. See
      # the [API Errors Codes](#api-error-codes) section below for more information.
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      # Response Body
      sig do
        params(
          distance: Integer,
          geojson:
            NextbillionSDK::Models::SnapToRoadSnapResponse::Geojson::OrHash,
          geometry: T::Array[String],
          msg: String,
          road_info:
            NextbillionSDK::Models::SnapToRoadSnapResponse::RoadInfo::OrHash,
          snapped_points:
            T::Array[
              NextbillionSDK::Models::SnapToRoadSnapResponse::SnappedPoint::OrHash
            ],
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The total distance of the snapped path in meters.
        distance: nil,
        # A GeoJSON object with details of the snapped path. This object is returned when
        # the geometry field is set to geojson in the input request, otherwise it is not
        # present in the response. The contents of this object follow the
        # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
        geojson: nil,
        # An array of strings containing the encoded geometries of snapped paths in
        # polyline or polyline6 format.
        geometry: nil,
        # Displays the error message in case of a failed request or operation. Please note
        # that this parameter is not returned in the response in case of a successful
        # request.
        msg: nil,
        # An object containing the maximum speed information for each road segment present
        # in the route.
        road_info: nil,
        # An array of objects. Each object provides the details of a path coordinate point
        # snapped to the nearest road.
        snapped_points: nil,
        # A string indicating the state of the response. On normal responses, the value
        # will be Ok. Indicative HTTP error codes are returned for different errors. See
        # the [API Errors Codes](#api-error-codes) section below for more information.
        status: nil
      )
      end

      sig do
        override.returns(
          {
            distance: Integer,
            geojson: NextbillionSDK::Models::SnapToRoadSnapResponse::Geojson,
            geometry: T::Array[String],
            msg: String,
            road_info: NextbillionSDK::Models::SnapToRoadSnapResponse::RoadInfo,
            snapped_points:
              T::Array[
                NextbillionSDK::Models::SnapToRoadSnapResponse::SnappedPoint
              ],
            status: String
          }
        )
      end
      def to_hash
      end

      class Geojson < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::SnapToRoadSnapResponse::Geojson,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # An object with details of the geoJSON geometry of the snapped path.
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Models::SnapToRoadSnapResponse::Geojson::Geometry
            )
          )
        end
        attr_reader :geometry

        sig do
          params(
            geometry:
              NextbillionSDK::Models::SnapToRoadSnapResponse::Geojson::Geometry::OrHash
          ).void
        end
        attr_writer :geometry

        # Properties associated with the geoJSON shape of the snapped path.
        sig { returns(T.nilable(String)) }
        attr_reader :properties

        sig { params(properties: String).void }
        attr_writer :properties

        # Type of the GeoJSON object.
        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        # A GeoJSON object with details of the snapped path. This object is returned when
        # the geometry field is set to geojson in the input request, otherwise it is not
        # present in the response. The contents of this object follow the
        # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
        sig do
          params(
            geometry:
              NextbillionSDK::Models::SnapToRoadSnapResponse::Geojson::Geometry::OrHash,
            properties: String,
            type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # An object with details of the geoJSON geometry of the snapped path.
          geometry: nil,
          # Properties associated with the geoJSON shape of the snapped path.
          properties: nil,
          # Type of the GeoJSON object.
          type: nil
        )
        end

        sig do
          override.returns(
            {
              geometry:
                NextbillionSDK::Models::SnapToRoadSnapResponse::Geojson::Geometry,
              properties: String,
              type: String
            }
          )
        end
        def to_hash
        end

        class Geometry < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Models::SnapToRoadSnapResponse::Geojson::Geometry,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # An array of coordinates in the [longitude, latitude] format, representing the
          # snapped path geometry.
          sig { returns(T.nilable(T::Array[Float])) }
          attr_reader :coordinates

          sig { params(coordinates: T::Array[Float]).void }
          attr_writer :coordinates

          # Type of the geoJSON geometry
          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          # An object with details of the geoJSON geometry of the snapped path.
          sig do
            params(coordinates: T::Array[Float], type: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # An array of coordinates in the [longitude, latitude] format, representing the
            # snapped path geometry.
            coordinates: nil,
            # Type of the geoJSON geometry
            type: nil
          )
          end

          sig do
            override.returns({ coordinates: T::Array[Float], type: String })
          end
          def to_hash
          end
        end
      end

      class RoadInfo < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::SnapToRoadSnapResponse::RoadInfo,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # An array of objects containing maximum speed, in kilometers per hour, for each
        # segment of the route. Each object represents one road segment.
        sig do
          returns(
            T.nilable(
              T::Array[
                NextbillionSDK::Models::SnapToRoadSnapResponse::RoadInfo::MaxSpeed
              ]
            )
          )
        end
        attr_reader :max_speed

        sig do
          params(
            max_speed:
              T::Array[
                NextbillionSDK::Models::SnapToRoadSnapResponse::RoadInfo::MaxSpeed::OrHash
              ]
          ).void
        end
        attr_writer :max_speed

        # An object containing the maximum speed information for each road segment present
        # in the route.
        sig do
          params(
            max_speed:
              T::Array[
                NextbillionSDK::Models::SnapToRoadSnapResponse::RoadInfo::MaxSpeed::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of objects containing maximum speed, in kilometers per hour, for each
          # segment of the route. Each object represents one road segment.
          max_speed: nil
        )
        end

        sig do
          override.returns(
            {
              max_speed:
                T::Array[
                  NextbillionSDK::Models::SnapToRoadSnapResponse::RoadInfo::MaxSpeed
                ]
            }
          )
        end
        def to_hash
        end

        class MaxSpeed < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Models::SnapToRoadSnapResponse::RoadInfo::MaxSpeed,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # length refers to a sequence of 'n' consecutive vertices in the route geometry
          # starting from the offset, forming a continuous section of route where the
          # maximum speed is the same and is indicated in value.
          sig { returns(T.nilable(Integer)) }
          attr_reader :length

          sig { params(length: Integer).void }
          attr_writer :length

          # offset is the index value of the vertex of route geometry, which is the starting
          # point of the segment.
          sig { returns(T.nilable(Integer)) }
          attr_reader :offset

          sig { params(offset: Integer).void }
          attr_writer :offset

          # value denotes the maximum speed of this segment, in kilometers per hour.
          #
          # - A value of "-1" indicates that the speed is unlimited for this road segment.
          # - A value of "0" indicates that there is no information about the maximum speed
          #   for this road segment.
          sig { returns(T.nilable(Float)) }
          attr_reader :value

          sig { params(value: Float).void }
          attr_writer :value

          sig do
            params(length: Integer, offset: Integer, value: Float).returns(
              T.attached_class
            )
          end
          def self.new(
            # length refers to a sequence of 'n' consecutive vertices in the route geometry
            # starting from the offset, forming a continuous section of route where the
            # maximum speed is the same and is indicated in value.
            length: nil,
            # offset is the index value of the vertex of route geometry, which is the starting
            # point of the segment.
            offset: nil,
            # value denotes the maximum speed of this segment, in kilometers per hour.
            #
            # - A value of "-1" indicates that the speed is unlimited for this road segment.
            # - A value of "0" indicates that there is no information about the maximum speed
            #   for this road segment.
            value: nil
          )
          end

          sig do
            override.returns({ length: Integer, offset: Integer, value: Float })
          end
          def to_hash
          end
        end
      end

      class SnappedPoint < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::SnapToRoadSnapResponse::SnappedPoint,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # The bearing, calculated as the angle from true north in clockwise direction, of
        # the route leading to the next snapped point from the current snapped_point, in
        # radians. In case of the last snapped_point of the route, the bearing indicates
        # the direction of the route to the previous snapped_location.
        sig { returns(Float) }
        attr_accessor :bearing

        # The distance of the snapped point from the original input coordinate in meters.
        sig { returns(Float) }
        attr_accessor :distance

        # The latitude and longitude coordinates of the snapped point.
        sig do
          returns(
            NextbillionSDK::Models::SnapToRoadSnapResponse::SnappedPoint::Location
          )
        end
        attr_reader :location

        sig do
          params(
            location:
              NextbillionSDK::Models::SnapToRoadSnapResponse::SnappedPoint::Location::OrHash
          ).void
        end
        attr_writer :location

        # The name of the street or road that the input coordinate snapped to.
        sig { returns(String) }
        attr_accessor :name

        # The index of the input path coordinate point to which this snapped point
        # corresponds to.
        sig { returns(Integer) }
        attr_accessor :original_index

        sig do
          params(
            bearing: Float,
            distance: Float,
            location:
              NextbillionSDK::Models::SnapToRoadSnapResponse::SnappedPoint::Location::OrHash,
            name: String,
            original_index: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The bearing, calculated as the angle from true north in clockwise direction, of
          # the route leading to the next snapped point from the current snapped_point, in
          # radians. In case of the last snapped_point of the route, the bearing indicates
          # the direction of the route to the previous snapped_location.
          bearing:,
          # The distance of the snapped point from the original input coordinate in meters.
          distance:,
          # The latitude and longitude coordinates of the snapped point.
          location:,
          # The name of the street or road that the input coordinate snapped to.
          name:,
          # The index of the input path coordinate point to which this snapped point
          # corresponds to.
          original_index:
        )
        end

        sig do
          override.returns(
            {
              bearing: Float,
              distance: Float,
              location:
                NextbillionSDK::Models::SnapToRoadSnapResponse::SnappedPoint::Location,
              name: String,
              original_index: Integer
            }
          )
        end
        def to_hash
        end

        class Location < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Models::SnapToRoadSnapResponse::SnappedPoint::Location,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # Latitude of the snapped point.
          sig { returns(Float) }
          attr_accessor :latitude

          # Longitude of the snapped point.
          sig { returns(Float) }
          attr_accessor :longitude

          # The latitude and longitude coordinates of the snapped point.
          sig do
            params(latitude: Float, longitude: Float).returns(T.attached_class)
          end
          def self.new(
            # Latitude of the snapped point.
            latitude:,
            # Longitude of the snapped point.
            longitude:
          )
          end

          sig { override.returns({ latitude: Float, longitude: Float }) }
          def to_hash
          end
        end
      end
    end
  end
end
