# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::Geofence#retrieve
    class GeofenceRetrieveResponse < NextbillionSDK::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [NextbillionSDK::Models::GeofenceRetrieveResponse::Data, nil]
      optional :data, -> { NextbillionSDK::Models::GeofenceRetrieveResponse::Data }

      # @!attribute status
      #   A string indicating the state of the response. On successful responses, the
      #   value will be `Ok`. Indicative error messages are returned for different errors.
      #   See the [API Error Codes](#api-error-codes) section below for more information.
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(data: nil, status: nil)
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::GeofenceRetrieveResponse} for more details.
      #
      #   @param data [NextbillionSDK::Models::GeofenceRetrieveResponse::Data]
      #
      #   @param status [String] A string indicating the state of the response. On successful responses, the valu

      # @see NextbillionSDK::Models::GeofenceRetrieveResponse#data
      class Data < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute geofence
        #   An object with details of the geofence.
        #
        #   @return [NextbillionSDK::Models::GeofenceAPI, nil]
        optional :geofence, -> { NextbillionSDK::GeofenceAPI }

        # @!method initialize(geofence: nil)
        #   @param geofence [NextbillionSDK::Models::GeofenceAPI] An object with details of the geofence.
      end
    end
  end
end
