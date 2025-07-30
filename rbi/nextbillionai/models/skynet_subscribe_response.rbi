# typed: strong

module Nextbillionai
  module Models
    class SkynetSubscribeResponse < Nextbillionai::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::Models::SkynetSubscribeResponse,
            Nextbillionai::Internal::AnyHash
          )
        end

      # Subscription ID as provided in the input action message.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Returns the error message when `status: error`. Otherwise, response doesn't
      # contain this field.
      sig { returns(T.nilable(String)) }
      attr_reader :error

      sig { params(error: String).void }
      attr_writer :error

      # Status of the action. It can have only two values - "success" or "error".
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      # Returns the UNIX timestamp, in milliseconds format, when the web-socket returns
      # the action response.
      sig { returns(T.nilable(Integer)) }
      attr_reader :timestamp

      sig { params(timestamp: Integer).void }
      attr_writer :timestamp

      sig do
        params(
          id: String,
          error: String,
          status: String,
          timestamp: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Subscription ID as provided in the input action message.
        id: nil,
        # Returns the error message when `status: error`. Otherwise, response doesn't
        # contain this field.
        error: nil,
        # Status of the action. It can have only two values - "success" or "error".
        status: nil,
        # Returns the UNIX timestamp, in milliseconds format, when the web-socket returns
        # the action response.
        timestamp: nil
      )
      end

      sig do
        override.returns(
          { id: String, error: String, status: String, timestamp: Integer }
        )
      end
      def to_hash
      end
    end
  end
end
