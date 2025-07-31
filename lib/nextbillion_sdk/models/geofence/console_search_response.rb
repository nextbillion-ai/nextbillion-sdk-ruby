# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Geofence
      # @see NextbillionSDK::Resources::Geofence::Console#search
      class ConsoleSearchResponse < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [NextbillionSDK::Models::Geofence::ConsoleSearchResponse::Data]
        required :data, -> { NextbillionSDK::Models::Geofence::ConsoleSearchResponse::Data }

        # @!attribute status
        #   A string indicating the state of the response. On successful responses, the
        #   value will be `Ok`. Indicative error messages are returned for different errors.
        #   See the [API Error Codes](#api-error-codes) section below for more information.
        #
        #   @return [String]
        required :status, String

        # @!method initialize(data:, status:)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Geofence::ConsoleSearchResponse} for more details.
        #
        #   @param data [NextbillionSDK::Models::Geofence::ConsoleSearchResponse::Data]
        #
        #   @param status [String] A string indicating the state of the response. On successful responses, the valu

        # @see NextbillionSDK::Models::Geofence::ConsoleSearchResponse#data
        class Data < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute result
          #
          #   @return [Array<NextbillionSDK::Models::Geofence::ConsoleSearchResponse::Data::Result>]
          required :result,
                   -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::Geofence::ConsoleSearchResponse::Data::Result] }

          # @!method initialize(result:)
          #   @param result [Array<NextbillionSDK::Models::Geofence::ConsoleSearchResponse::Data::Result>]

          class Result < NextbillionSDK::Internal::Type::BaseModel
            # @!attribute id
            #   ID of goefence. Could be empty string.
            #
            #   @return [String]
            required :id, String

            # @!attribute name
            #   Name of goefence. Could be empty string.
            #
            #   @return [String]
            required :name, String

            # @!method initialize(id:, name:)
            #   @param id [String] ID of goefence. Could be empty string.
            #
            #   @param name [String] Name of goefence. Could be empty string.
          end
        end
      end
    end
  end
end
