# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Batch#create
    class BatchCreateParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute requests
      #   An array of objects to collect the details of individual routing queries that
      #   will form a batch.
      #
      #   @return [Array<Nextbillionai::Models::BatchCreateParams::Request>, nil]
      optional :requests,
               -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::BatchCreateParams::Request] }

      # @!method initialize(key:, requests: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::BatchCreateParams} for more details.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param requests [Array<Nextbillionai::Models::BatchCreateParams::Request>] An array of objects to collect the details of individual routing queries that wi
      #
      #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

      class Request < Nextbillionai::Internal::Type::BaseModel
        # @!attribute query
        #   Specify the routing query in the form of a string. The supported attributes and
        #   their formats are consistent with the standard routing endpoint that is being
        #   used as part of the batch. Check the
        #   [Sample Request](https://docs.nextbillion.ai/docs/navigation/batch-routing-api#sample-request-1)
        #   section for an example request.
        #
        #   @return [String, nil]
        optional :query, String

        # @!method initialize(query: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::BatchCreateParams::Request} for more details.
        #
        #   @param query [String] Specify the routing query in the form of a string. The supported attributes and
      end
    end
  end
end
