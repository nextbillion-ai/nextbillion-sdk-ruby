# typed: strong

module NextbillionSDK
  module Models
    class BatchRetrieveParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::BatchRetrieveParams,
            NextbillionSDK::Internal::AnyHash
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
          request_options: NextbillionSDK::RequestOptions::OrHash
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
            request_options: NextbillionSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
