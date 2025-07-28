# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      # @see NextbillionSDK::Resources::Skynet::Config#test_webhook
      class ConfigTestWebhookParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!method initialize(key:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Skynet::ConfigTestWebhookParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
