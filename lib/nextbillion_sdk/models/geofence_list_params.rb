# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::Geofence#list
    class GeofenceListParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute pn
      #   Denotes page number. Use this along with the ps parameter to implement
      #   pagination for your searched results. This parameter does not have a maximum
      #   limit but would return an empty response in case a higher value is provided when
      #   the result-set itself is smaller.
      #
      #   @return [Integer, nil]
      optional :pn, Integer

      # @!attribute ps
      #   Denotes number of search results per page. Use this along with the pn parameter
      #   to implement pagination for your searched results.
      #
      #   @return [Integer, nil]
      optional :ps, Integer

      # @!attribute tags
      #   Comma (,) separated list of tags which will be used to filter the geofences.
      #
      #   Please note only the geofences which have all the tags added to this parameter
      #   will be included in the result. This parameter can accept a string with a
      #   maximum length of 256 characters.
      #
      #   @return [String, nil]
      optional :tags, String

      # @!method initialize(key:, pn: nil, ps: nil, tags: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::GeofenceListParams} for more details.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param pn [Integer] Denotes page number. Use this along with the ps parameter to implement paginatio
      #
      #   @param ps [Integer] Denotes number of search results per page. Use this along with the pn parameter
      #
      #   @param tags [String] Comma (,) separated list of tags which will be used to filter the geofences.
      #
      #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
