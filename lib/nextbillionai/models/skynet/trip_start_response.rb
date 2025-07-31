# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      # @see Nextbillionai::Resources::Skynet::Trip#start
      class TripStartResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Nextbillionai::Models::Skynet::TripStartResponse::Data, nil]
        optional :data, -> { Nextbillionai::Models::Skynet::TripStartResponse::Data }

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
        #   {Nextbillionai::Models::Skynet::TripStartResponse} for more details.
        #
        #   @param data [Nextbillionai::Models::Skynet::TripStartResponse::Data]
        #
        #   @param message [String] Displays the error message in case of a failed request. If the request is succes
        #
        #   @param status [String] A string indicating the state of the response. On successful responses, the valu

        # @see Nextbillionai::Models::Skynet::TripStartResponse#data
        class Data < Nextbillionai::Internal::Type::BaseModel
          # @!attribute id
          #   Returns the ID of the newly created trip. It will be same as the custom_id if
          #   that input was provided in the input request. Use this ID to manage this trip
          #   using other available Trip methods.
          #
          #   @return [String, nil]
          optional :id, String

          # @!method initialize(id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Skynet::TripStartResponse::Data} for more details.
          #
          #   @param id [String] Returns the ID of the newly created trip. It will be same as the custom_id if th
        end
      end
    end
  end
end
