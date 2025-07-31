# frozen_string_literal: true

module Nextbillionai
  module Models
    module Geofence
      # @see Nextbillionai::Resources::Geofence::Batch#create
      class BatchCreateParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

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
        #   @return [Array<Nextbillionai::Models::GeofenceEntityCreate>, nil]
        optional :geofences,
                 -> {
                   Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::GeofenceEntityCreate]
                 }

        # @!method initialize(key:, geofences: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Geofence::BatchCreateParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param geofences [Array<Nextbillionai::Models::GeofenceEntityCreate>] An array of objects to collect the details of the multiple geofences that need t
        #
        #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
