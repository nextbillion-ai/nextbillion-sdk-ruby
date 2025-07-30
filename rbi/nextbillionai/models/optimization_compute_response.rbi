# typed: strong

module Nextbillionai
  module Models
    class OptimizationComputeResponse < Nextbillionai::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::Models::OptimizationComputeResponse,
            Nextbillionai::Internal::AnyHash
          )
        end

      # A string indicating the state of the response. This is a separate code than the
      # HTTP status code. On normal valid responses, the value will be `Ok`.
      sig { returns(T.nilable(String)) }
      attr_reader :code

      sig { params(code: String).void }
      attr_writer :code

      # Contains the latitude and longitude of a location
      sig do
        returns(
          T.nilable(
            Nextbillionai::Models::OptimizationComputeResponse::Location
          )
        )
      end
      attr_reader :location

      sig do
        params(
          location:
            Nextbillionai::Models::OptimizationComputeResponse::Location::OrHash
        ).void
      end
      attr_writer :location

      # An array of 0 or 1 trip objects. Each object has the following schema.
      sig do
        returns(
          T.nilable(
            T::Array[Nextbillionai::Models::OptimizationComputeResponse::Trip]
          )
        )
      end
      attr_reader :trips

      sig do
        params(
          trips:
            T::Array[
              Nextbillionai::Models::OptimizationComputeResponse::Trip::OrHash
            ]
        ).void
      end
      attr_writer :trips

      # Each waypoint is an input coordinate snapped to the road and path network.
      sig do
        returns(
          T.nilable(
            T::Array[
              Nextbillionai::Models::OptimizationComputeResponse::Waypoint
            ]
          )
        )
      end
      attr_reader :waypoints

      sig do
        params(
          waypoints:
            T::Array[
              Nextbillionai::Models::OptimizationComputeResponse::Waypoint::OrHash
            ]
        ).void
      end
      attr_writer :waypoints

      sig do
        params(
          code: String,
          location:
            Nextbillionai::Models::OptimizationComputeResponse::Location::OrHash,
          trips:
            T::Array[
              Nextbillionai::Models::OptimizationComputeResponse::Trip::OrHash
            ],
          waypoints:
            T::Array[
              Nextbillionai::Models::OptimizationComputeResponse::Waypoint::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        # A string indicating the state of the response. This is a separate code than the
        # HTTP status code. On normal valid responses, the value will be `Ok`.
        code: nil,
        # Contains the latitude and longitude of a location
        location: nil,
        # An array of 0 or 1 trip objects. Each object has the following schema.
        trips: nil,
        # Each waypoint is an input coordinate snapped to the road and path network.
        waypoints: nil
      )
      end

      sig do
        override.returns(
          {
            code: String,
            location:
              Nextbillionai::Models::OptimizationComputeResponse::Location,
            trips:
              T::Array[
                Nextbillionai::Models::OptimizationComputeResponse::Trip
              ],
            waypoints:
              T::Array[
                Nextbillionai::Models::OptimizationComputeResponse::Waypoint
              ]
          }
        )
      end
      def to_hash
      end

      class Location < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::OptimizationComputeResponse::Location,
              Nextbillionai::Internal::AnyHash
            )
          end

        # Latitude coordinate of the location.
        sig { returns(T.nilable(Float)) }
        attr_reader :latitude

        sig { params(latitude: Float).void }
        attr_writer :latitude

        # Longitude coordinate of the location.
        sig { returns(T.nilable(Float)) }
        attr_reader :longitude

        sig { params(longitude: Float).void }
        attr_writer :longitude

        # Contains the latitude and longitude of a location
        sig do
          params(latitude: Float, longitude: Float).returns(T.attached_class)
        end
        def self.new(
          # Latitude coordinate of the location.
          latitude: nil,
          # Longitude coordinate of the location.
          longitude: nil
        )
        end

        sig { override.returns({ latitude: Float, longitude: Float }) }
        def to_hash
        end
      end

      class Trip < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::OptimizationComputeResponse::Trip,
              Nextbillionai::Internal::AnyHash
            )
          end

        # Distance of the trip in meters.
        sig { returns(T.nilable(Float)) }
        attr_reader :distance

        sig { params(distance: Float).void }
        attr_writer :distance

        # Duration of the trip in seconds
        sig { returns(T.nilable(Float)) }
        attr_reader :duration

        sig { params(duration: Float).void }
        attr_writer :duration

        # The GeoJSON representation of the route.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson
            )
          )
        end
        attr_reader :geojson

        sig do
          params(
            geojson:
              Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson::OrHash
          ).void
        end
        attr_writer :geojson

        # `polyline` or `polyline6` format of route geometry.
        sig { returns(T.nilable(String)) }
        attr_reader :geometry

        sig { params(geometry: String).void }
        attr_writer :geometry

        sig do
          returns(
            T.nilable(
              T::Array[
                Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg
              ]
            )
          )
        end
        attr_reader :legs

        sig do
          params(
            legs:
              T::Array[
                Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::OrHash
              ]
          ).void
        end
        attr_writer :legs

        sig do
          params(
            distance: Float,
            duration: Float,
            geojson:
              Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson::OrHash,
            geometry: String,
            legs:
              T::Array[
                Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # Distance of the trip in meters.
          distance: nil,
          # Duration of the trip in seconds
          duration: nil,
          # The GeoJSON representation of the route.
          geojson: nil,
          # `polyline` or `polyline6` format of route geometry.
          geometry: nil,
          legs: nil
        )
        end

        sig do
          override.returns(
            {
              distance: Float,
              duration: Float,
              geojson:
                Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson,
              geometry: String,
              legs:
                T::Array[
                  Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg
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
                Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson,
                Nextbillionai::Internal::AnyHash
              )
            end

          # The encoded geometry of the geojson in the `trip`.
          sig { returns(T.nilable(String)) }
          attr_reader :geometry

          sig { params(geometry: String).void }
          attr_writer :geometry

          # Additional properties associated with the `trip`.
          sig { returns(T.nilable(String)) }
          attr_reader :properties

          sig { params(properties: String).void }
          attr_writer :properties

          # The type of the GeoJSON object.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson::Type::TaggedSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson::Type::OrSymbol
            ).void
          end
          attr_writer :type

          # The GeoJSON representation of the route.
          sig do
            params(
              geometry: String,
              properties: String,
              type:
                Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The encoded geometry of the geojson in the `trip`.
            geometry: nil,
            # Additional properties associated with the `trip`.
            properties: nil,
            # The type of the GeoJSON object.
            type: nil
          )
          end

          sig do
            override.returns(
              {
                geometry: String,
                properties: String,
                type:
                  Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # The type of the GeoJSON object.
          module Type
            extend Nextbillionai::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            POINT =
              T.let(
                :Point,
                Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson::Type::TaggedSymbol
              )
            MULTI_POINT =
              T.let(
                :MultiPoint,
                Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson::Type::TaggedSymbol
              )
            LINE_STRING =
              T.let(
                :LineString,
                Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson::Type::TaggedSymbol
              )
            MULTI_LINE_STRING =
              T.let(
                :MultiLineString,
                Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson::Type::TaggedSymbol
              )
            POLYGON =
              T.let(
                :Polygon,
                Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson::Type::TaggedSymbol
              )
            MULTI_POLYGON =
              T.let(
                :MultiPolygon,
                Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson::Type::TaggedSymbol
              )
            GEOMETRY_COLLECTION =
              T.let(
                :GeometryCollection,
                Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson::Type::TaggedSymbol
              )
            FEATURE =
              T.let(
                :Feature,
                Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson::Type::TaggedSymbol
              )
            FEATURE_COLLECTION =
              T.let(
                :FeatureCollection,
                Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson::Type::TaggedSymbol
              )
            LINK =
              T.let(
                :Link,
                Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Leg < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Distance of leg in metres.
          sig { returns(T.nilable(Float)) }
          attr_reader :distance

          sig { params(distance: Float).void }
          attr_writer :distance

          # Duration of leg in seconds.
          sig { returns(T.nilable(Float)) }
          attr_reader :duration

          sig { params(duration: Float).void }
          attr_writer :duration

          # An array of step objects.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step
                ]
              )
            )
          end
          attr_reader :steps

          sig do
            params(
              steps:
                T::Array[
                  Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::OrHash
                ]
            ).void
          end
          attr_writer :steps

          # Summary of the `leg` object.
          sig { returns(T.nilable(String)) }
          attr_reader :summary

          sig { params(summary: String).void }
          attr_writer :summary

          sig do
            params(
              distance: Float,
              duration: Float,
              steps:
                T::Array[
                  Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::OrHash
                ],
              summary: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Distance of leg in metres.
            distance: nil,
            # Duration of leg in seconds.
            duration: nil,
            # An array of step objects.
            steps: nil,
            # Summary of the `leg` object.
            summary: nil
          )
          end

          sig do
            override.returns(
              {
                distance: Float,
                duration: Float,
                steps:
                  T::Array[
                    Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step
                  ],
                summary: String
              }
            )
          end
          def to_hash
          end

          class Step < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Distance of the `step` object in meters.
            sig { returns(T.nilable(Float)) }
            attr_reader :distance

            sig { params(distance: Float).void }
            attr_writer :distance

            # Duration of the `step` object in seconds.
            sig { returns(T.nilable(Float)) }
            attr_reader :duration

            sig { params(duration: Float).void }
            attr_writer :duration

            # The GeoJSON representation of the `step`.
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson
                )
              )
            end
            attr_reader :geojson

            sig do
              params(
                geojson:
                  Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson::OrHash
              ).void
            end
            attr_writer :geojson

            # Encoded geometry of the `step` in the selected format.
            sig { returns(T.nilable(String)) }
            attr_reader :geometry

            sig { params(geometry: String).void }
            attr_writer :geometry

            sig do
              params(
                distance: Float,
                duration: Float,
                geojson:
                  Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson::OrHash,
                geometry: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Distance of the `step` object in meters.
              distance: nil,
              # Duration of the `step` object in seconds.
              duration: nil,
              # The GeoJSON representation of the `step`.
              geojson: nil,
              # Encoded geometry of the `step` in the selected format.
              geometry: nil
            )
            end

            sig do
              override.returns(
                {
                  distance: Float,
                  duration: Float,
                  geojson:
                    Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson,
                  geometry: String
                }
              )
            end
            def to_hash
            end

            class Geojson < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson,
                    Nextbillionai::Internal::AnyHash
                  )
                end

              # The encoded geometry of the geojson in the `step`.
              sig { returns(T.nilable(String)) }
              attr_reader :geometry

              sig { params(geometry: String).void }
              attr_writer :geometry

              # Additional properties associated with the `step`.
              sig { returns(T.nilable(String)) }
              attr_reader :properties

              sig { params(properties: String).void }
              attr_writer :properties

              # The type of the GeoJSON object.
              sig do
                returns(
                  T.nilable(
                    Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson::Type::TaggedSymbol
                  )
                )
              end
              attr_reader :type

              sig do
                params(
                  type:
                    Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson::Type::OrSymbol
                ).void
              end
              attr_writer :type

              # The GeoJSON representation of the `step`.
              sig do
                params(
                  geometry: String,
                  properties: String,
                  type:
                    Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The encoded geometry of the geojson in the `step`.
                geometry: nil,
                # Additional properties associated with the `step`.
                properties: nil,
                # The type of the GeoJSON object.
                type: nil
              )
              end

              sig do
                override.returns(
                  {
                    geometry: String,
                    properties: String,
                    type:
                      Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson::Type::TaggedSymbol
                  }
                )
              end
              def to_hash
              end

              # The type of the GeoJSON object.
              module Type
                extend Nextbillionai::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                POINT =
                  T.let(
                    :Point,
                    Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson::Type::TaggedSymbol
                  )
                MULTI_POINT =
                  T.let(
                    :MultiPoint,
                    Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson::Type::TaggedSymbol
                  )
                LINE_STRING =
                  T.let(
                    :LineString,
                    Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson::Type::TaggedSymbol
                  )
                MULTI_LINE_STRING =
                  T.let(
                    :MultiLineString,
                    Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson::Type::TaggedSymbol
                  )
                POLYGON =
                  T.let(
                    :Polygon,
                    Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson::Type::TaggedSymbol
                  )
                MULTI_POLYGON =
                  T.let(
                    :MultiPolygon,
                    Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson::Type::TaggedSymbol
                  )
                GEOMETRY_COLLECTION =
                  T.let(
                    :GeometryCollection,
                    Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson::Type::TaggedSymbol
                  )
                FEATURE =
                  T.let(
                    :Feature,
                    Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson::Type::TaggedSymbol
                  )
                FEATURE_COLLECTION =
                  T.let(
                    :FeatureCollection,
                    Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson::Type::TaggedSymbol
                  )
                LINK =
                  T.let(
                    :Link,
                    Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end
      end

      class Waypoint < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::OptimizationComputeResponse::Waypoint,
              Nextbillionai::Internal::AnyHash
            )
          end

        # Describes the location of the waypoint.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Models::OptimizationComputeResponse::Waypoint::Location
            )
          )
        end
        attr_reader :location

        sig do
          params(
            location:
              Nextbillionai::Models::OptimizationComputeResponse::Waypoint::Location::OrHash
          ).void
        end
        attr_writer :location

        # Name of the waypoint.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Denotes the ID of a trip. Starts with 0.
        sig { returns(T.nilable(Integer)) }
        attr_reader :trips_index

        sig { params(trips_index: Integer).void }
        attr_writer :trips_index

        # Denotes the id of a waypoint. The first waypoint is denoted with 0. And onwards
        # with 1, 2 etc.
        sig { returns(T.nilable(Integer)) }
        attr_reader :waypoint_index

        sig { params(waypoint_index: Integer).void }
        attr_writer :waypoint_index

        sig do
          params(
            location:
              Nextbillionai::Models::OptimizationComputeResponse::Waypoint::Location::OrHash,
            name: String,
            trips_index: Integer,
            waypoint_index: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Describes the location of the waypoint.
          location: nil,
          # Name of the waypoint.
          name: nil,
          # Denotes the ID of a trip. Starts with 0.
          trips_index: nil,
          # Denotes the id of a waypoint. The first waypoint is denoted with 0. And onwards
          # with 1, 2 etc.
          waypoint_index: nil
        )
        end

        sig do
          override.returns(
            {
              location:
                Nextbillionai::Models::OptimizationComputeResponse::Waypoint::Location,
              name: String,
              trips_index: Integer,
              waypoint_index: Integer
            }
          )
        end
        def to_hash
        end

        class Location < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::OptimizationComputeResponse::Waypoint::Location,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Latitude coordinate of the waypoint.
          sig { returns(T.nilable(Float)) }
          attr_reader :latitude

          sig { params(latitude: Float).void }
          attr_writer :latitude

          # Longitude coordinate of the waypoint.
          sig { returns(T.nilable(Float)) }
          attr_reader :longitude

          sig { params(longitude: Float).void }
          attr_writer :longitude

          # Describes the location of the waypoint.
          sig do
            params(latitude: Float, longitude: Float).returns(T.attached_class)
          end
          def self.new(
            # Latitude coordinate of the waypoint.
            latitude: nil,
            # Longitude coordinate of the waypoint.
            longitude: nil
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
