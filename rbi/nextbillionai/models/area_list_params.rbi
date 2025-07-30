# typed: strong

module Nextbillionai
  module Models
    class AreaListParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Nextbillionai::AreaListParams, Nextbillionai::Internal::AnyHash)
        end

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      sig do
        params(
          key: String,
          request_options: Nextbillionai::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { key: String, request_options: Nextbillionai::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
