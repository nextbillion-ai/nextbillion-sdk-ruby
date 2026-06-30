# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      # @see Nextbillionai::Resources::Skynet::Asset#bind
      class AssetBindParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

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

        # @!method initialize(id:, key:, device_id:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Skynet::AssetBindParams} for more details.
        #
        #   @param id [String]
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param device_id [String] Device ID to be linked to the asset identified by id.
        #
        #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
