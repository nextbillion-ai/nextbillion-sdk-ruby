# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      # @see Nextbillionai::Resources::Skynet::Asset#retrieve
      class AssetRetrieveResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute data
        #   An object containing the information about the asset returned.
        #
        #   @return [Nextbillionai::Models::Skynet::AssetRetrieveResponse::Data, nil]
        optional :data, -> { Nextbillionai::Models::Skynet::AssetRetrieveResponse::Data }

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
        #   {Nextbillionai::Models::Skynet::AssetRetrieveResponse} for more details.
        #
        #   @param data [Nextbillionai::Models::Skynet::AssetRetrieveResponse::Data] An object containing the information about the asset returned.
        #
        #   @param message [String] Displays the error message in case of a failed request. If the request is succes
        #
        #   @param status [String] A string indicating the state of the response. On successful responses, the valu

        # @see Nextbillionai::Models::Skynet::AssetRetrieveResponse#data
        class Data < Nextbillionai::Internal::Type::BaseModel
          # @!attribute asset
          #   An object with details of the asset properties.
          #
          #   @return [Nextbillionai::Models::Skynet::AssetDetails, nil]
          optional :asset, -> { Nextbillionai::Skynet::AssetDetails }

          # @!method initialize(asset: nil)
          #   An object containing the information about the asset returned.
          #
          #   @param asset [Nextbillionai::Models::Skynet::AssetDetails] An object with details of the asset properties.
        end
      end
    end
  end
end
