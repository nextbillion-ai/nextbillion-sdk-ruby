# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Mdm#create_distance_matrix
    class MdmCreateDistanceMatrixResponse < Nextbillionai::Internal::Type::BaseModel
      # @!attribute code
      #   A string indicating the state of the response. On successful responses, the
      #   value will be `Ok`. Indicative error messages/codes are returned in case of
      #   errors. See the [API Error Codes](#api-error-codes) section below for more
      #   information.
      #
      #   @return [String, nil]
      optional :code, String

      # @!attribute message
      #   Returns the error message in case a request fails. This field will not be
      #   present in the response, if a request is successfully submitted.
      #
      #   @return [String, nil]
      optional :message, String

      # @!attribute task_id
      #   A unique ID which can be used in the Asynchronous Distance Matrix GET method to
      #   retrieve the final result.
      #
      #   @return [String, nil]
      optional :task_id, String

      # @!attribute warning
      #   Display the warnings, if any, for the given input parameters and values. In case
      #   there are no warnings then this field would not be present in the response.
      #
      #   @return [Array<String>, nil]
      optional :warning, Nextbillionai::Internal::Type::ArrayOf[String]

      # @!method initialize(code: nil, message: nil, task_id: nil, warning: nil)
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::MdmCreateDistanceMatrixResponse} for more details.
      #
      #   @param code [String] A string indicating the state of the response. On successful responses, the valu
      #
      #   @param message [String] Returns the error message in case a request fails. This field will not be presen
      #
      #   @param task_id [String] A unique ID which can be used in the Asynchronous Distance Matrix GET method to
      #
      #   @param warning [Array<String>] Display the warnings, if any, for the given input parameters and values. In case
    end
  end
end
