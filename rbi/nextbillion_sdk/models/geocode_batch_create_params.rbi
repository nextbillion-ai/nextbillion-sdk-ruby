# typed: strong

module NextbillionSDK
  module Models
    class GeocodeBatchCreateParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::GeocodeBatchCreateParams,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      sig { returns(T::Array[NextbillionSDK::GeocodeBatchCreateParams::Body]) }
      attr_accessor :body

      sig do
        params(
          key: String,
          body:
            T::Array[NextbillionSDK::GeocodeBatchCreateParams::Body::OrHash],
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        body:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            key: String,
            body: T::Array[NextbillionSDK::GeocodeBatchCreateParams::Body],
            request_options: NextbillionSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Body < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::GeocodeBatchCreateParams::Body,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # Specify the free-text search query. Please note that whitespace, urls, email
        # addresses, or other out-of-scope queries will yield no results.
        sig { returns(String) }
        attr_accessor :q

        # Specify the center of the search context expressed as coordinates.
        #
        # Please note that one of "at", "in=circle" or "in=bbox" should be provided for
        # relevant results.
        sig { returns(T.nilable(String)) }
        attr_reader :at

        sig { params(at: String).void }
        attr_writer :at

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
        #   Format: countryCode:{countryCode}[,{countryCode}]
        #
        # - a circular area, provided as latitude, longitude, and radius (an integer with
        #   meters as unit)
        #
        #   Format: circle:{latitude},{longitude};r={radius}
        #
        # - a bounding box, provided as _west longitude_, _south latitude_, _east
        #   longitude_, _north latitude_
        #
        #   Format: bbox:{west longitude},{south latitude},{east longitude},{north
        #   latitude}
        #
        # Please provide one of 'at', 'in=circle' or 'in=bbox' input for a relevant
        # result.
        sig { returns(T.nilable(String)) }
        attr_reader :in_

        sig { params(in_: String).void }
        attr_writer :in_

        # Select the language to be used for result rendering from a list of
        # [BCP 47](https://en.wikipedia.org/wiki/IETF_language_tag) compliant language
        # codes.
        sig { returns(T.nilable(String)) }
        attr_reader :lang

        sig { params(lang: String).void }
        attr_writer :lang

        # Maximum number of results to be returned. Please note that the minimum value
        # that can be provided is 1 and the maximum that can be provided is 100.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        sig do
          params(
            q: String,
            at: String,
            in_: String,
            lang: String,
            limit: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Specify the free-text search query. Please note that whitespace, urls, email
          # addresses, or other out-of-scope queries will yield no results.
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
          #   Format: countryCode:{countryCode}[,{countryCode}]
          #
          # - a circular area, provided as latitude, longitude, and radius (an integer with
          #   meters as unit)
          #
          #   Format: circle:{latitude},{longitude};r={radius}
          #
          # - a bounding box, provided as _west longitude_, _south latitude_, _east
          #   longitude_, _north latitude_
          #
          #   Format: bbox:{west longitude},{south latitude},{east longitude},{north
          #   latitude}
          #
          # Please provide one of 'at', 'in=circle' or 'in=bbox' input for a relevant
          # result.
          in_: nil,
          # Select the language to be used for result rendering from a list of
          # [BCP 47](https://en.wikipedia.org/wiki/IETF_language_tag) compliant language
          # codes.
          lang: nil,
          # Maximum number of results to be returned. Please note that the minimum value
          # that can be provided is 1 and the maximum that can be provided is 100.
          limit: nil
        )
        end

        sig do
          override.returns(
            { q: String, at: String, in_: String, lang: String, limit: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
