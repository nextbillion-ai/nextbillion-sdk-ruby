# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Optimization
      # @see NextbillionSDK::Resources::Optimization::V2#retrieve_result
      class V2RetrieveResultParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        # @!attribute id
        #   The unique ID that was returned on successful submission of the Optimization
        #   POST request.
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
        #   {NextbillionSDK::Models::Optimization::V2RetrieveResultParams} for more details.
        #
        #   @param id [String] The unique ID that was returned on successful submission of the Optimization POS
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
