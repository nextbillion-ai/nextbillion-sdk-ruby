# typed: strong

module NextbillionSDK
  module Models
    class MdmCreateDistanceMatrixResponse < NextbillionSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::Models::MdmCreateDistanceMatrixResponse,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # A string indicating the state of the response. On successful responses, the
      # value will be `Ok`. Indicative error messages/codes are returned in case of
      # errors. See the [API Error Codes](#api-error-codes) section below for more
      # information.
      sig { returns(T.nilable(String)) }
      attr_reader :code

      sig { params(code: String).void }
      attr_writer :code

      # Returns the error message in case a request fails. This field will not be
      # present in the response, if a request is successfully submitted.
      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      # A unique ID which can be used in the Asynchronous Distance Matrix GET method to
      # retrieve the final result.
      sig { returns(T.nilable(String)) }
      attr_reader :task_id

      sig { params(task_id: String).void }
      attr_writer :task_id

      # Display the warnings, if any, for the given input parameters and values. In case
      # there are no warnings then this field would not be present in the response.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :warning

      sig { params(warning: T::Array[String]).void }
      attr_writer :warning

      sig do
        params(
          code: String,
          message: String,
          task_id: String,
          warning: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # A string indicating the state of the response. On successful responses, the
        # value will be `Ok`. Indicative error messages/codes are returned in case of
        # errors. See the [API Error Codes](#api-error-codes) section below for more
        # information.
        code: nil,
        # Returns the error message in case a request fails. This field will not be
        # present in the response, if a request is successfully submitted.
        message: nil,
        # A unique ID which can be used in the Asynchronous Distance Matrix GET method to
        # retrieve the final result.
        task_id: nil,
        # Display the warnings, if any, for the given input parameters and values. In case
        # there are no warnings then this field would not be present in the response.
        warning: nil
      )
      end

      sig do
        override.returns(
          {
            code: String,
            message: String,
            task_id: String,
            warning: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
