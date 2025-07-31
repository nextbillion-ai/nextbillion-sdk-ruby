# frozen_string_literal: true

module NextbillionSDK
  module Models
    class RestrictionsItemListResponseItem < NextbillionSDK::Internal::Type::BaseModel
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
      #   @return [NextbillionSDK::Models::RestrictionsItemListResponseItem::Coordinate]
      required :coordinate, -> { NextbillionSDK::Models::RestrictionsItemListResponseItem::Coordinate }

      # @!attribute group_id
      #
      #   @return [Float]
      required :group_id, Float

      # @!attribute group_type
      #
      #   @return [Symbol, NextbillionSDK::Models::RestrictionsItemListResponseItem::GroupType]
      required :group_type, enum: -> { NextbillionSDK::Models::RestrictionsItemListResponseItem::GroupType }

      # @!attribute mode
      #
      #   @return [Array<Symbol, NextbillionSDK::Models::RestrictionsItemListResponseItem::Mode>]
      required :mode,
               -> { NextbillionSDK::Internal::Type::ArrayOf[enum: NextbillionSDK::Models::RestrictionsItemListResponseItem::Mode] }

      # @!attribute repeat_on
      #
      #   @return [String]
      required :repeat_on, String

      # @!attribute restriction_type
      #
      #   @return [Symbol, NextbillionSDK::Models::RestrictionsItemListResponseItem::RestrictionType]
      required :restriction_type,
               enum: -> { NextbillionSDK::Models::RestrictionsItemListResponseItem::RestrictionType }

      # @!attribute source
      #
      #   @return [Symbol, NextbillionSDK::Models::RestrictionsItemListResponseItem::Source]
      required :source, enum: -> { NextbillionSDK::Models::RestrictionsItemListResponseItem::Source }

      # @!attribute state
      #
      #   @return [Symbol, NextbillionSDK::Models::RestrictionsItemListResponseItem::State]
      required :state, enum: -> { NextbillionSDK::Models::RestrictionsItemListResponseItem::State }

      # @!attribute status
      #
      #   @return [Symbol, NextbillionSDK::Models::RestrictionsItemListResponseItem::Status]
      required :status, enum: -> { NextbillionSDK::Models::RestrictionsItemListResponseItem::Status }

      # @!method initialize(id:, area:, coordinate:, group_id:, group_type:, mode:, repeat_on:, restriction_type:, source:, state:, status:)
      #   @param id [Float]
      #   @param area [String]
      #   @param coordinate [NextbillionSDK::Models::RestrictionsItemListResponseItem::Coordinate]
      #   @param group_id [Float]
      #   @param group_type [Symbol, NextbillionSDK::Models::RestrictionsItemListResponseItem::GroupType]
      #   @param mode [Array<Symbol, NextbillionSDK::Models::RestrictionsItemListResponseItem::Mode>]
      #   @param repeat_on [String]
      #   @param restriction_type [Symbol, NextbillionSDK::Models::RestrictionsItemListResponseItem::RestrictionType]
      #   @param source [Symbol, NextbillionSDK::Models::RestrictionsItemListResponseItem::Source]
      #   @param state [Symbol, NextbillionSDK::Models::RestrictionsItemListResponseItem::State]
      #   @param status [Symbol, NextbillionSDK::Models::RestrictionsItemListResponseItem::Status]

      # @see NextbillionSDK::Models::RestrictionsItemListResponseItem#coordinate
      class Coordinate < NextbillionSDK::Internal::Type::BaseModel
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

      # @see NextbillionSDK::Models::RestrictionsItemListResponseItem#group_type
      module GroupType
        extend NextbillionSDK::Internal::Type::Enum

        SEGMENT = :segment
        TURN = :turn

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Mode
        extend NextbillionSDK::Internal::Type::Enum

        MODE_0W = :"0w"
        MODE_1W = :"1w"
        MODE_2W = :"2w"
        MODE_3W = :"3w"
        MODE_4W = :"4w"
        MODE_6W = :"6w"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see NextbillionSDK::Models::RestrictionsItemListResponseItem#restriction_type
      module RestrictionType
        extend NextbillionSDK::Internal::Type::Enum

        CLOSURE = :closure
        FIXEDSPEED = :fixedspeed
        MAXSPEED = :maxspeed
        TURN = :turn
        TRUCK = :truck

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see NextbillionSDK::Models::RestrictionsItemListResponseItem#source
      module Source
        extend NextbillionSDK::Internal::Type::Enum

        RRT = :rrt
        PBF = :pbf

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see NextbillionSDK::Models::RestrictionsItemListResponseItem#state
      module State
        extend NextbillionSDK::Internal::Type::Enum

        ENABLED = :enabled
        DISABLED = :disabled
        DELETED = :deleted

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see NextbillionSDK::Models::RestrictionsItemListResponseItem#status
      module Status
        extend NextbillionSDK::Internal::Type::Enum

        ACTIVE = :active
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end

    # @type [NextbillionSDK::Internal::Type::Converter]
    RestrictionsItemListResponse =
      NextbillionSDK::Internal::Type::ArrayOf[-> { NextbillionSDK::Models::RestrictionsItemListResponseItem }]
  end
end
