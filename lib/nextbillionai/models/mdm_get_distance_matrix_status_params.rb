# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Mdm#get_distance_matrix_status
    class MdmGetDistanceMatrixStatusParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      # @!attribute id
      #   Provide the unique ID that was returned on successful submission of the
      #   Asynchronous Distance Matrix POST request.
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
      #   {Nextbillionai::Models::MdmGetDistanceMatrixStatusParams} for more details.
      #
      #   @param id [String] Provide the unique ID that was returned on successful submission of the Asynchro
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
