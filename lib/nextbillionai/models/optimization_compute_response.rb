# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Optimization#compute
    class OptimizationComputeResponse < Nextbillionai::Internal::Type::BaseModel
      # @!attribute code
      #   A string indicating the state of the response. This is a separate code than the
      #   HTTP status code. On normal valid responses, the value will be `Ok`.
      #
      #   @return [String, nil]
      optional :code, String

      # @!attribute location
      #   Contains the latitude and longitude of a location
      #
      #   @return [Nextbillionai::Models::OptimizationComputeResponse::Location, nil]
      optional :location, -> { Nextbillionai::Models::OptimizationComputeResponse::Location }

      # @!attribute trips
      #   An array of 0 or 1 trip objects. Each object has the following schema.
      #
      #   @return [Array<Nextbillionai::Models::OptimizationComputeResponse::Trip>, nil]
      optional :trips,
               -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::OptimizationComputeResponse::Trip] }

      # @!attribute waypoints
      #   Each waypoint is an input coordinate snapped to the road and path network.
      #
      #   @return [Array<Nextbillionai::Models::OptimizationComputeResponse::Waypoint>, nil]
      optional :waypoints,
               -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::OptimizationComputeResponse::Waypoint] }

      # @!method initialize(code: nil, location: nil, trips: nil, waypoints: nil)
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::OptimizationComputeResponse} for more details.
      #
      #   @param code [String] A string indicating the state of the response. This is a separate code than the
      #
      #   @param location [Nextbillionai::Models::OptimizationComputeResponse::Location] Contains the latitude and longitude of a location
      #
      #   @param trips [Array<Nextbillionai::Models::OptimizationComputeResponse::Trip>] An array of 0 or 1 trip objects. Each object has the following schema.
      #
      #   @param waypoints [Array<Nextbillionai::Models::OptimizationComputeResponse::Waypoint>] Each waypoint is an input coordinate snapped to the road and path network.

      # @see Nextbillionai::Models::OptimizationComputeResponse#location
      class Location < Nextbillionai::Internal::Type::BaseModel
        # @!attribute latitude
        #   Latitude coordinate of the location.
        #
        #   @return [Float, nil]
        optional :latitude, Float

        # @!attribute longitude
        #   Longitude coordinate of the location.
        #
        #   @return [Float, nil]
        optional :longitude, Float

        # @!method initialize(latitude: nil, longitude: nil)
        #   Contains the latitude and longitude of a location
        #
        #   @param latitude [Float] Latitude coordinate of the location.
        #
        #   @param longitude [Float] Longitude coordinate of the location.
      end

      class Trip < Nextbillionai::Internal::Type::BaseModel
        # @!attribute distance
        #   Distance of the trip in meters.
        #
        #   @return [Float, nil]
        optional :distance, Float

        # @!attribute duration
        #   Duration of the trip in seconds
        #
        #   @return [Float, nil]
        optional :duration, Float

        # @!attribute geojson
        #   The GeoJSON representation of the route.
        #
        #   @return [Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson, nil]
        optional :geojson, -> { Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson }

        # @!attribute geometry
        #   `polyline` or `polyline6` format of route geometry.
        #
        #   @return [String, nil]
        optional :geometry, String

        # @!attribute legs
        #
        #   @return [Array<Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg>, nil]
        optional :legs,
                 -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg] }

        # @!method initialize(distance: nil, duration: nil, geojson: nil, geometry: nil, legs: nil)
        #   @param distance [Float] Distance of the trip in meters.
        #
        #   @param duration [Float] Duration of the trip in seconds
        #
        #   @param geojson [Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson] The GeoJSON representation of the route.
        #
        #   @param geometry [String] `polyline` or `polyline6` format of route geometry.
        #
        #   @param legs [Array<Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg>]

        # @see Nextbillionai::Models::OptimizationComputeResponse::Trip#geojson
        class Geojson < Nextbillionai::Internal::Type::BaseModel
          # @!attribute geometry
          #   The encoded geometry of the geojson in the `trip`.
          #
          #   @return [String, nil]
          optional :geometry, String

          # @!attribute properties
          #   Additional properties associated with the `trip`.
          #
          #   @return [String, nil]
          optional :properties, String

          # @!attribute type
          #   The type of the GeoJSON object.
          #
          #   @return [Symbol, Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson::Type, nil]
          optional :type, enum: -> { Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson::Type }

          # @!method initialize(geometry: nil, properties: nil, type: nil)
          #   The GeoJSON representation of the route.
          #
          #   @param geometry [String] The encoded geometry of the geojson in the `trip`.
          #
          #   @param properties [String] Additional properties associated with the `trip`.
          #
          #   @param type [Symbol, Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson::Type] The type of the GeoJSON object.

          # The type of the GeoJSON object.
          #
          # @see Nextbillionai::Models::OptimizationComputeResponse::Trip::Geojson#type
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
          #   Distance of leg in metres.
          #
          #   @return [Float, nil]
          optional :distance, Float

          # @!attribute duration
          #   Duration of leg in seconds.
          #
          #   @return [Float, nil]
          optional :duration, Float

          # @!attribute steps
          #   An array of step objects.
          #
          #   @return [Array<Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step>, nil]
          optional :steps,
                   -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step] }

          # @!attribute summary
          #   Summary of the `leg` object.
          #
          #   @return [String, nil]
          optional :summary, String

          # @!method initialize(distance: nil, duration: nil, steps: nil, summary: nil)
          #   @param distance [Float] Distance of leg in metres.
          #
          #   @param duration [Float] Duration of leg in seconds.
          #
          #   @param steps [Array<Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step>] An array of step objects.
          #
          #   @param summary [String] Summary of the `leg` object.

          class Step < Nextbillionai::Internal::Type::BaseModel
            # @!attribute distance
            #   Distance of the `step` object in meters.
            #
            #   @return [Float, nil]
            optional :distance, Float

            # @!attribute duration
            #   Duration of the `step` object in seconds.
            #
            #   @return [Float, nil]
            optional :duration, Float

            # @!attribute geojson
            #   The GeoJSON representation of the `step`.
            #
            #   @return [Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson, nil]
            optional :geojson, -> { Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson }

            # @!attribute geometry
            #   Encoded geometry of the `step` in the selected format.
            #
            #   @return [String, nil]
            optional :geometry, String

            # @!method initialize(distance: nil, duration: nil, geojson: nil, geometry: nil)
            #   @param distance [Float] Distance of the `step` object in meters.
            #
            #   @param duration [Float] Duration of the `step` object in seconds.
            #
            #   @param geojson [Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson] The GeoJSON representation of the `step`.
            #
            #   @param geometry [String] Encoded geometry of the `step` in the selected format.

            # @see Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step#geojson
            class Geojson < Nextbillionai::Internal::Type::BaseModel
              # @!attribute geometry
              #   The encoded geometry of the geojson in the `step`.
              #
              #   @return [String, nil]
              optional :geometry, String

              # @!attribute properties
              #   Additional properties associated with the `step`.
              #
              #   @return [String, nil]
              optional :properties, String

              # @!attribute type
              #   The type of the GeoJSON object.
              #
              #   @return [Symbol, Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson::Type, nil]
              optional :type,
                       enum: -> { Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson::Type }

              # @!method initialize(geometry: nil, properties: nil, type: nil)
              #   The GeoJSON representation of the `step`.
              #
              #   @param geometry [String] The encoded geometry of the geojson in the `step`.
              #
              #   @param properties [String] Additional properties associated with the `step`.
              #
              #   @param type [Symbol, Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson::Type] The type of the GeoJSON object.

              # The type of the GeoJSON object.
              #
              # @see Nextbillionai::Models::OptimizationComputeResponse::Trip::Leg::Step::Geojson#type
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
          end
        end
      end

      class Waypoint < Nextbillionai::Internal::Type::BaseModel
        # @!attribute location
        #   Describes the location of the waypoint.
        #
        #   @return [Nextbillionai::Models::OptimizationComputeResponse::Waypoint::Location, nil]
        optional :location, -> { Nextbillionai::Models::OptimizationComputeResponse::Waypoint::Location }

        # @!attribute name
        #   Name of the waypoint.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute trips_index
        #   Denotes the ID of a trip. Starts with 0.
        #
        #   @return [Integer, nil]
        optional :trips_index, Integer

        # @!attribute waypoint_index
        #   Denotes the id of a waypoint. The first waypoint is denoted with 0. And onwards
        #   with 1, 2 etc.
        #
        #   @return [Integer, nil]
        optional :waypoint_index, Integer

        # @!method initialize(location: nil, name: nil, trips_index: nil, waypoint_index: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::OptimizationComputeResponse::Waypoint} for more details.
        #
        #   @param location [Nextbillionai::Models::OptimizationComputeResponse::Waypoint::Location] Describes the location of the waypoint.
        #
        #   @param name [String] Name of the waypoint.
        #
        #   @param trips_index [Integer] Denotes the ID of a trip. Starts with 0.
        #
        #   @param waypoint_index [Integer] Denotes the id of a waypoint. The first waypoint is denoted with 0. And onwards

        # @see Nextbillionai::Models::OptimizationComputeResponse::Waypoint#location
        class Location < Nextbillionai::Internal::Type::BaseModel
          # @!attribute latitude
          #   Latitude coordinate of the waypoint.
          #
          #   @return [Float, nil]
          optional :latitude, Float

          # @!attribute longitude
          #   Longitude coordinate of the waypoint.
          #
          #   @return [Float, nil]
          optional :longitude, Float

          # @!method initialize(latitude: nil, longitude: nil)
          #   Describes the location of the waypoint.
          #
          #   @param latitude [Float] Latitude coordinate of the waypoint.
          #
          #   @param longitude [Float] Longitude coordinate of the waypoint.
        end
      end
    end
  end
end
