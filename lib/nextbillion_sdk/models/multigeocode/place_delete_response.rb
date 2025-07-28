# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Multigeocode
      # @see NextbillionSDK::Resources::Multigeocode::Place#delete
      class PlaceDeleteResponse < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute msg
        #   This could be “Ok” representing success or “not found” representing error in
        #   processing the request.
        #
        #   @return [String, nil]
        optional :msg, String

        # @!attribute status
        #   Represents the status of the response.
        #
        #   @return [String, nil]
        optional :status, String

        # @!method initialize(msg: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Multigeocode::PlaceDeleteResponse} for more details.
        #
        #   @param msg [String] This could be “Ok” representing success or “not found” representing error in pro
        #
        #   @param status [String] Represents the status of the response.
      end
    end
  end
end
