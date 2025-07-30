# frozen_string_literal: true

module Nextbillionai
  module Models
    module DistanceMatrix
      # @see Nextbillionai::Resources::DistanceMatrix::Json#retrieve
      class JsonRetrieveResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute msg
        #   Displays the error message in case of a failed request or operation. Please note
        #   that this parameter is not returned in the response in case of a successful
        #   request.
        #
        #   @return [String, nil]
        optional :msg, String

        # @!attribute rows
        #   Container object for a response with an array of arrays structure.
        #
        #   @return [Array<Nextbillionai::Models::DistanceMatrix::JsonRetrieveResponse::Row>, nil]
        optional :rows,
                 -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::DistanceMatrix::JsonRetrieveResponse::Row] }

        # @!attribute status
        #   A string indicating the state of the response. On normal responses, the value
        #   will be Ok. Indicative HTTP error codes are returned for different errors. See
        #   the [API Errors Codes](#api-error-codes) section below for more information.
        #
        #   @return [String, nil]
        optional :status, String

        # @!method initialize(msg: nil, rows: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::DistanceMatrix::JsonRetrieveResponse} for more details.
        #
        #   @param msg [String] Displays the error message in case of a failed request or operation. Please note
        #
        #   @param rows [Array<Nextbillionai::Models::DistanceMatrix::JsonRetrieveResponse::Row>] Container object for a response with an array of arrays structure.
        #
        #   @param status [String] A string indicating the state of the response. On normal responses, the value wi

        class Row < Nextbillionai::Internal::Type::BaseModel
          # @!attribute elements
          #   An array of objects. Each elements array corresponds to a single origins
          #   coordinate and contains objects with distance and duration values for each of
          #   the destinations. The details in the first elements array correspond to the
          #   first origins point and the first object corresponds to the first destinations
          #   point and so on.
          #
          #   @return [Array<Nextbillionai::Models::DistanceMatrix::JsonRetrieveResponse::Row::Element>, nil]
          optional :elements,
                   -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::DistanceMatrix::JsonRetrieveResponse::Row::Element] }

          # @!method initialize(elements: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::DistanceMatrix::JsonRetrieveResponse::Row} for more
          #   details.
          #
          #   @param elements [Array<Nextbillionai::Models::DistanceMatrix::JsonRetrieveResponse::Row::Element>] An array of objects. Each elements array corresponds to a single origins coordin

          class Element < Nextbillionai::Internal::Type::BaseModel
            # @!attribute distance
            #   Distance of the route from an origin to a destination, in meters.
            #
            #   @return [Float, nil]
            optional :distance, Float

            # @!attribute duration
            #   Duration of the trip from an origin to a destination, in seconds.
            #
            #   @return [Float, nil]
            optional :duration, Float

            # @!method initialize(distance: nil, duration: nil)
            #   @param distance [Float] Distance of the route from an origin to a destination, in meters.
            #
            #   @param duration [Float] Duration of the trip from an origin to a destination, in seconds.
          end
        end
      end
    end
  end
end
