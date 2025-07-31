# typed: strong

module Nextbillionai
  module Models
    module Skynet
      class NamespacedApikeyDeleteParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Skynet::NamespacedApikeyDeleteParams,
              Nextbillionai::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API. Please note for the delete namespace key operation another namespace key
        # cannot be used.
        #
        # The namespace created using this key can be managed using the APIs & Services >
        # Credentials section of user’s
        # [NextBillion Console](https://console.nextbillion.ai).
        sig { returns(String) }
        attr_accessor :key

        # Specify the key to be deleted.
        sig { returns(String) }
        attr_accessor :key_to_delete

        # Specify the name of the namespace to which the \key_to_delete\ belongs. Please
        # note that a namespace key cannot be deleted using another namespace key.
        sig { returns(String) }
        attr_accessor :namespace

        sig do
          params(
            key: String,
            key_to_delete: String,
            namespace: String,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API. Please note for the delete namespace key operation another namespace key
          # cannot be used.
          #
          # The namespace created using this key can be managed using the APIs & Services >
          # Credentials section of user’s
          # [NextBillion Console](https://console.nextbillion.ai).
          key:,
          # Specify the key to be deleted.
          key_to_delete:,
          # Specify the name of the namespace to which the \key_to_delete\ belongs. Please
          # note that a namespace key cannot be deleted using another namespace key.
          namespace:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              key_to_delete: String,
              namespace: String,
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
