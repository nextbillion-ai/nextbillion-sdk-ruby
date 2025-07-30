# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      # @see NextbillionSDK::Resources::Skynet::NamespacedApikeys#delete
      class NamespacedApikeyDeleteParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API. Please note for the delete namespace key operation another namespace key
        #   cannot be used.
        #
        #   The namespace created using this key can be managed using the APIs & Services >
        #   Credentials section of user’s
        #   [NextBillion Console](https://console.nextbillion.ai).
        #
        #   @return [String]
        required :key, String

        # @!attribute key_to_delete
        #   Specify the key to be deleted.
        #
        #   @return [String]
        required :key_to_delete, String

        # @!attribute namespace
        #   Specify the name of the namespace to which the \key_to_delete\ belongs. Please
        #   note that a namespace key cannot be deleted using another namespace key.
        #
        #   @return [String]
        required :namespace, String

        # @!method initialize(key:, key_to_delete:, namespace:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Skynet::NamespacedApikeyDeleteParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param key_to_delete [String] Specify the key to be deleted.
        #
        #   @param namespace [String] Specify the name of the namespace to which the \key_to_delete\ belongs. Please
        #
        #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
