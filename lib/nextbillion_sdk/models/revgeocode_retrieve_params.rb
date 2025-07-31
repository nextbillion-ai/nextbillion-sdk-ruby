# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::Revgeocode#retrieve
    class RevgeocodeRetrieveParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      # @!attribute at
      #   Specify the center of the search context expressed as coordinates.
      #
      #   Please note that one of "at", "in=circle" or "in=bbox" should be provided for
      #   relevant results.
      #
      #   @return [String]
      required :at, String

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute in_
      #   Search within a geographic area. This is a hard filter. Results will be returned
      #   if they are located within the specified area.
      #
      #   A geographic area can be
      #
      #   - a country (or multiple countries), provided as comma-separated
      #     [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country
      #     codes
      #
      #     The country codes are to be provided in all uppercase.
      #
      #     Format: `countryCode:{countryCode}[,{countryCode}]`
      #
      #   - a circular area, provided as latitude, longitude, and radius (an integer with
      #     meters as unit)
      #
      #     Format: `circle:{latitude},{longitude};r={radius}`
      #
      #   - a bounding box, provided as _west longitude_, _south latitude_, _east
      #     longitude_, _north latitude_
      #
      #     Format:
      #     `bbox:{west longitude},{south latitude},{east longitude},{north latitude}`
      #
      #   @return [String, nil]
      optional :in_, String

      # @!attribute lang
      #   Select the language to be used for result rendering from a list of
      #   [BCP 47](https://en.wikipedia.org/wiki/IETF_language_tag) compliant language
      #   codes.
      #
      #   @return [String, nil]
      optional :lang, String

      # @!method initialize(at:, key:, in_: nil, lang: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::RevgeocodeRetrieveParams} for more details.
      #
      #   @param at [String] Specify the center of the search context expressed as coordinates.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param in_ [String] Search within a geographic area. This is a hard filter. Results will be returned
      #
      #   @param lang [String] Select the language to be used for result rendering from a list of [BCP 47](http
      #
      #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
