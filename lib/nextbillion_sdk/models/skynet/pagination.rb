# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      class Pagination < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute hasmore
        #   A boolean value indicating whether there are more items available beyond the
        #   current page.
        #
        #   @return [Boolean, nil]
        optional :hasmore, NextbillionSDK::Internal::Type::Boolean

        # @!attribute page
        #   An integer value indicating the current page number (starting at 0).
        #
        #   @return [Integer, nil]
        optional :page, Integer

        # @!attribute size
        #   An integer value indicating the maximum number of items retrieved per page.
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!attribute total
        #   An integer value indicating the total number of items available in the data set.
        #   This parameter can be used to calculate the total number of pages available.
        #
        #   @return [Integer, nil]
        optional :total, Integer

        # @!method initialize(hasmore: nil, page: nil, size: nil, total: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Skynet::Pagination} for more details.
        #
        #   An object with pagination details of the search results. Use this object to
        #   implement pagination in your application.
        #
        #   @param hasmore [Boolean] A boolean value indicating whether there are more items available beyond the cur
        #
        #   @param page [Integer] An integer value indicating the current page number (starting at 0).
        #
        #   @param size [Integer] An integer value indicating the maximum number of items retrieved per page.
        #
        #   @param total [Integer] An integer value indicating the total number of items available in the data set.
      end
    end
  end
end
