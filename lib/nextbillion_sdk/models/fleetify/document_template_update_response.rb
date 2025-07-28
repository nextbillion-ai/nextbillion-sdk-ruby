# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Fleetify
      # @see NextbillionSDK::Resources::Fleetify::DocumentTemplates#update
      class DocumentTemplateUpdateResponse < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute data
        #   An object returning the details of the updated document template.
        #
        #   @return [NextbillionSDK::Models::Fleetify::DocumentTemplateUpdateResponse::Data, nil]
        optional :data, -> { NextbillionSDK::Models::Fleetify::DocumentTemplateUpdateResponse::Data }

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
        #   {NextbillionSDK::Models::Fleetify::DocumentTemplateUpdateResponse} for more
        #   details.
        #
        #   @param data [NextbillionSDK::Models::Fleetify::DocumentTemplateUpdateResponse::Data] An object returning the details of the updated document template.
        #
        #   @param msg [String] Returns the error message in case of a failed request. If the request is success
        #
        #   @param status [Integer] Returns the HTTP response code.

        # @see NextbillionSDK::Models::Fleetify::DocumentTemplateUpdateResponse#data
        class Data < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Returns the unique ID of the document template.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute content
          #   An array of object returning the details of updated data structures and
          #   validation rules for document fields. Each object represents one document field.
          #
          #   @return [Array<NextbillionSDK::Models::Fleetify::DocumentTemplateContentResponse>, nil]
          optional :content,
                   -> {
                     NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Fleetify::DocumentTemplateContentResponse]
                   }

          # @!attribute name
          #   Returns the updated name of the document template.
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(id: nil, content: nil, name: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Fleetify::DocumentTemplateUpdateResponse::Data} for
          #   more details.
          #
          #   An object returning the details of the updated document template.
          #
          #   @param id [String] Returns the unique ID of the document template.
          #
          #   @param content [Array<NextbillionSDK::Models::Fleetify::DocumentTemplateContentResponse>] An array of object returning the details of updated data structures and validati
          #
          #   @param name [String] Returns the updated name of the document template.
        end
      end
    end
  end
end
