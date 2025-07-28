# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      class ConfigTestWebhookParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Skynet::ConfigTestWebhookParams,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        sig do
          params(
            key: String,
            request_options: NextbillionSDK::RequestOptions::OrHash
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
            { key: String, request_options: NextbillionSDK::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
