# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Geofence#create
    class GeofenceCreateResponse < Nextbillionai::Internal::Type::BaseModel
      # @!attribute data
      #   A data object containing the ID of the geofence created.
      #
      #   @return [Nextbillionai::Models::GeofenceCreateResponse::Data, nil]
      optional :data, -> { Nextbillionai::Models::GeofenceCreateResponse::Data }

      # @!attribute status
      #   A string indicating the state of the response. On successful responses, the
      #   value will be `Ok`. Indicative error messages are returned for different errors.
      #   See the [API Error Codes](#api-error-codes) section below for more information.
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(data: nil, status: nil)
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::GeofenceCreateResponse} for more details.
      #
      #   @param data [Nextbillionai::Models::GeofenceCreateResponse::Data] A data object containing the ID of the geofence created.
      #
      #   @param status [String] A string indicating the state of the response. On successful responses, the valu

      # @see Nextbillionai::Models::GeofenceCreateResponse#data
      class Data < Nextbillionai::Internal::Type::BaseModel
        # @!attribute id
        #   Unique ID of the geofence created. It will be the same as `custom_id`, if
        #   provided. Else it will be an auto generated UUID. Please note this ID cannot be
        #   updated.
        #
        #   @return [String, nil]
        optional :id, String

        # @!method initialize(id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::GeofenceCreateResponse::Data} for more details.
        #
        #   A data object containing the ID of the geofence created.
        #
        #   @param id [String] Unique ID of the geofence created. It will be the same as `custom_id`, if provid
      end
    end
  end
end
