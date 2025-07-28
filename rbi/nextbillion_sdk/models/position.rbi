# typed: strong

module NextbillionSDK
  module Models
    class Position < NextbillionSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(NextbillionSDK::Position, NextbillionSDK::Internal::AnyHash)
        end

      # The latitude of the searched place.
      sig { returns(T.nilable(String)) }
      attr_reader :lat

      sig { params(lat: String).void }
      attr_writer :lat

      # The longitude of the searched place.
      sig { returns(T.nilable(String)) }
      attr_reader :lng

      sig { params(lng: String).void }
      attr_writer :lng

      # Returns the location coordinates of the result.
      sig { params(lat: String, lng: String).returns(T.attached_class) }
      def self.new(
        # The latitude of the searched place.
        lat: nil,
        # The longitude of the searched place.
        lng: nil
      )
      end

      sig { override.returns({ lat: String, lng: String }) }
      def to_hash
      end
    end
  end
end
