# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Geofence
      # @see NextbillionSDK::Resources::Geofence::Console#search
      class ConsoleSearchParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        # @!attribute query
        #   string to be searched, will used to match name or id of geofence.
        #
        #   @return [String]
        required :query, String

        # @!method initialize(query:, request_options: {})
        #   @param query [String] string to be searched, will used to match name or id of geofence.
        #
        #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
