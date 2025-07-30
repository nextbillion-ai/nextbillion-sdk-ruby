# frozen_string_literal: true

module Nextbillionai
  module Models
    module Geofence
      # @see Nextbillionai::Resources::Geofence::Batch#delete
      class BatchDeleteParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute ids
        #   An array IDs of the geofence to be deleted. These are the IDs that were
        #   generated/provided at the time of creating the respective geofences.
        #
        #   @return [Array<String>, nil]
        optional :ids, Nextbillionai::Internal::Type::ArrayOf[String]

        # @!method initialize(key:, ids: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Geofence::BatchDeleteParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param ids [Array<String>] An array IDs of the geofence to be deleted. These are the IDs that were generate
        #
        #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
