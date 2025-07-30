# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      # @see NextbillionSDK::Resources::Skynet::Asset#list
      class AssetListResponse < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute data
        #   A data object containing the list of assets.
        #
        #   @return [NextbillionSDK::Models::Skynet::AssetListResponse::Data, nil]
        optional :data, -> { NextbillionSDK::Models::Skynet::AssetListResponse::Data }

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
        #   {NextbillionSDK::Models::Skynet::AssetListResponse} for more details.
        #
        #   @param data [NextbillionSDK::Models::Skynet::AssetListResponse::Data] A data object containing the list of assets.
        #
        #   @param message [String] Displays the error message in case of a failed request. If the request is succes
        #
        #   @param status [String] A string indicating the state of the response. On successful responses, the valu

        # @see NextbillionSDK::Models::Skynet::AssetListResponse#data
        class Data < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute list
          #   An array of objects, with each object representing one asset.
          #
          #   @return [Array<NextbillionSDK::Models::Skynet::AssetDetails>, nil]
          optional :list, -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Skynet::AssetDetails] }

          # @!attribute page
          #   An object with pagination details of the search results. Use this object to
          #   implement pagination in your application.
          #
          #   @return [NextbillionSDK::Models::Skynet::Pagination, nil]
          optional :page, -> { NextbillionSDK::Skynet::Pagination }

          # @!method initialize(list: nil, page: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Skynet::AssetListResponse::Data} for more details.
          #
          #   A data object containing the list of assets.
          #
          #   @param list [Array<NextbillionSDK::Models::Skynet::AssetDetails>] An array of objects, with each object representing one asset.
          #
          #   @param page [NextbillionSDK::Models::Skynet::Pagination] An object with pagination details of the search results. Use this object to impl
        end
      end
    end
  end
end
