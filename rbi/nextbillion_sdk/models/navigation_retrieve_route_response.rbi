# typed: strong

module NextbillionSDK
  module Models
    class NavigationRetrieveRouteResponse < NextbillionSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::Models::NavigationRetrieveRouteResponse,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # Displays the error message in case of a failed request or operation. Please note
      # that this parameter is not returned in the response in case of a successful
      # request.
      sig { returns(T.nilable(String)) }
      attr_reader :msg

      sig { params(msg: String).void }
      attr_writer :msg

      # An array of objects describing different possible routes from the starting
      # location to the destination. Each object represents one route.
      sig do
        returns(
          T.nilable(
            T::Array[
              NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route
            ]
          )
        )
      end
      attr_reader :routes

      sig do
        params(
          routes:
            T::Array[
              NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::OrHash
            ]
        ).void
      end
      attr_writer :routes

      # A string indicating the state of the response. On normal responses, the value
      # will be `Ok`. Indicative HTTP error codes are returned for different errors. See
      # the [API Errors Codes](#api-error-codes) section below for more information.
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      # warning when facing unexpected behaviour
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :warning

      sig { params(warning: T::Array[String]).void }
      attr_writer :warning

      sig do
        params(
          msg: String,
          routes:
            T::Array[
              NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::OrHash
            ],
          status: String,
          warning: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # Displays the error message in case of a failed request or operation. Please note
        # that this parameter is not returned in the response in case of a successful
        # request.
        msg: nil,
        # An array of objects describing different possible routes from the starting
        # location to the destination. Each object represents one route.
        routes: nil,
        # A string indicating the state of the response. On normal responses, the value
        # will be `Ok`. Indicative HTTP error codes are returned for different errors. See
        # the [API Errors Codes](#api-error-codes) section below for more information.
        status: nil,
        # warning when facing unexpected behaviour
        warning: nil
      )
      end

      sig do
        override.returns(
          {
            msg: String,
            routes:
              T::Array[
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route
              ],
            status: String,
            warning: T::Array[String]
          }
        )
      end
      def to_hash
      end

      class Route < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # The distance, in meters, of the complete trip.
        sig { returns(T.nilable(Float)) }
        attr_reader :distance

        sig { params(distance: Float).void }
        attr_writer :distance

        # The total distance of the route, including additional details such as extra
        # maneuvers or loops, in meters.
        sig { returns(T.nilable(Float)) }
        attr_reader :distance_full

        sig { params(distance_full: Float).void }
        attr_writer :distance_full

        # The duration, in seconds, of the complete trip.
        sig { returns(T.nilable(Integer)) }
        attr_reader :duration

        sig { params(duration: Integer).void }
        attr_writer :duration

        # Location coordinates of the point where the route ends.
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::EndLocation
            )
          )
        end
        attr_reader :end_location

        sig do
          params(
            end_location:
              NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::EndLocation::OrHash
          ).void
        end
        attr_writer :end_location

        # The GeoJSON representation of the route.
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Geojson
            )
          )
        end
        attr_reader :geojson

        sig do
          params(
            geojson:
              NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Geojson::OrHash
          ).void
        end
        attr_writer :geojson

        # Encoded geometry of the returned route as per the selected format in `geometry`
        # and specified `overview` verbosity. Please note the `overview` will always be
        # `full` when `original_shape` parameter is used in the input request.
        sig { returns(T.nilable(String)) }
        attr_reader :geometry

        sig { params(geometry: String).void }
        attr_writer :geometry

        # An array of objects returning the details about each `leg` of the route.
        # `waypoints` split the route into legs.
        sig do
          returns(
            T.nilable(
              T::Array[
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg
              ]
            )
          )
        end
        attr_reader :legs

        sig do
          params(
            legs:
              T::Array[
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::OrHash
              ]
          ).void
        end
        attr_writer :legs

        # The predicted duration of the route based on real-time traffic conditions.
        sig { returns(T.nilable(Float)) }
        attr_reader :predicted_duration

        sig { params(predicted_duration: Float).void }
        attr_writer :predicted_duration

        # The raw estimated duration of the route in seconds.
        sig { returns(T.nilable(Float)) }
        attr_reader :raw_duration

        sig { params(raw_duration: Float).void }
        attr_writer :raw_duration

        # Special geospatial objects or landmarks crossed along the route.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :special_objects

        sig { params(special_objects: T.anything).void }
        attr_writer :special_objects

        # Location coordinates of the point where the route starts.
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::StartLocation
            )
          )
        end
        attr_reader :start_location

        sig do
          params(
            start_location:
              NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::StartLocation::OrHash
          ).void
        end
        attr_writer :start_location

        # A weight value associated with the route or leg.
        sig { returns(T.nilable(Float)) }
        attr_reader :weight

        sig { params(weight: Float).void }
        attr_writer :weight

        sig do
          params(
            distance: Float,
            distance_full: Float,
            duration: Integer,
            end_location:
              NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::EndLocation::OrHash,
            geojson:
              NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Geojson::OrHash,
            geometry: String,
            legs:
              T::Array[
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::OrHash
              ],
            predicted_duration: Float,
            raw_duration: Float,
            special_objects: T.anything,
            start_location:
              NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::StartLocation::OrHash,
            weight: Float
          ).returns(T.attached_class)
        end
        def self.new(
          # The distance, in meters, of the complete trip.
          distance: nil,
          # The total distance of the route, including additional details such as extra
          # maneuvers or loops, in meters.
          distance_full: nil,
          # The duration, in seconds, of the complete trip.
          duration: nil,
          # Location coordinates of the point where the route ends.
          end_location: nil,
          # The GeoJSON representation of the route.
          geojson: nil,
          # Encoded geometry of the returned route as per the selected format in `geometry`
          # and specified `overview` verbosity. Please note the `overview` will always be
          # `full` when `original_shape` parameter is used in the input request.
          geometry: nil,
          # An array of objects returning the details about each `leg` of the route.
          # `waypoints` split the route into legs.
          legs: nil,
          # The predicted duration of the route based on real-time traffic conditions.
          predicted_duration: nil,
          # The raw estimated duration of the route in seconds.
          raw_duration: nil,
          # Special geospatial objects or landmarks crossed along the route.
          special_objects: nil,
          # Location coordinates of the point where the route starts.
          start_location: nil,
          # A weight value associated with the route or leg.
          weight: nil
        )
        end

        sig do
          override.returns(
            {
              distance: Float,
              distance_full: Float,
              duration: Integer,
              end_location:
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::EndLocation,
              geojson:
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Geojson,
              geometry: String,
              legs:
                T::Array[
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg
                ],
              predicted_duration: Float,
              raw_duration: Float,
              special_objects: T.anything,
              start_location:
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::StartLocation,
              weight: Float
            }
          )
        end
        def to_hash
        end

        class EndLocation < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::EndLocation,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # Latitude of the `end_location`.
          sig { returns(T.nilable(Float)) }
          attr_reader :latitude

          sig { params(latitude: Float).void }
          attr_writer :latitude

          # Longitude of the `end_location`.
          sig { returns(T.nilable(Float)) }
          attr_reader :longitude

          sig { params(longitude: Float).void }
          attr_writer :longitude

          # Location coordinates of the point where the route ends.
          sig do
            params(latitude: Float, longitude: Float).returns(T.attached_class)
          end
          def self.new(
            # Latitude of the `end_location`.
            latitude: nil,
            # Longitude of the `end_location`.
            longitude: nil
          )
          end

          sig { override.returns({ latitude: Float, longitude: Float }) }
          def to_hash
          end
        end

        class Geojson < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Geojson,
                NextbillionSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :geometry

          sig { params(geometry: String).void }
          attr_writer :geometry

          sig { returns(T.nilable(String)) }
          attr_reader :properties

          sig { params(properties: String).void }
          attr_writer :properties

          sig do
            returns(
              T.nilable(
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Geojson::Type::TaggedSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Geojson::Type::OrSymbol
            ).void
          end
          attr_writer :type

          # The GeoJSON representation of the route.
          sig do
            params(
              geometry: String,
              properties: String,
              type:
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Geojson::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(geometry: nil, properties: nil, type: nil)
          end

          sig do
            override.returns(
              {
                geometry: String,
                properties: String,
                type:
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Geojson::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend NextbillionSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Geojson::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            POINT =
              T.let(
                :Point,
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Geojson::Type::TaggedSymbol
              )
            MULTI_POINT =
              T.let(
                :MultiPoint,
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Geojson::Type::TaggedSymbol
              )
            LINE_STRING =
              T.let(
                :LineString,
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Geojson::Type::TaggedSymbol
              )
            MULTI_LINE_STRING =
              T.let(
                :MultiLineString,
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Geojson::Type::TaggedSymbol
              )
            POLYGON =
              T.let(
                :Polygon,
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Geojson::Type::TaggedSymbol
              )
            MULTI_POLYGON =
              T.let(
                :MultiPolygon,
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Geojson::Type::TaggedSymbol
              )
            GEOMETRY_COLLECTION =
              T.let(
                :GeometryCollection,
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Geojson::Type::TaggedSymbol
              )
            FEATURE =
              T.let(
                :Feature,
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Geojson::Type::TaggedSymbol
              )
            FEATURE_COLLECTION =
              T.let(
                :FeatureCollection,
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Geojson::Type::TaggedSymbol
              )
            LINK =
              T.let(
                :Link,
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Geojson::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Geojson::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Leg < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # An object containing leg distance value, in meters.
          sig do
            returns(
              T.nilable(
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Distance
              )
            )
          end
          attr_reader :distance

          sig do
            params(
              distance:
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Distance::OrHash
            ).void
          end
          attr_writer :distance

          # An object containing leg duration value, in seconds.
          sig do
            returns(
              T.nilable(
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Duration
              )
            )
          end
          attr_reader :duration

          sig do
            params(
              duration:
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Duration::OrHash
            ).void
          end
          attr_writer :duration

          # Location coordinates of the point where the leg ends.
          sig do
            returns(
              T.nilable(
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::EndLocation
              )
            )
          end
          attr_reader :end_location

          sig do
            params(
              end_location:
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::EndLocation::OrHash
            ).void
          end
          attr_writer :end_location

          # The raw estimated duration of the `leg` in seconds.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :raw_duration

          sig { params(raw_duration: T.anything).void }
          attr_writer :raw_duration

          # Location coordinates of the point where the leg starts.
          sig do
            returns(
              T.nilable(
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::StartLocation
              )
            )
          end
          attr_reader :start_location

          sig do
            params(
              start_location:
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::StartLocation::OrHash
            ).void
          end
          attr_writer :start_location

          # An array of step objects containing turn-by-turn guidance for easy navigation.
          sig do
            returns(
              T.nilable(
                T::Array[
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step
                ]
              )
            )
          end
          attr_reader :steps

          sig do
            params(
              steps:
                T::Array[
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::OrHash
                ]
            ).void
          end
          attr_writer :steps

          sig do
            params(
              distance:
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Distance::OrHash,
              duration:
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Duration::OrHash,
              end_location:
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::EndLocation::OrHash,
              raw_duration: T.anything,
              start_location:
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::StartLocation::OrHash,
              steps:
                T::Array[
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # An object containing leg distance value, in meters.
            distance: nil,
            # An object containing leg duration value, in seconds.
            duration: nil,
            # Location coordinates of the point where the leg ends.
            end_location: nil,
            # The raw estimated duration of the `leg` in seconds.
            raw_duration: nil,
            # Location coordinates of the point where the leg starts.
            start_location: nil,
            # An array of step objects containing turn-by-turn guidance for easy navigation.
            steps: nil
          )
          end

          sig do
            override.returns(
              {
                distance:
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Distance,
                duration:
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Duration,
                end_location:
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::EndLocation,
                raw_duration: T.anything,
                start_location:
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::StartLocation,
                steps:
                  T::Array[
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step
                  ]
              }
            )
          end
          def to_hash
          end

          class Distance < NextbillionSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Distance,
                  NextbillionSDK::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :value

            sig { params(value: Integer).void }
            attr_writer :value

            # An object containing leg distance value, in meters.
            sig { params(value: Integer).returns(T.attached_class) }
            def self.new(value: nil)
            end

            sig { override.returns({ value: Integer }) }
            def to_hash
            end
          end

          class Duration < NextbillionSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Duration,
                  NextbillionSDK::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Integer)) }
            attr_reader :value

            sig { params(value: Integer).void }
            attr_writer :value

            # An object containing leg duration value, in seconds.
            sig { params(value: Integer).returns(T.attached_class) }
            def self.new(value: nil)
            end

            sig { override.returns({ value: Integer }) }
            def to_hash
            end
          end

          class EndLocation < NextbillionSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::EndLocation,
                  NextbillionSDK::Internal::AnyHash
                )
              end

            # Latitude of `end_location` of the `leg`.
            sig { returns(T.nilable(Float)) }
            attr_reader :latitude

            sig { params(latitude: Float).void }
            attr_writer :latitude

            # Longitude of `end_location` of the `leg`.
            sig { returns(T.nilable(Float)) }
            attr_reader :longitude

            sig { params(longitude: Float).void }
            attr_writer :longitude

            # Location coordinates of the point where the leg ends.
            sig do
              params(latitude: Float, longitude: Float).returns(
                T.attached_class
              )
            end
            def self.new(
              # Latitude of `end_location` of the `leg`.
              latitude: nil,
              # Longitude of `end_location` of the `leg`.
              longitude: nil
            )
            end

            sig { override.returns({ latitude: Float, longitude: Float }) }
            def to_hash
            end
          end

          class StartLocation < NextbillionSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::StartLocation,
                  NextbillionSDK::Internal::AnyHash
                )
              end

            # Latitude of `start_location` of the `leg`.
            sig { returns(T.nilable(Float)) }
            attr_reader :latitude

            sig { params(latitude: Float).void }
            attr_writer :latitude

            # Longitude of `start_location` of the `leg`.
            sig { returns(T.nilable(Float)) }
            attr_reader :longitude

            sig { params(longitude: Float).void }
            attr_writer :longitude

            # Location coordinates of the point where the leg starts.
            sig do
              params(latitude: Float, longitude: Float).returns(
                T.attached_class
              )
            end
            def self.new(
              # Latitude of `start_location` of the `leg`.
              latitude: nil,
              # Longitude of `start_location` of the `leg`.
              longitude: nil
            )
            end

            sig { override.returns({ latitude: Float, longitude: Float }) }
            def to_hash
            end
          end

          class Step < NextbillionSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step,
                  NextbillionSDK::Internal::AnyHash
                )
              end

            # An object containing step distance value, in meters.
            sig do
              returns(
                T.nilable(
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Distance
                )
              )
            end
            attr_reader :distance

            sig do
              params(
                distance:
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Distance::OrHash
              ).void
            end
            attr_writer :distance

            # Indicates the driving side of the road in case bidirectional traffic is allowed
            # on the given segment. It can have two values: "left" & "right".
            sig { returns(T.nilable(String)) }
            attr_reader :driving_side

            sig { params(driving_side: String).void }
            attr_writer :driving_side

            # An object containing step duration value, in seconds.
            sig do
              returns(
                T.nilable(
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Duration
                )
              )
            end
            attr_reader :duration

            sig do
              params(
                duration:
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Duration::OrHash
              ).void
            end
            attr_writer :duration

            # Location coordinates of the point where the `step` ends.
            sig do
              returns(
                T.nilable(
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::EndLocation
                )
              )
            end
            attr_reader :end_location

            sig do
              params(
                end_location:
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::EndLocation::OrHash
              ).void
            end
            attr_writer :end_location

            # The GeoJSON representation of the `step`.
            sig do
              returns(
                T.nilable(
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Geojson
                )
              )
            end
            attr_reader :geojson

            sig do
              params(
                geojson:
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Geojson::OrHash
              ).void
            end
            attr_writer :geojson

            # Encoded geometry of the `step` in the selected format.
            sig { returns(T.nilable(String)) }
            attr_reader :geometry

            sig { params(geometry: String).void }
            attr_writer :geometry

            # An array of objects representing intersections (or cross-way) that the route
            # passes by along the `step`. For every `step`, the very first `intersection`
            # corresponds to the location of the `maneuver`. All intersections until the next
            # `maneuver` are listed in this object.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection
                  ]
                )
              )
            end
            attr_reader :intersections

            sig do
              params(
                intersections:
                  T::Array[
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection::OrHash
                  ]
              ).void
            end
            attr_writer :intersections

            # An object with maneuver details for the `step`.
            sig do
              returns(
                T.nilable(
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver
                )
              )
            end
            attr_reader :maneuver

            sig do
              params(
                maneuver:
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver::OrHash
              ).void
            end
            attr_writer :maneuver

            # The name of the `step`.
            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            # A reference for the `step`.
            sig { returns(T.nilable(String)) }
            attr_reader :reference

            sig { params(reference: String).void }
            attr_writer :reference

            # An object containing road shield information.
            sig do
              returns(
                T.nilable(
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::RoadShieldType
                )
              )
            end
            attr_reader :road_shield_type

            sig do
              params(
                road_shield_type:
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::RoadShieldType::OrHash
              ).void
            end
            attr_writer :road_shield_type

            # Location coordinates of the point where the `step` starts.
            sig do
              returns(
                T.nilable(
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::StartLocation
                )
              )
            end
            attr_reader :start_location

            sig do
              params(
                start_location:
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::StartLocation::OrHash
              ).void
            end
            attr_writer :start_location

            sig do
              params(
                distance:
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Distance::OrHash,
                driving_side: String,
                duration:
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Duration::OrHash,
                end_location:
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::EndLocation::OrHash,
                geojson:
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Geojson::OrHash,
                geometry: String,
                intersections:
                  T::Array[
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection::OrHash
                  ],
                maneuver:
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver::OrHash,
                name: String,
                reference: String,
                road_shield_type:
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::RoadShieldType::OrHash,
                start_location:
                  NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::StartLocation::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # An object containing step distance value, in meters.
              distance: nil,
              # Indicates the driving side of the road in case bidirectional traffic is allowed
              # on the given segment. It can have two values: "left" & "right".
              driving_side: nil,
              # An object containing step duration value, in seconds.
              duration: nil,
              # Location coordinates of the point where the `step` ends.
              end_location: nil,
              # The GeoJSON representation of the `step`.
              geojson: nil,
              # Encoded geometry of the `step` in the selected format.
              geometry: nil,
              # An array of objects representing intersections (or cross-way) that the route
              # passes by along the `step`. For every `step`, the very first `intersection`
              # corresponds to the location of the `maneuver`. All intersections until the next
              # `maneuver` are listed in this object.
              intersections: nil,
              # An object with maneuver details for the `step`.
              maneuver: nil,
              # The name of the `step`.
              name: nil,
              # A reference for the `step`.
              reference: nil,
              # An object containing road shield information.
              road_shield_type: nil,
              # Location coordinates of the point where the `step` starts.
              start_location: nil
            )
            end

            sig do
              override.returns(
                {
                  distance:
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Distance,
                  driving_side: String,
                  duration:
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Duration,
                  end_location:
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::EndLocation,
                  geojson:
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Geojson,
                  geometry: String,
                  intersections:
                    T::Array[
                      NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection
                    ],
                  maneuver:
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver,
                  name: String,
                  reference: String,
                  road_shield_type:
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::RoadShieldType,
                  start_location:
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::StartLocation
                }
              )
            end
            def to_hash
            end

            class Distance < NextbillionSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Distance,
                    NextbillionSDK::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :value

              sig { params(value: Integer).void }
              attr_writer :value

              # An object containing step distance value, in meters.
              sig { params(value: Integer).returns(T.attached_class) }
              def self.new(value: nil)
              end

              sig { override.returns({ value: Integer }) }
              def to_hash
              end
            end

            class Duration < NextbillionSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Duration,
                    NextbillionSDK::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :value

              sig { params(value: Integer).void }
              attr_writer :value

              # An object containing step duration value, in seconds.
              sig { params(value: Integer).returns(T.attached_class) }
              def self.new(value: nil)
              end

              sig { override.returns({ value: Integer }) }
              def to_hash
              end
            end

            class EndLocation < NextbillionSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::EndLocation,
                    NextbillionSDK::Internal::AnyHash
                  )
                end

              # Latitude of the `end_location` of the `step`.
              sig { returns(T.nilable(Float)) }
              attr_reader :latitude

              sig { params(latitude: Float).void }
              attr_writer :latitude

              # Longitude of the `end_location` of the `step`.
              sig { returns(T.nilable(Float)) }
              attr_reader :longitude

              sig { params(longitude: Float).void }
              attr_writer :longitude

              # Location coordinates of the point where the `step` ends.
              sig do
                params(latitude: Float, longitude: Float).returns(
                  T.attached_class
                )
              end
              def self.new(
                # Latitude of the `end_location` of the `step`.
                latitude: nil,
                # Longitude of the `end_location` of the `step`.
                longitude: nil
              )
              end

              sig { override.returns({ latitude: Float, longitude: Float }) }
              def to_hash
              end
            end

            class Geojson < NextbillionSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Geojson,
                    NextbillionSDK::Internal::AnyHash
                  )
                end

              sig { returns(T.nilable(String)) }
              attr_reader :geometry

              sig { params(geometry: String).void }
              attr_writer :geometry

              sig { returns(T.nilable(String)) }
              attr_reader :type

              sig { params(type: String).void }
              attr_writer :type

              # The GeoJSON representation of the `step`.
              sig do
                params(geometry: String, type: String).returns(T.attached_class)
              end
              def self.new(geometry: nil, type: nil)
              end

              sig { override.returns({ geometry: String, type: String }) }
              def to_hash
              end
            end

            class Intersection < NextbillionSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection,
                    NextbillionSDK::Internal::AnyHash
                  )
                end

              # A list of bearing values (e.g. [0,90,180,270]) that are available at the
              # intersection. The `bearings` describe all available roads at the intersection.
              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :bearings

              sig { params(bearings: T::Array[Integer]).void }
              attr_writer :bearings

              # An array of strings representing the classes or types of roads or paths at the
              # intersection. The classes can indicate the road hierarchy, such as a motorway,
              # primary road, secondary road, etc.
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :classes

              sig { params(classes: T::Array[String]).void }
              attr_writer :classes

              # A value of `true` indicates that the respective road could be entered on a valid
              # route. `false` indicates that the turn onto the respective road would violate a
              # restriction. Each entry value corresponds to the bearing angle at the same
              # index.
              sig { returns(T.nilable(T::Array[T::Boolean])) }
              attr_reader :entry

              sig { params(entry: T::Array[T::Boolean]).void }
              attr_writer :entry

              # The number of incoming roads or paths at the `intersection`.
              sig { returns(T.nilable(Integer)) }
              attr_reader :intersection_in

              sig { params(intersection_in: Integer).void }
              attr_writer :intersection_in

              # The number of outgoing roads or paths from the `intersection`.
              sig { returns(T.nilable(Integer)) }
              attr_reader :intersection_out

              sig { params(intersection_out: Integer).void }
              attr_writer :intersection_out

              # An array of lane objects representing the lanes available at the intersection.
              # If no lane information is available for an `intersection`, the `lanes` property
              # will not be present.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection::Lane
                    ]
                  )
                )
              end
              attr_reader :lanes

              sig do
                params(
                  lanes:
                    T::Array[
                      NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection::Lane::OrHash
                    ]
                ).void
              end
              attr_writer :lanes

              # A [longitude, latitude] pair describing the location of the intersection.
              sig do
                returns(
                  T.nilable(
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection::Location
                  )
                )
              end
              attr_reader :location

              sig do
                params(
                  location:
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection::Location::OrHash
                ).void
              end
              attr_writer :location

              sig do
                params(
                  bearings: T::Array[Integer],
                  classes: T::Array[String],
                  entry: T::Array[T::Boolean],
                  intersection_in: Integer,
                  intersection_out: Integer,
                  lanes:
                    T::Array[
                      NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection::Lane::OrHash
                    ],
                  location:
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection::Location::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                # A list of bearing values (e.g. [0,90,180,270]) that are available at the
                # intersection. The `bearings` describe all available roads at the intersection.
                bearings: nil,
                # An array of strings representing the classes or types of roads or paths at the
                # intersection. The classes can indicate the road hierarchy, such as a motorway,
                # primary road, secondary road, etc.
                classes: nil,
                # A value of `true` indicates that the respective road could be entered on a valid
                # route. `false` indicates that the turn onto the respective road would violate a
                # restriction. Each entry value corresponds to the bearing angle at the same
                # index.
                entry: nil,
                # The number of incoming roads or paths at the `intersection`.
                intersection_in: nil,
                # The number of outgoing roads or paths from the `intersection`.
                intersection_out: nil,
                # An array of lane objects representing the lanes available at the intersection.
                # If no lane information is available for an `intersection`, the `lanes` property
                # will not be present.
                lanes: nil,
                # A [longitude, latitude] pair describing the location of the intersection.
                location: nil
              )
              end

              sig do
                override.returns(
                  {
                    bearings: T::Array[Integer],
                    classes: T::Array[String],
                    entry: T::Array[T::Boolean],
                    intersection_in: Integer,
                    intersection_out: Integer,
                    lanes:
                      T::Array[
                        NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection::Lane
                      ],
                    location:
                      NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection::Location
                  }
                )
              end
              def to_hash
              end

              class Lane < NextbillionSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection::Lane,
                      NextbillionSDK::Internal::AnyHash
                    )
                  end

                # It represents actions associated with the lane. These indications describe the
                # permitted maneuvers or directions that can be taken from the lane. Common
                # indications include "turn left," "turn right," "go straight," "merge," "exit,"
                # etc.
                sig { returns(T.nilable(T::Array[String])) }
                attr_reader :indications

                sig { params(indications: T::Array[String]).void }
                attr_writer :indications

                # This indicates the validity of the lane. It specifies whether the lane is
                # considered valid for making the indicated maneuver or if there are any
                # restrictions or limitations associated with it.
                sig { returns(T.nilable(T::Boolean)) }
                attr_reader :valid

                sig { params(valid: T::Boolean).void }
                attr_writer :valid

                sig do
                  params(
                    indications: T::Array[String],
                    valid: T::Boolean
                  ).returns(T.attached_class)
                end
                def self.new(
                  # It represents actions associated with the lane. These indications describe the
                  # permitted maneuvers or directions that can be taken from the lane. Common
                  # indications include "turn left," "turn right," "go straight," "merge," "exit,"
                  # etc.
                  indications: nil,
                  # This indicates the validity of the lane. It specifies whether the lane is
                  # considered valid for making the indicated maneuver or if there are any
                  # restrictions or limitations associated with it.
                  valid: nil
                )
                end

                sig do
                  override.returns(
                    { indications: T::Array[String], valid: T::Boolean }
                  )
                end
                def to_hash
                end
              end

              class Location < NextbillionSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection::Location,
                      NextbillionSDK::Internal::AnyHash
                    )
                  end

                # The latitude coordinate of the `intersection`.
                sig { returns(T.nilable(Float)) }
                attr_reader :latitude

                sig { params(latitude: Float).void }
                attr_writer :latitude

                # The longitude coordinate of the `intersection`.
                sig { returns(T.nilable(Float)) }
                attr_reader :longitude

                sig { params(longitude: Float).void }
                attr_writer :longitude

                # The name or description of the `intersection`.
                sig { returns(T.nilable(String)) }
                attr_reader :name

                sig { params(name: String).void }
                attr_writer :name

                # A [longitude, latitude] pair describing the location of the intersection.
                sig do
                  params(
                    latitude: Float,
                    longitude: Float,
                    name: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The latitude coordinate of the `intersection`.
                  latitude: nil,
                  # The longitude coordinate of the `intersection`.
                  longitude: nil,
                  # The name or description of the `intersection`.
                  name: nil
                )
                end

                sig do
                  override.returns(
                    { latitude: Float, longitude: Float, name: String }
                  )
                end
                def to_hash
                end
              end
            end

            class Maneuver < NextbillionSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver,
                    NextbillionSDK::Internal::AnyHash
                  )
                end

              # The clockwise angle from true north to the direction of travel immediately after
              # the `maneuver`. Range of values is between 0-359.
              sig { returns(T.nilable(Float)) }
              attr_reader :bearing_after

              sig { params(bearing_after: Float).void }
              attr_writer :bearing_after

              # The clockwise angle from true north to the direction of travel immediately
              # before the `maneuver`. Range of values is between 0-359.
              sig { returns(T.nilable(Float)) }
              attr_reader :bearing_before

              sig { params(bearing_before: Float).void }
              attr_writer :bearing_before

              # A coordinate pair describing the location of the `maneuver`.
              sig do
                returns(
                  T.nilable(
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver::Coordinate
                  )
                )
              end
              attr_reader :coordinate

              sig do
                params(
                  coordinate:
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver::Coordinate::OrHash
                ).void
              end
              attr_writer :coordinate

              # A text instruction describing the maneuver to be performed. It provides guidance
              # on the action to take at the maneuver location, such as "Turn left," "Go
              # straight," "Exit the roundabout," etc.
              sig { returns(T.nilable(String)) }
              attr_reader :instruction

              sig { params(instruction: String).void }
              attr_writer :instruction

              # A string indicating the type of `maneuver`.
              sig { returns(T.nilable(String)) }
              attr_reader :maneuver_type

              sig { params(maneuver_type: String).void }
              attr_writer :maneuver_type

              # A boolean value indicating whether the voice instruction for the maneuver should
              # be muted or not.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :muted

              sig { params(muted: T::Boolean).void }
              attr_writer :muted

              # The number of roundabouts encountered so far during the route. This parameter is
              # specific to roundabout maneuvers and indicates the count of roundabouts before
              # the current one.
              sig { returns(T.nilable(Integer)) }
              attr_reader :roundabout_count

              sig { params(roundabout_count: Integer).void }
              attr_writer :roundabout_count

              # An array of voice instruction objects associated with the `maneuver`. Each
              # object provides additional details about the voice instruction, including the
              # distance along the geometry where the instruction applies, the instruction text,
              # and the unit of measurement.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver::VoiceInstruction
                    ]
                  )
                )
              end
              attr_reader :voice_instruction

              sig do
                params(
                  voice_instruction:
                    T::Array[
                      NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver::VoiceInstruction::OrHash
                    ]
                ).void
              end
              attr_writer :voice_instruction

              # An object with maneuver details for the `step`.
              sig do
                params(
                  bearing_after: Float,
                  bearing_before: Float,
                  coordinate:
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver::Coordinate::OrHash,
                  instruction: String,
                  maneuver_type: String,
                  muted: T::Boolean,
                  roundabout_count: Integer,
                  voice_instruction:
                    T::Array[
                      NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver::VoiceInstruction::OrHash
                    ]
                ).returns(T.attached_class)
              end
              def self.new(
                # The clockwise angle from true north to the direction of travel immediately after
                # the `maneuver`. Range of values is between 0-359.
                bearing_after: nil,
                # The clockwise angle from true north to the direction of travel immediately
                # before the `maneuver`. Range of values is between 0-359.
                bearing_before: nil,
                # A coordinate pair describing the location of the `maneuver`.
                coordinate: nil,
                # A text instruction describing the maneuver to be performed. It provides guidance
                # on the action to take at the maneuver location, such as "Turn left," "Go
                # straight," "Exit the roundabout," etc.
                instruction: nil,
                # A string indicating the type of `maneuver`.
                maneuver_type: nil,
                # A boolean value indicating whether the voice instruction for the maneuver should
                # be muted or not.
                muted: nil,
                # The number of roundabouts encountered so far during the route. This parameter is
                # specific to roundabout maneuvers and indicates the count of roundabouts before
                # the current one.
                roundabout_count: nil,
                # An array of voice instruction objects associated with the `maneuver`. Each
                # object provides additional details about the voice instruction, including the
                # distance along the geometry where the instruction applies, the instruction text,
                # and the unit of measurement.
                voice_instruction: nil
              )
              end

              sig do
                override.returns(
                  {
                    bearing_after: Float,
                    bearing_before: Float,
                    coordinate:
                      NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver::Coordinate,
                    instruction: String,
                    maneuver_type: String,
                    muted: T::Boolean,
                    roundabout_count: Integer,
                    voice_instruction:
                      T::Array[
                        NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver::VoiceInstruction
                      ]
                  }
                )
              end
              def to_hash
              end

              class Coordinate < NextbillionSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver::Coordinate,
                      NextbillionSDK::Internal::AnyHash
                    )
                  end

                # The latitude coordinate of the `maneuver`.
                sig { returns(T.nilable(Float)) }
                attr_reader :latitude

                sig { params(latitude: Float).void }
                attr_writer :latitude

                # The longitude coordinate of the `maneuver`.
                sig { returns(T.nilable(Float)) }
                attr_reader :longitude

                sig { params(longitude: Float).void }
                attr_writer :longitude

                # The name or description of the maneuver location.
                sig { returns(T.nilable(String)) }
                attr_reader :name

                sig { params(name: String).void }
                attr_writer :name

                # A coordinate pair describing the location of the `maneuver`.
                sig do
                  params(
                    latitude: Float,
                    longitude: Float,
                    name: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The latitude coordinate of the `maneuver`.
                  latitude: nil,
                  # The longitude coordinate of the `maneuver`.
                  longitude: nil,
                  # The name or description of the maneuver location.
                  name: nil
                )
                end

                sig do
                  override.returns(
                    { latitude: Float, longitude: Float, name: String }
                  )
                end
                def to_hash
                end
              end

              class VoiceInstruction < NextbillionSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver::VoiceInstruction,
                      NextbillionSDK::Internal::AnyHash
                    )
                  end

                sig { returns(T.nilable(Integer)) }
                attr_reader :distance_along_geometry

                sig { params(distance_along_geometry: Integer).void }
                attr_writer :distance_along_geometry

                # The guidance instructions for the upcoming `maneuver`
                sig { returns(T.nilable(String)) }
                attr_reader :instruction

                sig { params(instruction: String).void }
                attr_writer :instruction

                # Unit of the `distance_along_geometry` metric
                sig { returns(T.nilable(String)) }
                attr_reader :unit

                sig { params(unit: String).void }
                attr_writer :unit

                sig do
                  params(
                    distance_along_geometry: Integer,
                    instruction: String,
                    unit: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  distance_along_geometry: nil,
                  # The guidance instructions for the upcoming `maneuver`
                  instruction: nil,
                  # Unit of the `distance_along_geometry` metric
                  unit: nil
                )
                end

                sig do
                  override.returns(
                    {
                      distance_along_geometry: Integer,
                      instruction: String,
                      unit: String
                    }
                  )
                end
                def to_hash
                end
              end
            end

            class RoadShieldType < NextbillionSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::RoadShieldType,
                    NextbillionSDK::Internal::AnyHash
                  )
                end

              # The URL to fetch the road shield image.
              sig { returns(T.nilable(String)) }
              attr_reader :image_url

              sig { params(image_url: String).void }
              attr_writer :image_url

              # A label identifying the inscription on the road shield, such as containing the
              # road number.
              sig { returns(T.nilable(String)) }
              attr_reader :label

              sig { params(label: String).void }
              attr_writer :label

              # An object containing road shield information.
              sig do
                params(image_url: String, label: String).returns(
                  T.attached_class
                )
              end
              def self.new(
                # The URL to fetch the road shield image.
                image_url: nil,
                # A label identifying the inscription on the road shield, such as containing the
                # road number.
                label: nil
              )
              end

              sig { override.returns({ image_url: String, label: String }) }
              def to_hash
              end
            end

            class StartLocation < NextbillionSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::StartLocation,
                    NextbillionSDK::Internal::AnyHash
                  )
                end

              # Latitude of `start_location` of the `step`.
              sig { returns(T.nilable(Float)) }
              attr_reader :latitude

              sig { params(latitude: Float).void }
              attr_writer :latitude

              # Longitude of `start_location` of the `step`.
              sig { returns(T.nilable(Float)) }
              attr_reader :longitude

              sig { params(longitude: Float).void }
              attr_writer :longitude

              # Location coordinates of the point where the `step` starts.
              sig do
                params(latitude: Float, longitude: Float).returns(
                  T.attached_class
                )
              end
              def self.new(
                # Latitude of `start_location` of the `step`.
                latitude: nil,
                # Longitude of `start_location` of the `step`.
                longitude: nil
              )
              end

              sig { override.returns({ latitude: Float, longitude: Float }) }
              def to_hash
              end
            end
          end
        end

        class StartLocation < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route::StartLocation,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # Latitude of the`start_location`.
          sig { returns(T.nilable(Float)) }
          attr_reader :latitude

          sig { params(latitude: Float).void }
          attr_writer :latitude

          # Longitude of the `start_location`.
          sig { returns(T.nilable(Float)) }
          attr_reader :longitude

          sig { params(longitude: Float).void }
          attr_writer :longitude

          # Location coordinates of the point where the route starts.
          sig do
            params(latitude: Float, longitude: Float).returns(T.attached_class)
          end
          def self.new(
            # Latitude of the`start_location`.
            latitude: nil,
            # Longitude of the `start_location`.
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
