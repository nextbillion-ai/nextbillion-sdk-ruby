# frozen_string_literal: true

module Nextbillionai
  module Models
    module Fleetify
      # @see Nextbillionai::Resources::Fleetify::DocumentTemplates#update
      class DocumentTemplateUpdateResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute data
        #   An object returning the details of the updated document template.
        #
        #   @return [Nextbillionai::Models::Fleetify::DocumentTemplateUpdateResponse::Data, nil]
        optional :data, -> { Nextbillionai::Models::Fleetify::DocumentTemplateUpdateResponse::Data }

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
        #   {Nextbillionai::Models::Fleetify::DocumentTemplateUpdateResponse} for more
        #   details.
        #
        #   @param data [Nextbillionai::Models::Fleetify::DocumentTemplateUpdateResponse::Data] An object returning the details of the updated document template.
        #
        #   @param msg [String] Returns the error message in case of a failed request. If the request is success
        #
        #   @param status [Integer] Returns the HTTP response code.

        # @see Nextbillionai::Models::Fleetify::DocumentTemplateUpdateResponse#data
        class Data < Nextbillionai::Internal::Type::BaseModel
          # @!attribute id
          #   Returns the unique ID of the document template.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute content
          #   An array of object returning the details of updated data structures and
          #   validation rules for document fields. Each object represents one document field.
          #
          #   @return [Array<Nextbillionai::Models::Fleetify::DocumentTemplateContentResponse>, nil]
          optional :content,
                   -> {
                     Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Fleetify::DocumentTemplateContentResponse]
                   }

          # @!attribute name
          #   Returns the updated name of the document template.
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(id: nil, content: nil, name: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Fleetify::DocumentTemplateUpdateResponse::Data} for more
          #   details.
          #
          #   An object returning the details of the updated document template.
          #
          #   @param id [String] Returns the unique ID of the document template.
          #
          #   @param content [Array<Nextbillionai::Models::Fleetify::DocumentTemplateContentResponse>] An array of object returning the details of updated data structures and validati
          #
          #   @param name [String] Returns the updated name of the document template.
        end
      end
    end
  end
end
