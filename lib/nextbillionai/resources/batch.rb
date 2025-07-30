# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Batch
      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::BatchCreateParams} for more details.
      #
      # Create Batch Routing
      #
      # @overload create(key:, requests: nil, request_options: {})
      #
      # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
      #
      # @param requests [Array<Nextbillionai::Models::BatchCreateParams::Request>] Body param: An array of objects to collect the details of individual routing que
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::BatchCreateResponse]
      #
      # @see Nextbillionai::Models::BatchCreateParams
      def create(params)
        parsed, options = Nextbillionai::BatchCreateParams.dump_request(params)
        query_params = [:key]
        @client.request(
          method: :post,
          path: "batch",
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: Nextbillionai::Models::BatchCreateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::BatchRetrieveParams} for more details.
      #
      # Get Batch Result
      #
      # @overload retrieve(key:, track_id:, request_options: {})
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param track_id [String] Specify the track ID of the batch that was returned in the response after submit
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::BatchRetrieveResponse]
      #
      # @see Nextbillionai::Models::BatchRetrieveParams
      def retrieve(params)
        parsed, options = Nextbillionai::BatchRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: "batch",
          query: parsed,
          model: Nextbillionai::Models::BatchRetrieveResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Nextbillionai::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
