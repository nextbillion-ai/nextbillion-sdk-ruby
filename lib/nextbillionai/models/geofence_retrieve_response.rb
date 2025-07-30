# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Geofence#retrieve
    class GeofenceRetrieveResponse < Nextbillionai::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Nextbillionai::Models::GeofenceRetrieveResponse::Data, nil]
      optional :data, -> { Nextbillionai::Models::GeofenceRetrieveResponse::Data }

      # @!attribute status
      #   A string indicating the state of the response. On successful responses, the
      #   value will be `Ok`. Indicative error messages are returned for different errors.
      #   See the [API Error Codes](#api-error-codes) section below for more information.
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(data: nil, status: nil)
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::GeofenceRetrieveResponse} for more details.
      #
      #   @param data [Nextbillionai::Models::GeofenceRetrieveResponse::Data]
      #
      #   @param status [String] A string indicating the state of the response. On successful responses, the valu

      # @see Nextbillionai::Models::GeofenceRetrieveResponse#data
      class Data < Nextbillionai::Internal::Type::BaseModel
        # @!attribute geofence
        #   An object with details of the geofence.
        #
        #   @return [Nextbillionai::Models::GeofenceAPI, nil]
        optional :geofence, -> { Nextbillionai::GeofenceAPI }

        # @!method initialize(geofence: nil)
        #   @param geofence [Nextbillionai::Models::GeofenceAPI] An object with details of the geofence.
      end
    end
  end
end
