# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      module Asset
        # @see Nextbillionai::Resources::Skynet::Asset::Location#get_last
        class LocationGetLastResponse < Nextbillionai::Internal::Type::BaseModel
          # @!attribute data
          #   An object containing the information about the last tracked location of the
          #   requested asset.
          #
          #   @return [Nextbillionai::Models::Skynet::Asset::LocationGetLastResponse::Data, nil]
          optional :data, -> { Nextbillionai::Models::Skynet::Asset::LocationGetLastResponse::Data }

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
          #   {Nextbillionai::Models::Skynet::Asset::LocationGetLastResponse} for more
          #   details.
          #
          #   @param data [Nextbillionai::Models::Skynet::Asset::LocationGetLastResponse::Data] An object containing the information about the last tracked location of the requ
          #
          #   @param message [String] Displays the error message in case of a failed request. If the request is succes
          #
          #   @param status [String] A string indicating the state of the response. On successful responses, the valu

          # @see Nextbillionai::Models::Skynet::Asset::LocationGetLastResponse#data
          class Data < Nextbillionai::Internal::Type::BaseModel
            # @!attribute location
            #   An object with details of the tracked location. Please note that if there are no
            #   tracking records for an asset, no location data will be returned.
            #
            #   @return [Nextbillionai::Models::Skynet::Asset::TrackLocation, nil]
            optional :location, -> { Nextbillionai::Skynet::Asset::TrackLocation }

            # @!method initialize(location: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Skynet::Asset::LocationGetLastResponse::Data} for more
            #   details.
            #
            #   An object containing the information about the last tracked location of the
            #   requested asset.
            #
            #   @param location [Nextbillionai::Models::Skynet::Asset::TrackLocation] An object with details of the tracked location. Please note that if there are no
          end
        end
      end
    end
  end
end
