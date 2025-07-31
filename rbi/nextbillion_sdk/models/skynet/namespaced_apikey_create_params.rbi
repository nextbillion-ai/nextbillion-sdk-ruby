# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      class NamespacedApikeyCreateParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Skynet::NamespacedApikeyCreateParams,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # Specify a name for the `namespace`. If the namespace specified is unique then a
        # new namespace along with a new key is created. Whereas if the specified
        # `namespace` is not unique, a new key will be created in the existing
        # `namespace`. Please note that a `namespace` cannot be created using another
        # namespace key.
        sig { returns(String) }
        attr_accessor :namespace

        sig do
          params(
            key: String,
            namespace: String,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # Specify a name for the `namespace`. If the namespace specified is unique then a
          # new namespace along with a new key is created. Whereas if the specified
          # `namespace` is not unique, a new key will be created in the existing
          # `namespace`. Please note that a `namespace` cannot be created using another
          # namespace key.
          namespace:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              namespace: String,
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
