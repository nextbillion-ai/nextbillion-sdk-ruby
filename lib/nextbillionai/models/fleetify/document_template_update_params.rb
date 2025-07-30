# frozen_string_literal: true

module Nextbillionai
  module Models
    module Fleetify
      # @see Nextbillionai::Resources::Fleetify::DocumentTemplates#update
      class DocumentTemplateUpdateParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

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
        #   @return [Array<Nextbillionai::Models::Fleetify::DocumentTemplateContentRequest>, nil]
        optional :content,
                 -> {
                   Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Fleetify::DocumentTemplateContentRequest]
                 }

        # @!attribute name
        #   Specify the document template name to be updated.
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(key:, content: nil, name: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Fleetify::DocumentTemplateUpdateParams} for more
        #   details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param content [Array<Nextbillionai::Models::Fleetify::DocumentTemplateContentRequest>] An object to collect the details of form fields to be updated - data structures,
        #
        #   @param name [String] Specify the document template name to be updated.
        #
        #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
