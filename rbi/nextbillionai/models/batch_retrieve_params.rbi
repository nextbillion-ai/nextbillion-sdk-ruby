# typed: strong

module Nextbillionai
  module Models
    class BatchRetrieveParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::BatchRetrieveParams,
            Nextbillionai::Internal::AnyHash
          )
        end

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      # Specify the track ID of the batch that was returned in the response after
      # submitting a successful batch request.
      sig { returns(String) }
      attr_accessor :track_id

      sig do
        params(
          key: String,
          track_id: String,
          request_options: Nextbillionai::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # Specify the track ID of the batch that was returned in the response after
        # submitting a successful batch request.
        track_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            key: String,
            track_id: String,
            request_options: Nextbillionai::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
