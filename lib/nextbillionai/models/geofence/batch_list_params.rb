# frozen_string_literal: true

module Nextbillionai
  module Models
    module Geofence
      # @see Nextbillionai::Resources::Geofence::Batch#list
      class BatchListParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        # @!attribute ids
        #   Comma(,) separated list of IDs of the geofences to be searched.
        #
        #   @return [String]
        required :ids, String

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!method initialize(ids:, key:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Geofence::BatchListParams} for more details.
        #
        #   @param ids [String] Comma(,) separated list of IDs of the geofences to be searched.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
