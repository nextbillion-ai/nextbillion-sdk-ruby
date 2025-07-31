# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      # @see NextbillionSDK::Resources::Skynet::Monitor#retrieve
      class MonitorRetrieveResponse < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute data
        #   A data object containing the details of the `monitor`.
        #
        #   @return [NextbillionSDK::Models::Skynet::MonitorRetrieveResponse::Data, nil]
        optional :data, -> { NextbillionSDK::Models::Skynet::MonitorRetrieveResponse::Data }

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
        #   {NextbillionSDK::Models::Skynet::MonitorRetrieveResponse} for more details.
        #
        #   @param data [NextbillionSDK::Models::Skynet::MonitorRetrieveResponse::Data] A data object containing the details of the `monitor`.
        #
        #   @param message [String] Displays the error message in case of a failed request. If the request is succes
        #
        #   @param status [String] A string indicating the state of the response. On successful responses, the valu

        # @see NextbillionSDK::Models::Skynet::MonitorRetrieveResponse#data
        class Data < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute monitor
          #
          #   @return [NextbillionSDK::Models::Skynet::SkynetMonitor, nil]
          optional :monitor, -> { NextbillionSDK::Skynet::SkynetMonitor }

          # @!method initialize(monitor: nil)
          #   A data object containing the details of the `monitor`.
          #
          #   @param monitor [NextbillionSDK::Models::Skynet::SkynetMonitor]
        end
      end
    end
  end
end
