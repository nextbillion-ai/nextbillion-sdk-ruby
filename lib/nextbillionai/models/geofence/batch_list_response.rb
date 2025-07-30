# frozen_string_literal: true

module Nextbillionai
  module Models
    module Geofence
      # @see Nextbillionai::Resources::Geofence::Batch#list
      class BatchListResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Nextbillionai::Models::Geofence::BatchListResponse::Data]
        required :data, -> { Nextbillionai::Models::Geofence::BatchListResponse::Data }

        # @!attribute status
        #   A string indicating the state of the response. On successful responses, the
        #   value will be `Ok`. Indicative error messages are returned for different errors.
        #   See the [API Error Codes](#api-error-codes) section below for more information.
        #
        #   @return [String]
        required :status, String

        # @!method initialize(data:, status:)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Geofence::BatchListResponse} for more details.
        #
        #   @param data [Nextbillionai::Models::Geofence::BatchListResponse::Data]
        #
        #   @param status [String] A string indicating the state of the response. On successful responses, the valu

        # @see Nextbillionai::Models::Geofence::BatchListResponse#data
        class Data < Nextbillionai::Internal::Type::BaseModel
          # @!attribute list
          #   An array of objects containing the details of the geofences returned matching
          #   the IDs provided. Each object represents one geofence.
          #
          #   @return [Array<Nextbillionai::Models::GeofenceAPI>]
          required :list, -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::GeofenceAPI] }

          # @!method initialize(list:)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Geofence::BatchListResponse::Data} for more details.
          #
          #   @param list [Array<Nextbillionai::Models::GeofenceAPI>] An array of objects containing the details of the geofences returned matching th
        end
      end
    end
  end
end
