# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Restrictions#retrieve
    class RestrictionRetrieveParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute transform
      #   a internal parameter
      #
      #   @return [Boolean, nil]
      optional :transform, Nextbillionai::Internal::Type::Boolean

      # @!method initialize(key:, transform: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::RestrictionRetrieveParams} for more details.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param transform [Boolean] a internal parameter
      #
      #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
