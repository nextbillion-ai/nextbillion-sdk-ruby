# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Batch#retrieve
    class BatchRetrieveResponse < Nextbillionai::Internal::Type::BaseModel
      # @!attribute msg
      #   Displays the error message in case of a failed request or operation. Please note
      #   that this parameter is not returned in the response in case of a successful
      #   request.
      #
      #   @return [String, nil]
      optional :msg, String

      # @!attribute responses
      #   An array of objects returning the results of all the individual routing queries
      #   specified in the input. Each object represents the solution to an individual
      #   query in the input.
      #
      #   @return [Array<Nextbillionai::Models::BatchRetrieveResponse::Response>, nil]
      optional :responses,
               -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::BatchRetrieveResponse::Response] }

      # @!attribute status
      #   Returns the overall status of the API request. Its value will always be one of
      #   `success`, `failed`, and `pending`.
      #
      #   @return [String, nil]
      optional :status, String

      # @!attribute track_id
      #   Returns the unique ID of the batch processing task.
      #
      #   @return [String, nil]
      optional :track_id, String

      # @!method initialize(msg: nil, responses: nil, status: nil, track_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::BatchRetrieveResponse} for more details.
      #
      #   @param msg [String] Displays the error message in case of a failed request or operation. Please note
      #
      #   @param responses [Array<Nextbillionai::Models::BatchRetrieveResponse::Response>] An array of objects returning the results of all the individual routing queries
      #
      #   @param status [String] Returns the overall status of the API request. Its value will always be one of `
      #
      #   @param track_id [String] Returns the unique ID of the batch processing task.

      class Response < Nextbillionai::Internal::Type::BaseModel
        # @!attribute response
        #   An object returning the routing solution of an individual query. The JSON format
        #   and structure of the `response` would vary depending on the routing endpoint
        #   used in each individual query. However, it will be consistent with standard
        #   response for a given routing endpoint.
        #
        #   @return [Object, nil]
        optional :response, Nextbillionai::Internal::Type::Unknown

        # @!attribute status_code
        #   Returns the HTTP status code for the individual routing request. See the
        #   [API Errors Codes](#api-error-codes) section below for more information.
        #
        #   @return [Integer, nil]
        optional :status_code, Integer

        # @!method initialize(response: nil, status_code: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::BatchRetrieveResponse::Response} for more details.
        #
        #   @param response [Object] An object returning the routing solution of an individual query. The JSON format
        #
        #   @param status_code [Integer] Returns the HTTP status code for the individual routing request. See the [API Er
      end
    end
  end
end
