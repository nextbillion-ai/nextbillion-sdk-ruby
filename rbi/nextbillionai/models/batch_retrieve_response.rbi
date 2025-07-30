# typed: strong

module Nextbillionai
  module Models
    class BatchRetrieveResponse < Nextbillionai::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::Models::BatchRetrieveResponse,
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

      # An array of objects returning the results of all the individual routing queries
      # specified in the input. Each object represents the solution to an individual
      # query in the input.
      sig do
        returns(
          T.nilable(
            T::Array[Nextbillionai::Models::BatchRetrieveResponse::Response]
          )
        )
      end
      attr_reader :responses

      sig do
        params(
          responses:
            T::Array[
              Nextbillionai::Models::BatchRetrieveResponse::Response::OrHash
            ]
        ).void
      end
      attr_writer :responses

      # Returns the overall status of the API request. Its value will always be one of
      # `success`, `failed`, and `pending`.
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      # Returns the unique ID of the batch processing task.
      sig { returns(T.nilable(String)) }
      attr_reader :track_id

      sig { params(track_id: String).void }
      attr_writer :track_id

      sig do
        params(
          msg: String,
          responses:
            T::Array[
              Nextbillionai::Models::BatchRetrieveResponse::Response::OrHash
            ],
          status: String,
          track_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Displays the error message in case of a failed request or operation. Please note
        # that this parameter is not returned in the response in case of a successful
        # request.
        msg: nil,
        # An array of objects returning the results of all the individual routing queries
        # specified in the input. Each object represents the solution to an individual
        # query in the input.
        responses: nil,
        # Returns the overall status of the API request. Its value will always be one of
        # `success`, `failed`, and `pending`.
        status: nil,
        # Returns the unique ID of the batch processing task.
        track_id: nil
      )
      end

      sig do
        override.returns(
          {
            msg: String,
            responses:
              T::Array[Nextbillionai::Models::BatchRetrieveResponse::Response],
            status: String,
            track_id: String
          }
        )
      end
      def to_hash
      end

      class Response < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::BatchRetrieveResponse::Response,
              Nextbillionai::Internal::AnyHash
            )
          end

        # An object returning the routing solution of an individual query. The JSON format
        # and structure of the `response` would vary depending on the routing endpoint
        # used in each individual query. However, it will be consistent with standard
        # response for a given routing endpoint.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :response

        sig { params(response: T.anything).void }
        attr_writer :response

        # Returns the HTTP status code for the individual routing request. See the
        # [API Errors Codes](#api-error-codes) section below for more information.
        sig { returns(T.nilable(Integer)) }
        attr_reader :status_code

        sig { params(status_code: Integer).void }
        attr_writer :status_code

        sig do
          params(response: T.anything, status_code: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # An object returning the routing solution of an individual query. The JSON format
          # and structure of the `response` would vary depending on the routing endpoint
          # used in each individual query. However, it will be consistent with standard
          # response for a given routing endpoint.
          response: nil,
          # Returns the HTTP status code for the individual routing request. See the
          # [API Errors Codes](#api-error-codes) section below for more information.
          status_code: nil
        )
        end

        sig { override.returns({ response: T.anything, status_code: Integer }) }
        def to_hash
        end
      end
    end
  end
end
