# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      # @see Nextbillionai::Resources::Skynet::Config#test_webhook
      class ConfigTestWebhookResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute status
        #   A string indicating the state of the response. Please note this value will
        #   always be `Ok`.
        #
        #   The sample event information will be received on the webhook, if they were
        #   successfully configured. If no event information is received by the webhook,
        #   please reconfigure the webhook or else reach out to
        #   [support@nextbillion.ai](mailto:support@nextbillion.ai) for help.
        #
        #   @return [String, nil]
        optional :status, String

        # @!method initialize(status: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Skynet::ConfigTestWebhookResponse} for more details.
        #
        #   @param status [String] A string indicating the state of the response. Please note this value will alway
      end
    end
  end
end
