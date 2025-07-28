# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      module Asset
        # @see NextbillionSDK::Resources::Skynet::Asset::Location#get_last
        class LocationGetLastResponse < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute data
          #   An object containing the information about the last tracked location of the
          #   requested `asset`.
          #
          #   @return [NextbillionSDK::Models::Skynet::Asset::LocationGetLastResponse::Data, nil]
          optional :data, -> { NextbillionSDK::Models::Skynet::Asset::LocationGetLastResponse::Data }

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
          #   {NextbillionSDK::Models::Skynet::Asset::LocationGetLastResponse} for more
          #   details.
          #
          #   @param data [NextbillionSDK::Models::Skynet::Asset::LocationGetLastResponse::Data] An object containing the information about the last tracked location of the requ
          #
          #   @param message [String] Displays the error message in case of a failed request. If the request is succes
          #
          #   @param status [String] A string indicating the state of the response. On successful responses, the valu

          # @see NextbillionSDK::Models::Skynet::Asset::LocationGetLastResponse#data
          class Data < NextbillionSDK::Internal::Type::BaseModel
            # @!attribute location
            #   An object with details of the tracked location. Please note that if there are no
            #   tracking records for an asset, no location data will be returned.
            #
            #   @return [NextbillionSDK::Models::Skynet::Asset::TrackLocation, nil]
            optional :location, -> { NextbillionSDK::Skynet::Asset::TrackLocation }

            # @!method initialize(location: nil)
            #   Some parameter documentations has been truncated, see
            #   {NextbillionSDK::Models::Skynet::Asset::LocationGetLastResponse::Data} for more
            #   details.
            #
            #   An object containing the information about the last tracked location of the
            #   requested `asset`.
            #
            #   @param location [NextbillionSDK::Models::Skynet::Asset::TrackLocation] An object with details of the tracked location. Please note that if there are no
          end
        end
      end
    end
  end
end
