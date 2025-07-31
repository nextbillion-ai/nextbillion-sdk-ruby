# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Discover#retrieve
    class DiscoverRetrieveParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute q
      #   Specify the free-text search query.
      #
      #   Please note that whitespace, urls, email addresses, or other out-of-scope
      #   queries will yield no results.
      #
      #   @return [String]
      required :q, String

      # @!attribute at
      #   Specify the center of the search context expressed as coordinates.
      #
      #   Please note that one of "at", "in=circle" or "in=bbox" should be provided for
      #   relevant results.
      #
      #   @return [String, nil]
      optional :at, String

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
      #     Format: countryCode:{countryCode}[,{countryCode}]
      #
      #   - a circular area, provided as latitude, longitude, and radius (an integer with
      #     meters as unit)
      #
      #     Format: circle:{latitude},{longitude};r={radius}
      #
      #   - a bounding box, provided as _west longitude_, _south latitude_, _east
      #     longitude_, _north latitude_
      #
      #     Format: bbox:{west longitude},{south latitude},{east longitude},{north
      #     latitude}
      #
      #   Please provide one of 'at', 'in=circle' or 'in=bbox' input for a relevant
      #   result.
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

      # @!attribute limit
      #   Sets the maximum number of results to be returned.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!method initialize(key:, q:, at: nil, in_: nil, lang: nil, limit: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::DiscoverRetrieveParams} for more details.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param q [String] Specify the free-text search query.
      #
      #   @param at [String] Specify the center of the search context expressed as coordinates.
      #
      #   @param in_ [String] Search within a geographic area. This is a hard filter. Results will be returned
      #
      #   @param lang [String] Select the language to be used for result rendering from a list of [BCP 47](http
      #
      #   @param limit [Integer] Sets the maximum number of results to be returned.
      #
      #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
