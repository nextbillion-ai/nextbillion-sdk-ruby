# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      # @see Nextbillionai::Resources::Skynet::Monitor#retrieve
      class MonitorRetrieveResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute data
        #   A data object containing the details of the `monitor`.
        #
        #   @return [Nextbillionai::Models::Skynet::MonitorRetrieveResponse::Data, nil]
        optional :data, -> { Nextbillionai::Models::Skynet::MonitorRetrieveResponse::Data }

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
        #   {Nextbillionai::Models::Skynet::MonitorRetrieveResponse} for more details.
        #
        #   @param data [Nextbillionai::Models::Skynet::MonitorRetrieveResponse::Data] A data object containing the details of the `monitor`.
        #
        #   @param message [String] Displays the error message in case of a failed request. If the request is succes
        #
        #   @param status [String] A string indicating the state of the response. On successful responses, the valu

        # @see Nextbillionai::Models::Skynet::MonitorRetrieveResponse#data
        class Data < Nextbillionai::Internal::Type::BaseModel
          # @!attribute monitor
          #
          #   @return [Nextbillionai::Models::Skynet::SkynetMonitor, nil]
          optional :monitor, -> { Nextbillionai::Skynet::SkynetMonitor }

          # @!method initialize(monitor: nil)
          #   A data object containing the details of the `monitor`.
          #
          #   @param monitor [Nextbillionai::Models::Skynet::SkynetMonitor]
        end
      end
    end
  end
end
