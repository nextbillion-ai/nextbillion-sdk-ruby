# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      # @see Nextbillionai::Resources::Skynet::Asset#list
      class AssetListResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute data
        #   A data object containing the list of assets.
        #
        #   @return [Nextbillionai::Models::Skynet::AssetListResponse::Data, nil]
        optional :data, -> { Nextbillionai::Models::Skynet::AssetListResponse::Data }

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
        #   {Nextbillionai::Models::Skynet::AssetListResponse} for more details.
        #
        #   @param data [Nextbillionai::Models::Skynet::AssetListResponse::Data] A data object containing the list of assets.
        #
        #   @param message [String] Displays the error message in case of a failed request. If the request is succes
        #
        #   @param status [String] A string indicating the state of the response. On successful responses, the valu

        # @see Nextbillionai::Models::Skynet::AssetListResponse#data
        class Data < Nextbillionai::Internal::Type::BaseModel
          # @!attribute list
          #   An array of objects, with each object representing one asset.
          #
          #   @return [Array<Nextbillionai::Models::Skynet::AssetDetails>, nil]
          optional :list, -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Skynet::AssetDetails] }

          # @!attribute page
          #   An object with pagination details of the search results. Use this object to
          #   implement pagination in your application.
          #
          #   @return [Nextbillionai::Models::Skynet::Pagination, nil]
          optional :page, -> { Nextbillionai::Skynet::Pagination }

          # @!method initialize(list: nil, page: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Skynet::AssetListResponse::Data} for more details.
          #
          #   A data object containing the list of assets.
          #
          #   @param list [Array<Nextbillionai::Models::Skynet::AssetDetails>] An array of objects, with each object representing one asset.
          #
          #   @param page [Nextbillionai::Models::Skynet::Pagination] An object with pagination details of the search results. Use this object to impl
        end
      end
    end
  end
end
