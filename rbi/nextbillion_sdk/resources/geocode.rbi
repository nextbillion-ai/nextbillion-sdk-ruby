# typed: strong

module NextbillionSDK
  module Resources
    class Geocode
      # Geocode
      sig do
        params(
          key: String,
          q: String,
          at: String,
          in_: String,
          lang: String,
          limit: Integer,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(NextbillionSDK::Models::GeocodeRetrieveResponse)
      end
      def retrieve(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # Specify the free-text search query.
        #
        # Please note that whitespace, urls, email addresses, or other out-of-scope
        # queries will yield no results.
        q:,
        # Specify the center of the search context expressed as coordinates.
        #
        # Please note that one of "at", "in=circle" or "in=bbox" should be provided for
        # relevant results.
        at: nil,
        # Search within a geographic area. This is a hard filter. Results will be returned
        # if they are located within the specified area.
        #
        # A geographic area can be
        #
        # - a country (or multiple countries), provided as comma-separated
        #   [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country
        #   codes
        #
        #   The country codes are to be provided in all uppercase.
        #
        #   Format: `countryCode:{countryCode}[,{countryCode}]`
        #
        # - a circular area, provided as latitude, longitude, and radius (an integer with
        #   meters as unit)
        #
        #   Format: `circle:{latitude},{longitude};r={radius}`
        #
        # - a bounding box, provided as _west longitude_, _south latitude_, _east
        #   longitude_, _north latitude_
        #
        #   Format:
        #   `bbox:{west longitude},{south latitude},{east longitude},{north latitude}`
        #
        # Please provide one of 'at', 'in=circle' or 'in=bbox' input for a relevant
        # result.
        in_: nil,
        # Select the language to be used for result rendering from a list of
        # [BCP 47](https://en.wikipedia.org/wiki/IETF_language_tag) compliant language
        # codes.
        lang: nil,
        # Sets the maximum number of results to be returned.
        limit: nil,
        request_options: {}
      )
      end

      # Batch Geocode
      sig do
        params(
          key: String,
          body:
            T::Array[NextbillionSDK::GeocodeBatchCreateParams::Body::OrHash],
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(NextbillionSDK::Models::GeocodeBatchCreateResponse)
      end
      def batch_create(
        # Query param: A key is a unique identifier that is required to authenticate a
        # request to the API.
        key:,
        # Body param:
        body:,
        request_options: {}
      )
      end

      # Structured Geocode
      sig do
        params(
          country_code: String,
          key: String,
          at: String,
          city: String,
          county: String,
          house_number: String,
          in_: String,
          limit: Integer,
          postal_code: String,
          state: String,
          street: String,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(NextbillionSDK::Models::GeocodeStructuredRetrieveResponse)
      end
      def structured_retrieve(
        # Specify a valid
        # [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country
        # code in which the place being searched should be located. Please note that this
        # is a case-sensitive field and the country code should be in all uppercase.
        country_code:,
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # Specify the center of the search context expressed as coordinates.
        #
        # Please note that one of "at", "in=circle" or "in=bbox" should be provided for
        # relevant results.
        at: nil,
        # Specify the city in which the place being searched should be located.
        city: nil,
        # Specify the county division of the state in which the place being searched
        # should be located.
        county: nil,
        # Specify the house number of the place being searched.
        house_number: nil,
        # Search within a geographic area. This is a hard filter. Results will be returned
        # if they are located within the specified area.
        #
        # A geographic area can be
        #
        # - a circular area, provided as latitude, longitude, and radius (an integer with
        #   meters as unit)
        #
        #   Format: `circle:{latitude},{longitude};r={radius}`
        #
        # - a bounding box, provided as _west longitude_, _south latitude_, _east
        #   longitude_, _north latitude_
        #
        #   Format:
        #   `bbox:{west longitude},{south latitude},{east longitude},{north latitude}`
        #
        # Please provide one of 'at', 'in=circle' or 'in=bbox' input for a relevant
        # result.
        in_: nil,
        # Sets the maximum number of results to be returned.
        limit: nil,
        # Specify the postal code in which the place being searched should be located.
        postal_code: nil,
        # Specify the state division of the country in which the place being searched
        # should be located.
        state: nil,
        # Specify the name of the street in which the place being searched should be
        # located.
        street: nil,
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
