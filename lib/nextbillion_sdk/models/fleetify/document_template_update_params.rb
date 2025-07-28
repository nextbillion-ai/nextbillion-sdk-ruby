# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Fleetify
      # @see NextbillionSDK::Resources::Fleetify::DocumentTemplates#update
      class DocumentTemplateUpdateParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute content
        #   An object to collect the details of form fields to be updated - data structures,
        #   validation rules. Please note that the details provided here will overwrite any
        #   existing document fields in the given template.
        #
        #   @return [Array<NextbillionSDK::Models::Fleetify::DocumentTemplateContentRequest>, nil]
        optional :content,
                 -> {
                   NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Fleetify::DocumentTemplateContentRequest]
                 }

        # @!attribute name
        #   Specify the document template name to be updated.
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(key:, content: nil, name: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Fleetify::DocumentTemplateUpdateParams} for more
        #   details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param content [Array<NextbillionSDK::Models::Fleetify::DocumentTemplateContentRequest>] An object to collect the details of form fields to be updated - data structures,
        #
        #   @param name [String] Specify the document template name to be updated.
        #
        #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
