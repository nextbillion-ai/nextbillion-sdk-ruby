# typed: strong

module NextbillionSDK
  module Models
    class MdmGetDistanceMatrixStatusResponse < NextbillionSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::Models::MdmGetDistanceMatrixStatusResponse,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # A code representing the status of the request.
      sig do
        returns(
          T.nilable(
            NextbillionSDK::Models::MdmGetDistanceMatrixStatusResponse::Code::TaggedSymbol
          )
        )
      end
      attr_reader :code

      sig do
        params(
          code:
            NextbillionSDK::Models::MdmGetDistanceMatrixStatusResponse::Code::OrSymbol
        ).void
      end
      attr_writer :code

      # Returns the GCS result of a successful task. Please note that this is an
      # internal field.
      #
      # _internal field, the gcs result of specific task if task is success._
      sig { returns(T.nilable(String)) }
      attr_reader :output_addr

      sig { params(output_addr: String).void }
      attr_writer :output_addr

      # Returns the link for the result file (csv format) once the task is completed
      # successfully.
      sig { returns(T.nilable(String)) }
      attr_reader :result_link

      sig { params(result_link: String).void }
      attr_writer :result_link

      # Returns the status detail of the result. Indicative error messages/codes are
      # returned in case of errors. See the [API Error Codes](#api-error-codes) section
      # below for more information.
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      sig do
        params(
          code:
            NextbillionSDK::Models::MdmGetDistanceMatrixStatusResponse::Code::OrSymbol,
          output_addr: String,
          result_link: String,
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A code representing the status of the request.
        code: nil,
        # Returns the GCS result of a successful task. Please note that this is an
        # internal field.
        #
        # _internal field, the gcs result of specific task if task is success._
        output_addr: nil,
        # Returns the link for the result file (csv format) once the task is completed
        # successfully.
        result_link: nil,
        # Returns the status detail of the result. Indicative error messages/codes are
        # returned in case of errors. See the [API Error Codes](#api-error-codes) section
        # below for more information.
        status: nil
      )
      end

      sig do
        override.returns(
          {
            code:
              NextbillionSDK::Models::MdmGetDistanceMatrixStatusResponse::Code::TaggedSymbol,
            output_addr: String,
            result_link: String,
            status: String
          }
        )
      end
      def to_hash
      end

      # A code representing the status of the request.
      module Code
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              NextbillionSDK::Models::MdmGetDistanceMatrixStatusResponse::Code
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OK =
          T.let(
            :"`Ok`",
            NextbillionSDK::Models::MdmGetDistanceMatrixStatusResponse::Code::TaggedSymbol
          )
        PROCESSING =
          T.let(
            :"`Processing`",
            NextbillionSDK::Models::MdmGetDistanceMatrixStatusResponse::Code::TaggedSymbol
          )
        FAILED =
          T.let(
            :"`Failed`",
            NextbillionSDK::Models::MdmGetDistanceMatrixStatusResponse::Code::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::Models::MdmGetDistanceMatrixStatusResponse::Code::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
