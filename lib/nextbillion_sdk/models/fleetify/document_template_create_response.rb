# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Fleetify
      # @see NextbillionSDK::Resources::Fleetify::DocumentTemplates#create
      class DocumentTemplateCreateResponse < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute data
        #   An object returning the details of the document template created.
        #
        #   @return [NextbillionSDK::Models::Fleetify::DocumentTemplateCreateResponse::Data, nil]
        optional :data, -> { NextbillionSDK::Models::Fleetify::DocumentTemplateCreateResponse::Data }

        # @!attribute msg
        #   Returns the error message in case of a failed request. If the request is
        #   successful, this field is not present in the response.
        #
        #   @return [String, nil]
        optional :msg, String

        # @!attribute status
        #   Returns the HTTP response code.
        #
        #   @return [Integer, nil]
        optional :status, Integer

        # @!method initialize(data: nil, msg: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Fleetify::DocumentTemplateCreateResponse} for more
        #   details.
        #
        #   @param data [NextbillionSDK::Models::Fleetify::DocumentTemplateCreateResponse::Data] An object returning the details of the document template created.
        #
        #   @param msg [String] Returns the error message in case of a failed request. If the request is success
        #
        #   @param status [Integer] Returns the HTTP response code.

        # @see NextbillionSDK::Models::Fleetify::DocumentTemplateCreateResponse#data
        class Data < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Returns the unique ID of the document template created.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute content
          #   An array of objects returning the details of data structures and validation
          #   rules and other properties of all document fields. Each object represents one
          #   document field.
          #
          #   @return [Array<NextbillionSDK::Models::Fleetify::DocumentTemplateContentResponse>, nil]
          optional :content,
                   -> {
                     NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Fleetify::DocumentTemplateContentResponse]
                   }

          # @!attribute name
          #   Returns the name of the document template as specified in the input.
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(id: nil, content: nil, name: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Fleetify::DocumentTemplateCreateResponse::Data} for
          #   more details.
          #
          #   An object returning the details of the document template created.
          #
          #   @param id [String] Returns the unique ID of the document template created.
          #
          #   @param content [Array<NextbillionSDK::Models::Fleetify::DocumentTemplateContentResponse>] An array of objects returning the details of data structures and validation rule
          #
          #   @param name [String] Returns the name of the document template as specified in the input.
        end
      end
    end
  end
end
