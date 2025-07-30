# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Geofence
      # @see NextbillionSDK::Resources::Geofence::Batch#list
      class BatchListParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

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
        #   {NextbillionSDK::Models::Geofence::BatchListParams} for more details.
        #
        #   @param ids [String] Comma(,) separated list of IDs of the geofences to be searched.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
