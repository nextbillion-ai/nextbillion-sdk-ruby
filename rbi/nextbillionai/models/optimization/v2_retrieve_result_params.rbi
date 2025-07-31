# typed: strong

module Nextbillionai
  module Models
    module Optimization
      class V2RetrieveResultParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Optimization::V2RetrieveResultParams,
              Nextbillionai::Internal::AnyHash
            )
          end

        # The unique ID that was returned on successful submission of the Optimization
        # POST request.
        sig { returns(String) }
        attr_accessor :id

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        sig do
          params(
            id: String,
            key: String,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique ID that was returned on successful submission of the Optimization
          # POST request.
          id:,
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              key: String,
              request_options: Nextbillionai::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
