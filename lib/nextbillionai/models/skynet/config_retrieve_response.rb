# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      # @see Nextbillionai::Resources::Skynet::Config#retrieve
      class ConfigRetrieveResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute data
        #   A data object containing the config response.
        #
        #   @return [Nextbillionai::Models::Skynet::ConfigRetrieveResponse::Data, nil]
        optional :data, -> { Nextbillionai::Models::Skynet::ConfigRetrieveResponse::Data }

        # @!attribute message
        #   Displays the error message in case of a failed request. If the request is
        #   successful, this field is not present in the response.
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute status
        #   A string indicating the state of the response. On successful responses, the
        #   value will be Ok. Indicative error messages are returned for different errors.
        #   See the [API Error Codes](#api-error-codes) section below for more information.
        #
        #   @return [String, nil]
        optional :status, String

        # @!method initialize(data: nil, message: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Skynet::ConfigRetrieveResponse} for more details.
        #
        #   @param data [Nextbillionai::Models::Skynet::ConfigRetrieveResponse::Data] A data object containing the config response.
        #
        #   @param message [String] Displays the error message in case of a failed request. If the request is succes
        #
        #   @param status [String] A string indicating the state of the response. On successful responses, the valu

        # @see Nextbillionai::Models::Skynet::ConfigRetrieveResponse#data
        class Data < Nextbillionai::Internal::Type::BaseModel
          # @!attribute config
          #
          #   @return [Nextbillionai::Models::Skynet::ConfigRetrieveResponse::Data::Config, nil]
          optional :config, -> { Nextbillionai::Models::Skynet::ConfigRetrieveResponse::Data::Config }

          # @!method initialize(config: nil)
          #   A data object containing the config response.
          #
          #   @param config [Nextbillionai::Models::Skynet::ConfigRetrieveResponse::Data::Config]

          # @see Nextbillionai::Models::Skynet::ConfigRetrieveResponse::Data#config
          class Config < Nextbillionai::Internal::Type::BaseModel
            # @!attribute webhook
            #   An array of strings representing the list of webhooks. Webhooks are used to
            #   receive information, through POST requests, whenever any event is triggered.
            #
            #   @return [Array<String>, nil]
            optional :webhook, Nextbillionai::Internal::Type::ArrayOf[String]

            # @!method initialize(webhook: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Skynet::ConfigRetrieveResponse::Data::Config} for more
            #   details.
            #
            #   @param webhook [Array<String>] An array of strings representing the list of webhooks. Webhooks are used to rece
          end
        end
      end
    end
  end
end
