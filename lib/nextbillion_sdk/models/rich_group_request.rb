# frozen_string_literal: true

module NextbillionSDK
  module Models
    class RichGroupRequest < NextbillionSDK::Internal::Type::BaseModel
      # @!attribute area
      #   Specify the area name. It represents a region where restrictions can be applied.
      #   This is a custom field and it is recommended for the users to check with
      #   [NextBillion.ai](www.nextbillion.ai) support for the right value. Alternatively,
      #   users can invoke the _[Areas](#supported-areas)_ method to get a list of
      #   available areas for them.
      #
      #   @return [String]
      required :area, String

      # @!attribute name
      #   Specify a custom, descriptive name for the restriction.
      #
      #   @return [String]
      required :name, String

      # @!attribute comment
      #   Use this parameter to add any custom information about the restriction being
      #   created.
      #
      #   @return [String, nil]
      optional :comment, String

      # @!attribute direction
      #   Represents the traffic direction on the segments to which the restriction will
      #   be applied.
      #
      #   @return [Symbol, NextbillionSDK::Models::RichGroupRequest::Direction, nil]
      optional :direction, enum: -> { NextbillionSDK::RichGroupRequest::Direction }

      # @!attribute end_time
      #   Provide a UNIX epoch timestamp in seconds, representing the time when the
      #   restriction should cease to be in-effect.
      #
      #   @return [Float, nil]
      optional :end_time, Float

      # @!attribute geofence
      #   An array of coordinates denoting the boundary of an area in which the
      #   restrictions are to be applied. The format in which coordinates should be listed
      #   is defined by the latlon field.
      #
      #   Geofences can be used to create all restriction types, except for a turn type
      #   restriction. Please note that segments is not required when using geofence to
      #   create restrictions.
      #
      #   @return [Array<Array<Float>>, nil]
      optional :geofence,
               NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Internal::Type::ArrayOf[Float]]

      # @!attribute height
      #   Specify the maximum truck height, in centimeter, that will be allowed under the
      #   restriction. A value of 0 indicates no limit.
      #
      #   Please note this parameter is effective only when restriction_type is truck. At
      #   least one of truck parameters - weight, height, width and truck - needs to be
      #   provided when restriction type is truck.
      #
      #   @return [Integer, nil]
      optional :height, Integer

      # @!attribute length
      #   Specify the maximum truck length, in centimeter, that will be allowed under the
      #   restriction. A value of 0 indicates no limit.
      #
      #   Please note this parameter is effective only when restriction_type is truck. At
      #   least one of truck parameters - weight, height, width and truck - needs to be
      #   provided when restriction type is truck.
      #
      #   @return [Integer, nil]
      optional :length, Integer

      # @!attribute mode
      #   Provide the driving modes for which the restriction should be effective. If the
      #   value is an empty array or if it is not provided then the restriction would be
      #   applied for all modes.
      #
      #   @return [Array<Symbol, NextbillionSDK::Models::RichGroupRequest::Mode>, nil]
      optional :mode,
               -> { NextbillionSDK::Internal::Type::ArrayOf[enum: NextbillionSDK::RichGroupRequest::Mode] }

      # @!attribute repeat_on
      #   It represents the days and times when the restriction is in effect. Users can
      #   use this property to set recurring or one-time restrictions as per the
      #   [given format](https://wiki.openstreetmap.org/wiki/Key:opening_hours) for
      #   specifying the recurring schedule of the restriction.
      #
      #   Please provided values as per the local time of the region where the restriction
      #   is being applied.
      #
      #   @return [String, nil]
      optional :repeat_on, String

      # @!attribute segments
      #   An array of objects to collect the details of the segments of a road on which
      #   the restriction has to be applied. Each object corresponds to a new segment.
      #
      #   Please note that segments is mandatory for all restrtiction_type except turn.
      #
      #   @return [Array<NextbillionSDK::Models::RichGroupRequest::Segment>, nil]
      optional :segments,
               -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::RichGroupRequest::Segment] }

      # @!attribute speed
      #   Provide the the fixed speed of the segment where the restriction needs to be
      #   applied. Please note that this parameter is mandatory when the restrictionType
      #   is fixedspeed.
      #
      #   @return [Float, nil]
      optional :speed, Float

      # @!attribute speed_limit
      #   Provide the the maximum speed of the segment where the restriction needs to be
      #   applied. Please note that this parameter is mandatory when the restrictionType
      #   is maxspeed.
      #
      #   @return [Float, nil]
      optional :speed_limit, Float

      # @!attribute start_time
      #   Provide a UNIX epoch timestamp in seconds, representing the start time for the
      #   restriction to be in-effect.
      #
      #   @return [Float, nil]
      optional :start_time, Float

      # @!attribute tracks
      #   Specify a sequence of coordinates (track) where the restriction is to be
      #   applied. The coordinates will be snapped to nearest road. Please note when using
      #   tracks, segments and turns are not required.
      #
      #   @return [Array<Array<Float>>, nil]
      optional :tracks,
               NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Internal::Type::ArrayOf[Float]]

      # @!attribute turns
      #   An array of objects to collect the details of the turns of a road on which the
      #   restriction has to be applied. Each object corresponds to a new turn.
      #
      #   Please note that turns is mandatory for when restrtiction_type=turn.
      #
      #   @return [Array<NextbillionSDK::Models::RichGroupRequest::Turn>, nil]
      optional :turns, -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::RichGroupRequest::Turn] }

      # @!attribute weight
      #   Specify the maximum truck weight, in kilograms, that the restriction will allow.
      #   A value of 0 indicates no limit.
      #
      #   Please note this parameter is effective only when restriction_type is truck. At
      #   least one of truck parameters - weight, height, width and truck - needs to be
      #   provided for is truck restriction type.
      #
      #   @return [Integer, nil]
      optional :weight, Integer

      # @!attribute width
      #   Specify the maximum truck width, in centimeter, that will be allowed under the
      #   restriction. A value of 0 indicates no limit.
      #
      #   Please note this parameter is effective only when restriction_type is truck. At
      #   least one of truck parameters - weight, height, width and truck - needs to be
      #   provided when restriction type is truck.
      #
      #   @return [Integer, nil]
      optional :width, Integer

      # @!method initialize(area:, name:, comment: nil, direction: nil, end_time: nil, geofence: nil, height: nil, length: nil, mode: nil, repeat_on: nil, segments: nil, speed: nil, speed_limit: nil, start_time: nil, tracks: nil, turns: nil, weight: nil, width: nil)
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::RichGroupRequest} for more details.
      #
      #   @param area [String] Specify the area name. It represents a region where restrictions can be applied.
      #
      #   @param name [String] Specify a custom, descriptive name for the restriction.
      #
      #   @param comment [String] Use this parameter to add any custom information about the restriction being cre
      #
      #   @param direction [Symbol, NextbillionSDK::Models::RichGroupRequest::Direction] Represents the traffic direction on the segments to which the restriction will b
      #
      #   @param end_time [Float] Provide a UNIX epoch timestamp in seconds, representing the time when the restri
      #
      #   @param geofence [Array<Array<Float>>] An array of coordinates denoting the boundary of an area in which the restrictio
      #
      #   @param height [Integer] Specify the maximum truck height, in centimeter, that will be allowed under the
      #
      #   @param length [Integer] Specify the maximum truck length, in centimeter, that will be allowed under the
      #
      #   @param mode [Array<Symbol, NextbillionSDK::Models::RichGroupRequest::Mode>] Provide the driving modes for which the restriction should be effective. If the
      #
      #   @param repeat_on [String] It represents the days and times when the restriction is in effect. Users can us
      #
      #   @param segments [Array<NextbillionSDK::Models::RichGroupRequest::Segment>] An array of objects to collect the details of the segments of a road on which th
      #
      #   @param speed [Float] Provide the the fixed speed of the segment where the restriction needs to be app
      #
      #   @param speed_limit [Float] Provide the the maximum speed of the segment where the restriction needs to be a
      #
      #   @param start_time [Float] Provide a UNIX epoch timestamp in seconds, representing the start time for the r
      #
      #   @param tracks [Array<Array<Float>>] Specify a sequence of coordinates (track) where the restriction is to be applied
      #
      #   @param turns [Array<NextbillionSDK::Models::RichGroupRequest::Turn>] An array of objects to collect the details of the turns of a road on which the r
      #
      #   @param weight [Integer] Specify the maximum truck weight, in kilograms, that the restriction will allow.
      #
      #   @param width [Integer] Specify the maximum truck width, in centimeter, that will be allowed under the

      # Represents the traffic direction on the segments to which the restriction will
      # be applied.
      #
      # @see NextbillionSDK::Models::RichGroupRequest#direction
      module Direction
        extend NextbillionSDK::Internal::Type::Enum

        FORWARD = :forward
        BACKWARD = :backward
        BOTH = :both

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Mode
        extend NextbillionSDK::Internal::Type::Enum

        MODE_0W = :"0w"
        MODE_2W = :"2w"
        MODE_3W = :"3w"
        MODE_4W = :"4w"
        MODE_6W = :"6w"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Segment < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute from
        #   An integer value representing the ID of the starting node of the segment.
        #
        #   @return [Float, nil]
        optional :from, Float

        # @!attribute to
        #   An integer value representing the ID of the ending node of the segment.
        #
        #   @return [Float, nil]
        optional :to, Float

        # @!method initialize(from: nil, to: nil)
        #   @param from [Float] An integer value representing the ID of the starting node of the segment.
        #
        #   @param to [Float] An integer value representing the ID of the ending node of the segment.
      end

      class Turn < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute from
        #   An integer value that represents the ID of the starting node of the turn.
        #
        #   @return [Integer, nil]
        optional :from, Integer

        # @!attribute to
        #   An integer value that represents the ID of the ending node of the turn.
        #
        #   @return [Integer, nil]
        optional :to, Integer

        # @!attribute via
        #   An integer value that represents the ID of a node connecting from and to nodes
        #   of the turn.
        #
        #   @return [Integer, nil]
        optional :via, Integer

        # @!method initialize(from: nil, to: nil, via: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::RichGroupRequest::Turn} for more details.
        #
        #   @param from [Integer] An integer value that represents the ID of the starting node of the turn.
        #
        #   @param to [Integer] An integer value that represents the ID of the ending node of the turn.
        #
        #   @param via [Integer] An integer value that represents the ID of a node connecting from and to nodes o
      end
    end
  end
end
