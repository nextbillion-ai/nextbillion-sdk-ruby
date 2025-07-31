# typed: strong

module Nextbillionai
  module Models
    module Skynet
      class Pagination < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Skynet::Pagination,
              Nextbillionai::Internal::AnyHash
            )
          end

        # A boolean value indicating whether there are more items available beyond the
        # current page.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :hasmore

        sig { params(hasmore: T::Boolean).void }
        attr_writer :hasmore

        # An integer value indicating the current page number (starting at 0).
        sig { returns(T.nilable(Integer)) }
        attr_reader :page

        sig { params(page: Integer).void }
        attr_writer :page

        # An integer value indicating the maximum number of items retrieved per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # An integer value indicating the total number of items available in the data set.
        # This parameter can be used to calculate the total number of pages available.
        sig { returns(T.nilable(Integer)) }
        attr_reader :total

        sig { params(total: Integer).void }
        attr_writer :total

        # An object with pagination details of the search results. Use this object to
        # implement pagination in your application.
        sig do
          params(
            hasmore: T::Boolean,
            page: Integer,
            size: Integer,
            total: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # A boolean value indicating whether there are more items available beyond the
          # current page.
          hasmore: nil,
          # An integer value indicating the current page number (starting at 0).
          page: nil,
          # An integer value indicating the maximum number of items retrieved per page.
          size: nil,
          # An integer value indicating the total number of items available in the data set.
          # This parameter can be used to calculate the total number of pages available.
          total: nil
        )
        end

        sig do
          override.returns(
            {
              hasmore: T::Boolean,
              page: Integer,
              size: Integer,
              total: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
