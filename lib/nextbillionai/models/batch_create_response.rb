# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Batch#create
    class BatchCreateResponse < Nextbillionai::Internal::Type::BaseModel
      # @!attribute msg
      #   Displays the error message in case of a failed request or operation. Please note
      #   that this parameter is not returned in the response in case of a successful
      #   request.
      #
      #   @return [String, nil]
      optional :msg, String

      # @!attribute status
      #   Returns the overall status of the API request. Its value will belong to one of
      #   success, failed, and pending. It can also contain HTTP error codes in case of a
      #   failed request or operation.
      #
      #   @return [String, nil]
      optional :status, String

      # @!attribute track_id
      #   Returns the unique ID of the batch processing task. Use this ID using the GET
      #   request to retrieve the solution once the task processing is completed.
      #
      #   @return [String, nil]
      optional :track_id, String

      # @!method initialize(msg: nil, status: nil, track_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::BatchCreateResponse} for more details.
      #
      #   @param msg [String] Displays the error message in case of a failed request or operation. Please note
      #
      #   @param status [String] Returns the overall status of the API request. Its value will belong to one of s
      #
      #   @param track_id [String] Returns the unique ID of the batch processing task. Use this ID using the GET re
    end
  end
end
