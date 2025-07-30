# typed: strong

module NextbillionSDK
  module Models
    class RestrictionDeleteResponse < NextbillionSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::Models::RestrictionDeleteResponse,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # It is the unique ID of the restriction.
      sig { returns(T.nilable(Float)) }
      attr_reader :id

      sig { params(id: Float).void }
      attr_writer :id

      # Returns the state of the restriction. It would always be deleted.
      sig { returns(T.nilable(String)) }
      attr_reader :state

      sig { params(state: String).void }
      attr_writer :state

      sig { params(id: Float, state: String).returns(T.attached_class) }
      def self.new(
        # It is the unique ID of the restriction.
        id: nil,
        # Returns the state of the restriction. It would always be deleted.
        state: nil
      )
      end

      sig { override.returns({ id: Float, state: String }) }
      def to_hash
      end
    end
  end
end
