# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      # @see Nextbillionai::Resources::Skynet::Monitor#list
      class MonitorListResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute data
        #   A data object containing the result.
        #
        #   @return [Nextbillionai::Models::Skynet::MonitorListResponse::Data, nil]
        optional :data, -> { Nextbillionai::Models::Skynet::MonitorListResponse::Data }

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
        #   {Nextbillionai::Models::Skynet::MonitorListResponse} for more details.
        #
        #   @param data [Nextbillionai::Models::Skynet::MonitorListResponse::Data] A data object containing the result.
        #
        #   @param message [String] Displays the error message in case of a failed request. If the request is succes
        #
        #   @param status [String] A string indicating the state of the response. On successful responses, the valu

        # @see Nextbillionai::Models::Skynet::MonitorListResponse#data
        class Data < Nextbillionai::Internal::Type::BaseModel
          # @!attribute list
          #   An array of objects listing all the monitors. Each object represents one
          #   `monitor`.
          #
          #   @return [Array<Nextbillionai::Models::Skynet::SkynetMonitor>, nil]
          optional :list, -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Skynet::SkynetMonitor] }

          # @!attribute page
          #   An object with pagination details of the search results. Use this object to
          #   implement pagination in your application.
          #
          #   @return [Nextbillionai::Models::Skynet::Pagination, nil]
          optional :page, -> { Nextbillionai::Skynet::Pagination }

          # @!method initialize(list: nil, page: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Skynet::MonitorListResponse::Data} for more details.
          #
          #   A data object containing the result.
          #
          #   @param list [Array<Nextbillionai::Models::Skynet::SkynetMonitor>] An array of objects listing all the monitors. Each object represents one `monito
          #
          #   @param page [Nextbillionai::Models::Skynet::Pagination] An object with pagination details of the search results. Use this object to impl
        end
      end
    end
  end
end
