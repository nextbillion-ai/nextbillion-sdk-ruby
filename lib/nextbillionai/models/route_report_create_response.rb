# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::RouteReport#create
    class RouteReportCreateResponse < Nextbillionai::Internal::Type::BaseModel
      # @!attribute geometry
      #   An array of objects returning encoded geometry of the routes. Each object
      #   represents an individual route in the input.
      #
      #   @return [Array<String>, nil]
      optional :geometry, Nextbillionai::Internal::Type::ArrayOf[String]

      # @!attribute mileage
      #   Returns the details of route segments in each state or country that the route
      #   passes through. Each object represents an individual route in the input request.
      #
      #   @return [Array<Nextbillionai::Models::RouteReportCreateResponse::Mileage>, nil]
      optional :mileage,
               -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::RouteReportCreateResponse::Mileage] }

      # @!attribute msg
      #   Displays the error message in case of a failed request or operation. Please note
      #   that this parameter is not returned in the response in case of a successful
      #   request.
      #
      #   @return [String, nil]
      optional :msg, String

      # @!attribute road_summary
      #   An array of objects returning a summary of the route with information about
      #   tolls, bridges, tunnels, segments, maximum speeds and more. Each array
      #   represents an individual route in the input request.
      #
      #   @return [Array<Nextbillionai::Models::RouteReportCreateResponse::RoadSummary>, nil]
      optional :road_summary,
               -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::RouteReportCreateResponse::RoadSummary] }

      # @!attribute status
      #   A string indicating the state of the response. On normal responses, the value
      #   will be Ok. Indicative HTTP error codes are returned for different errors. See
      #   the
      #   [**API Errors Codes**](https://app.reapi.com/ws/hmx8aL45B5jjrJa8/p/vNNilNksLVz675pI/s/ealJmVGjTQv4x5Wi/edit/path/VYzo7gOlRsQQZo0U#api-error-codes)
      #   section below for more information.
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(geometry: nil, mileage: nil, msg: nil, road_summary: nil, status: nil)
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::RouteReportCreateResponse} for more details.
      #
      #   @param geometry [Array<String>] An array of objects returning encoded geometry of the routes. Each object repres
      #
      #   @param mileage [Array<Nextbillionai::Models::RouteReportCreateResponse::Mileage>] Returns the details of route segments in each state or country that the route pa
      #
      #   @param msg [String] Displays the error message in case of a failed request or operation. Please note
      #
      #   @param road_summary [Array<Nextbillionai::Models::RouteReportCreateResponse::RoadSummary>] An array of objects returning a summary of the route with information about toll
      #
      #   @param status [String] A string indicating the state of the response. On normal responses, the value wi

      class Mileage < Nextbillionai::Internal::Type::BaseModel
        # @!attribute segment
        #   Returns the details of road segments that the route covers in different states
        #   and countries.
        #
        #   @return [Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment, nil]
        optional :segment, -> { Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment }

        # @!attribute summary
        #   Returns a summary of distances that the route covers in different states and
        #   countries.
        #
        #   @return [Nextbillionai::Models::RouteReportCreateResponse::Mileage::Summary, nil]
        optional :summary, -> { Nextbillionai::Models::RouteReportCreateResponse::Mileage::Summary }

        # @!method initialize(segment: nil, summary: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::RouteReportCreateResponse::Mileage} for more details.
        #
        #   @param segment [Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment] Returns the details of road segments that the route covers in different states a
        #
        #   @param summary [Nextbillionai::Models::RouteReportCreateResponse::Mileage::Summary] Returns a summary of distances that the route covers in different states and cou

        # @see Nextbillionai::Models::RouteReportCreateResponse::Mileage#segment
        class Segment < Nextbillionai::Internal::Type::BaseModel
          # @!attribute country
          #   An array of objects containing country-wise break up of the route segments. Each
          #   object returns the segment details of a different country.
          #
          #   @return [Array<Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment::Country>, nil]
          optional :country,
                   -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment::Country] }

          # @!attribute state
          #   An array of objects containing state-wise break up of the route segments. Each
          #   object returns the segment details of a different state.
          #
          #   @return [Array<Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment::State>, nil]
          optional :state,
                   -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment::State] }

          # @!method initialize(country: nil, state: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment} for more
          #   details.
          #
          #   Returns the details of road segments that the route covers in different states
          #   and countries.
          #
          #   @param country [Array<Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment::Country>] An array of objects containing country-wise break up of the route segments. Each
          #
          #   @param state [Array<Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment::State>] An array of objects containing state-wise break up of the route segments. Each o

          class Country < Nextbillionai::Internal::Type::BaseModel
            # @!attribute distance
            #   Represents the total distance of this segment, in meters.
            #
            #   @return [Float, nil]
            optional :distance, Float

            # @!attribute length
            #   Represents a sequence of ‘n’ consecutive vertices in the route geometry starting
            #   from the offset, forming a continuous section of route with a distance indicated
            #   in distancefield.
            #
            #   @return [Integer, nil]
            optional :length, Integer

            # @!attribute offset
            #   Represents the index value of the vertex of current segment's starting point in
            #   route geometry. First vertex in the route geometry has an offset of 0.
            #
            #   @return [Integer, nil]
            optional :offset, Integer

            # @!attribute value
            #   Returns the name of the country in which the segment lies.
            #
            #   @return [String, nil]
            optional :value, String

            # @!method initialize(distance: nil, length: nil, offset: nil, value: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment::Country}
            #   for more details.
            #
            #   @param distance [Float] Represents the total distance of this segment, in meters.
            #
            #   @param length [Integer] Represents a sequence of ‘n’ consecutive vertices in the route geometry starting
            #
            #   @param offset [Integer] Represents the index value of the vertex of current segment's starting point in
            #
            #   @param value [String] Returns the name of the country in which the segment lies.
          end

          class State < Nextbillionai::Internal::Type::BaseModel
            # @!attribute distance
            #   Represents the real distance of this segment, in meters.
            #
            #   @return [Float, nil]
            optional :distance, Float

            # @!attribute length
            #   Represents a sequence of ‘n’ consecutive vertices in the route geometry starting
            #   from the offset, forming a continuous section of route with a distance indicated
            #   in distancefield.
            #
            #   @return [Integer, nil]
            optional :length, Integer

            # @!attribute offset
            #   Represents the index value of the vertex of current segment's starting point in
            #   route geometry. First vertex in the route geometry has an offset of 0.
            #
            #   @return [Integer, nil]
            optional :offset, Integer

            # @!attribute value
            #   Returns the name of the state in which the segment lies.
            #
            #   @return [String, nil]
            optional :value, String

            # @!method initialize(distance: nil, length: nil, offset: nil, value: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::RouteReportCreateResponse::Mileage::Segment::State} for
            #   more details.
            #
            #   @param distance [Float] Represents the real distance of this segment, in meters.
            #
            #   @param length [Integer] Represents a sequence of ‘n’ consecutive vertices in the route geometry starting
            #
            #   @param offset [Integer] Represents the index value of the vertex of current segment's starting point in
            #
            #   @param value [String] Returns the name of the state in which the segment lies.
          end
        end

        # @see Nextbillionai::Models::RouteReportCreateResponse::Mileage#summary
        class Summary < Nextbillionai::Internal::Type::BaseModel
          # @!attribute country
          #   A break up of country-wise distances that the route covers in key:value pair
          #   format.
          #
          #   @return [Object, nil]
          optional :country, Nextbillionai::Internal::Type::Unknown

          # @!attribute state
          #   A break up of state-wise distances that the route covers specified in key:value
          #   pair format.
          #
          #   @return [Object, nil]
          optional :state, Nextbillionai::Internal::Type::Unknown

          # @!method initialize(country: nil, state: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::RouteReportCreateResponse::Mileage::Summary} for more
          #   details.
          #
          #   Returns a summary of distances that the route covers in different states and
          #   countries.
          #
          #   @param country [Object] A break up of country-wise distances that the route covers in key:value pair for
          #
          #   @param state [Object] A break up of state-wise distances that the route covers specified in key:value
        end
      end

      class RoadSummary < Nextbillionai::Internal::Type::BaseModel
        # @!attribute segment
        #   Returns the segment-wise road class and max speed information of the route.
        #
        #   @return [Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment, nil]
        optional :segment, -> { Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment }

        # @!attribute summary
        #   Returns an overview of the route with information about trip distance, duration
        #   and road class details among others.
        #
        #   @return [Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Summary, nil]
        optional :summary, -> { Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Summary }

        # @!method initialize(segment: nil, summary: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::RouteReportCreateResponse::RoadSummary} for more
        #   details.
        #
        #   @param segment [Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment] Returns the segment-wise road class and max speed information of the route.
        #
        #   @param summary [Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Summary] Returns an overview of the route with information about trip distance, duration

        # @see Nextbillionai::Models::RouteReportCreateResponse::RoadSummary#segment
        class Segment < Nextbillionai::Internal::Type::BaseModel
          # @!attribute max_speed
          #   An array of objects returning the maximum speed of different segments that the
          #   route goes through.
          #
          #   @return [Array<Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment::MaxSpeed>, nil]
          optional :max_speed,
                   -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment::MaxSpeed] }

          # @!attribute road_class
          #   An array of objects returning the details of road segments belonging to
          #   different road classes that the route goes through. Each object refers to a
          #   unique road class.
          #
          #   @return [Array<Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment::RoadClass>, nil]
          optional :road_class,
                   -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment::RoadClass] }

          # @!method initialize(max_speed: nil, road_class: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment} for
          #   more details.
          #
          #   Returns the segment-wise road class and max speed information of the route.
          #
          #   @param max_speed [Array<Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment::MaxSpeed>] An array of objects returning the maximum speed of different segments that the r
          #
          #   @param road_class [Array<Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment::RoadClass>] An array of objects returning the details of road segments belonging to differen

          class MaxSpeed < Nextbillionai::Internal::Type::BaseModel
            # @!attribute distance
            #   Returns the total distance of this segment, in meters.
            #
            #   @return [Integer, nil]
            optional :distance, Integer

            # @!attribute length
            #   Represents a sequence of ‘n’ consecutive vertices in the route geometry starting
            #   from the offset, forming a continuous section of route where the maximum speed
            #   is same and is indicated in value.
            #
            #   @return [Integer, nil]
            optional :length, Integer

            # @!attribute offset
            #   Represents the index value of the vertex of current segment's starting point in
            #   route geometry. First vertex in the route geometry has an offset of 0.
            #
            #   @return [Integer, nil]
            optional :offset, Integer

            # @!attribute value
            #   Denotes the maximum speed of this segment, in kilometers per hour. - A value of
            #   “-1” indicates that the speed is unlimited for this road segment. - A value of
            #   “0” indicates that there is no information about the maximum speed for this road
            #   segment.
            #
            #   @return [Integer, nil]
            optional :value, Integer

            # @!method initialize(distance: nil, length: nil, offset: nil, value: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment::MaxSpeed}
            #   for more details.
            #
            #   @param distance [Integer] Returns the total distance of this segment, in meters.
            #
            #   @param length [Integer] Represents a sequence of ‘n’ consecutive vertices in the route geometry starting
            #
            #   @param offset [Integer] Represents the index value of the vertex of current segment's starting point in
            #
            #   @param value [Integer] Denotes the maximum speed of this segment, in kilometers per hour. - A value of
          end

          class RoadClass < Nextbillionai::Internal::Type::BaseModel
            # @!attribute distance
            #   Returns the total distance of this segment, in meters.
            #
            #   @return [Integer, nil]
            optional :distance, Integer

            # @!attribute length
            #   Represents a sequence of ‘n’ consecutive vertices in the route geometry starting
            #   from the offset, forming a continuous section of route with a distance indicated
            #   in distancefield.
            #
            #   @return [Integer, nil]
            optional :length, Integer

            # @!attribute offset
            #   Represents the index value of the vertex of current segment's starting point in
            #   route geometry. First vertex in the route geometry has an offset of 0.
            #
            #   @return [Integer, nil]
            optional :offset, Integer

            # @!attribute value
            #   Returns the road class name to which the segment belongs.
            #
            #   @return [String, nil]
            optional :value, String

            # @!method initialize(distance: nil, length: nil, offset: nil, value: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Segment::RoadClass}
            #   for more details.
            #
            #   @param distance [Integer] Returns the total distance of this segment, in meters.
            #
            #   @param length [Integer] Represents a sequence of ‘n’ consecutive vertices in the route geometry starting
            #
            #   @param offset [Integer] Represents the index value of the vertex of current segment's starting point in
            #
            #   @param value [String] Returns the road class name to which the segment belongs.
          end
        end

        # @see Nextbillionai::Models::RouteReportCreateResponse::RoadSummary#summary
        class Summary < Nextbillionai::Internal::Type::BaseModel
          # @!attribute distance
          #   Returns the total distance of the route , in meters.
          #
          #   @return [Float, nil]
          optional :distance, Float

          # @!attribute duration
          #   Returns the total duration of the route, in seconds.
          #
          #   @return [Float, nil]
          optional :duration, Float

          # @!attribute has_bridge
          #   A boolean value indicating if there are any bridges in the given route.
          #
          #   @return [Boolean, nil]
          optional :has_bridge, Nextbillionai::Internal::Type::Boolean

          # @!attribute has_roundabout
          #   A boolean value indicating if there are any roundabouts in the given route.
          #
          #   @return [Boolean, nil]
          optional :has_roundabout, Nextbillionai::Internal::Type::Boolean

          # @!attribute has_toll
          #   A boolean value indicating if there are any tolls in the given route.
          #
          #   @return [Boolean, nil]
          optional :has_toll, Nextbillionai::Internal::Type::Boolean

          # @!attribute has_tunnel
          #   A boolean value indicating if there are any tunnels in the given route.
          #
          #   @return [Boolean, nil]
          optional :has_tunnel, Nextbillionai::Internal::Type::Boolean

          # @!attribute road_class
          #   An object with details about the different types of road classes that the route
          #   goes through. Distance traversed on a given road class is also returned. The
          #   contents of this object follow the key:value pair format.
          #
          #   @return [Object, nil]
          optional :road_class, Nextbillionai::Internal::Type::Unknown

          # @!attribute toll_distance
          #   Returns the total distance travelled on toll roads. This field is present in the
          #   response only when the has_toll property is true.
          #
          #   @return [Float, nil]
          optional :toll_distance, Float

          # @!method initialize(distance: nil, duration: nil, has_bridge: nil, has_roundabout: nil, has_toll: nil, has_tunnel: nil, road_class: nil, toll_distance: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::RouteReportCreateResponse::RoadSummary::Summary} for
          #   more details.
          #
          #   Returns an overview of the route with information about trip distance, duration
          #   and road class details among others.
          #
          #   @param distance [Float] Returns the total distance of the route , in meters.
          #
          #   @param duration [Float] Returns the total duration of the route, in seconds.
          #
          #   @param has_bridge [Boolean] A boolean value indicating if there are any bridges in the given route.
          #
          #   @param has_roundabout [Boolean] A boolean value indicating if there are any roundabouts in the given route.
          #
          #   @param has_toll [Boolean] A boolean value indicating if there are any tolls in the given route.
          #
          #   @param has_tunnel [Boolean] A boolean value indicating if there are any tunnels in the given route.
          #
          #   @param road_class [Object] An object with details about the different types of road classes that the route
          #
          #   @param toll_distance [Float] Returns the total distance travelled on toll roads. This field is present in the
        end
      end
    end
  end
end
