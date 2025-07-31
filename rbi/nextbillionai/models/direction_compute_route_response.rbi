# typed: strong

module Nextbillionai
  module Models
    class DirectionComputeRouteResponse < Nextbillionai::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::Models::DirectionComputeRouteResponse,
            Nextbillionai::Internal::AnyHash
          )
        end

      # Displays the error message in case of a failed request or operation. Please note
      # that this parameter is not returned in the response in case of a successful
      # request.
      sig { returns(T.nilable(String)) }
      attr_reader :msg

      sig { params(msg: String).void }
      attr_writer :msg

      # An object containing details about the returned route. Will contain multiple
      # objects if more than one routes are present in the response.
      sig do
        returns(
          T.nilable(Nextbillionai::Models::DirectionComputeRouteResponse::Route)
        )
      end
      attr_reader :route

      sig do
        params(
          route:
            Nextbillionai::Models::DirectionComputeRouteResponse::Route::OrHash
        ).void
      end
      attr_writer :route

      # A string indicating the state of the response. On normal responses, the value
      # will be Ok. Indicative HTTP error codes are returned for different errors. See
      # the [API Errors Codes](#api-error-codes) section below for more information.
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      sig do
        params(
          msg: String,
          route:
            Nextbillionai::Models::DirectionComputeRouteResponse::Route::OrHash,
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Displays the error message in case of a failed request or operation. Please note
        # that this parameter is not returned in the response in case of a successful
        # request.
        msg: nil,
        # An object containing details about the returned route. Will contain multiple
        # objects if more than one routes are present in the response.
        route: nil,
        # A string indicating the state of the response. On normal responses, the value
        # will be Ok. Indicative HTTP error codes are returned for different errors. See
        # the [API Errors Codes](#api-error-codes) section below for more information.
        status: nil
      )
      end

      sig do
        override.returns(
          {
            msg: String,
            route: Nextbillionai::Models::DirectionComputeRouteResponse::Route,
            status: String
          }
        )
      end
      def to_hash
      end

      class Route < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::DirectionComputeRouteResponse::Route,
              Nextbillionai::Internal::AnyHash
            )
          end

        # The distance, in meters, for the complete trip.
        sig { returns(T.nilable(Float)) }
        attr_reader :distance

        sig { params(distance: Float).void }
        attr_writer :distance

        # The duration, in seconds, of the complete trip.
        sig { returns(T.nilable(Float)) }
        attr_reader :duration

        sig { params(duration: Float).void }
        attr_writer :duration

        # Location coordinates of the point where the route ends. It is the same as the
        # destination in the input request. Returned only when steps is true in the input
        # request.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Models::DirectionComputeRouteResponse::Route::EndLocation
            )
          )
        end
        attr_reader :end_location

        sig do
          params(
            end_location:
              Nextbillionai::Models::DirectionComputeRouteResponse::Route::EndLocation::OrHash
          ).void
        end
        attr_writer :end_location

        # An object with geoJSON details of the route. This object is returned when the
        # geometry field is set to geojson in the input request, otherwise it is not
        # present in the response. The contents of this object follow the
        # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
        sig do
          returns(
            T.nilable(
              Nextbillionai::Models::DirectionComputeRouteResponse::Route::Geojson
            )
          )
        end
        attr_reader :geojson

        sig do
          params(
            geojson:
              Nextbillionai::Models::DirectionComputeRouteResponse::Route::Geojson::OrHash
          ).void
        end
        attr_writer :geojson

        # Encoded geometry of the returned route in the selected format and specified
        # overview verbosity. This parameter is configured in the input request.
        sig { returns(T.nilable(String)) }
        attr_reader :geometry

        sig { params(geometry: String).void }
        attr_writer :geometry

        # An array of objects returning the details about each leg of the route. waypoints
        # split the route into legs.
        sig do
          returns(
            T.nilable(
              T::Array[
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg
              ]
            )
          )
        end
        attr_reader :legs

        sig do
          params(
            legs:
              T::Array[
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::OrHash
              ]
          ).void
        end
        attr_writer :legs

        # Location coordinates of the point where the route starts. It is the same as the
        # origin in the input request. Returned only when steps is true in the input
        # request.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Models::DirectionComputeRouteResponse::Route::StartLocation
            )
          )
        end
        attr_reader :start_location

        sig do
          params(
            start_location:
              Nextbillionai::Models::DirectionComputeRouteResponse::Route::StartLocation::OrHash
          ).void
        end
        attr_writer :start_location

        # An object containing details about the returned route. Will contain multiple
        # objects if more than one routes are present in the response.
        sig do
          params(
            distance: Float,
            duration: Float,
            end_location:
              Nextbillionai::Models::DirectionComputeRouteResponse::Route::EndLocation::OrHash,
            geojson:
              Nextbillionai::Models::DirectionComputeRouteResponse::Route::Geojson::OrHash,
            geometry: String,
            legs:
              T::Array[
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::OrHash
              ],
            start_location:
              Nextbillionai::Models::DirectionComputeRouteResponse::Route::StartLocation::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The distance, in meters, for the complete trip.
          distance: nil,
          # The duration, in seconds, of the complete trip.
          duration: nil,
          # Location coordinates of the point where the route ends. It is the same as the
          # destination in the input request. Returned only when steps is true in the input
          # request.
          end_location: nil,
          # An object with geoJSON details of the route. This object is returned when the
          # geometry field is set to geojson in the input request, otherwise it is not
          # present in the response. The contents of this object follow the
          # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
          geojson: nil,
          # Encoded geometry of the returned route in the selected format and specified
          # overview verbosity. This parameter is configured in the input request.
          geometry: nil,
          # An array of objects returning the details about each leg of the route. waypoints
          # split the route into legs.
          legs: nil,
          # Location coordinates of the point where the route starts. It is the same as the
          # origin in the input request. Returned only when steps is true in the input
          # request.
          start_location: nil
        )
        end

        sig do
          override.returns(
            {
              distance: Float,
              duration: Float,
              end_location:
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::EndLocation,
              geojson:
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::Geojson,
              geometry: String,
              legs:
                T::Array[
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg
                ],
              start_location:
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::StartLocation
            }
          )
        end
        def to_hash
        end

        class EndLocation < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::EndLocation,
                Nextbillionai::Internal::AnyHash
              )
            end

          # latitude of the start_location.
          sig { returns(T.nilable(Float)) }
          attr_reader :latitude

          sig { params(latitude: Float).void }
          attr_writer :latitude

          # longitude of the start_location.
          sig { returns(T.nilable(Float)) }
          attr_reader :longitude

          sig { params(longitude: Float).void }
          attr_writer :longitude

          # Location coordinates of the point where the route ends. It is the same as the
          # destination in the input request. Returned only when steps is true in the input
          # request.
          sig do
            params(latitude: Float, longitude: Float).returns(T.attached_class)
          end
          def self.new(
            # latitude of the start_location.
            latitude: nil,
            # longitude of the start_location.
            longitude: nil
          )
          end

          sig { override.returns({ latitude: Float, longitude: Float }) }
          def to_hash
          end
        end

        class Geojson < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::Geojson,
                Nextbillionai::Internal::AnyHash
              )
            end

          # An object with details of the geoJSON geometry of the route.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::Geojson::Geometry
              )
            )
          end
          attr_reader :geometry

          sig do
            params(
              geometry:
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::Geojson::Geometry::OrHash
            ).void
          end
          attr_writer :geometry

          # Property associated with the geoJSON shape.
          sig { returns(T.nilable(String)) }
          attr_reader :properties

          sig { params(properties: String).void }
          attr_writer :properties

          # Type of the geoJSON object.
          sig { returns(T.nilable(String)) }
          attr_reader :type

          sig { params(type: String).void }
          attr_writer :type

          # An object with geoJSON details of the route. This object is returned when the
          # geometry field is set to geojson in the input request, otherwise it is not
          # present in the response. The contents of this object follow the
          # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
          sig do
            params(
              geometry:
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::Geojson::Geometry::OrHash,
              properties: String,
              type: String
            ).returns(T.attached_class)
          end
          def self.new(
            # An object with details of the geoJSON geometry of the route.
            geometry: nil,
            # Property associated with the geoJSON shape.
            properties: nil,
            # Type of the geoJSON object.
            type: nil
          )
          end

          sig do
            override.returns(
              {
                geometry:
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Geojson::Geometry,
                properties: String,
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
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Geojson::Geometry,
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
              override.returns({ coordinates: T::Array[Float], type: String })
            end
            def to_hash
            end
          end
        end

        class Leg < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg,
                Nextbillionai::Internal::AnyHash
              )
            end

          # An object containing leg distance value, in meters.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Distance
              )
            )
          end
          attr_reader :distance

          sig do
            params(
              distance:
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Distance::OrHash
            ).void
          end
          attr_writer :distance

          # An object containing leg duration value, in seconds.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Duration
              )
            )
          end
          attr_reader :duration

          sig do
            params(
              duration:
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Duration::OrHash
            ).void
          end
          attr_writer :duration

          # Location coordinates of the point where the leg ends. Returned only when steps
          # is true in the input request.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::EndLocation
              )
            )
          end
          attr_reader :end_location

          sig do
            params(
              end_location:
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::EndLocation::OrHash
            ).void
          end
          attr_writer :end_location

          # Location coordinates of the point where the leg starts. Returned only when steps
          # is true in the input request.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::StartLocation
              )
            )
          end
          attr_reader :start_location

          sig do
            params(
              start_location:
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::StartLocation::OrHash
            ).void
          end
          attr_writer :start_location

          # An array of objects with details of each step of the legs. Returned only when
          # steps is true in the input request. An empty array is returned when steps is
          # false in the input request.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step
                ]
              )
            )
          end
          attr_reader :steps

          sig do
            params(
              steps:
                T::Array[
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::OrHash
                ]
            ).void
          end
          attr_writer :steps

          sig do
            params(
              distance:
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Distance::OrHash,
              duration:
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Duration::OrHash,
              end_location:
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::EndLocation::OrHash,
              start_location:
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::StartLocation::OrHash,
              steps:
                T::Array[
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # An object containing leg distance value, in meters.
            distance: nil,
            # An object containing leg duration value, in seconds.
            duration: nil,
            # Location coordinates of the point where the leg ends. Returned only when steps
            # is true in the input request.
            end_location: nil,
            # Location coordinates of the point where the leg starts. Returned only when steps
            # is true in the input request.
            start_location: nil,
            # An array of objects with details of each step of the legs. Returned only when
            # steps is true in the input request. An empty array is returned when steps is
            # false in the input request.
            steps: nil
          )
          end

          sig do
            override.returns(
              {
                distance:
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Distance,
                duration:
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Duration,
                end_location:
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::EndLocation,
                start_location:
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::StartLocation,
                steps:
                  T::Array[
                    Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step
                  ]
              }
            )
          end
          def to_hash
          end

          class Distance < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Distance,
                  Nextbillionai::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Float)) }
            attr_reader :value

            sig { params(value: Float).void }
            attr_writer :value

            # An object containing leg distance value, in meters.
            sig { params(value: Float).returns(T.attached_class) }
            def self.new(value: nil)
            end

            sig { override.returns({ value: Float }) }
            def to_hash
            end
          end

          class Duration < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Duration,
                  Nextbillionai::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Float)) }
            attr_reader :value

            sig { params(value: Float).void }
            attr_writer :value

            # An object containing leg duration value, in seconds.
            sig { params(value: Float).returns(T.attached_class) }
            def self.new(value: nil)
            end

            sig { override.returns({ value: Float }) }
            def to_hash
            end
          end

          class EndLocation < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::EndLocation,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Latitude of the end_location of the leg.
            sig { returns(T.nilable(Float)) }
            attr_reader :latitude

            sig { params(latitude: Float).void }
            attr_writer :latitude

            # Longitude of the end_location of the leg.
            sig { returns(T.nilable(Float)) }
            attr_reader :longitude

            sig { params(longitude: Float).void }
            attr_writer :longitude

            # Location coordinates of the point where the leg ends. Returned only when steps
            # is true in the input request.
            sig do
              params(latitude: Float, longitude: Float).returns(
                T.attached_class
              )
            end
            def self.new(
              # Latitude of the end_location of the leg.
              latitude: nil,
              # Longitude of the end_location of the leg.
              longitude: nil
            )
            end

            sig { override.returns({ latitude: Float, longitude: Float }) }
            def to_hash
            end
          end

          class StartLocation < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::StartLocation,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Latitude of the start_location of the leg.
            sig { returns(T.nilable(Float)) }
            attr_reader :latitude

            sig { params(latitude: Float).void }
            attr_writer :latitude

            # Longitude of the start_location of the leg.
            sig { returns(T.nilable(Float)) }
            attr_reader :longitude

            sig { params(longitude: Float).void }
            attr_writer :longitude

            # Location coordinates of the point where the leg starts. Returned only when steps
            # is true in the input request.
            sig do
              params(latitude: Float, longitude: Float).returns(
                T.attached_class
              )
            end
            def self.new(
              # Latitude of the start_location of the leg.
              latitude: nil,
              # Longitude of the start_location of the leg.
              longitude: nil
            )
            end

            sig { override.returns({ latitude: Float, longitude: Float }) }
            def to_hash
            end
          end

          class Step < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # An object containing step distance value, in meters.
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Distance
                )
              )
            end
            attr_reader :distance

            sig do
              params(
                distance:
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Distance::OrHash
              ).void
            end
            attr_writer :distance

            # An object containing step duration value, in seconds.
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Duration
                )
              )
            end
            attr_reader :duration

            sig do
              params(
                duration:
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Duration::OrHash
              ).void
            end
            attr_writer :duration

            # Location coordinates of the point where the step ends.
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::EndLocation
                )
              )
            end
            attr_reader :end_location

            sig do
              params(
                end_location:
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::EndLocation::OrHash
              ).void
            end
            attr_writer :end_location

            # An object with geoJSON details of the step.This object is returned when the
            # geometry field is set to geojson in the input request, otherwise it is not
            # present in the response. The contents of this object follow the
            # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Geojson
                )
              )
            end
            attr_reader :geojson

            sig do
              params(
                geojson:
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Geojson::OrHash
              ).void
            end
            attr_writer :geojson

            # Encoded geometry of the step in the selected format.
            sig { returns(T.nilable(String)) }
            attr_reader :geometry

            sig { params(geometry: String).void }
            attr_writer :geometry

            # An object with maneuver details for the step.
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Maneuver
                )
              )
            end
            attr_reader :maneuver

            sig do
              params(
                maneuver:
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Maneuver::OrHash
              ).void
            end
            attr_writer :maneuver

            # Location coordinates of the point where the step starts.
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::StartLocation
                )
              )
            end
            attr_reader :start_location

            sig do
              params(
                start_location:
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::StartLocation::OrHash
              ).void
            end
            attr_writer :start_location

            sig do
              params(
                distance:
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Distance::OrHash,
                duration:
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Duration::OrHash,
                end_location:
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::EndLocation::OrHash,
                geojson:
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Geojson::OrHash,
                geometry: String,
                maneuver:
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Maneuver::OrHash,
                start_location:
                  Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::StartLocation::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # An object containing step distance value, in meters.
              distance: nil,
              # An object containing step duration value, in seconds.
              duration: nil,
              # Location coordinates of the point where the step ends.
              end_location: nil,
              # An object with geoJSON details of the step.This object is returned when the
              # geometry field is set to geojson in the input request, otherwise it is not
              # present in the response. The contents of this object follow the
              # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
              geojson: nil,
              # Encoded geometry of the step in the selected format.
              geometry: nil,
              # An object with maneuver details for the step.
              maneuver: nil,
              # Location coordinates of the point where the step starts.
              start_location: nil
            )
            end

            sig do
              override.returns(
                {
                  distance:
                    Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Distance,
                  duration:
                    Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Duration,
                  end_location:
                    Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::EndLocation,
                  geojson:
                    Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Geojson,
                  geometry: String,
                  maneuver:
                    Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Maneuver,
                  start_location:
                    Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::StartLocation
                }
              )
            end
            def to_hash
            end

            class Distance < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Distance,
                    Nextbillionai::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Float)) }
              attr_reader :value

              sig { params(value: Float).void }
              attr_writer :value

              # An object containing step distance value, in meters.
              sig { params(value: Float).returns(T.attached_class) }
              def self.new(value: nil)
              end

              sig { override.returns({ value: Float }) }
              def to_hash
              end
            end

            class Duration < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Duration,
                    Nextbillionai::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Float)) }
              attr_reader :value

              sig { params(value: Float).void }
              attr_writer :value

              # An object containing step duration value, in seconds.
              sig { params(value: Float).returns(T.attached_class) }
              def self.new(value: nil)
              end

              sig { override.returns({ value: Float }) }
              def to_hash
              end
            end

            class EndLocation < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::EndLocation,
                    Nextbillionai::Internal::AnyHash
                  )
                end

              # Latitude of the end_location of the step.
              sig { returns(T.nilable(Float)) }
              attr_reader :latitude

              sig { params(latitude: Float).void }
              attr_writer :latitude

              # Longitude of the end_location of the step.
              sig { returns(T.nilable(Float)) }
              attr_reader :longitude

              sig { params(longitude: Float).void }
              attr_writer :longitude

              # Location coordinates of the point where the step ends.
              sig do
                params(latitude: Float, longitude: Float).returns(
                  T.attached_class
                )
              end
              def self.new(
                # Latitude of the end_location of the step.
                latitude: nil,
                # Longitude of the end_location of the step.
                longitude: nil
              )
              end

              sig { override.returns({ latitude: Float, longitude: Float }) }
              def to_hash
              end
            end

            class Geojson < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Geojson,
                    Nextbillionai::Internal::AnyHash
                  )
                end

              # An object with details of the geoJSON geometry of the step.
              sig do
                returns(
                  T.nilable(
                    Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Geojson::Geometry
                  )
                )
              end
              attr_reader :geometry

              sig do
                params(
                  geometry:
                    Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Geojson::Geometry::OrHash
                ).void
              end
              attr_writer :geometry

              # Property associated with the geoJSON shape.
              sig { returns(T.nilable(String)) }
              attr_reader :properties

              sig { params(properties: String).void }
              attr_writer :properties

              # Type of the geoJSON object.
              sig { returns(T.nilable(String)) }
              attr_reader :type

              sig { params(type: String).void }
              attr_writer :type

              # An object with geoJSON details of the step.This object is returned when the
              # geometry field is set to geojson in the input request, otherwise it is not
              # present in the response. The contents of this object follow the
              # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
              sig do
                params(
                  geometry:
                    Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Geojson::Geometry::OrHash,
                  properties: String,
                  type: String
                ).returns(T.attached_class)
              end
              def self.new(
                # An object with details of the geoJSON geometry of the step.
                geometry: nil,
                # Property associated with the geoJSON shape.
                properties: nil,
                # Type of the geoJSON object.
                type: nil
              )
              end

              sig do
                override.returns(
                  {
                    geometry:
                      Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Geojson::Geometry,
                    properties: String,
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
                      Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Geojson::Geometry,
                      Nextbillionai::Internal::AnyHash
                    )
                  end

                # An array of coordinates in the [longitude, latitude] format, representing the
                # step geometry.
                sig { returns(T.nilable(T::Array[Float])) }
                attr_reader :coordinates

                sig { params(coordinates: T::Array[Float]).void }
                attr_writer :coordinates

                # Type of the geoJSON geometry.
                sig { returns(T.nilable(String)) }
                attr_reader :type

                sig { params(type: String).void }
                attr_writer :type

                # An object with details of the geoJSON geometry of the step.
                sig do
                  params(coordinates: T::Array[Float], type: String).returns(
                    T.attached_class
                  )
                end
                def self.new(
                  # An array of coordinates in the [longitude, latitude] format, representing the
                  # step geometry.
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

            class Maneuver < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Maneuver,
                    Nextbillionai::Internal::AnyHash
                  )
                end

              # The clockwise angle from true north to the direction of travel immediately after
              # the maneuver. Range of values is between 0-359.
              sig { returns(T.nilable(Integer)) }
              attr_reader :bearing_after

              sig { params(bearing_after: Integer).void }
              attr_writer :bearing_after

              # The clockwise angle from true north to the direction of travel immediately
              # before the maneuver. Range of values is between 0-359.
              sig { returns(T.nilable(Integer)) }
              attr_reader :bearing_before

              sig { params(bearing_before: Integer).void }
              attr_writer :bearing_before

              # A coordinate pair describing the location of the maneuver.
              sig do
                returns(
                  T.nilable(
                    Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Maneuver::Coordinate
                  )
                )
              end
              attr_reader :coordinate

              sig do
                params(
                  coordinate:
                    Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Maneuver::Coordinate::OrHash
                ).void
              end
              attr_writer :coordinate

              # A string indicating the type of maneuver.
              sig { returns(T.nilable(String)) }
              attr_reader :maneuver_type

              sig { params(maneuver_type: String).void }
              attr_writer :maneuver_type

              # Modifier associated with maneuver_type.
              sig { returns(T.nilable(String)) }
              attr_reader :modifier

              sig { params(modifier: String).void }
              attr_writer :modifier

              # An object with maneuver details for the step.
              sig do
                params(
                  bearing_after: Integer,
                  bearing_before: Integer,
                  coordinate:
                    Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Maneuver::Coordinate::OrHash,
                  maneuver_type: String,
                  modifier: String
                ).returns(T.attached_class)
              end
              def self.new(
                # The clockwise angle from true north to the direction of travel immediately after
                # the maneuver. Range of values is between 0-359.
                bearing_after: nil,
                # The clockwise angle from true north to the direction of travel immediately
                # before the maneuver. Range of values is between 0-359.
                bearing_before: nil,
                # A coordinate pair describing the location of the maneuver.
                coordinate: nil,
                # A string indicating the type of maneuver.
                maneuver_type: nil,
                # Modifier associated with maneuver_type.
                modifier: nil
              )
              end

              sig do
                override.returns(
                  {
                    bearing_after: Integer,
                    bearing_before: Integer,
                    coordinate:
                      Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Maneuver::Coordinate,
                    maneuver_type: String,
                    modifier: String
                  }
                )
              end
              def to_hash
              end

              class Coordinate < Nextbillionai::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Maneuver::Coordinate,
                      Nextbillionai::Internal::AnyHash
                    )
                  end

                # Latitude of the maneuver location.
                sig { returns(T.nilable(Float)) }
                attr_reader :latitude

                sig { params(latitude: Float).void }
                attr_writer :latitude

                # Longitude of the maneuver location.
                sig { returns(T.nilable(Float)) }
                attr_reader :longitude

                sig { params(longitude: Float).void }
                attr_writer :longitude

                # A coordinate pair describing the location of the maneuver.
                sig do
                  params(latitude: Float, longitude: Float).returns(
                    T.attached_class
                  )
                end
                def self.new(
                  # Latitude of the maneuver location.
                  latitude: nil,
                  # Longitude of the maneuver location.
                  longitude: nil
                )
                end

                sig { override.returns({ latitude: Float, longitude: Float }) }
                def to_hash
                end
              end
            end

            class StartLocation < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::StartLocation,
                    Nextbillionai::Internal::AnyHash
                  )
                end

              # Latitude of the start_location of the step.
              sig { returns(T.nilable(Float)) }
              attr_reader :latitude

              sig { params(latitude: Float).void }
              attr_writer :latitude

              # Longitude of the start_location of the step.
              sig { returns(T.nilable(Float)) }
              attr_reader :longitude

              sig { params(longitude: Float).void }
              attr_writer :longitude

              # Location coordinates of the point where the step starts.
              sig do
                params(latitude: Float, longitude: Float).returns(
                  T.attached_class
                )
              end
              def self.new(
                # Latitude of the start_location of the step.
                latitude: nil,
                # Longitude of the start_location of the step.
                longitude: nil
              )
              end

              sig { override.returns({ latitude: Float, longitude: Float }) }
              def to_hash
              end
            end
          end
        end

        class StartLocation < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::DirectionComputeRouteResponse::Route::StartLocation,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Latitude of the start_location.
          sig { returns(T.nilable(Float)) }
          attr_reader :latitude

          sig { params(latitude: Float).void }
          attr_writer :latitude

          # Longitude of the start_location.
          sig { returns(T.nilable(Float)) }
          attr_reader :longitude

          sig { params(longitude: Float).void }
          attr_writer :longitude

          # Location coordinates of the point where the route starts. It is the same as the
          # origin in the input request. Returned only when steps is true in the input
          # request.
          sig do
            params(latitude: Float, longitude: Float).returns(T.attached_class)
          end
          def self.new(
            # Latitude of the start_location.
            latitude: nil,
            # Longitude of the start_location.
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
