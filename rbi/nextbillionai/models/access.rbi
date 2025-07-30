# typed: strong

module Nextbillionai
  module Models
    class Access < Nextbillionai::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Nextbillionai::Access, Nextbillionai::Internal::AnyHash)
        end

      # The latitude of the access point of the search result.
      sig { returns(T.nilable(Float)) }
      attr_reader :lat

      sig { params(lat: Float).void }
      attr_writer :lat

      # The longitude of the access point of the search result.
      sig { returns(T.nilable(Float)) }
      attr_reader :lng

      sig { params(lng: Float).void }
      attr_writer :lng

      # An array returning the location coordinates of all the access points of the
      # search result.
      sig { params(lat: Float, lng: Float).returns(T.attached_class) }
      def self.new(
        # The latitude of the access point of the search result.
        lat: nil,
        # The longitude of the access point of the search result.
        lng: nil
      )
      end

      sig { override.returns({ lat: Float, lng: Float }) }
      def to_hash
      end
    end
  end
end
