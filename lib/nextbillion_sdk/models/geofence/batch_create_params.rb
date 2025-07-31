# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Geofence
      # @see NextbillionSDK::Resources::Geofence::Batch#create
      class BatchCreateParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute geofences
        #   An array of objects to collect the details of the multiple geofences that need
        #   to be created.
        #
        #   @return [Array<NextbillionSDK::Models::GeofenceEntityCreate>, nil]
        optional :geofences,
                 -> {
                   NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::GeofenceEntityCreate]
                 }

        # @!method initialize(key:, geofences: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Geofence::BatchCreateParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param geofences [Array<NextbillionSDK::Models::GeofenceEntityCreate>] An array of objects to collect the details of the multiple geofences that need t
        #
        #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
