# typed: strong

module Nextbillionai
  module Models
    module Skynet
      module Asset
        class LocationListResponse < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::Skynet::Asset::LocationListResponse,
                Nextbillionai::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          # Displays the error message in case of a failed request. If the request is
          # successful, this field is not present in the response.
          sig { returns(T.nilable(String)) }
          attr_reader :message

          sig { params(message: String).void }
          attr_writer :message

          # A string indicating the state of the response. On successful responses, the
          # value will be `Ok`. Indicative error messages are returned for different errors.
          # See the [API Error Codes](#api-error-codes) section below for more information.
          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          sig do
            params(
              data:
                Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::OrHash,
              message: String,
              status: String
            ).returns(T.attached_class)
          end
          def self.new(
            data: nil,
            # Displays the error message in case of a failed request. If the request is
            # successful, this field is not present in the response.
            message: nil,
            # A string indicating the state of the response. On successful responses, the
            # value will be `Ok`. Indicative error messages are returned for different errors.
            # See the [API Error Codes](#api-error-codes) section below for more information.
            status: nil
          )
          end

          sig do
            override.returns(
              {
                data:
                  Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data,
                message: String,
                status: String
              }
            )
          end
          def to_hash
          end

          class Data < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Distance of the path, in meters, formed by connecting all tracked locations
            # returned.
            #
            # Please note that `distance` is returned only when the `mapmatch` property of
            # `correction` parameter is set to 1.
            sig { returns(T.nilable(Float)) }
            attr_reader :distance

            sig { params(distance: Float).void }
            attr_writer :distance

            # An object with geoJSON details of the route. It is returned only when the
            # `mapmatch` property of the `correction` parameter is set to 1 and
            # `geometry_type` is `geojson, otherwise it is not present in the response. The
            # contents of this object follow the
            # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::Geojson
                )
              )
            end
            attr_reader :geojson

            sig do
              params(
                geojson:
                  Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::Geojson::OrHash
              ).void
            end
            attr_writer :geojson

            # Geometry of tracked locations in the requested format. It is returned only if
            # the `mapmatch` property of the ‘correction’ parameter is set to 1.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :geometry

            sig { params(geometry: T::Array[String]).void }
            attr_writer :geometry

            # An array of objects with details of the tracked locations of the `asset`. Each
            # object represents one tracked location.
            sig do
              returns(
                T.nilable(T::Array[Nextbillionai::Skynet::Asset::TrackLocation])
              )
            end
            attr_reader :list

            sig do
              params(
                list:
                  T::Array[Nextbillionai::Skynet::Asset::TrackLocation::OrHash]
              ).void
            end
            attr_writer :list

            # An object with pagination details of the search results. Use this object to
            # implement pagination in your application.
            sig { returns(T.nilable(Nextbillionai::Skynet::Pagination)) }
            attr_reader :page

            sig { params(page: Nextbillionai::Skynet::Pagination::OrHash).void }
            attr_writer :page

            # An array of objects with details about the snapped points for each of the
            # tracked locations returned for the `asset`.
            #
            # Please note that this property is returned only when the `mapmatch` property of
            # `correction` parameter is set to 1.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::SnappedPoint
                  ]
                )
              )
            end
            attr_reader :snapped_points

            sig do
              params(
                snapped_points:
                  T::Array[
                    Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::SnappedPoint::OrHash
                  ]
              ).void
            end
            attr_writer :snapped_points

            sig do
              params(
                distance: Float,
                geojson:
                  Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::Geojson::OrHash,
                geometry: T::Array[String],
                list:
                  T::Array[Nextbillionai::Skynet::Asset::TrackLocation::OrHash],
                page: Nextbillionai::Skynet::Pagination::OrHash,
                snapped_points:
                  T::Array[
                    Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::SnappedPoint::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # Distance of the path, in meters, formed by connecting all tracked locations
              # returned.
              #
              # Please note that `distance` is returned only when the `mapmatch` property of
              # `correction` parameter is set to 1.
              distance: nil,
              # An object with geoJSON details of the route. It is returned only when the
              # `mapmatch` property of the `correction` parameter is set to 1 and
              # `geometry_type` is `geojson, otherwise it is not present in the response. The
              # contents of this object follow the
              # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
              geojson: nil,
              # Geometry of tracked locations in the requested format. It is returned only if
              # the `mapmatch` property of the ‘correction’ parameter is set to 1.
              geometry: nil,
              # An array of objects with details of the tracked locations of the `asset`. Each
              # object represents one tracked location.
              list: nil,
              # An object with pagination details of the search results. Use this object to
              # implement pagination in your application.
              page: nil,
              # An array of objects with details about the snapped points for each of the
              # tracked locations returned for the `asset`.
              #
              # Please note that this property is returned only when the `mapmatch` property of
              # `correction` parameter is set to 1.
              snapped_points: nil
            )
            end

            sig do
              override.returns(
                {
                  distance: Float,
                  geojson:
                    Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::Geojson,
                  geometry: T::Array[String],
                  list: T::Array[Nextbillionai::Skynet::Asset::TrackLocation],
                  page: Nextbillionai::Skynet::Pagination,
                  snapped_points:
                    T::Array[
                      Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::SnappedPoint
                    ]
                }
              )
            end
            def to_hash
            end

            class Geojson < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::Geojson,
                    Nextbillionai::Internal::AnyHash
                  )
                end

              # An object with details of the geoJSON geometry of the route.
              sig do
                returns(
                  T.nilable(
                    Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::Geojson::Geometry
                  )
                )
              end
              attr_reader :geometry

              sig do
                params(
                  geometry:
                    Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::Geojson::Geometry::OrHash
                ).void
              end
              attr_writer :geometry

              # Type of the geoJSON object.
              sig { returns(T.nilable(String)) }
              attr_reader :type

              sig { params(type: String).void }
              attr_writer :type

              # An object with geoJSON details of the route. It is returned only when the
              # `mapmatch` property of the `correction` parameter is set to 1 and
              # `geometry_type` is `geojson, otherwise it is not present in the response. The
              # contents of this object follow the
              # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
              sig do
                params(
                  geometry:
                    Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::Geojson::Geometry::OrHash,
                  type: String
                ).returns(T.attached_class)
              end
              def self.new(
                # An object with details of the geoJSON geometry of the route.
                geometry: nil,
                # Type of the geoJSON object.
                type: nil
              )
              end

              sig do
                override.returns(
                  {
                    geometry:
                      Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::Geojson::Geometry,
                    type: String
                  }
                )
              end
              def to_hash
              end

              class Geometry < Nextbillionai::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::Geojson::Geometry,
                      Nextbillionai::Internal::AnyHash
                    )
                  end

                # An array of coordinates in the [longitude, latitude] format, representing the
                # route geometry.
                sig { returns(T.nilable(T::Array[Float])) }
                attr_reader :coordinates

                sig { params(coordinates: T::Array[Float]).void }
                attr_writer :coordinates

                # Type of the geoJSON geometry.
                sig { returns(T.nilable(String)) }
                attr_reader :type

                sig { params(type: String).void }
                attr_writer :type

                # An object with details of the geoJSON geometry of the route.
                sig do
                  params(coordinates: T::Array[Float], type: String).returns(
                    T.attached_class
                  )
                end
                def self.new(
                  # An array of coordinates in the [longitude, latitude] format, representing the
                  # route geometry.
                  coordinates: nil,
                  # Type of the geoJSON geometry.
                  type: nil
                )
                end

                sig do
                  override.returns(
                    { coordinates: T::Array[Float], type: String }
                  )
                end
                def to_hash
                end
              end
            end

            class SnappedPoint < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::SnappedPoint,
                    Nextbillionai::Internal::AnyHash
                  )
                end

              # The bearing angle of the snapped point from the original tracked location, in
              # radians. It indicates the direction of the snapped point.
              sig { returns(T.nilable(String)) }
              attr_reader :bearing

              sig { params(bearing: String).void }
              attr_writer :bearing

              # The distance of the snapped point from the original tracked location, in meters.
              sig { returns(T.nilable(Float)) }
              attr_reader :distance

              sig { params(distance: Float).void }
              attr_writer :distance

              # The latitude and longitude coordinates of the snapped point.
              sig do
                returns(
                  T.nilable(
                    Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::SnappedPoint::Location
                  )
                )
              end
              attr_reader :location

              sig do
                params(
                  location:
                    Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::SnappedPoint::Location::OrHash
                ).void
              end
              attr_writer :location

              # The name of the street or road of the snapped point.
              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              # The index of the tracked location to which this snapped point corresponds to.
              sig { returns(T.nilable(String)) }
              attr_reader :original_index

              sig { params(original_index: String).void }
              attr_writer :original_index

              sig do
                params(
                  bearing: String,
                  distance: Float,
                  location:
                    Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::SnappedPoint::Location::OrHash,
                  name: String,
                  original_index: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The bearing angle of the snapped point from the original tracked location, in
                # radians. It indicates the direction of the snapped point.
                bearing: nil,
                # The distance of the snapped point from the original tracked location, in meters.
                distance: nil,
                # The latitude and longitude coordinates of the snapped point.
                location: nil,
                # The name of the street or road of the snapped point.
                name: nil,
                # The index of the tracked location to which this snapped point corresponds to.
                original_index: nil
              )
              end

              sig do
                override.returns(
                  {
                    bearing: String,
                    distance: Float,
                    location:
                      Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::SnappedPoint::Location,
                    name: String,
                    original_index: String
                  }
                )
              end
              def to_hash
              end

              class Location < Nextbillionai::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Nextbillionai::Models::Skynet::Asset::LocationListResponse::Data::SnappedPoint::Location,
                      Nextbillionai::Internal::AnyHash
                    )
                  end

                # Latitude of the snapped point.
                sig { returns(T.nilable(Float)) }
                attr_reader :lat

                sig { params(lat: Float).void }
                attr_writer :lat

                # Longitude of the snapped point.
                sig { returns(T.nilable(Float)) }
                attr_reader :lon

                sig { params(lon: Float).void }
                attr_writer :lon

                # The latitude and longitude coordinates of the snapped point.
                sig { params(lat: Float, lon: Float).returns(T.attached_class) }
                def self.new(
                  # Latitude of the snapped point.
                  lat: nil,
                  # Longitude of the snapped point.
                  lon: nil
                )
                end

                sig { override.returns({ lat: Float, lon: Float }) }
                def to_hash
                end
              end
            end
          end
        end
      end
    end
  end
end
