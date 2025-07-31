# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::Batch#retrieve
    class BatchRetrieveParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

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
      #   {NextbillionSDK::Models::BatchRetrieveParams} for more details.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param track_id [String] Specify the track ID of the batch that was returned in the response after submit
      #
      #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
