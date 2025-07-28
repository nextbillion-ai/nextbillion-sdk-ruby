# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Fleetify
      module Routes
        # @see NextbillionSDK::Resources::Fleetify::Routes::Steps#delete
        class StepDeleteResponse < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute message
          #   Returns the error message in case of a failed request. If the request is
          #   successful, this field is not present in the response.
          #
          #   @return [String, nil]
          optional :message, String

          # @!attribute status
          #   Returns the status code of the response.
          #
          #   @return [Integer, nil]
          optional :status, Integer

          # @!method initialize(message: nil, status: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Fleetify::Routes::StepDeleteResponse} for more details.
          #
          #   @param message [String] Returns the error message in case of a failed request. If the request is success
          #
          #   @param status [Integer] Returns the status code of the response.
        end
      end
    end
  end
end
