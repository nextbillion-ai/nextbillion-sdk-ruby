# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Geofence
      # @see NextbillionSDK::Resources::Geofence::Batch#list
      class BatchListResponse < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [NextbillionSDK::Models::Geofence::BatchListResponse::Data]
        required :data, -> { NextbillionSDK::Models::Geofence::BatchListResponse::Data }

        # @!attribute status
        #   A string indicating the state of the response. On successful responses, the
        #   value will be `Ok`. Indicative error messages are returned for different errors.
        #   See the [API Error Codes](#api-error-codes) section below for more information.
        #
        #   @return [String]
        required :status, String

        # @!method initialize(data:, status:)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Geofence::BatchListResponse} for more details.
        #
        #   @param data [NextbillionSDK::Models::Geofence::BatchListResponse::Data]
        #
        #   @param status [String] A string indicating the state of the response. On successful responses, the valu

        # @see NextbillionSDK::Models::Geofence::BatchListResponse#data
        class Data < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute list
          #   An array of objects containing the details of the geofences returned matching
          #   the IDs provided. Each object represents one geofence.
          #
          #   @return [Array<NextbillionSDK::Models::GeofenceAPI>]
          required :list, -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::GeofenceAPI] }

          # @!method initialize(list:)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Geofence::BatchListResponse::Data} for more details.
          #
          #   @param list [Array<NextbillionSDK::Models::GeofenceAPI>] An array of objects containing the details of the geofences returned matching th
        end
      end
    end
  end
end
