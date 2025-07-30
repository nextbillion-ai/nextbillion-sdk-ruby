# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      # @see NextbillionSDK::Resources::Skynet::NamespacedApikeys#create
      class NamespacedApikeyCreateParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute namespace
        #   Specify a name for the namespace. If the namespace specified is unique then a
        #   new namespace along with a new key is created. Whereas if the specified
        #   namespace is not unique, a new key will be created in the existing namespace.
        #   Please note that a namespace cannot be created using another namespace key.
        #
        #   @return [String]
        required :namespace, String

        # @!method initialize(key:, namespace:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Skynet::NamespacedApikeyCreateParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param namespace [String] Specify a name for the namespace. If the namespace specified is unique then a ne
        #
        #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
