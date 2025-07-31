# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Restrictions#list
    class RestrictionListResponse < Nextbillionai::Internal::Type::BaseModel
      # @!attribute data
      #   An array of objects containing the details of the restrictions returned. Each
      #   object represents one restriction.
      #
      #   @return [Array<Nextbillionai::Models::RichGroupResponse>, nil]
      optional :data, -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::RichGroupResponse] }

      # @!attribute meta
      #
      #   @return [Nextbillionai::Models::RestrictionListResponse::Meta, nil]
      optional :meta, -> { Nextbillionai::Models::RestrictionListResponse::Meta }

      # @!method initialize(data: nil, meta: nil)
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::RestrictionListResponse} for more details.
      #
      #   @param data [Array<Nextbillionai::Models::RichGroupResponse>] An array of objects containing the details of the restrictions returned. Each ob
      #
      #   @param meta [Nextbillionai::Models::RestrictionListResponse::Meta]

      # @see Nextbillionai::Models::RestrictionListResponse#meta
      class Meta < Nextbillionai::Internal::Type::BaseModel
        # @!attribute limit
        #   An integer value indicating the maximum number of items retrieved per "page".
        #   This is the same number as provided for the limit parameter in input.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute offset
        #   An integer value indicating the number of items in the collection that were
        #   skipped to display the current response. Please note that the offset starts from
        #   zero.
        #
        #   @return [Integer, nil]
        optional :offset, Integer

        # @!attribute total
        #   An integer value indicating the total number of items available in the data set.
        #
        #   @return [Integer, nil]
        optional :total, Integer

        # @!method initialize(limit: nil, offset: nil, total: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::RestrictionListResponse::Meta} for more details.
        #
        #   @param limit [Integer] An integer value indicating the maximum number of items retrieved per "page". Th
        #
        #   @param offset [Integer] An integer value indicating the number of items in the collection that were skip
        #
        #   @param total [Integer] An integer value indicating the total number of items available in the data set.
      end
    end
  end
end
