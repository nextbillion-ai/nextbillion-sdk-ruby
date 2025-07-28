# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Fleetify
      module Routes
        # @see NextbillionSDK::Resources::Fleetify::Routes::Steps#update
        class StepUpdateResponse < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [NextbillionSDK::Models::Fleetify::Routes::RouteStepsResponse, nil]
          optional :data, -> { NextbillionSDK::Fleetify::Routes::RouteStepsResponse }

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

          # @!method initialize(data: nil, message: nil, status: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Fleetify::Routes::StepUpdateResponse} for more details.
          #
          #   @param data [NextbillionSDK::Models::Fleetify::Routes::RouteStepsResponse]
          #
          #   @param message [String] Returns the error message in case of a failed request. If the request is success
          #
          #   @param status [Integer] Returns the status code of the response.
        end
      end
    end
  end
end
