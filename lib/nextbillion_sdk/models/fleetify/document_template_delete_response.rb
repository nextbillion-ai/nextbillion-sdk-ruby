# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Fleetify
      # @see NextbillionSDK::Resources::Fleetify::DocumentTemplates#delete
      class DocumentTemplateDeleteResponse < NextbillionSDK::Internal::Type::BaseModel
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

        # @!method initialize(msg: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Fleetify::DocumentTemplateDeleteResponse} for more
        #   details.
        #
        #   @param msg [String] Returns the error message in case of a failed request. If the request is success
        #
        #   @param status [Integer] Returns the HTTP response code.
      end
    end
  end
end
