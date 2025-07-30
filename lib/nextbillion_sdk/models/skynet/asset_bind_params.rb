# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      # @see NextbillionSDK::Resources::Skynet::Asset#bind
      class AssetBindParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute device_id
        #   Device ID to be linked to the asset identified by id.
        #
        #   Please note that the device needs to be linked to an asset before using it in
        #   the _Upload locations of an Asset_ method for sending GPS information about the
        #   asset.
        #
        #   @return [String]
        required :device_id, String

        # @!method initialize(key:, device_id:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Skynet::AssetBindParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param device_id [String] Device ID to be linked to the asset identified by id.
        #
        #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
