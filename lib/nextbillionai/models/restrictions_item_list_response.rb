# frozen_string_literal: true

module Nextbillionai
  module Models
    class RestrictionsItemListResponseItem < Nextbillionai::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [Float]
      required :id, Float

      # @!attribute area
      #
      #   @return [String]
      required :area, String

      # @!attribute coordinate
      #
      #   @return [Nextbillionai::Models::RestrictionsItemListResponseItem::Coordinate]
      required :coordinate, -> { Nextbillionai::Models::RestrictionsItemListResponseItem::Coordinate }

      # @!attribute group_id
      #
      #   @return [Float]
      required :group_id, Float

      # @!attribute group_type
      #
      #   @return [Symbol, Nextbillionai::Models::RestrictionsItemListResponseItem::GroupType]
      required :group_type, enum: -> { Nextbillionai::Models::RestrictionsItemListResponseItem::GroupType }

      # @!attribute mode
      #
      #   @return [Array<Symbol, Nextbillionai::Models::RestrictionsItemListResponseItem::Mode>]
      required :mode,
               -> { Nextbillionai::Internal::Type::ArrayOf[enum: Nextbillionai::Models::RestrictionsItemListResponseItem::Mode] }

      # @!attribute repeat_on
      #
      #   @return [String]
      required :repeat_on, String

      # @!attribute restriction_type
      #
      #   @return [Symbol, Nextbillionai::Models::RestrictionsItemListResponseItem::RestrictionType]
      required :restriction_type,
               enum: -> { Nextbillionai::Models::RestrictionsItemListResponseItem::RestrictionType }

      # @!attribute source
      #
      #   @return [Symbol, Nextbillionai::Models::RestrictionsItemListResponseItem::Source]
      required :source, enum: -> { Nextbillionai::Models::RestrictionsItemListResponseItem::Source }

      # @!attribute state
      #
      #   @return [Symbol, Nextbillionai::Models::RestrictionsItemListResponseItem::State]
      required :state, enum: -> { Nextbillionai::Models::RestrictionsItemListResponseItem::State }

      # @!attribute status
      #
      #   @return [Symbol, Nextbillionai::Models::RestrictionsItemListResponseItem::Status]
      required :status, enum: -> { Nextbillionai::Models::RestrictionsItemListResponseItem::Status }

      # @!method initialize(id:, area:, coordinate:, group_id:, group_type:, mode:, repeat_on:, restriction_type:, source:, state:, status:)
      #   @param id [Float]
      #   @param area [String]
      #   @param coordinate [Nextbillionai::Models::RestrictionsItemListResponseItem::Coordinate]
      #   @param group_id [Float]
      #   @param group_type [Symbol, Nextbillionai::Models::RestrictionsItemListResponseItem::GroupType]
      #   @param mode [Array<Symbol, Nextbillionai::Models::RestrictionsItemListResponseItem::Mode>]
      #   @param repeat_on [String]
      #   @param restriction_type [Symbol, Nextbillionai::Models::RestrictionsItemListResponseItem::RestrictionType]
      #   @param source [Symbol, Nextbillionai::Models::RestrictionsItemListResponseItem::Source]
      #   @param state [Symbol, Nextbillionai::Models::RestrictionsItemListResponseItem::State]
      #   @param status [Symbol, Nextbillionai::Models::RestrictionsItemListResponseItem::Status]

      # @see Nextbillionai::Models::RestrictionsItemListResponseItem#coordinate
      class Coordinate < Nextbillionai::Internal::Type::BaseModel
        # @!attribute lat
        #
        #   @return [Float, nil]
        optional :lat, Float

        # @!attribute lon
        #
        #   @return [Float, nil]
        optional :lon, Float

        # @!method initialize(lat: nil, lon: nil)
        #   @param lat [Float]
        #   @param lon [Float]
      end

      # @see Nextbillionai::Models::RestrictionsItemListResponseItem#group_type
      module GroupType
        extend Nextbillionai::Internal::Type::Enum

        SEGMENT = :segment
        TURN = :turn

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Mode
        extend Nextbillionai::Internal::Type::Enum

        MODE_0W = :"0w"
        MODE_1W = :"1w"
        MODE_2W = :"2w"
        MODE_3W = :"3w"
        MODE_4W = :"4w"
        MODE_6W = :"6w"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Nextbillionai::Models::RestrictionsItemListResponseItem#restriction_type
      module RestrictionType
        extend Nextbillionai::Internal::Type::Enum

        CLOSURE = :closure
        FIXEDSPEED = :fixedspeed
        MAXSPEED = :maxspeed
        TURN = :turn
        TRUCK = :truck

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Nextbillionai::Models::RestrictionsItemListResponseItem#source
      module Source
        extend Nextbillionai::Internal::Type::Enum

        RRT = :rrt
        PBF = :pbf

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Nextbillionai::Models::RestrictionsItemListResponseItem#state
      module State
        extend Nextbillionai::Internal::Type::Enum

        ENABLED = :enabled
        DISABLED = :disabled
        DELETED = :deleted

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Nextbillionai::Models::RestrictionsItemListResponseItem#status
      module Status
        extend Nextbillionai::Internal::Type::Enum

        ACTIVE = :active
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end

    # @type [Nextbillionai::Internal::Type::Converter]
    RestrictionsItemListResponse =
      Nextbillionai::Internal::Type::ArrayOf[-> { Nextbillionai::Models::RestrictionsItemListResponseItem }]
  end
end
