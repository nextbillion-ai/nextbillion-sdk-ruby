# frozen_string_literal: true

module Nextbillionai
  module Models
    module Geofence
      # @see Nextbillionai::Resources::Geofence::Console#search
      class ConsoleSearchResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Nextbillionai::Models::Geofence::ConsoleSearchResponse::Data]
        required :data, -> { Nextbillionai::Models::Geofence::ConsoleSearchResponse::Data }

        # @!attribute status
        #   A string indicating the state of the response. On successful responses, the
        #   value will be `Ok`. Indicative error messages are returned for different errors.
        #   See the [API Error Codes](#api-error-codes) section below for more information.
        #
        #   @return [String]
        required :status, String

        # @!method initialize(data:, status:)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Geofence::ConsoleSearchResponse} for more details.
        #
        #   @param data [Nextbillionai::Models::Geofence::ConsoleSearchResponse::Data]
        #
        #   @param status [String] A string indicating the state of the response. On successful responses, the valu

        # @see Nextbillionai::Models::Geofence::ConsoleSearchResponse#data
        class Data < Nextbillionai::Internal::Type::BaseModel
          # @!attribute result
          #
          #   @return [Array<Nextbillionai::Models::Geofence::ConsoleSearchResponse::Data::Result>]
          required :result,
                   -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::Geofence::ConsoleSearchResponse::Data::Result] }

          # @!method initialize(result:)
          #   @param result [Array<Nextbillionai::Models::Geofence::ConsoleSearchResponse::Data::Result>]

          class Result < Nextbillionai::Internal::Type::BaseModel
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
