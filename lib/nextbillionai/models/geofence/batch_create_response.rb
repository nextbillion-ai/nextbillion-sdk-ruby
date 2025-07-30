# frozen_string_literal: true

module Nextbillionai
  module Models
    module Geofence
      # @see Nextbillionai::Resources::Geofence::Batch#create
      class BatchCreateResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute data
        #   A data object containing the IDs of the geofences created.
        #
        #   @return [Nextbillionai::Models::Geofence::BatchCreateResponse::Data, nil]
        optional :data, -> { Nextbillionai::Models::Geofence::BatchCreateResponse::Data }

        # @!attribute status
        #   A string indicating the state of the response. On successful responses, the
        #   value will be `Ok`. Indicative error messages are returned for different errors.
        #   See the [API Error Codes](#api-error-codes) section below for more information.
        #
        #   @return [String, nil]
        optional :status, String

        # @!method initialize(data: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Geofence::BatchCreateResponse} for more details.
        #
        #   @param data [Nextbillionai::Models::Geofence::BatchCreateResponse::Data] A data object containing the IDs of the geofences created.
        #
        #   @param status [String] A string indicating the state of the response. On successful responses, the valu

        # @see Nextbillionai::Models::Geofence::BatchCreateResponse#data
        class Data < Nextbillionai::Internal::Type::BaseModel
          # @!attribute ids
          #
          #   @return [Array<String>, nil]
          optional :ids, Nextbillionai::Internal::Type::ArrayOf[String]

          # @!method initialize(ids: nil)
          #   A data object containing the IDs of the geofences created.
          #
          #   @param ids [Array<String>]
        end
      end
    end
  end
end
