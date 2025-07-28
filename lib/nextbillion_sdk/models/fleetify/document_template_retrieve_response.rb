# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Fleetify
      # @see NextbillionSDK::Resources::Fleetify::DocumentTemplates#retrieve
      class DocumentTemplateRetrieveResponse < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute data
        #   An object returning the details of the requested document template.
        #
        #   @return [NextbillionSDK::Models::Fleetify::DocumentTemplateRetrieveResponse::Data, nil]
        optional :data, -> { NextbillionSDK::Models::Fleetify::DocumentTemplateRetrieveResponse::Data }

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
        #   {NextbillionSDK::Models::Fleetify::DocumentTemplateRetrieveResponse} for more
        #   details.
        #
        #   @param data [NextbillionSDK::Models::Fleetify::DocumentTemplateRetrieveResponse::Data] An object returning the details of the requested document template.
        #
        #   @param msg [String] Returns the error message in case of a failed request. If the request is success
        #
        #   @param status [Integer] Returns the HTTP response code.

        # @see NextbillionSDK::Models::Fleetify::DocumentTemplateRetrieveResponse#data
        class Data < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Returns the unique identifier of the document template.
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
          #   Returns the name of the document template as specified at the time of creating
          #   the template.
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(id: nil, content: nil, name: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Fleetify::DocumentTemplateRetrieveResponse::Data} for
          #   more details.
          #
          #   An object returning the details of the requested document template.
          #
          #   @param id [String] Returns the unique identifier of the document template.
          #
          #   @param content [Array<NextbillionSDK::Models::Fleetify::DocumentTemplateContentResponse>] An array of objects returning the details of data structures and validation rule
          #
          #   @param name [String] Returns the name of the document template as specified at the time of creating t
        end
      end
    end
  end
end
