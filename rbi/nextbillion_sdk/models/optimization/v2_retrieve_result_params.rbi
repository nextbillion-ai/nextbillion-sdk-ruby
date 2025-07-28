# typed: strong

module NextbillionSDK
  module Models
    module Optimization
      class V2RetrieveResultParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Optimization::V2RetrieveResultParams,
              NextbillionSDK::Internal::AnyHash
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
            request_options: NextbillionSDK::RequestOptions::OrHash
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
              request_options: NextbillionSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
