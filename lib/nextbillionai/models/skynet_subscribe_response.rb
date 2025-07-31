# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Skynet#subscribe
    class SkynetSubscribeResponse < Nextbillionai::Internal::Type::BaseModel
      # @!attribute id
      #   Subscription ID as provided in the input action message.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute error
      #   Returns the error message when status: error. Otherwise, response doesn't
      #   contain this field.
      #
      #   @return [String, nil]
      optional :error, String

      # @!attribute status
      #   Status of the action. It can have only two values - "success" or "error".
      #
      #   @return [String, nil]
      optional :status, String

      # @!attribute timestamp
      #   Returns the UNIX timestamp, in milliseconds format, when the web-socket returns
      #   the action response.
      #
      #   @return [Integer, nil]
      optional :timestamp, Integer

      # @!method initialize(id: nil, error: nil, status: nil, timestamp: nil)
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::SkynetSubscribeResponse} for more details.
      #
      #   @param id [String] Subscription ID as provided in the input action message.
      #
      #   @param error [String] Returns the error message when status: error. Otherwise, response doesn't contai
      #
      #   @param status [String] Status of the action. It can have only two values - "success" or "error".
      #
      #   @param timestamp [Integer] Returns the UNIX timestamp, in milliseconds format, when the web-socket returns
    end
  end
end
