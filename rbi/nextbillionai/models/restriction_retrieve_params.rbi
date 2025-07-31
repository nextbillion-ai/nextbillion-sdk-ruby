# typed: strong

module Nextbillionai
  module Models
    class RestrictionRetrieveParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::RestrictionRetrieveParams,
            Nextbillionai::Internal::AnyHash
          )
        end

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      # a internal parameter
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :transform

      sig { params(transform: T::Boolean).void }
      attr_writer :transform

      sig do
        params(
          key: String,
          transform: T::Boolean,
          request_options: Nextbillionai::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # a internal parameter
        transform: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            key: String,
            transform: T::Boolean,
            request_options: Nextbillionai::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
