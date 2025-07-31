# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Fleetify
      # @see NextbillionSDK::Resources::Fleetify::DocumentTemplates#list
      class DocumentTemplateListResponse < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute data
        #   An array of objects returning the details of each document template associated
        #   with the specified API key. Each object represents one document template. In
        #   case there are no templates associated with the given key, a blank array is
        #   returned.
        #
        #   @return [Array<NextbillionSDK::Models::Fleetify::DocumentTemplateListResponse::Data>, nil]
        optional :data,
                 -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::Fleetify::DocumentTemplateListResponse::Data] }

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
        #   {NextbillionSDK::Models::Fleetify::DocumentTemplateListResponse} for more
        #   details.
        #
        #   @param data [Array<NextbillionSDK::Models::Fleetify::DocumentTemplateListResponse::Data>] An array of objects returning the details of each document template associated w
        #
        #   @param msg [String] Returns the error message in case of a failed request. If the request is success
        #
        #   @param status [Integer] Returns the HTTP response code.

        class Data < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute id
          #   Returns the unique ID of the document template.
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
          #   Returns the name of the document template.
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(id: nil, content: nil, name: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Fleetify::DocumentTemplateListResponse::Data} for more
          #   details.
          #
          #   An array of objects returning the details of each document template associated
          #   with the specified API key. Each object represents one document template. In
          #   case there are no templates associated with the given key, a blank array is
          #   returned.
          #
          #   @param id [String] Returns the unique ID of the document template.
          #
          #   @param content [Array<NextbillionSDK::Models::Fleetify::DocumentTemplateContentResponse>] An array of objects returning the details of data structures and validation rule
          #
          #   @param name [String] Returns the name of the document template.
        end
      end
    end
  end
end
