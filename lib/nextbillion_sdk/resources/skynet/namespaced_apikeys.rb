# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Skynet
      class NamespacedApikeys
        # Some parameter documentations has been truncated, see
        # {NextbillionSDK::Models::Skynet::NamespacedApikeyCreateParams} for more details.
        #
        # Create namespace under a parent key
        #
        # @overload create(key:, namespace:, request_options: {})
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param namespace [String] Specify a name for the `namespace`. If the namespace specified is unique then a
        #
        # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [NextbillionSDK::Models::Skynet::NamespacedApikeyCreateResponse]
        #
        # @see NextbillionSDK::Models::Skynet::NamespacedApikeyCreateParams
        def create(params)
          parsed, options = NextbillionSDK::Skynet::NamespacedApikeyCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "skynet/namespaced-apikeys",
            query: parsed,
            model: NextbillionSDK::Models::Skynet::NamespacedApikeyCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {NextbillionSDK::Models::Skynet::NamespacedApikeyDeleteParams} for more details.
        #
        # Delete namespace under a parent key
        #
        # @overload delete(key:, key_to_delete:, namespace:, request_options: {})
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param key_to_delete [String] Specify the key to be deleted.
        #
        # @param namespace [String] Specify the name of the `namespace` to which the \`key_to_delete\` belongs. Pl
        #
        # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [NextbillionSDK::Models::Skynet::NamespacedApikeyDeleteResponse]
        #
        # @see NextbillionSDK::Models::Skynet::NamespacedApikeyDeleteParams
        def delete(params)
          parsed, options = NextbillionSDK::Skynet::NamespacedApikeyDeleteParams.dump_request(params)
          @client.request(
            method: :delete,
            path: "skynet/namespaced-apikeys",
            query: parsed,
            model: NextbillionSDK::Models::Skynet::NamespacedApikeyDeleteResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [NextbillionSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
