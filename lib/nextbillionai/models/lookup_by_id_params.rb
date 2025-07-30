# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Lookup#by_id
    class LookupByIDParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      # @!attribute id
      #   Specify the unique identifier of a specific POI, Street, Geography, Point
      #   Address or other entities to retrieve its details.
      #
      #   @return [String]
      required :id, String

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!method initialize(id:, key:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::LookupByIDParams} for more details.
      #
      #   @param id [String] Specify the unique identifier of a specific POI, Street, Geography, Point Addres
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
