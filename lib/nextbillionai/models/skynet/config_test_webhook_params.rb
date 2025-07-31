# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      # @see Nextbillionai::Resources::Skynet::Config#test_webhook
      class ConfigTestWebhookParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!method initialize(key:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Skynet::ConfigTestWebhookParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
