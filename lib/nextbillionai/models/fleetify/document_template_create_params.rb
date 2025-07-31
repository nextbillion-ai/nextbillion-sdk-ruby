# frozen_string_literal: true

module Nextbillionai
  module Models
    module Fleetify
      # @see Nextbillionai::Resources::Fleetify::DocumentTemplates#create
      class DocumentTemplateCreateParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

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
        #   @return [Array<Nextbillionai::Models::Fleetify::DocumentTemplateContentRequest>]
        required :content,
                 -> {
                   Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Fleetify::DocumentTemplateContentRequest]
                 }

        # @!attribute name
        #   Specify a name for the document template to be created.
        #
        #   @return [String]
        required :name, String

        # @!method initialize(key:, content:, name:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Fleetify::DocumentTemplateCreateParams} for more
        #   details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param content [Array<Nextbillionai::Models::Fleetify::DocumentTemplateContentRequest>] A form field that drivers must complete when executing a route step. Defines the
        #
        #   @param name [String] Specify a name for the document template to be created.
        #
        #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
