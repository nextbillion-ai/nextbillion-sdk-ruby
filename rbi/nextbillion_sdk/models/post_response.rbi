# typed: strong

module NextbillionSDK
  module Models
    class PostResponse < NextbillionSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(NextbillionSDK::PostResponse, NextbillionSDK::Internal::AnyHash)
        end

      # A unique ID which can be used in the Optimization GET method to retrieve the
      # result of optimization.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Displays an acknowledgement message once the job is submitted.
      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      # A string indicating the state of the response. On successful responses, the
      # value will be Ok. Indicative error messages/codes are returned in case of
      # errors. See the [API Error Codes](#api-error-codes) section below for more
      # information.
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      # Display the warnings for the given input parameters, values and constraints.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :warnings

      sig { params(warnings: T::Array[String]).void }
      attr_writer :warnings

      sig do
        params(
          id: String,
          message: String,
          status: String,
          warnings: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique ID which can be used in the Optimization GET method to retrieve the
        # result of optimization.
        id: nil,
        # Displays an acknowledgement message once the job is submitted.
        message: nil,
        # A string indicating the state of the response. On successful responses, the
        # value will be Ok. Indicative error messages/codes are returned in case of
        # errors. See the [API Error Codes](#api-error-codes) section below for more
        # information.
        status: nil,
        # Display the warnings for the given input parameters, values and constraints.
        warnings: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            message: String,
            status: String,
            warnings: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
