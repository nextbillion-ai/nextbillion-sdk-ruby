# typed: strong

module Nextbillionai
  module Models
    class BatchCreateParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::BatchCreateParams,
            Nextbillionai::Internal::AnyHash
          )
        end

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      # An array of objects to collect the details of individual routing queries that
      # will form a batch.
      sig do
        returns(T.nilable(T::Array[Nextbillionai::BatchCreateParams::Request]))
      end
      attr_reader :requests

      sig do
        params(
          requests: T::Array[Nextbillionai::BatchCreateParams::Request::OrHash]
        ).void
      end
      attr_writer :requests

      sig do
        params(
          key: String,
          requests: T::Array[Nextbillionai::BatchCreateParams::Request::OrHash],
          request_options: Nextbillionai::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # An array of objects to collect the details of individual routing queries that
        # will form a batch.
        requests: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            key: String,
            requests: T::Array[Nextbillionai::BatchCreateParams::Request],
            request_options: Nextbillionai::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Request < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::BatchCreateParams::Request,
              Nextbillionai::Internal::AnyHash
            )
          end

        # Specify the routing query in the form of a string. The supported attributes and
        # their formats are consistent with the standard routing endpoint that is being
        # used as part of the batch. Check the
        # [Sample Request](https://docs.nextbillion.ai/docs/navigation/batch-routing-api#sample-request-1)
        # section for an example request.
        sig { returns(T.nilable(String)) }
        attr_reader :query

        sig { params(query: String).void }
        attr_writer :query

        sig { params(query: String).returns(T.attached_class) }
        def self.new(
          # Specify the routing query in the form of a string. The supported attributes and
          # their formats are consistent with the standard routing endpoint that is being
          # used as part of the batch. Check the
          # [Sample Request](https://docs.nextbillion.ai/docs/navigation/batch-routing-api#sample-request-1)
          # section for an example request.
          query: nil
        )
        end

        sig { override.returns({ query: String }) }
        def to_hash
        end
      end
    end
  end
end
