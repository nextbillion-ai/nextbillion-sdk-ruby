# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::Restrictions#list
    class RestrictionListParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      # @!attribute area
      #   Specify the area name. It represents a region where restrictions can be applied.
      #
      #   _The area it belongs to. See Area API_
      #
      #   @return [String]
      required :area, String

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute limit
      #   The number of restrictions to be returned in the response. Please note that if
      #   the `limit` is set to a number more than the total number of available
      #   restrictions, then all restrictions would be returned together.
      #
      #   @return [Integer]
      required :limit, Integer

      # @!attribute offset
      #   An integer value indicating the number of items in the collection that need to
      #   be skipped in the response. Please note that the offset starts from 0, so the
      #   first item returned in the result would be the item at (offset + 1) position in
      #   collection.
      #
      #   Users can use `offset` along with `limit` to implement paginated result.
      #
      #   @return [Integer]
      required :offset, Integer

      # @!attribute mode
      #   Specify the modes of travel that the restriction pertains to.
      #
      #   @return [Symbol, NextbillionSDK::Models::RestrictionListParams::Mode, nil]
      optional :mode, enum: -> { NextbillionSDK::RestrictionListParams::Mode }

      # @!attribute name
      #   The name of the restriction. This should be same as that provided while creating
      #   or updating the restriction.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute restriction_type
      #   Specify the type of restrictions to fetch.
      #
      #   @return [Symbol, NextbillionSDK::Models::RestrictionListParams::RestrictionType, nil]
      optional :restriction_type, enum: -> { NextbillionSDK::RestrictionListParams::RestrictionType }

      # @!attribute source
      #   It represents where it comes from, currently the possible values include "rrt",
      #   "xsm"
      #
      #   @return [Symbol, NextbillionSDK::Models::RestrictionListParams::Source, nil]
      optional :source, enum: -> { NextbillionSDK::RestrictionListParams::Source }

      # @!attribute state
      #   This parameter is used to filter restrictions based on their state i.e. whether
      #   the restriction is currently enabled, disabled, or deleted. For example, users
      #   can retrieve a list of all the deleted restrictions by setting `state=deleted`.
      #
      #   @return [Symbol, NextbillionSDK::Models::RestrictionListParams::State, nil]
      optional :state, enum: -> { NextbillionSDK::RestrictionListParams::State }

      # @!attribute status
      #   Restrictions can be active or inactive at a given time by virtue of their
      #   nature. For example, maximum speed limits can be active on the roads leading to
      #   schools during school hours and be inactive afterwards or certain road closure
      #   restrictions be active during holidays/concerts and be inactive otherwise.
      #
      #   Use this parameter to filter the restrictions based on their status at the time
      #   of making the request i.e. whether they are in force or not.
      #
      #   @return [Symbol, NextbillionSDK::Models::RestrictionListParams::Status, nil]
      optional :status, enum: -> { NextbillionSDK::RestrictionListParams::Status }

      # @!attribute transform
      #   a internal parameter
      #
      #   @return [Boolean, nil]
      optional :transform, NextbillionSDK::Internal::Type::Boolean

      # @!method initialize(area:, key:, limit:, offset:, mode: nil, name: nil, restriction_type: nil, source: nil, state: nil, status: nil, transform: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::RestrictionListParams} for more details.
      #
      #   @param area [String] Specify the area name. It represents a region where restrictions can be applied.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param limit [Integer] The number of restrictions to be returned in the response. Please note that if t
      #
      #   @param offset [Integer] An integer value indicating the number of items in the collection that need to b
      #
      #   @param mode [Symbol, NextbillionSDK::Models::RestrictionListParams::Mode] Specify the modes of travel that the restriction pertains to.
      #
      #   @param name [String] The name of the restriction. This should be same as that provided while creating
      #
      #   @param restriction_type [Symbol, NextbillionSDK::Models::RestrictionListParams::RestrictionType] Specify the type of restrictions to fetch.
      #
      #   @param source [Symbol, NextbillionSDK::Models::RestrictionListParams::Source] It represents where it comes from, currently the possible values include "rrt",
      #
      #   @param state [Symbol, NextbillionSDK::Models::RestrictionListParams::State] This parameter is used to filter restrictions based on their state i.e. whether
      #
      #   @param status [Symbol, NextbillionSDK::Models::RestrictionListParams::Status] Restrictions can be active or inactive at a given time by virtue of their nature
      #
      #   @param transform [Boolean] a internal parameter
      #
      #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]

      # Specify the modes of travel that the restriction pertains to.
      module Mode
        extend NextbillionSDK::Internal::Type::Enum

        MODE_0W = :"`0w`"
        MODE_2W = :"`2w`"
        MODE_3W = :"`3w`"
        MODE_4W = :"`4w`"
        MODE_6W = :"`6w`"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Specify the type of restrictions to fetch.
      module RestrictionType
        extend NextbillionSDK::Internal::Type::Enum

        TURN = :"`turn`"
        PARKING = :"`parking`"
        FIXEDSPEED = :"`fixedspeed`"
        MAXSPEED = :"`maxspeed`"
        CLOSURE = :"`closure`"
        TRUCK = :"`truck`"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # It represents where it comes from, currently the possible values include "rrt",
      # "xsm"
      module Source
        extend NextbillionSDK::Internal::Type::Enum

        RRT = :rrt
        PBF = :pbf

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # This parameter is used to filter restrictions based on their state i.e. whether
      # the restriction is currently enabled, disabled, or deleted. For example, users
      # can retrieve a list of all the deleted restrictions by setting `state=deleted`.
      module State
        extend NextbillionSDK::Internal::Type::Enum

        ENABLED = :"`enabled`"
        DISABLED = :"`disabled`"
        DELETED = :"`deleted`"

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
        extend NextbillionSDK::Internal::Type::Enum

        ACTIVE = :"`active`"
        INACTIVE = :"`inactive`"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
