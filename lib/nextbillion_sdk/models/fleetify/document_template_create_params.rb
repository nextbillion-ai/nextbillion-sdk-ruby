# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Fleetify
      # @see NextbillionSDK::Resources::Fleetify::DocumentTemplates#create
      class DocumentTemplateCreateParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute content
        #   A form field that drivers must complete when executing a route step. Defines the
        #   data structure and validation rules for collecting required information during
        #   route execution.
        #
        #   @return [Array<NextbillionSDK::Models::Fleetify::DocumentTemplateContentRequest>]
        required :content,
                 -> {
                   NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Fleetify::DocumentTemplateContentRequest]
                 }

        # @!attribute name
        #   Specify a name for the document template to be created.
        #
        #   @return [String]
        required :name, String

        # @!method initialize(key:, content:, name:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Fleetify::DocumentTemplateCreateParams} for more
        #   details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param content [Array<NextbillionSDK::Models::Fleetify::DocumentTemplateContentRequest>] A form field that drivers must complete when executing a route step. Defines the
        #
        #   @param name [String] Specify a name for the document template to be created.
        #
        #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
