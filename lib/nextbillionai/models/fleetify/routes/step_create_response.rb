# frozen_string_literal: true

module Nextbillionai
  module Models
    module Fleetify
      module Routes
        # @see Nextbillionai::Resources::Fleetify::Routes::Steps#create
        class StepCreateResponse < Nextbillionai::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Nextbillionai::Models::Fleetify::Routes::RouteStepsResponse, nil]
          optional :data, -> { Nextbillionai::Fleetify::Routes::RouteStepsResponse }

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
          #   {Nextbillionai::Models::Fleetify::Routes::StepCreateResponse} for more details.
          #
          #   @param data [Nextbillionai::Models::Fleetify::Routes::RouteStepsResponse]
          #
          #   @param message [String] Returns the error message in case of a failed request. If the request is success
          #
          #   @param status [Integer] Returns the status code of the response.
        end
      end
    end
  end
end
