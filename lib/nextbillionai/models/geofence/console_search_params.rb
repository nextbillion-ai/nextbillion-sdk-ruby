# frozen_string_literal: true

module Nextbillionai
  module Models
    module Geofence
      # @see Nextbillionai::Resources::Geofence::Console#search
      class ConsoleSearchParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        # @!attribute query
        #   string to be searched, will used to match name or id of geofence.
        #
        #   @return [String]
        required :query, String

        # @!method initialize(query:, request_options: {})
        #   @param query [String] string to be searched, will used to match name or id of geofence.
        #
        #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
