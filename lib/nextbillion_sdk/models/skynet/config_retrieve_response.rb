# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      # @see NextbillionSDK::Resources::Skynet::Config#retrieve
      class ConfigRetrieveResponse < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute data
        #   A data object containing the `config` response.
        #
        #   @return [NextbillionSDK::Models::Skynet::ConfigRetrieveResponse::Data, nil]
        optional :data, -> { NextbillionSDK::Models::Skynet::ConfigRetrieveResponse::Data }

        # @!attribute message
        #   Displays the error message in case of a failed request. If the request is
        #   successful, this field is not present in the response.
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute status
        #   A string indicating the state of the response. On successful responses, the
        #   value will be `Ok`. Indicative error messages are returned for different errors.
        #   See the [API Error Codes](#api-error-codes) section below for more information.
        #
        #   @return [String, nil]
        optional :status, String

        # @!method initialize(data: nil, message: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Skynet::ConfigRetrieveResponse} for more details.
        #
        #   @param data [NextbillionSDK::Models::Skynet::ConfigRetrieveResponse::Data] A data object containing the `config` response.
        #
        #   @param message [String] Displays the error message in case of a failed request. If the request is succes
        #
        #   @param status [String] A string indicating the state of the response. On successful responses, the valu

        # @see NextbillionSDK::Models::Skynet::ConfigRetrieveResponse#data
        class Data < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute config
          #
          #   @return [NextbillionSDK::Models::Skynet::ConfigRetrieveResponse::Data::Config, nil]
          optional :config, -> { NextbillionSDK::Models::Skynet::ConfigRetrieveResponse::Data::Config }

          # @!method initialize(config: nil)
          #   A data object containing the `config` response.
          #
          #   @param config [NextbillionSDK::Models::Skynet::ConfigRetrieveResponse::Data::Config]

          # @see NextbillionSDK::Models::Skynet::ConfigRetrieveResponse::Data#config
          class Config < NextbillionSDK::Internal::Type::BaseModel
            # @!attribute webhook
            #   An array of strings representing the list of webhooks. Webhooks are used to
            #   receive information, through POST requests, whenever any event is triggered.
            #
            #   @return [Array<String>, nil]
            optional :webhook, NextbillionSDK::Internal::Type::ArrayOf[String]

            # @!method initialize(webhook: nil)
            #   Some parameter documentations has been truncated, see
            #   {NextbillionSDK::Models::Skynet::ConfigRetrieveResponse::Data::Config} for more
            #   details.
            #
            #   @param webhook [Array<String>] An array of strings representing the list of webhooks. Webhooks are used to rece
          end
        end
      end
    end
  end
end
