# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::Restrictions#retrieve
    class RestrictionRetrieveParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

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
      optional :transform, NextbillionSDK::Internal::Type::Boolean

      # @!method initialize(key:, transform: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::RestrictionRetrieveParams} for more details.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param transform [Boolean] a internal parameter
      #
      #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
