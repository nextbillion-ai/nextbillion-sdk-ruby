# typed: strong

module Nextbillionai
  module Models
    class RichGroupRequest < Nextbillionai::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::RichGroupRequest,
            Nextbillionai::Internal::AnyHash
          )
        end

      # Specify the area name. It represents a region where restrictions can be applied.
      # This is a custom field and it is recommended for the users to check with
      # [NextBillion.ai](www.nextbillion.ai) support for the right value. Alternatively,
      # users can invoke the _[Areas](#supported-areas)_ method to get a list of
      # available areas for them.
      sig { returns(String) }
      attr_accessor :area

      # Specify a custom, descriptive name for the restriction.
      sig { returns(String) }
      attr_accessor :name

      # Use this parameter to add any custom information about the restriction being
      # created.
      sig { returns(T.nilable(String)) }
      attr_reader :comment

      sig { params(comment: String).void }
      attr_writer :comment

      # Represents the traffic direction on the segments to which the restriction will
      # be applied.
      sig do
        returns(T.nilable(Nextbillionai::RichGroupRequest::Direction::OrSymbol))
      end
      attr_reader :direction

      sig do
        params(
          direction: Nextbillionai::RichGroupRequest::Direction::OrSymbol
        ).void
      end
      attr_writer :direction

      # Provide a UNIX epoch timestamp in seconds, representing the time when the
      # restriction should cease to be in-effect.
      sig { returns(T.nilable(Float)) }
      attr_reader :end_time

      sig { params(end_time: Float).void }
      attr_writer :end_time

      # An array of coordinates denoting the boundary of an area in which the
      # restrictions are to be applied. The format in which coordinates should be listed
      # is defined by the latlon field.
      #
      # Geofences can be used to create all restriction types, except for a turn type
      # restriction. Please note that segments is not required when using geofence to
      # create restrictions.
      sig { returns(T.nilable(T::Array[T::Array[Float]])) }
      attr_reader :geofence

      sig { params(geofence: T::Array[T::Array[Float]]).void }
      attr_writer :geofence

      # Specify the maximum truck height, in centimeter, that will be allowed under the
      # restriction. A value of 0 indicates no limit.
      #
      # Please note this parameter is effective only when restriction_type is truck. At
      # least one of truck parameters - weight, height, width and truck - needs to be
      # provided when restriction type is truck.
      sig { returns(T.nilable(Integer)) }
      attr_reader :height

      sig { params(height: Integer).void }
      attr_writer :height

      # Specify the maximum truck length, in centimeter, that will be allowed under the
      # restriction. A value of 0 indicates no limit.
      #
      # Please note this parameter is effective only when restriction_type is truck. At
      # least one of truck parameters - weight, height, width and truck - needs to be
      # provided when restriction type is truck.
      sig { returns(T.nilable(Integer)) }
      attr_reader :length

      sig { params(length: Integer).void }
      attr_writer :length

      # Provide the driving modes for which the restriction should be effective. If the
      # value is an empty array or if it is not provided then the restriction would be
      # applied for all modes.
      sig do
        returns(
          T.nilable(T::Array[Nextbillionai::RichGroupRequest::Mode::OrSymbol])
        )
      end
      attr_reader :mode

      sig do
        params(
          mode: T::Array[Nextbillionai::RichGroupRequest::Mode::OrSymbol]
        ).void
      end
      attr_writer :mode

      # It represents the days and times when the restriction is in effect. Users can
      # use this property to set recurring or one-time restrictions as per the
      # [given format](https://wiki.openstreetmap.org/wiki/Key:opening_hours) for
      # specifying the recurring schedule of the restriction.
      #
      # Please provided values as per the local time of the region where the restriction
      # is being applied.
      sig { returns(T.nilable(String)) }
      attr_reader :repeat_on

      sig { params(repeat_on: String).void }
      attr_writer :repeat_on

      # An array of objects to collect the details of the segments of a road on which
      # the restriction has to be applied. Each object corresponds to a new segment.
      #
      # Please note that segments is mandatory for all restrtiction_type except turn.
      sig do
        returns(T.nilable(T::Array[Nextbillionai::RichGroupRequest::Segment]))
      end
      attr_reader :segments

      sig do
        params(
          segments: T::Array[Nextbillionai::RichGroupRequest::Segment::OrHash]
        ).void
      end
      attr_writer :segments

      # Provide the the fixed speed of the segment where the restriction needs to be
      # applied. Please note that this parameter is mandatory when the restrictionType
      # is fixedspeed.
      sig { returns(T.nilable(Float)) }
      attr_reader :speed

      sig { params(speed: Float).void }
      attr_writer :speed

      # Provide the the maximum speed of the segment where the restriction needs to be
      # applied. Please note that this parameter is mandatory when the restrictionType
      # is maxspeed.
      sig { returns(T.nilable(Float)) }
      attr_reader :speed_limit

      sig { params(speed_limit: Float).void }
      attr_writer :speed_limit

      # Provide a UNIX epoch timestamp in seconds, representing the start time for the
      # restriction to be in-effect.
      sig { returns(T.nilable(Float)) }
      attr_reader :start_time

      sig { params(start_time: Float).void }
      attr_writer :start_time

      # Specify a sequence of coordinates (track) where the restriction is to be
      # applied. The coordinates will be snapped to nearest road. Please note when using
      # tracks, segments and turns are not required.
      sig { returns(T.nilable(T::Array[T::Array[Float]])) }
      attr_reader :tracks

      sig { params(tracks: T::Array[T::Array[Float]]).void }
      attr_writer :tracks

      # An array of objects to collect the details of the turns of a road on which the
      # restriction has to be applied. Each object corresponds to a new turn.
      #
      # Please note that turns is mandatory for when restrtiction_type=turn.
      sig do
        returns(T.nilable(T::Array[Nextbillionai::RichGroupRequest::Turn]))
      end
      attr_reader :turns

      sig do
        params(
          turns: T::Array[Nextbillionai::RichGroupRequest::Turn::OrHash]
        ).void
      end
      attr_writer :turns

      # Specify the maximum truck weight, in kilograms, that the restriction will allow.
      # A value of 0 indicates no limit.
      #
      # Please note this parameter is effective only when restriction_type is truck. At
      # least one of truck parameters - weight, height, width and truck - needs to be
      # provided for is truck restriction type.
      sig { returns(T.nilable(Integer)) }
      attr_reader :weight

      sig { params(weight: Integer).void }
      attr_writer :weight

      # Specify the maximum truck width, in centimeter, that will be allowed under the
      # restriction. A value of 0 indicates no limit.
      #
      # Please note this parameter is effective only when restriction_type is truck. At
      # least one of truck parameters - weight, height, width and truck - needs to be
      # provided when restriction type is truck.
      sig { returns(T.nilable(Integer)) }
      attr_reader :width

      sig { params(width: Integer).void }
      attr_writer :width

      sig do
        params(
          area: String,
          name: String,
          comment: String,
          direction: Nextbillionai::RichGroupRequest::Direction::OrSymbol,
          end_time: Float,
          geofence: T::Array[T::Array[Float]],
          height: Integer,
          length: Integer,
          mode: T::Array[Nextbillionai::RichGroupRequest::Mode::OrSymbol],
          repeat_on: String,
          segments: T::Array[Nextbillionai::RichGroupRequest::Segment::OrHash],
          speed: Float,
          speed_limit: Float,
          start_time: Float,
          tracks: T::Array[T::Array[Float]],
          turns: T::Array[Nextbillionai::RichGroupRequest::Turn::OrHash],
          weight: Integer,
          width: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Specify the area name. It represents a region where restrictions can be applied.
        # This is a custom field and it is recommended for the users to check with
        # [NextBillion.ai](www.nextbillion.ai) support for the right value. Alternatively,
        # users can invoke the _[Areas](#supported-areas)_ method to get a list of
        # available areas for them.
        area:,
        # Specify a custom, descriptive name for the restriction.
        name:,
        # Use this parameter to add any custom information about the restriction being
        # created.
        comment: nil,
        # Represents the traffic direction on the segments to which the restriction will
        # be applied.
        direction: nil,
        # Provide a UNIX epoch timestamp in seconds, representing the time when the
        # restriction should cease to be in-effect.
        end_time: nil,
        # An array of coordinates denoting the boundary of an area in which the
        # restrictions are to be applied. The format in which coordinates should be listed
        # is defined by the latlon field.
        #
        # Geofences can be used to create all restriction types, except for a turn type
        # restriction. Please note that segments is not required when using geofence to
        # create restrictions.
        geofence: nil,
        # Specify the maximum truck height, in centimeter, that will be allowed under the
        # restriction. A value of 0 indicates no limit.
        #
        # Please note this parameter is effective only when restriction_type is truck. At
        # least one of truck parameters - weight, height, width and truck - needs to be
        # provided when restriction type is truck.
        height: nil,
        # Specify the maximum truck length, in centimeter, that will be allowed under the
        # restriction. A value of 0 indicates no limit.
        #
        # Please note this parameter is effective only when restriction_type is truck. At
        # least one of truck parameters - weight, height, width and truck - needs to be
        # provided when restriction type is truck.
        length: nil,
        # Provide the driving modes for which the restriction should be effective. If the
        # value is an empty array or if it is not provided then the restriction would be
        # applied for all modes.
        mode: nil,
        # It represents the days and times when the restriction is in effect. Users can
        # use this property to set recurring or one-time restrictions as per the
        # [given format](https://wiki.openstreetmap.org/wiki/Key:opening_hours) for
        # specifying the recurring schedule of the restriction.
        #
        # Please provided values as per the local time of the region where the restriction
        # is being applied.
        repeat_on: nil,
        # An array of objects to collect the details of the segments of a road on which
        # the restriction has to be applied. Each object corresponds to a new segment.
        #
        # Please note that segments is mandatory for all restrtiction_type except turn.
        segments: nil,
        # Provide the the fixed speed of the segment where the restriction needs to be
        # applied. Please note that this parameter is mandatory when the restrictionType
        # is fixedspeed.
        speed: nil,
        # Provide the the maximum speed of the segment where the restriction needs to be
        # applied. Please note that this parameter is mandatory when the restrictionType
        # is maxspeed.
        speed_limit: nil,
        # Provide a UNIX epoch timestamp in seconds, representing the start time for the
        # restriction to be in-effect.
        start_time: nil,
        # Specify a sequence of coordinates (track) where the restriction is to be
        # applied. The coordinates will be snapped to nearest road. Please note when using
        # tracks, segments and turns are not required.
        tracks: nil,
        # An array of objects to collect the details of the turns of a road on which the
        # restriction has to be applied. Each object corresponds to a new turn.
        #
        # Please note that turns is mandatory for when restrtiction_type=turn.
        turns: nil,
        # Specify the maximum truck weight, in kilograms, that the restriction will allow.
        # A value of 0 indicates no limit.
        #
        # Please note this parameter is effective only when restriction_type is truck. At
        # least one of truck parameters - weight, height, width and truck - needs to be
        # provided for is truck restriction type.
        weight: nil,
        # Specify the maximum truck width, in centimeter, that will be allowed under the
        # restriction. A value of 0 indicates no limit.
        #
        # Please note this parameter is effective only when restriction_type is truck. At
        # least one of truck parameters - weight, height, width and truck - needs to be
        # provided when restriction type is truck.
        width: nil
      )
      end

      sig do
        override.returns(
          {
            area: String,
            name: String,
            comment: String,
            direction: Nextbillionai::RichGroupRequest::Direction::OrSymbol,
            end_time: Float,
            geofence: T::Array[T::Array[Float]],
            height: Integer,
            length: Integer,
            mode: T::Array[Nextbillionai::RichGroupRequest::Mode::OrSymbol],
            repeat_on: String,
            segments: T::Array[Nextbillionai::RichGroupRequest::Segment],
            speed: Float,
            speed_limit: Float,
            start_time: Float,
            tracks: T::Array[T::Array[Float]],
            turns: T::Array[Nextbillionai::RichGroupRequest::Turn],
            weight: Integer,
            width: Integer
          }
        )
      end
      def to_hash
      end

      # Represents the traffic direction on the segments to which the restriction will
      # be applied.
      module Direction
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::RichGroupRequest::Direction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FORWARD =
          T.let(
            :forward,
            Nextbillionai::RichGroupRequest::Direction::TaggedSymbol
          )
        BACKWARD =
          T.let(
            :backward,
            Nextbillionai::RichGroupRequest::Direction::TaggedSymbol
          )
        BOTH =
          T.let(:both, Nextbillionai::RichGroupRequest::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Nextbillionai::RichGroupRequest::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Mode
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Nextbillionai::RichGroupRequest::Mode) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MODE_0W =
          T.let(:"0w", Nextbillionai::RichGroupRequest::Mode::TaggedSymbol)
        MODE_2W =
          T.let(:"2w", Nextbillionai::RichGroupRequest::Mode::TaggedSymbol)
        MODE_3W =
          T.let(:"3w", Nextbillionai::RichGroupRequest::Mode::TaggedSymbol)
        MODE_4W =
          T.let(:"4w", Nextbillionai::RichGroupRequest::Mode::TaggedSymbol)
        MODE_6W =
          T.let(:"6w", Nextbillionai::RichGroupRequest::Mode::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Nextbillionai::RichGroupRequest::Mode::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Segment < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::RichGroupRequest::Segment,
              Nextbillionai::Internal::AnyHash
            )
          end

        # An integer value representing the ID of the starting node of the segment.
        sig { returns(T.nilable(Float)) }
        attr_reader :from

        sig { params(from: Float).void }
        attr_writer :from

        # An integer value representing the ID of the ending node of the segment.
        sig { returns(T.nilable(Float)) }
        attr_reader :to

        sig { params(to: Float).void }
        attr_writer :to

        sig { params(from: Float, to: Float).returns(T.attached_class) }
        def self.new(
          # An integer value representing the ID of the starting node of the segment.
          from: nil,
          # An integer value representing the ID of the ending node of the segment.
          to: nil
        )
        end

        sig { override.returns({ from: Float, to: Float }) }
        def to_hash
        end
      end

      class Turn < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::RichGroupRequest::Turn,
              Nextbillionai::Internal::AnyHash
            )
          end

        # An integer value that represents the ID of the starting node of the turn.
        sig { returns(T.nilable(Integer)) }
        attr_reader :from

        sig { params(from: Integer).void }
        attr_writer :from

        # An integer value that represents the ID of the ending node of the turn.
        sig { returns(T.nilable(Integer)) }
        attr_reader :to

        sig { params(to: Integer).void }
        attr_writer :to

        # An integer value that represents the ID of a node connecting from and to nodes
        # of the turn.
        sig { returns(T.nilable(Integer)) }
        attr_reader :via

        sig { params(via: Integer).void }
        attr_writer :via

        sig do
          params(from: Integer, to: Integer, via: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # An integer value that represents the ID of the starting node of the turn.
          from: nil,
          # An integer value that represents the ID of the ending node of the turn.
          to: nil,
          # An integer value that represents the ID of a node connecting from and to nodes
          # of the turn.
          via: nil
        )
        end

        sig { override.returns({ from: Integer, to: Integer, via: Integer }) }
        def to_hash
        end
      end
    end
  end
end
