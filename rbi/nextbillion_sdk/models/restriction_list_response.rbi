# typed: strong

module NextbillionSDK
  module Models
    class RestrictionListResponse < NextbillionSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::Models::RestrictionListResponse,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # An array of objects containing the details of the restrictions returned. Each
      # object represents one restriction.
      sig { returns(T.nilable(T::Array[NextbillionSDK::RichGroupResponse])) }
      attr_reader :data

      sig do
        params(data: T::Array[NextbillionSDK::RichGroupResponse::OrHash]).void
      end
      attr_writer :data

      sig do
        returns(
          T.nilable(NextbillionSDK::Models::RestrictionListResponse::Meta)
        )
      end
      attr_reader :meta

      sig do
        params(
          meta: NextbillionSDK::Models::RestrictionListResponse::Meta::OrHash
        ).void
      end
      attr_writer :meta

      sig do
        params(
          data: T::Array[NextbillionSDK::RichGroupResponse::OrHash],
          meta: NextbillionSDK::Models::RestrictionListResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # An array of objects containing the details of the restrictions returned. Each
        # object represents one restriction.
        data: nil,
        meta: nil
      )
      end

      sig do
        override.returns(
          {
            data: T::Array[NextbillionSDK::RichGroupResponse],
            meta: NextbillionSDK::Models::RestrictionListResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Meta < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::RestrictionListResponse::Meta,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # An integer value indicating the maximum number of items retrieved per "page".
        # This is the same number as provided for the `limit` parameter in input.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # An integer value indicating the number of items in the collection that were
        # skipped to display the current response. Please note that the offset starts from
        # zero.
        sig { returns(T.nilable(Integer)) }
        attr_reader :offset

        sig { params(offset: Integer).void }
        attr_writer :offset

        # An integer value indicating the total number of items available in the data set.
        sig { returns(T.nilable(Integer)) }
        attr_reader :total

        sig { params(total: Integer).void }
        attr_writer :total

        sig do
          params(limit: Integer, offset: Integer, total: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # An integer value indicating the maximum number of items retrieved per "page".
          # This is the same number as provided for the `limit` parameter in input.
          limit: nil,
          # An integer value indicating the number of items in the collection that were
          # skipped to display the current response. Please note that the offset starts from
          # zero.
          offset: nil,
          # An integer value indicating the total number of items available in the data set.
          total: nil
        )
        end

        sig do
          override.returns({ limit: Integer, offset: Integer, total: Integer })
        end
        def to_hash
        end
      end
    end
  end
end
