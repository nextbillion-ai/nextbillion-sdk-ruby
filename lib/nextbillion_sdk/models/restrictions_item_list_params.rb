# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::RestrictionsItems#list
    class RestrictionsItemListParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      # @!attribute max_lat
      #
      #   @return [Float]
      required :max_lat, Float

      # @!attribute max_lon
      #
      #   @return [Float]
      required :max_lon, Float

      # @!attribute min_lat
      #
      #   @return [Float]
      required :min_lat, Float

      # @!attribute min_lon
      #
      #   @return [Float]
      required :min_lon, Float

      # @!attribute group_id
      #
      #   @return [Float, nil]
      optional :group_id, Float

      # @!attribute mode
      #
      #   @return [Symbol, NextbillionSDK::Models::RestrictionsItemListParams::Mode, nil]
      optional :mode, enum: -> { NextbillionSDK::RestrictionsItemListParams::Mode }

      # @!attribute restriction_type
      #
      #   @return [Symbol, NextbillionSDK::Models::RestrictionsItemListParams::RestrictionType, nil]
      optional :restriction_type, enum: -> { NextbillionSDK::RestrictionsItemListParams::RestrictionType }

      # @!attribute source
      #
      #   @return [String, nil]
      optional :source, String

      # @!attribute state
      #
      #   @return [Symbol, NextbillionSDK::Models::RestrictionsItemListParams::State, nil]
      optional :state, enum: -> { NextbillionSDK::RestrictionsItemListParams::State }

      # @!attribute status
      #
      #   @return [Symbol, NextbillionSDK::Models::RestrictionsItemListParams::Status, nil]
      optional :status, enum: -> { NextbillionSDK::RestrictionsItemListParams::Status }

      # @!method initialize(max_lat:, max_lon:, min_lat:, min_lon:, group_id: nil, mode: nil, restriction_type: nil, source: nil, state: nil, status: nil, request_options: {})
      #   @param max_lat [Float]
      #   @param max_lon [Float]
      #   @param min_lat [Float]
      #   @param min_lon [Float]
      #   @param group_id [Float]
      #   @param mode [Symbol, NextbillionSDK::Models::RestrictionsItemListParams::Mode]
      #   @param restriction_type [Symbol, NextbillionSDK::Models::RestrictionsItemListParams::RestrictionType]
      #   @param source [String]
      #   @param state [Symbol, NextbillionSDK::Models::RestrictionsItemListParams::State]
      #   @param status [Symbol, NextbillionSDK::Models::RestrictionsItemListParams::Status]
      #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]

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

      module RestrictionType
        extend NextbillionSDK::Internal::Type::Enum

        TURN = :turn
        PARKING = :parking
        FIXEDSPEED = :fixedspeed
        MAXSPEED = :maxspeed
        CLOSURE = :closure
        TRUCK = :truck

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module State
        extend NextbillionSDK::Internal::Type::Enum

        ENABLED = :enabled
        DISABLED = :disabled
        DELETED = :deleted

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Status
        extend NextbillionSDK::Internal::Type::Enum

        ACTIVE = :active
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
