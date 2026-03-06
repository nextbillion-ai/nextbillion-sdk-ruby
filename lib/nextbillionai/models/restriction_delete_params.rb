# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Restrictions#delete
    class RestrictionDeleteParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [Integer]
      required :id, Integer

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!method initialize(id:, key:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::RestrictionDeleteParams} for more details.
      #
      #   @param id [Integer]
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
