# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Batch
      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::BatchCreateParams} for more details.
      #
      # Create Batch Routing
      #
      # @overload create(key:, requests: nil, request_options: {})
      #
      # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
      #
      # @param requests [Array<NextbillionSDK::Models::BatchCreateParams::Request>] Body param: An array of objects to collect the details of individual routing que
      #
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [NextbillionSDK::Models::BatchCreateResponse]
      #
      # @see NextbillionSDK::Models::BatchCreateParams
      def create(params)
        parsed, options = NextbillionSDK::BatchCreateParams.dump_request(params)
        query_params = [:key]
        @client.request(
          method: :post,
          path: "batch",
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: NextbillionSDK::Models::BatchCreateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::BatchRetrieveParams} for more details.
      #
      # Get Batch Result
      #
      # @overload retrieve(key:, track_id:, request_options: {})
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param track_id [String] Specify the track ID of the batch that was returned in the response after submit
      #
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [NextbillionSDK::Models::BatchRetrieveResponse]
      #
      # @see NextbillionSDK::Models::BatchRetrieveParams
      def retrieve(params)
        parsed, options = NextbillionSDK::BatchRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "batch",
          query: parsed,
          model: NextbillionSDK::Models::BatchRetrieveResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [NextbillionSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
