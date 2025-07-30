# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Batch#retrieve
    class BatchRetrieveParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute track_id
      #   Specify the track ID of the batch that was returned in the response after
      #   submitting a successful batch request.
      #
      #   @return [String]
      required :track_id, String

      # @!method initialize(key:, track_id:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::BatchRetrieveParams} for more details.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param track_id [String] Specify the track ID of the batch that was returned in the response after submit
      #
      #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
