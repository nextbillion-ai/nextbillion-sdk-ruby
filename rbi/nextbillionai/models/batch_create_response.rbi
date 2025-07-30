# typed: strong

module Nextbillionai
  module Models
    class BatchCreateResponse < Nextbillionai::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::Models::BatchCreateResponse,
            Nextbillionai::Internal::AnyHash
          )
        end

      # Displays the error message in case of a failed request or operation. Please note
      # that this parameter is not returned in the response in case of a successful
      # request.
      sig { returns(T.nilable(String)) }
      attr_reader :msg

      sig { params(msg: String).void }
      attr_writer :msg

      # Returns the overall status of the API request. Its value will belong to one of
      # `success`, `failed`, and `pending`. It can also contain HTTP error codes in case
      # of a failed request or operation.
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      # Returns the unique ID of the batch processing task. Use this ID using the GET
      # request to retrieve the solution once the task processing is completed.
      sig { returns(T.nilable(String)) }
      attr_reader :track_id

      sig { params(track_id: String).void }
      attr_writer :track_id

      sig do
        params(msg: String, status: String, track_id: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # Displays the error message in case of a failed request or operation. Please note
        # that this parameter is not returned in the response in case of a successful
        # request.
        msg: nil,
        # Returns the overall status of the API request. Its value will belong to one of
        # `success`, `failed`, and `pending`. It can also contain HTTP error codes in case
        # of a failed request or operation.
        status: nil,
        # Returns the unique ID of the batch processing task. Use this ID using the GET
        # request to retrieve the solution once the task processing is completed.
        track_id: nil
      )
      end

      sig do
        override.returns({ msg: String, status: String, track_id: String })
      end
      def to_hash
      end
    end
  end
end
