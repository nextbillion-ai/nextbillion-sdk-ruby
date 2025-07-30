# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Mdm#get_distance_matrix_status
    class MdmGetDistanceMatrixStatusResponse < Nextbillionai::Internal::Type::BaseModel
      # @!attribute code
      #   A code representing the status of the request.
      #
      #   @return [Symbol, Nextbillionai::Models::MdmGetDistanceMatrixStatusResponse::Code, nil]
      optional :code, enum: -> { Nextbillionai::Models::MdmGetDistanceMatrixStatusResponse::Code }

      # @!attribute output_addr
      #   Returns the GCS result of a successful task. Please note that this is an
      #   internal field.
      #
      #   _internal field, the gcs result of specific task if task is success._
      #
      #   @return [String, nil]
      optional :output_addr, String

      # @!attribute result_link
      #   Returns the link for the result file (csv format) once the task is completed
      #   successfully.
      #
      #   @return [String, nil]
      optional :result_link, String

      # @!attribute status
      #   Returns the status detail of the result. Indicative error messages/codes are
      #   returned in case of errors. See the [API Error Codes](#api-error-codes) section
      #   below for more information.
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(code: nil, output_addr: nil, result_link: nil, status: nil)
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::MdmGetDistanceMatrixStatusResponse} for more details.
      #
      #   @param code [Symbol, Nextbillionai::Models::MdmGetDistanceMatrixStatusResponse::Code] A code representing the status of the request.
      #
      #   @param output_addr [String] Returns the GCS result of a successful task. Please note that this is an interna
      #
      #   @param result_link [String] Returns the link for the result file (csv format) once the task is completed suc
      #
      #   @param status [String] Returns the status detail of the result. Indicative error messages/codes are ret

      # A code representing the status of the request.
      #
      # @see Nextbillionai::Models::MdmGetDistanceMatrixStatusResponse#code
      module Code
        extend Nextbillionai::Internal::Type::Enum

        OK = :"`Ok`"
        PROCESSING = :"`Processing`"
        FAILED = :"`Failed`"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
