# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Restrictions#list_by_bbox
    class RestrictionListByBboxParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute max_lat
      #   Specifies the maximum latitude value for the bounding box.
      #
      #   @return [Float]
      required :max_lat, Float

      # @!attribute max_lon
      #   Specifies the maximum longitude value for the bounding box.
      #
      #   @return [Float]
      required :max_lon, Float

      # @!attribute min_lat
      #   Specifies the minimum latitude value for the bounding box.
      #
      #   @return [Float]
      required :min_lat, Float

      # @!attribute min_lon
      #   Specifies the minimum longitude value for the bounding box.
      #
      #   @return [Float]
      required :min_lon, Float

      # @!attribute mode
      #   Specify the modes of travel that the restriction pertains to.
      #
      #   @return [Array<Symbol, Nextbillionai::Models::RestrictionListByBboxParams::Mode>, nil]
      optional :mode,
               -> {
                 Nextbillionai::Internal::Type::ArrayOf[enum: Nextbillionai::RestrictionListByBboxParams::Mode]
               }

      # @!attribute restriction_type
      #   Specify the type of restrictions to fetch.
      #
      #   @return [Symbol, Nextbillionai::Models::RestrictionListByBboxParams::RestrictionType, nil]
      optional :restriction_type, enum: -> { Nextbillionai::RestrictionListByBboxParams::RestrictionType }

      # @!attribute source
      #   This parameter represents where the restriction comes from and cannot be
      #   modified by clients sending requests to the API endpoint.
      #
      #   For example, an API endpoint that returns a list of restrictions could include
      #   the source parameter to indicate where each item comes from. This parameter can
      #   be useful for filtering, sorting, or grouping the results based on their source.
      #
      #   @return [Symbol, Nextbillionai::Models::RestrictionListByBboxParams::Source, nil]
      optional :source, enum: -> { Nextbillionai::RestrictionListByBboxParams::Source }

      # @!attribute state
      #   This parameter is used to filter restrictions based on their state i.e. whether
      #   the restriction is currently enabled, disabled, or deleted. For example, users
      #   can retrieve a list of all the deleted restrictions by setting state=deleted.
      #
      #   @return [Symbol, Nextbillionai::Models::RestrictionListByBboxParams::State, nil]
      optional :state, enum: -> { Nextbillionai::RestrictionListByBboxParams::State }

      # @!attribute status
      #   Restrictions can be active or inactive at a given time by virtue of their
      #   nature. For example, maximum speed limits can be active on the roads leading to
      #   schools during school hours and be inactive afterwards or certain road closure
      #   restrictions be active during holidays/concerts and be inactive otherwise.
      #
      #   Use this parameter to filter the restrictions based on their status at the time
      #   of making the request i.e. whether they are in force or not.
      #
      #   @return [Symbol, Nextbillionai::Models::RestrictionListByBboxParams::Status, nil]
      optional :status, enum: -> { Nextbillionai::RestrictionListByBboxParams::Status }

      # @!attribute transform
      #   This is internal parameter with a default value as false.
      #
      #   @return [Boolean, nil]
      optional :transform, Nextbillionai::Internal::Type::Boolean

      # @!method initialize(key:, max_lat:, max_lon:, min_lat:, min_lon:, mode: nil, restriction_type: nil, source: nil, state: nil, status: nil, transform: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::RestrictionListByBboxParams} for more details.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param max_lat [Float] Specifies the maximum latitude value for the bounding box.
      #
      #   @param max_lon [Float] Specifies the maximum longitude value for the bounding box.
      #
      #   @param min_lat [Float] Specifies the minimum latitude value for the bounding box.
      #
      #   @param min_lon [Float] Specifies the minimum longitude value for the bounding box.
      #
      #   @param mode [Array<Symbol, Nextbillionai::Models::RestrictionListByBboxParams::Mode>] Specify the modes of travel that the restriction pertains to.
      #
      #   @param restriction_type [Symbol, Nextbillionai::Models::RestrictionListByBboxParams::RestrictionType] Specify the type of restrictions to fetch.
      #
      #   @param source [Symbol, Nextbillionai::Models::RestrictionListByBboxParams::Source] This parameter represents where the restriction comes from and cannot be modifie
      #
      #   @param state [Symbol, Nextbillionai::Models::RestrictionListByBboxParams::State] This parameter is used to filter restrictions based on their state i.e. whether
      #
      #   @param status [Symbol, Nextbillionai::Models::RestrictionListByBboxParams::Status] Restrictions can be active or inactive at a given time by virtue of their nature
      #
      #   @param transform [Boolean] This is internal parameter with a default value as false.
      #
      #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

      module Mode
        extend Nextbillionai::Internal::Type::Enum

        MODE_0W = :"0w"
        MODE_2W = :"2w"
        MODE_3W = :"3w"
        MODE_4W = :"4w"
        MODE_6W = :"6w"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Specify the type of restrictions to fetch.
      module RestrictionType
        extend Nextbillionai::Internal::Type::Enum

        TURN = :turn
        PARKING = :parking
        FIXEDSPEED = :fixedspeed
        MAXSPEED = :maxspeed
        CLOSURE = :closure
        TRUCK = :truck

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # This parameter represents where the restriction comes from and cannot be
      # modified by clients sending requests to the API endpoint.
      #
      # For example, an API endpoint that returns a list of restrictions could include
      # the source parameter to indicate where each item comes from. This parameter can
      # be useful for filtering, sorting, or grouping the results based on their source.
      module Source
        extend Nextbillionai::Internal::Type::Enum

        RRT = :rrt
        PBF = :pbf

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # This parameter is used to filter restrictions based on their state i.e. whether
      # the restriction is currently enabled, disabled, or deleted. For example, users
      # can retrieve a list of all the deleted restrictions by setting state=deleted.
      module State
        extend Nextbillionai::Internal::Type::Enum

        ENABLED = :enabled
        DISABLED = :disabled
        DELETED = :deleted

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Restrictions can be active or inactive at a given time by virtue of their
      # nature. For example, maximum speed limits can be active on the roads leading to
      # schools during school hours and be inactive afterwards or certain road closure
      # restrictions be active during holidays/concerts and be inactive otherwise.
      #
      # Use this parameter to filter the restrictions based on their status at the time
      # of making the request i.e. whether they are in force or not.
      module Status
        extend Nextbillionai::Internal::Type::Enum

        ACTIVE = :active
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
