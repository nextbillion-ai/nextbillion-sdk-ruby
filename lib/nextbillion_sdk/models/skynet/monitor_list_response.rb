# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      # @see NextbillionSDK::Resources::Skynet::Monitor#list
      class MonitorListResponse < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute data
        #   A data object containing the result.
        #
        #   @return [NextbillionSDK::Models::Skynet::MonitorListResponse::Data, nil]
        optional :data, -> { NextbillionSDK::Models::Skynet::MonitorListResponse::Data }

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
        #   {NextbillionSDK::Models::Skynet::MonitorListResponse} for more details.
        #
        #   @param data [NextbillionSDK::Models::Skynet::MonitorListResponse::Data] A data object containing the result.
        #
        #   @param message [String] Displays the error message in case of a failed request. If the request is succes
        #
        #   @param status [String] A string indicating the state of the response. On successful responses, the valu

        # @see NextbillionSDK::Models::Skynet::MonitorListResponse#data
        class Data < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute list
          #   An array of objects listing all the monitors. Each object represents one
          #   monitor.
          #
          #   @return [Array<NextbillionSDK::Models::Skynet::SkynetMonitor>, nil]
          optional :list,
                   -> {
                     NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Skynet::SkynetMonitor]
                   }

          # @!attribute page
          #   An object with pagination details of the search results. Use this object to
          #   implement pagination in your application.
          #
          #   @return [NextbillionSDK::Models::Skynet::Pagination, nil]
          optional :page, -> { NextbillionSDK::Skynet::Pagination }

          # @!method initialize(list: nil, page: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Skynet::MonitorListResponse::Data} for more details.
          #
          #   A data object containing the result.
          #
          #   @param list [Array<NextbillionSDK::Models::Skynet::SkynetMonitor>] An array of objects listing all the monitors. Each object represents one monitor
          #
          #   @param page [NextbillionSDK::Models::Skynet::Pagination] An object with pagination details of the search results. Use this object to impl
        end
      end
    end
  end
end
