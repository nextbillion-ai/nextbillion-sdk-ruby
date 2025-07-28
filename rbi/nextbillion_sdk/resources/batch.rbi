# typed: strong

module NextbillionSDK
  module Resources
    class Batch
      # Create Batch Routing
      sig do
        params(
          key: String,
          requests:
            T::Array[NextbillionSDK::BatchCreateParams::Request::OrHash],
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(NextbillionSDK::Models::BatchCreateResponse)
      end
      def create(
        # Query param: A key is a unique identifier that is required to authenticate a
        # request to the API.
        key:,
        # Body param: An array of objects to collect the details of individual routing
        # queries that will form a batch.
        requests: nil,
        request_options: {}
      )
      end

      # Get Batch Result
      sig do
        params(
          key: String,
          track_id: String,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(NextbillionSDK::Models::BatchRetrieveResponse)
      end
      def retrieve(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # Specify the track ID of the batch that was returned in the response after
        # submitting a successful batch request.
        track_id:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: NextbillionSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
