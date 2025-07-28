# typed: strong

module NextbillionSDK
  module Resources
    class Skynet
      class NamespacedApikeys
        # Create namespace under a parent key
        sig do
          params(
            key: String,
            namespace: String,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(
            NextbillionSDK::Models::Skynet::NamespacedApikeyCreateResponse
          )
        end
        def create(
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

        # Delete namespace under a parent key
        sig do
          params(
            key: String,
            key_to_delete: String,
            namespace: String,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(
            NextbillionSDK::Models::Skynet::NamespacedApikeyDeleteResponse
          )
        end
        def delete(
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
          # Specify the name of the `namespace` to which the \`key_to_delete\` belongs.
          # Please note that a namespace key cannot be deleted using another namespace key.
          namespace:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: NextbillionSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
