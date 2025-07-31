# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::Geofence#create
    class GeofenceCreateResponse < NextbillionSDK::Internal::Type::BaseModel
      # @!attribute data
      #   A data object containing the ID of the geofence created.
      #
      #   @return [NextbillionSDK::Models::GeofenceCreateResponse::Data, nil]
      optional :data, -> { NextbillionSDK::Models::GeofenceCreateResponse::Data }

      # @!attribute status
      #   A string indicating the state of the response. On successful responses, the
      #   value will be `Ok`. Indicative error messages are returned for different errors.
      #   See the [API Error Codes](#api-error-codes) section below for more information.
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(data: nil, status: nil)
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::GeofenceCreateResponse} for more details.
      #
      #   @param data [NextbillionSDK::Models::GeofenceCreateResponse::Data] A data object containing the ID of the geofence created.
      #
      #   @param status [String] A string indicating the state of the response. On successful responses, the valu

      # @see NextbillionSDK::Models::GeofenceCreateResponse#data
      class Data < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Unique ID of the geofence created. It will be the same as `custom_id`, if
        #   provided. Else it will be an auto generated UUID. Please note this ID cannot be
        #   updated.
        #
        #   @return [String, nil]
        optional :id, String

        # @!method initialize(id: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::GeofenceCreateResponse::Data} for more details.
        #
        #   A data object containing the ID of the geofence created.
        #
        #   @param id [String] Unique ID of the geofence created. It will be the same as `custom_id`, if provid
      end
    end
  end
end
