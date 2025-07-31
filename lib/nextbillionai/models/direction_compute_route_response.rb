# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Directions#compute_route
    class DirectionComputeRouteResponse < Nextbillionai::Internal::Type::BaseModel
      # @!attribute msg
      #   Displays the error message in case of a failed request or operation. Please note
      #   that this parameter is not returned in the response in case of a successful
      #   request.
      #
      #   @return [String, nil]
      optional :msg, String

      # @!attribute route
      #   An object containing details about the returned route. Will contain multiple
      #   objects if more than one routes are present in the response.
      #
      #   @return [Nextbillionai::Models::DirectionComputeRouteResponse::Route, nil]
      optional :route, -> { Nextbillionai::Models::DirectionComputeRouteResponse::Route }

      # @!attribute status
      #   A string indicating the state of the response. On normal responses, the value
      #   will be Ok. Indicative HTTP error codes are returned for different errors. See
      #   the [API Errors Codes](#api-error-codes) section below for more information.
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(msg: nil, route: nil, status: nil)
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::DirectionComputeRouteResponse} for more details.
      #
      #   @param msg [String] Displays the error message in case of a failed request or operation. Please note
      #
      #   @param route [Nextbillionai::Models::DirectionComputeRouteResponse::Route] An object containing details about the returned route. Will contain multiple obj
      #
      #   @param status [String] A string indicating the state of the response. On normal responses, the value wi

      # @see Nextbillionai::Models::DirectionComputeRouteResponse#route
      class Route < Nextbillionai::Internal::Type::BaseModel
        # @!attribute distance
        #   The distance, in meters, for the complete trip.
        #
        #   @return [Float, nil]
        optional :distance, Float

        # @!attribute duration
        #   The duration, in seconds, of the complete trip.
        #
        #   @return [Float, nil]
        optional :duration, Float

        # @!attribute end_location
        #   Location coordinates of the point where the route ends. It is the same as the
        #   destination in the input request. Returned only when steps is true in the input
        #   request.
        #
        #   @return [Nextbillionai::Models::DirectionComputeRouteResponse::Route::EndLocation, nil]
        optional :end_location, -> { Nextbillionai::Models::DirectionComputeRouteResponse::Route::EndLocation }

        # @!attribute geojson
        #   An object with geoJSON details of the route. This object is returned when the
        #   geometry field is set to geojson in the input request, otherwise it is not
        #   present in the response. The contents of this object follow the
        #   [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
        #
        #   @return [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Geojson, nil]
        optional :geojson, -> { Nextbillionai::Models::DirectionComputeRouteResponse::Route::Geojson }

        # @!attribute geometry
        #   Encoded geometry of the returned route in the selected format and specified
        #   overview verbosity. This parameter is configured in the input request.
        #
        #   @return [String, nil]
        optional :geometry, String

        # @!attribute legs
        #   An array of objects returning the details about each leg of the route. waypoints
        #   split the route into legs.
        #
        #   @return [Array<Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg>, nil]
        optional :legs,
                 -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg] }

        # @!attribute start_location
        #   Location coordinates of the point where the route starts. It is the same as the
        #   origin in the input request. Returned only when steps is true in the input
        #   request.
        #
        #   @return [Nextbillionai::Models::DirectionComputeRouteResponse::Route::StartLocation, nil]
        optional :start_location,
                 -> { Nextbillionai::Models::DirectionComputeRouteResponse::Route::StartLocation }

        # @!method initialize(distance: nil, duration: nil, end_location: nil, geojson: nil, geometry: nil, legs: nil, start_location: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::DirectionComputeRouteResponse::Route} for more details.
        #
        #   An object containing details about the returned route. Will contain multiple
        #   objects if more than one routes are present in the response.
        #
        #   @param distance [Float] The distance, in meters, for the complete trip.
        #
        #   @param duration [Float] The duration, in seconds, of the complete trip.
        #
        #   @param end_location [Nextbillionai::Models::DirectionComputeRouteResponse::Route::EndLocation] Location coordinates of the point where the route ends. It is the same as the de
        #
        #   @param geojson [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Geojson] An object with geoJSON details of the route. This object is returned when the ge
        #
        #   @param geometry [String] Encoded geometry of the returned route in the selected format and specified over
        #
        #   @param legs [Array<Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg>] An array of objects returning the details about each leg of the route. waypoints
        #
        #   @param start_location [Nextbillionai::Models::DirectionComputeRouteResponse::Route::StartLocation] Location coordinates of the point where the route starts. It is the same as the

        # @see Nextbillionai::Models::DirectionComputeRouteResponse::Route#end_location
        class EndLocation < Nextbillionai::Internal::Type::BaseModel
          # @!attribute latitude
          #   latitude of the start_location.
          #
          #   @return [Float, nil]
          optional :latitude, Float

          # @!attribute longitude
          #   longitude of the start_location.
          #
          #   @return [Float, nil]
          optional :longitude, Float

          # @!method initialize(latitude: nil, longitude: nil)
          #   Location coordinates of the point where the route ends. It is the same as the
          #   destination in the input request. Returned only when steps is true in the input
          #   request.
          #
          #   @param latitude [Float] latitude of the start_location.
          #
          #   @param longitude [Float] longitude of the start_location.
        end

        # @see Nextbillionai::Models::DirectionComputeRouteResponse::Route#geojson
        class Geojson < Nextbillionai::Internal::Type::BaseModel
          # @!attribute geometry
          #   An object with details of the geoJSON geometry of the route.
          #
          #   @return [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Geojson::Geometry, nil]
          optional :geometry, -> { Nextbillionai::Models::DirectionComputeRouteResponse::Route::Geojson::Geometry }

          # @!attribute properties
          #   Property associated with the geoJSON shape.
          #
          #   @return [String, nil]
          optional :properties, String

          # @!attribute type
          #   Type of the geoJSON object.
          #
          #   @return [String, nil]
          optional :type, String

          # @!method initialize(geometry: nil, properties: nil, type: nil)
          #   An object with geoJSON details of the route. This object is returned when the
          #   geometry field is set to geojson in the input request, otherwise it is not
          #   present in the response. The contents of this object follow the
          #   [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
          #
          #   @param geometry [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Geojson::Geometry] An object with details of the geoJSON geometry of the route.
          #
          #   @param properties [String] Property associated with the geoJSON shape.
          #
          #   @param type [String] Type of the geoJSON object.

          # @see Nextbillionai::Models::DirectionComputeRouteResponse::Route::Geojson#geometry
          class Geometry < Nextbillionai::Internal::Type::BaseModel
            # @!attribute coordinates
            #   An array of coordinates in the [longitude, latitude] format, representing the
            #   route geometry.
            #
            #   @return [Array<Float>, nil]
            optional :coordinates, Nextbillionai::Internal::Type::ArrayOf[Float]

            # @!attribute type
            #   Type of the geoJSON geometry.
            #
            #   @return [String, nil]
            optional :type, String

            # @!method initialize(coordinates: nil, type: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::DirectionComputeRouteResponse::Route::Geojson::Geometry}
            #   for more details.
            #
            #   An object with details of the geoJSON geometry of the route.
            #
            #   @param coordinates [Array<Float>] An array of coordinates in the [longitude, latitude] format, representing the ro
            #
            #   @param type [String] Type of the geoJSON geometry.
          end
        end

        class Leg < Nextbillionai::Internal::Type::BaseModel
          # @!attribute distance
          #   An object containing leg distance value, in meters.
          #
          #   @return [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Distance, nil]
          optional :distance, -> { Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Distance }

          # @!attribute duration
          #   An object containing leg duration value, in seconds.
          #
          #   @return [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Duration, nil]
          optional :duration, -> { Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Duration }

          # @!attribute end_location
          #   Location coordinates of the point where the leg ends. Returned only when steps
          #   is true in the input request.
          #
          #   @return [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::EndLocation, nil]
          optional :end_location,
                   -> { Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::EndLocation }

          # @!attribute start_location
          #   Location coordinates of the point where the leg starts. Returned only when steps
          #   is true in the input request.
          #
          #   @return [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::StartLocation, nil]
          optional :start_location,
                   -> { Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::StartLocation }

          # @!attribute steps
          #   An array of objects with details of each step of the legs. Returned only when
          #   steps is true in the input request. An empty array is returned when steps is
          #   false in the input request.
          #
          #   @return [Array<Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step>, nil]
          optional :steps,
                   -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step] }

          # @!method initialize(distance: nil, duration: nil, end_location: nil, start_location: nil, steps: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg} for more
          #   details.
          #
          #   @param distance [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Distance] An object containing leg distance value, in meters.
          #
          #   @param duration [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Duration] An object containing leg duration value, in seconds.
          #
          #   @param end_location [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::EndLocation] Location coordinates of the point where the leg ends. Returned only when steps
          #
          #   @param start_location [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::StartLocation] Location coordinates of the point where the leg starts. Returned only when step
          #
          #   @param steps [Array<Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step>] An array of objects with details of each step of the legs. Returned only when st

          # @see Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg#distance
          class Distance < Nextbillionai::Internal::Type::BaseModel
            # @!attribute value
            #
            #   @return [Float, nil]
            optional :value, Float

            # @!method initialize(value: nil)
            #   An object containing leg distance value, in meters.
            #
            #   @param value [Float]
          end

          # @see Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg#duration
          class Duration < Nextbillionai::Internal::Type::BaseModel
            # @!attribute value
            #
            #   @return [Float, nil]
            optional :value, Float

            # @!method initialize(value: nil)
            #   An object containing leg duration value, in seconds.
            #
            #   @param value [Float]
          end

          # @see Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg#end_location
          class EndLocation < Nextbillionai::Internal::Type::BaseModel
            # @!attribute latitude
            #   Latitude of the end_location of the leg.
            #
            #   @return [Float, nil]
            optional :latitude, Float

            # @!attribute longitude
            #   Longitude of the end_location of the leg.
            #
            #   @return [Float, nil]
            optional :longitude, Float

            # @!method initialize(latitude: nil, longitude: nil)
            #   Location coordinates of the point where the leg ends. Returned only when steps
            #   is true in the input request.
            #
            #   @param latitude [Float] Latitude of the end_location of the leg.
            #
            #   @param longitude [Float] Longitude of the end_location of the leg.
          end

          # @see Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg#start_location
          class StartLocation < Nextbillionai::Internal::Type::BaseModel
            # @!attribute latitude
            #   Latitude of the start_location of the leg.
            #
            #   @return [Float, nil]
            optional :latitude, Float

            # @!attribute longitude
            #   Longitude of the start_location of the leg.
            #
            #   @return [Float, nil]
            optional :longitude, Float

            # @!method initialize(latitude: nil, longitude: nil)
            #   Location coordinates of the point where the leg starts. Returned only when steps
            #   is true in the input request.
            #
            #   @param latitude [Float] Latitude of the start_location of the leg.
            #
            #   @param longitude [Float] Longitude of the start_location of the leg.
          end

          class Step < Nextbillionai::Internal::Type::BaseModel
            # @!attribute distance
            #   An object containing step distance value, in meters.
            #
            #   @return [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Distance, nil]
            optional :distance,
                     -> { Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Distance }

            # @!attribute duration
            #   An object containing step duration value, in seconds.
            #
            #   @return [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Duration, nil]
            optional :duration,
                     -> { Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Duration }

            # @!attribute end_location
            #   Location coordinates of the point where the step ends.
            #
            #   @return [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::EndLocation, nil]
            optional :end_location,
                     -> { Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::EndLocation }

            # @!attribute geojson
            #   An object with geoJSON details of the step.This object is returned when the
            #   geometry field is set to geojson in the input request, otherwise it is not
            #   present in the response. The contents of this object follow the
            #   [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
            #
            #   @return [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Geojson, nil]
            optional :geojson, -> { Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Geojson }

            # @!attribute geometry
            #   Encoded geometry of the step in the selected format.
            #
            #   @return [String, nil]
            optional :geometry, String

            # @!attribute maneuver
            #   An object with maneuver details for the step.
            #
            #   @return [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Maneuver, nil]
            optional :maneuver,
                     -> { Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Maneuver }

            # @!attribute start_location
            #   Location coordinates of the point where the step starts.
            #
            #   @return [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::StartLocation, nil]
            optional :start_location,
                     -> { Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::StartLocation }

            # @!method initialize(distance: nil, duration: nil, end_location: nil, geojson: nil, geometry: nil, maneuver: nil, start_location: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step} for
            #   more details.
            #
            #   @param distance [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Distance] An object containing step distance value, in meters.
            #
            #   @param duration [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Duration] An object containing step duration value, in seconds.
            #
            #   @param end_location [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::EndLocation] Location coordinates of the point where the step ends.
            #
            #   @param geojson [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Geojson] An object with geoJSON details of the step.This object is returned when the geom
            #
            #   @param geometry [String] Encoded geometry of the step in the selected format.
            #
            #   @param maneuver [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Maneuver] An object with maneuver details for the step.
            #
            #   @param start_location [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::StartLocation] Location coordinates of the point where the step starts.

            # @see Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step#distance
            class Distance < Nextbillionai::Internal::Type::BaseModel
              # @!attribute value
              #
              #   @return [Float, nil]
              optional :value, Float

              # @!method initialize(value: nil)
              #   An object containing step distance value, in meters.
              #
              #   @param value [Float]
            end

            # @see Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step#duration
            class Duration < Nextbillionai::Internal::Type::BaseModel
              # @!attribute value
              #
              #   @return [Float, nil]
              optional :value, Float

              # @!method initialize(value: nil)
              #   An object containing step duration value, in seconds.
              #
              #   @param value [Float]
            end

            # @see Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step#end_location
            class EndLocation < Nextbillionai::Internal::Type::BaseModel
              # @!attribute latitude
              #   Latitude of the end_location of the step.
              #
              #   @return [Float, nil]
              optional :latitude, Float

              # @!attribute longitude
              #   Longitude of the end_location of the step.
              #
              #   @return [Float, nil]
              optional :longitude, Float

              # @!method initialize(latitude: nil, longitude: nil)
              #   Location coordinates of the point where the step ends.
              #
              #   @param latitude [Float] Latitude of the end_location of the step.
              #
              #   @param longitude [Float] Longitude of the end_location of the step.
            end

            # @see Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step#geojson
            class Geojson < Nextbillionai::Internal::Type::BaseModel
              # @!attribute geometry
              #   An object with details of the geoJSON geometry of the step.
              #
              #   @return [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Geojson::Geometry, nil]
              optional :geometry,
                       -> { Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Geojson::Geometry }

              # @!attribute properties
              #   Property associated with the geoJSON shape.
              #
              #   @return [String, nil]
              optional :properties, String

              # @!attribute type
              #   Type of the geoJSON object.
              #
              #   @return [String, nil]
              optional :type, String

              # @!method initialize(geometry: nil, properties: nil, type: nil)
              #   An object with geoJSON details of the step.This object is returned when the
              #   geometry field is set to geojson in the input request, otherwise it is not
              #   present in the response. The contents of this object follow the
              #   [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
              #
              #   @param geometry [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Geojson::Geometry] An object with details of the geoJSON geometry of the step.
              #
              #   @param properties [String] Property associated with the geoJSON shape.
              #
              #   @param type [String] Type of the geoJSON object.

              # @see Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Geojson#geometry
              class Geometry < Nextbillionai::Internal::Type::BaseModel
                # @!attribute coordinates
                #   An array of coordinates in the [longitude, latitude] format, representing the
                #   step geometry.
                #
                #   @return [Array<Float>, nil]
                optional :coordinates, Nextbillionai::Internal::Type::ArrayOf[Float]

                # @!attribute type
                #   Type of the geoJSON geometry.
                #
                #   @return [String, nil]
                optional :type, String

                # @!method initialize(coordinates: nil, type: nil)
                #   Some parameter documentations has been truncated, see
                #   {Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Geojson::Geometry}
                #   for more details.
                #
                #   An object with details of the geoJSON geometry of the step.
                #
                #   @param coordinates [Array<Float>] An array of coordinates in the [longitude, latitude] format, representing the st
                #
                #   @param type [String] Type of the geoJSON geometry.
              end
            end

            # @see Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step#maneuver
            class Maneuver < Nextbillionai::Internal::Type::BaseModel
              # @!attribute bearing_after
              #   The clockwise angle from true north to the direction of travel immediately after
              #   the maneuver. Range of values is between 0-359.
              #
              #   @return [Integer, nil]
              optional :bearing_after, Integer

              # @!attribute bearing_before
              #   The clockwise angle from true north to the direction of travel immediately
              #   before the maneuver. Range of values is between 0-359.
              #
              #   @return [Integer, nil]
              optional :bearing_before, Integer

              # @!attribute coordinate
              #   A coordinate pair describing the location of the maneuver.
              #
              #   @return [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Maneuver::Coordinate, nil]
              optional :coordinate,
                       -> { Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Maneuver::Coordinate }

              # @!attribute maneuver_type
              #   A string indicating the type of maneuver.
              #
              #   @return [String, nil]
              optional :maneuver_type, String

              # @!attribute modifier
              #   Modifier associated with maneuver_type.
              #
              #   @return [String, nil]
              optional :modifier, String

              # @!method initialize(bearing_after: nil, bearing_before: nil, coordinate: nil, maneuver_type: nil, modifier: nil)
              #   Some parameter documentations has been truncated, see
              #   {Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Maneuver}
              #   for more details.
              #
              #   An object with maneuver details for the step.
              #
              #   @param bearing_after [Integer] The clockwise angle from true north to the direction of travel immediately after
              #
              #   @param bearing_before [Integer] The clockwise angle from true north to the direction of travel immediately befor
              #
              #   @param coordinate [Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Maneuver::Coordinate] A coordinate pair describing the location of the maneuver.
              #
              #   @param maneuver_type [String] A string indicating the type of maneuver.
              #
              #   @param modifier [String] Modifier associated with maneuver_type.

              # @see Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step::Maneuver#coordinate
              class Coordinate < Nextbillionai::Internal::Type::BaseModel
                # @!attribute latitude
                #   Latitude of the maneuver location.
                #
                #   @return [Float, nil]
                optional :latitude, Float

                # @!attribute longitude
                #   Longitude of the maneuver location.
                #
                #   @return [Float, nil]
                optional :longitude, Float

                # @!method initialize(latitude: nil, longitude: nil)
                #   A coordinate pair describing the location of the maneuver.
                #
                #   @param latitude [Float] Latitude of the maneuver location.
                #
                #   @param longitude [Float] Longitude of the maneuver location.
              end
            end

            # @see Nextbillionai::Models::DirectionComputeRouteResponse::Route::Leg::Step#start_location
            class StartLocation < Nextbillionai::Internal::Type::BaseModel
              # @!attribute latitude
              #   Latitude of the start_location of the step.
              #
              #   @return [Float, nil]
              optional :latitude, Float

              # @!attribute longitude
              #   Longitude of the start_location of the step.
              #
              #   @return [Float, nil]
              optional :longitude, Float

              # @!method initialize(latitude: nil, longitude: nil)
              #   Location coordinates of the point where the step starts.
              #
              #   @param latitude [Float] Latitude of the start_location of the step.
              #
              #   @param longitude [Float] Longitude of the start_location of the step.
            end
          end
        end

        # @see Nextbillionai::Models::DirectionComputeRouteResponse::Route#start_location
        class StartLocation < Nextbillionai::Internal::Type::BaseModel
          # @!attribute latitude
          #   Latitude of the start_location.
          #
          #   @return [Float, nil]
          optional :latitude, Float

          # @!attribute longitude
          #   Longitude of the start_location.
          #
          #   @return [Float, nil]
          optional :longitude, Float

          # @!method initialize(latitude: nil, longitude: nil)
          #   Location coordinates of the point where the route starts. It is the same as the
          #   origin in the input request. Returned only when steps is true in the input
          #   request.
          #
          #   @param latitude [Float] Latitude of the start_location.
          #
          #   @param longitude [Float] Longitude of the start_location.
        end
      end
    end
  end
end
