# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Navigation#retrieve_route
    class NavigationRetrieveRouteResponse < Nextbillionai::Internal::Type::BaseModel
      # @!attribute msg
      #   Displays the error message in case of a failed request or operation. Please note
      #   that this parameter is not returned in the response in case of a successful
      #   request.
      #
      #   @return [String, nil]
      optional :msg, String

      # @!attribute routes
      #   An array of objects describing different possible routes from the starting
      #   location to the destination. Each object represents one route.
      #
      #   @return [Array<Nextbillionai::Models::NavigationRetrieveRouteResponse::Route>, nil]
      optional :routes,
               -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::NavigationRetrieveRouteResponse::Route] }

      # @!attribute status
      #   A string indicating the state of the response. On normal responses, the value
      #   will be `Ok`. Indicative HTTP error codes are returned for different errors. See
      #   the [API Errors Codes](#api-error-codes) section below for more information.
      #
      #   @return [String, nil]
      optional :status, String

      # @!attribute warning
      #   warning when facing unexpected behaviour
      #
      #   @return [Array<String>, nil]
      optional :warning, Nextbillionai::Internal::Type::ArrayOf[String]

      # @!method initialize(msg: nil, routes: nil, status: nil, warning: nil)
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::NavigationRetrieveRouteResponse} for more details.
      #
      #   @param msg [String] Displays the error message in case of a failed request or operation. Please note
      #
      #   @param routes [Array<Nextbillionai::Models::NavigationRetrieveRouteResponse::Route>] An array of objects describing different possible routes from the starting locat
      #
      #   @param status [String] A string indicating the state of the response. On normal responses, the value wi
      #
      #   @param warning [Array<String>] warning when facing unexpected behaviour

      class Route < Nextbillionai::Internal::Type::BaseModel
        # @!attribute distance
        #   The distance, in meters, of the complete trip.
        #
        #   @return [Float, nil]
        optional :distance, Float

        # @!attribute distance_full
        #   The total distance of the route, including additional details such as extra
        #   maneuvers or loops, in meters.
        #
        #   @return [Float, nil]
        optional :distance_full, Float

        # @!attribute duration
        #   The duration, in seconds, of the complete trip.
        #
        #   @return [Integer, nil]
        optional :duration, Integer

        # @!attribute end_location
        #   Location coordinates of the point where the route ends.
        #
        #   @return [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::EndLocation, nil]
        optional :end_location, -> { Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::EndLocation }

        # @!attribute geojson
        #   The GeoJSON representation of the route.
        #
        #   @return [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Geojson, nil]
        optional :geojson, -> { Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Geojson }

        # @!attribute geometry
        #   Encoded geometry of the returned route as per the selected format in `geometry`
        #   and specified `overview` verbosity. Please note the `overview` will always be
        #   `full` when `original_shape` parameter is used in the input request.
        #
        #   @return [String, nil]
        optional :geometry, String

        # @!attribute legs
        #   An array of objects returning the details about each `leg` of the route.
        #   `waypoints` split the route into legs.
        #
        #   @return [Array<Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg>, nil]
        optional :legs,
                 -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg] }

        # @!attribute predicted_duration
        #   The predicted duration of the route based on real-time traffic conditions.
        #
        #   @return [Float, nil]
        optional :predicted_duration, Float

        # @!attribute raw_duration
        #   The raw estimated duration of the route in seconds.
        #
        #   @return [Float, nil]
        optional :raw_duration, Float

        # @!attribute special_objects
        #   Special geospatial objects or landmarks crossed along the route.
        #
        #   @return [Object, nil]
        optional :special_objects, Nextbillionai::Internal::Type::Unknown

        # @!attribute start_location
        #   Location coordinates of the point where the route starts.
        #
        #   @return [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::StartLocation, nil]
        optional :start_location,
                 -> { Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::StartLocation }

        # @!attribute weight
        #   A weight value associated with the route or leg.
        #
        #   @return [Float, nil]
        optional :weight, Float

        # @!method initialize(distance: nil, distance_full: nil, duration: nil, end_location: nil, geojson: nil, geometry: nil, legs: nil, predicted_duration: nil, raw_duration: nil, special_objects: nil, start_location: nil, weight: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::NavigationRetrieveRouteResponse::Route} for more
        #   details.
        #
        #   @param distance [Float] The distance, in meters, of the complete trip.
        #
        #   @param distance_full [Float] The total distance of the route, including additional details such as extra mane
        #
        #   @param duration [Integer] The duration, in seconds, of the complete trip.
        #
        #   @param end_location [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::EndLocation] Location coordinates of the point where the route ends.
        #
        #   @param geojson [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Geojson] The GeoJSON representation of the route.
        #
        #   @param geometry [String] Encoded geometry of the returned route as per the selected format in `geometry`
        #
        #   @param legs [Array<Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg>] An array of objects returning the details about each `leg` of the route. `waypoi
        #
        #   @param predicted_duration [Float] The predicted duration of the route based on real-time traffic conditions.
        #
        #   @param raw_duration [Float] The raw estimated duration of the route in seconds.
        #
        #   @param special_objects [Object] Special geospatial objects or landmarks crossed along the route.
        #
        #   @param start_location [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::StartLocation] Location coordinates of the point where the route starts.
        #
        #   @param weight [Float] A weight value associated with the route or leg.

        # @see Nextbillionai::Models::NavigationRetrieveRouteResponse::Route#end_location
        class EndLocation < Nextbillionai::Internal::Type::BaseModel
          # @!attribute latitude
          #   Latitude of the `end_location`.
          #
          #   @return [Float, nil]
          optional :latitude, Float

          # @!attribute longitude
          #   Longitude of the `end_location`.
          #
          #   @return [Float, nil]
          optional :longitude, Float

          # @!method initialize(latitude: nil, longitude: nil)
          #   Location coordinates of the point where the route ends.
          #
          #   @param latitude [Float] Latitude of the `end_location`.
          #
          #   @param longitude [Float] Longitude of the `end_location`.
        end

        # @see Nextbillionai::Models::NavigationRetrieveRouteResponse::Route#geojson
        class Geojson < Nextbillionai::Internal::Type::BaseModel
          # @!attribute geometry
          #
          #   @return [String, nil]
          optional :geometry, String

          # @!attribute properties
          #
          #   @return [String, nil]
          optional :properties, String

          # @!attribute type
          #
          #   @return [Symbol, Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Geojson::Type, nil]
          optional :type, enum: -> { Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Geojson::Type }

          # @!method initialize(geometry: nil, properties: nil, type: nil)
          #   The GeoJSON representation of the route.
          #
          #   @param geometry [String]
          #   @param properties [String]
          #   @param type [Symbol, Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Geojson::Type]

          # @see Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Geojson#type
          module Type
            extend Nextbillionai::Internal::Type::Enum

            POINT = :Point
            MULTI_POINT = :MultiPoint
            LINE_STRING = :LineString
            MULTI_LINE_STRING = :MultiLineString
            POLYGON = :Polygon
            MULTI_POLYGON = :MultiPolygon
            GEOMETRY_COLLECTION = :GeometryCollection
            FEATURE = :Feature
            FEATURE_COLLECTION = :FeatureCollection
            LINK = :Link

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Leg < Nextbillionai::Internal::Type::BaseModel
          # @!attribute distance
          #   An object containing leg distance value, in meters.
          #
          #   @return [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Distance, nil]
          optional :distance, -> { Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Distance }

          # @!attribute duration
          #   An object containing leg duration value, in seconds.
          #
          #   @return [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Duration, nil]
          optional :duration, -> { Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Duration }

          # @!attribute end_location
          #   Location coordinates of the point where the leg ends.
          #
          #   @return [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::EndLocation, nil]
          optional :end_location,
                   -> { Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::EndLocation }

          # @!attribute raw_duration
          #   The raw estimated duration of the `leg` in seconds.
          #
          #   @return [Object, nil]
          optional :raw_duration, Nextbillionai::Internal::Type::Unknown

          # @!attribute start_location
          #   Location coordinates of the point where the leg starts.
          #
          #   @return [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::StartLocation, nil]
          optional :start_location,
                   -> { Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::StartLocation }

          # @!attribute steps
          #   An array of step objects containing turn-by-turn guidance for easy navigation.
          #
          #   @return [Array<Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step>, nil]
          optional :steps,
                   -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step] }

          # @!method initialize(distance: nil, duration: nil, end_location: nil, raw_duration: nil, start_location: nil, steps: nil)
          #   @param distance [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Distance] An object containing leg distance value, in meters.
          #
          #   @param duration [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Duration] An object containing leg duration value, in seconds.
          #
          #   @param end_location [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::EndLocation] Location coordinates of the point where the leg ends.
          #
          #   @param raw_duration [Object] The raw estimated duration of the `leg` in seconds.
          #
          #   @param start_location [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::StartLocation] Location coordinates of the point where the leg starts.
          #
          #   @param steps [Array<Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step>] An array of step objects containing turn-by-turn guidance for easy navigation.

          # @see Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg#distance
          class Distance < Nextbillionai::Internal::Type::BaseModel
            # @!attribute value
            #
            #   @return [Integer, nil]
            optional :value, Integer

            # @!method initialize(value: nil)
            #   An object containing leg distance value, in meters.
            #
            #   @param value [Integer]
          end

          # @see Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg#duration
          class Duration < Nextbillionai::Internal::Type::BaseModel
            # @!attribute value
            #
            #   @return [Integer, nil]
            optional :value, Integer

            # @!method initialize(value: nil)
            #   An object containing leg duration value, in seconds.
            #
            #   @param value [Integer]
          end

          # @see Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg#end_location
          class EndLocation < Nextbillionai::Internal::Type::BaseModel
            # @!attribute latitude
            #   Latitude of `end_location` of the `leg`.
            #
            #   @return [Float, nil]
            optional :latitude, Float

            # @!attribute longitude
            #   Longitude of `end_location` of the `leg`.
            #
            #   @return [Float, nil]
            optional :longitude, Float

            # @!method initialize(latitude: nil, longitude: nil)
            #   Location coordinates of the point where the leg ends.
            #
            #   @param latitude [Float] Latitude of `end_location` of the `leg`.
            #
            #   @param longitude [Float] Longitude of `end_location` of the `leg`.
          end

          # @see Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg#start_location
          class StartLocation < Nextbillionai::Internal::Type::BaseModel
            # @!attribute latitude
            #   Latitude of `start_location` of the `leg`.
            #
            #   @return [Float, nil]
            optional :latitude, Float

            # @!attribute longitude
            #   Longitude of `start_location` of the `leg`.
            #
            #   @return [Float, nil]
            optional :longitude, Float

            # @!method initialize(latitude: nil, longitude: nil)
            #   Location coordinates of the point where the leg starts.
            #
            #   @param latitude [Float] Latitude of `start_location` of the `leg`.
            #
            #   @param longitude [Float] Longitude of `start_location` of the `leg`.
          end

          class Step < Nextbillionai::Internal::Type::BaseModel
            # @!attribute distance
            #   An object containing step distance value, in meters.
            #
            #   @return [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Distance, nil]
            optional :distance,
                     -> { Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Distance }

            # @!attribute driving_side
            #   Indicates the driving side of the road in case bidirectional traffic is allowed
            #   on the given segment. It can have two values: "left" & "right".
            #
            #   @return [String, nil]
            optional :driving_side, String

            # @!attribute duration
            #   An object containing step duration value, in seconds.
            #
            #   @return [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Duration, nil]
            optional :duration,
                     -> { Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Duration }

            # @!attribute end_location
            #   Location coordinates of the point where the `step` ends.
            #
            #   @return [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::EndLocation, nil]
            optional :end_location,
                     -> { Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::EndLocation }

            # @!attribute geojson
            #   The GeoJSON representation of the `step`.
            #
            #   @return [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Geojson, nil]
            optional :geojson,
                     -> { Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Geojson }

            # @!attribute geometry
            #   Encoded geometry of the `step` in the selected format.
            #
            #   @return [String, nil]
            optional :geometry, String

            # @!attribute intersections
            #   An array of objects representing intersections (or cross-way) that the route
            #   passes by along the `step`. For every `step`, the very first `intersection`
            #   corresponds to the location of the `maneuver`. All intersections until the next
            #   `maneuver` are listed in this object.
            #
            #   @return [Array<Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection>, nil]
            optional :intersections,
                     -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection] }

            # @!attribute maneuver
            #   An object with maneuver details for the `step`.
            #
            #   @return [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver, nil]
            optional :maneuver,
                     -> { Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver }

            # @!attribute name
            #   The name of the `step`.
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute reference
            #   A reference for the `step`.
            #
            #   @return [String, nil]
            optional :reference, String

            # @!attribute road_shield_type
            #   An object containing road shield information.
            #
            #   @return [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::RoadShieldType, nil]
            optional :road_shield_type,
                     -> { Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::RoadShieldType }

            # @!attribute start_location
            #   Location coordinates of the point where the `step` starts.
            #
            #   @return [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::StartLocation, nil]
            optional :start_location,
                     -> { Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::StartLocation }

            # @!method initialize(distance: nil, driving_side: nil, duration: nil, end_location: nil, geojson: nil, geometry: nil, intersections: nil, maneuver: nil, name: nil, reference: nil, road_shield_type: nil, start_location: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step} for
            #   more details.
            #
            #   @param distance [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Distance] An object containing step distance value, in meters.
            #
            #   @param driving_side [String] Indicates the driving side of the road in case bidirectional traffic is allowed
            #
            #   @param duration [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Duration] An object containing step duration value, in seconds.
            #
            #   @param end_location [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::EndLocation] Location coordinates of the point where the `step` ends.
            #
            #   @param geojson [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Geojson] The GeoJSON representation of the `step`.
            #
            #   @param geometry [String] Encoded geometry of the `step` in the selected format.
            #
            #   @param intersections [Array<Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection>] An array of objects representing intersections (or cross-way) that the route pas
            #
            #   @param maneuver [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver] An object with maneuver details for the `step`.
            #
            #   @param name [String] The name of the `step`.
            #
            #   @param reference [String] A reference for the `step`.
            #
            #   @param road_shield_type [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::RoadShieldType] An object containing road shield information.
            #
            #   @param start_location [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::StartLocation] Location coordinates of the point where the `step` starts.

            # @see Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step#distance
            class Distance < Nextbillionai::Internal::Type::BaseModel
              # @!attribute value
              #
              #   @return [Integer, nil]
              optional :value, Integer

              # @!method initialize(value: nil)
              #   An object containing step distance value, in meters.
              #
              #   @param value [Integer]
            end

            # @see Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step#duration
            class Duration < Nextbillionai::Internal::Type::BaseModel
              # @!attribute value
              #
              #   @return [Integer, nil]
              optional :value, Integer

              # @!method initialize(value: nil)
              #   An object containing step duration value, in seconds.
              #
              #   @param value [Integer]
            end

            # @see Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step#end_location
            class EndLocation < Nextbillionai::Internal::Type::BaseModel
              # @!attribute latitude
              #   Latitude of the `end_location` of the `step`.
              #
              #   @return [Float, nil]
              optional :latitude, Float

              # @!attribute longitude
              #   Longitude of the `end_location` of the `step`.
              #
              #   @return [Float, nil]
              optional :longitude, Float

              # @!method initialize(latitude: nil, longitude: nil)
              #   Location coordinates of the point where the `step` ends.
              #
              #   @param latitude [Float] Latitude of the `end_location` of the `step`.
              #
              #   @param longitude [Float] Longitude of the `end_location` of the `step`.
            end

            # @see Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step#geojson
            class Geojson < Nextbillionai::Internal::Type::BaseModel
              # @!attribute geometry
              #
              #   @return [String, nil]
              optional :geometry, String

              # @!attribute type
              #
              #   @return [String, nil]
              optional :type, String

              # @!method initialize(geometry: nil, type: nil)
              #   The GeoJSON representation of the `step`.
              #
              #   @param geometry [String]
              #   @param type [String]
            end

            class Intersection < Nextbillionai::Internal::Type::BaseModel
              # @!attribute bearings
              #   A list of bearing values (e.g. [0,90,180,270]) that are available at the
              #   intersection. The `bearings` describe all available roads at the intersection.
              #
              #   @return [Array<Integer>, nil]
              optional :bearings, Nextbillionai::Internal::Type::ArrayOf[Integer]

              # @!attribute classes
              #   An array of strings representing the classes or types of roads or paths at the
              #   intersection. The classes can indicate the road hierarchy, such as a motorway,
              #   primary road, secondary road, etc.
              #
              #   @return [Array<String>, nil]
              optional :classes, Nextbillionai::Internal::Type::ArrayOf[String]

              # @!attribute entry
              #   A value of `true` indicates that the respective road could be entered on a valid
              #   route. `false` indicates that the turn onto the respective road would violate a
              #   restriction. Each entry value corresponds to the bearing angle at the same
              #   index.
              #
              #   @return [Array<Boolean>, nil]
              optional :entry, Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Internal::Type::Boolean]

              # @!attribute intersection_in
              #   The number of incoming roads or paths at the `intersection`.
              #
              #   @return [Integer, nil]
              optional :intersection_in, Integer

              # @!attribute intersection_out
              #   The number of outgoing roads or paths from the `intersection`.
              #
              #   @return [Integer, nil]
              optional :intersection_out, Integer

              # @!attribute lanes
              #   An array of lane objects representing the lanes available at the intersection.
              #   If no lane information is available for an `intersection`, the `lanes` property
              #   will not be present.
              #
              #   @return [Array<Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection::Lane>, nil]
              optional :lanes,
                       -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection::Lane] }

              # @!attribute location
              #   A [longitude, latitude] pair describing the location of the intersection.
              #
              #   @return [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection::Location, nil]
              optional :location,
                       -> { Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection::Location }

              # @!method initialize(bearings: nil, classes: nil, entry: nil, intersection_in: nil, intersection_out: nil, lanes: nil, location: nil)
              #   Some parameter documentations has been truncated, see
              #   {Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection}
              #   for more details.
              #
              #   @param bearings [Array<Integer>] A list of bearing values (e.g. [0,90,180,270]) that are available at the interse
              #
              #   @param classes [Array<String>] An array of strings representing the classes or types of roads or paths at the i
              #
              #   @param entry [Array<Boolean>] A value of `true` indicates that the respective road could be entered on a valid
              #
              #   @param intersection_in [Integer] The number of incoming roads or paths at the `intersection`.
              #
              #   @param intersection_out [Integer] The number of outgoing roads or paths from the `intersection`.
              #
              #   @param lanes [Array<Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection::Lane>] An array of lane objects representing the lanes available at the intersection. I
              #
              #   @param location [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection::Location] A [longitude, latitude] pair describing the location of the intersection.

              class Lane < Nextbillionai::Internal::Type::BaseModel
                # @!attribute indications
                #   It represents actions associated with the lane. These indications describe the
                #   permitted maneuvers or directions that can be taken from the lane. Common
                #   indications include "turn left," "turn right," "go straight," "merge," "exit,"
                #   etc.
                #
                #   @return [Array<String>, nil]
                optional :indications, Nextbillionai::Internal::Type::ArrayOf[String]

                # @!attribute valid
                #   This indicates the validity of the lane. It specifies whether the lane is
                #   considered valid for making the indicated maneuver or if there are any
                #   restrictions or limitations associated with it.
                #
                #   @return [Boolean, nil]
                optional :valid, Nextbillionai::Internal::Type::Boolean

                # @!method initialize(indications: nil, valid: nil)
                #   Some parameter documentations has been truncated, see
                #   {Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection::Lane}
                #   for more details.
                #
                #   @param indications [Array<String>] It represents actions associated with the lane. These indications describe the p
                #
                #   @param valid [Boolean] This indicates the validity of the lane. It specifies whether the lane is consid
              end

              # @see Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Intersection#location
              class Location < Nextbillionai::Internal::Type::BaseModel
                # @!attribute latitude
                #   The latitude coordinate of the `intersection`.
                #
                #   @return [Float, nil]
                optional :latitude, Float

                # @!attribute longitude
                #   The longitude coordinate of the `intersection`.
                #
                #   @return [Float, nil]
                optional :longitude, Float

                # @!attribute name
                #   The name or description of the `intersection`.
                #
                #   @return [String, nil]
                optional :name, String

                # @!method initialize(latitude: nil, longitude: nil, name: nil)
                #   A [longitude, latitude] pair describing the location of the intersection.
                #
                #   @param latitude [Float] The latitude coordinate of the `intersection`.
                #
                #   @param longitude [Float] The longitude coordinate of the `intersection`.
                #
                #   @param name [String] The name or description of the `intersection`.
              end
            end

            # @see Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step#maneuver
            class Maneuver < Nextbillionai::Internal::Type::BaseModel
              # @!attribute bearing_after
              #   The clockwise angle from true north to the direction of travel immediately after
              #   the `maneuver`. Range of values is between 0-359.
              #
              #   @return [Float, nil]
              optional :bearing_after, Float

              # @!attribute bearing_before
              #   The clockwise angle from true north to the direction of travel immediately
              #   before the `maneuver`. Range of values is between 0-359.
              #
              #   @return [Float, nil]
              optional :bearing_before, Float

              # @!attribute coordinate
              #   A coordinate pair describing the location of the `maneuver`.
              #
              #   @return [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver::Coordinate, nil]
              optional :coordinate,
                       -> { Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver::Coordinate }

              # @!attribute instruction
              #   A text instruction describing the maneuver to be performed. It provides guidance
              #   on the action to take at the maneuver location, such as "Turn left," "Go
              #   straight," "Exit the roundabout," etc.
              #
              #   @return [String, nil]
              optional :instruction, String

              # @!attribute maneuver_type
              #   A string indicating the type of `maneuver`.
              #
              #   @return [String, nil]
              optional :maneuver_type, String

              # @!attribute muted
              #   A boolean value indicating whether the voice instruction for the maneuver should
              #   be muted or not.
              #
              #   @return [Boolean, nil]
              optional :muted, Nextbillionai::Internal::Type::Boolean

              # @!attribute roundabout_count
              #   The number of roundabouts encountered so far during the route. This parameter is
              #   specific to roundabout maneuvers and indicates the count of roundabouts before
              #   the current one.
              #
              #   @return [Integer, nil]
              optional :roundabout_count, Integer

              # @!attribute voice_instruction
              #   An array of voice instruction objects associated with the `maneuver`. Each
              #   object provides additional details about the voice instruction, including the
              #   distance along the geometry where the instruction applies, the instruction text,
              #   and the unit of measurement.
              #
              #   @return [Array<Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver::VoiceInstruction>, nil]
              optional :voice_instruction,
                       -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver::VoiceInstruction] }

              # @!method initialize(bearing_after: nil, bearing_before: nil, coordinate: nil, instruction: nil, maneuver_type: nil, muted: nil, roundabout_count: nil, voice_instruction: nil)
              #   Some parameter documentations has been truncated, see
              #   {Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver}
              #   for more details.
              #
              #   An object with maneuver details for the `step`.
              #
              #   @param bearing_after [Float] The clockwise angle from true north to the direction of travel immediately after
              #
              #   @param bearing_before [Float] The clockwise angle from true north to the direction of travel immediately befor
              #
              #   @param coordinate [Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver::Coordinate] A coordinate pair describing the location of the `maneuver`.
              #
              #   @param instruction [String] A text instruction describing the maneuver to be performed. It provides guidance
              #
              #   @param maneuver_type [String] A string indicating the type of `maneuver`.
              #
              #   @param muted [Boolean] A boolean value indicating whether the voice instruction for the maneuver should
              #
              #   @param roundabout_count [Integer] The number of roundabouts encountered so far during the route. This parameter is
              #
              #   @param voice_instruction [Array<Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver::VoiceInstruction>] An array of voice instruction objects associated with the `maneuver`. Each objec

              # @see Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::Maneuver#coordinate
              class Coordinate < Nextbillionai::Internal::Type::BaseModel
                # @!attribute latitude
                #   The latitude coordinate of the `maneuver`.
                #
                #   @return [Float, nil]
                optional :latitude, Float

                # @!attribute longitude
                #   The longitude coordinate of the `maneuver`.
                #
                #   @return [Float, nil]
                optional :longitude, Float

                # @!attribute name
                #   The name or description of the maneuver location.
                #
                #   @return [String, nil]
                optional :name, String

                # @!method initialize(latitude: nil, longitude: nil, name: nil)
                #   A coordinate pair describing the location of the `maneuver`.
                #
                #   @param latitude [Float] The latitude coordinate of the `maneuver`.
                #
                #   @param longitude [Float] The longitude coordinate of the `maneuver`.
                #
                #   @param name [String] The name or description of the maneuver location.
              end

              class VoiceInstruction < Nextbillionai::Internal::Type::BaseModel
                # @!attribute distance_along_geometry
                #
                #   @return [Integer, nil]
                optional :distance_along_geometry, Integer

                # @!attribute instruction
                #   The guidance instructions for the upcoming `maneuver`
                #
                #   @return [String, nil]
                optional :instruction, String

                # @!attribute unit
                #   Unit of the `distance_along_geometry` metric
                #
                #   @return [String, nil]
                optional :unit, String

                # @!method initialize(distance_along_geometry: nil, instruction: nil, unit: nil)
                #   @param distance_along_geometry [Integer]
                #
                #   @param instruction [String] The guidance instructions for the upcoming `maneuver`
                #
                #   @param unit [String] Unit of the `distance_along_geometry` metric
              end
            end

            # @see Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step#road_shield_type
            class RoadShieldType < Nextbillionai::Internal::Type::BaseModel
              # @!attribute image_url
              #   The URL to fetch the road shield image.
              #
              #   @return [String, nil]
              optional :image_url, String

              # @!attribute label
              #   A label identifying the inscription on the road shield, such as containing the
              #   road number.
              #
              #   @return [String, nil]
              optional :label, String

              # @!method initialize(image_url: nil, label: nil)
              #   Some parameter documentations has been truncated, see
              #   {Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step::RoadShieldType}
              #   for more details.
              #
              #   An object containing road shield information.
              #
              #   @param image_url [String] The URL to fetch the road shield image.
              #
              #   @param label [String] A label identifying the inscription on the road shield, such as containing the r
            end

            # @see Nextbillionai::Models::NavigationRetrieveRouteResponse::Route::Leg::Step#start_location
            class StartLocation < Nextbillionai::Internal::Type::BaseModel
              # @!attribute latitude
              #   Latitude of `start_location` of the `step`.
              #
              #   @return [Float, nil]
              optional :latitude, Float

              # @!attribute longitude
              #   Longitude of `start_location` of the `step`.
              #
              #   @return [Float, nil]
              optional :longitude, Float

              # @!method initialize(latitude: nil, longitude: nil)
              #   Location coordinates of the point where the `step` starts.
              #
              #   @param latitude [Float] Latitude of `start_location` of the `step`.
              #
              #   @param longitude [Float] Longitude of `start_location` of the `step`.
            end
          end
        end

        # @see Nextbillionai::Models::NavigationRetrieveRouteResponse::Route#start_location
        class StartLocation < Nextbillionai::Internal::Type::BaseModel
          # @!attribute latitude
          #   Latitude of the`start_location`.
          #
          #   @return [Float, nil]
          optional :latitude, Float

          # @!attribute longitude
          #   Longitude of the `start_location`.
          #
          #   @return [Float, nil]
          optional :longitude, Float

          # @!method initialize(latitude: nil, longitude: nil)
          #   Location coordinates of the point where the route starts.
          #
          #   @param latitude [Float] Latitude of the`start_location`.
          #
          #   @param longitude [Float] Longitude of the `start_location`.
        end
      end
    end
  end
end
