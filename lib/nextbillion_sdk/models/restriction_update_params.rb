# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::Restrictions#update
    class RestrictionUpdateParams < NextbillionSDK::Models::RichGroupRequest
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute latlon
      #   Use this parameter to decide the format for specifying the geofence coordinates.
      #   If true, then the coordinates of geofence can be specified as
      #   "latitude,longitude" format, otherwise they should be specified in
      #   "longitude,latitude" format.
      #
      #   @return [Boolean, nil]
      optional :latlon, NextbillionSDK::Internal::Type::Boolean

      # @!method initialize(key:, latlon: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::RestrictionUpdateParams} for more details.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param latlon [Boolean] Use this parameter to decide the format for specifying the geofence coordinates.
      #
      #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
