# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::Restrictions#list
    class RestrictionListResponse < NextbillionSDK::Internal::Type::BaseModel
      # @!attribute data
      #   An array of objects containing the details of the restrictions returned. Each
      #   object represents one restriction.
      #
      #   @return [Array<NextbillionSDK::Models::RichGroupResponse>, nil]
      optional :data, -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::RichGroupResponse] }

      # @!attribute meta
      #
      #   @return [NextbillionSDK::Models::RestrictionListResponse::Meta, nil]
      optional :meta, -> { NextbillionSDK::Models::RestrictionListResponse::Meta }

      # @!method initialize(data: nil, meta: nil)
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::RestrictionListResponse} for more details.
      #
      #   @param data [Array<NextbillionSDK::Models::RichGroupResponse>] An array of objects containing the details of the restrictions returned. Each ob
      #
      #   @param meta [NextbillionSDK::Models::RestrictionListResponse::Meta]

      # @see NextbillionSDK::Models::RestrictionListResponse#meta
      class Meta < NextbillionSDK::Internal::Type::BaseModel
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
        #   {NextbillionSDK::Models::RestrictionListResponse::Meta} for more details.
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
