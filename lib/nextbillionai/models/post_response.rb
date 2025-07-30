# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Optimization#re_optimize
    class PostResponse < Nextbillionai::Internal::Type::BaseModel
      # @!attribute id
      #   A unique ID which can be used in the Optimization GET method to retrieve the
      #   result of optimization.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute message
      #   Displays an acknowledgement message once the job is submitted.
      #
      #   @return [String, nil]
      optional :message, String

      # @!attribute status
      #   A string indicating the state of the response. On successful responses, the
      #   value will be Ok. Indicative error messages/codes are returned in case of
      #   errors. See the [API Error Codes](#api-error-codes) section below for more
      #   information.
      #
      #   @return [String, nil]
      optional :status, String

      # @!attribute warnings
      #   Display the warnings for the given input parameters, values and constraints.
      #
      #   @return [Array<String>, nil]
      optional :warnings, Nextbillionai::Internal::Type::ArrayOf[String]

      # @!method initialize(id: nil, message: nil, status: nil, warnings: nil)
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::PostResponse} for more details.
      #
      #   @param id [String] A unique ID which can be used in the Optimization GET method to retrieve the res
      #
      #   @param message [String] Displays an acknowledgement message once the job is submitted.
      #
      #   @param status [String] A string indicating the state of the response. On successful responses, the valu
      #
      #   @param warnings [Array<String>] Display the warnings for the given input parameters, values and constraints.
    end
  end
end
