# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      # @see NextbillionSDK::Resources::Skynet::NamespacedApikeys#delete
      class NamespacedApikeyDeleteResponse < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute msg
        #   Its value is `OK` in case of a successful delete operation. Indicative error
        #   messages are returned otherwise, for different errors.
        #
        #   @return [String, nil]
        optional :msg, String

        # @!attribute status
        #   A string indicating the state of the response. A successful delete operation ins
        #   indicated by an HTTP code of`200`. See the
        #   [API Error Codes](https://docs.nextbillion.ai/docs/tracking/api/live-tracking-api#api-error-codes)
        #   section below for possible values in case of errors.
        #
        #   @return [Integer, nil]
        optional :status, Integer

        # @!method initialize(msg: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Skynet::NamespacedApikeyDeleteResponse} for more
        #   details.
        #
        #   @param msg [String] Its value is `OK` in case of a successful delete operation. Indicative error mes
        #
        #   @param status [Integer] A string indicating the state of the response. A successful delete operation ins
      end
    end
  end
end
