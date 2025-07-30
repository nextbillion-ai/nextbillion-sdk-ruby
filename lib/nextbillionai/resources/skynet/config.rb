# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Skynet
      class Config
        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::ConfigRetrieveParams} for more details.
        #
        # Get webhook configuration
        #
        # @overload retrieve(key:, cluster: nil, request_options: {})
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param cluster [Symbol, Nextbillionai::Models::Skynet::ConfigRetrieveParams::Cluster] the cluster of the region you want to use
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::ConfigRetrieveResponse]
        #
        # @see Nextbillionai::Models::Skynet::ConfigRetrieveParams
        def retrieve(params)
          parsed, options = Nextbillionai::Skynet::ConfigRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: "skynet/config",
            query: parsed,
            model: Nextbillionai::Models::Skynet::ConfigRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::ConfigUpdateParams} for more details.
        #
        # Update webhook configuration
        #
        # @overload update(key:, cluster: nil, webhook: nil, request_options: {})
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param cluster [Symbol, Nextbillionai::Models::Skynet::ConfigUpdateParams::Cluster] Query param: the cluster of the region you want to use
        #
        # @param webhook [Array<String>] Body param: Use this array to update information about the webhooks. Please note
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::SimpleResp]
        #
        # @see Nextbillionai::Models::Skynet::ConfigUpdateParams
        def update(params)
          parsed, options = Nextbillionai::Skynet::ConfigUpdateParams.dump_request(params)
          query_params = [:key, :cluster]
          @client.request(
            method: :put,
            path: "skynet/config",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: Nextbillionai::Skynet::SimpleResp,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::ConfigTestWebhookParams} for more details.
        #
        # Test webhook configurations
        #
        # @overload test_webhook(key:, request_options: {})
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::ConfigTestWebhookResponse]
        #
        # @see Nextbillionai::Models::Skynet::ConfigTestWebhookParams
        def test_webhook(params)
          parsed, options = Nextbillionai::Skynet::ConfigTestWebhookParams.dump_request(params)
          @client.request(
            method: :post,
            path: "skynet/config/testwebhook",
            query: parsed,
            model: Nextbillionai::Models::Skynet::ConfigTestWebhookResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Nextbillionai::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
