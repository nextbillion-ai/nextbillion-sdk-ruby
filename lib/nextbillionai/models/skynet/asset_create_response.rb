# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      # @see Nextbillionai::Resources::Skynet::Asset#create
      class AssetCreateResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute data
        #   An object containing the ID of the asset created.
        #
        #   @return [Nextbillionai::Models::Skynet::AssetCreateResponse::Data, nil]
        optional :data, -> { Nextbillionai::Models::Skynet::AssetCreateResponse::Data }

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
        #   {Nextbillionai::Models::Skynet::AssetCreateResponse} for more details.
        #
        #   @param data [Nextbillionai::Models::Skynet::AssetCreateResponse::Data] An object containing the ID of the asset created.
        #
        #   @param message [String] Displays the error message in case of a failed request. If the request is succes
        #
        #   @param status [String] A string indicating the state of the response. On successful responses, the valu

        # @see Nextbillionai::Models::Skynet::AssetCreateResponse#data
        class Data < Nextbillionai::Internal::Type::BaseModel
          # @!attribute id
          #   Unique ID of the asset created. It will be the same as custom_id, if provided.
          #   Else it will be an auto generated UUID. Please note this ID cannot be updated.
          #
          #   @return [String, nil]
          optional :id, String

          # @!method initialize(id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Skynet::AssetCreateResponse::Data} for more details.
          #
          #   An object containing the ID of the asset created.
          #
          #   @param id [String] Unique ID of the asset created. It will be the same as custom_id, if provided. E
        end
      end
    end
  end
end
