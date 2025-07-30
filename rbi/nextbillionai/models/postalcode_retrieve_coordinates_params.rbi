# typed: strong

module Nextbillionai
  module Models
    class PostalcodeRetrieveCoordinatesParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::PostalcodeRetrieveCoordinatesParams,
            Nextbillionai::Internal::AnyHash
          )
        end

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      # Location coordinates that you want to get the postal code of. If not providing
      # postalcode in the request, at becomes mandatory. Please note that only 1 point
      # can be requested. [See this example](#note).
      sig do
        returns(
          T.nilable(Nextbillionai::PostalcodeRetrieveCoordinatesParams::At)
        )
      end
      attr_reader :at

      sig do
        params(
          at: Nextbillionai::PostalcodeRetrieveCoordinatesParams::At::OrHash
        ).void
      end
      attr_writer :at

      # Country containing the postal code or the location. It is mandatory if
      # postalcode is provided in the request. [See this example](#note).
      #
      # Please check the [API Query Limits](#api-query-limits) section below for a list
      # of the countries covered by the Geocode Postcode API. Users can provide either
      # the name or the alpha-2/3 code as per the
      # [ISO 3166-1 standard](https://en.wikipedia.org/wiki/ISO_3166-1) of a country
      # covered by the API as input for this parameter.
      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { params(country: String).void }
      attr_writer :country

      # Specify the format in which the boundary details of the post code will be
      # returned. When specified, the boundary details will be returned in the geojson
      # format. When not specified, the boundary details are returned in general format.
      sig do
        returns(
          T.nilable(
            Nextbillionai::PostalcodeRetrieveCoordinatesParams::Format::OrSymbol
          )
        )
      end
      attr_reader :format_

      sig do
        params(
          format_:
            Nextbillionai::PostalcodeRetrieveCoordinatesParams::Format::OrSymbol
        ).void
      end
      attr_writer :format_

      # Provide the postal code for which the information is needed. At least one of
      # (postalcode + country) or at needs to be provided. Please note that only 1
      # postal code can be requested. [See this example](#note).
      sig { returns(T.nilable(String)) }
      attr_reader :postalcode

      sig { params(postalcode: String).void }
      attr_writer :postalcode

      sig do
        params(
          key: String,
          at: Nextbillionai::PostalcodeRetrieveCoordinatesParams::At::OrHash,
          country: String,
          format_:
            Nextbillionai::PostalcodeRetrieveCoordinatesParams::Format::OrSymbol,
          postalcode: String,
          request_options: Nextbillionai::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # Location coordinates that you want to get the postal code of. If not providing
        # postalcode in the request, at becomes mandatory. Please note that only 1 point
        # can be requested. [See this example](#note).
        at: nil,
        # Country containing the postal code or the location. It is mandatory if
        # postalcode is provided in the request. [See this example](#note).
        #
        # Please check the [API Query Limits](#api-query-limits) section below for a list
        # of the countries covered by the Geocode Postcode API. Users can provide either
        # the name or the alpha-2/3 code as per the
        # [ISO 3166-1 standard](https://en.wikipedia.org/wiki/ISO_3166-1) of a country
        # covered by the API as input for this parameter.
        country: nil,
        # Specify the format in which the boundary details of the post code will be
        # returned. When specified, the boundary details will be returned in the geojson
        # format. When not specified, the boundary details are returned in general format.
        format_: nil,
        # Provide the postal code for which the information is needed. At least one of
        # (postalcode + country) or at needs to be provided. Please note that only 1
        # postal code can be requested. [See this example](#note).
        postalcode: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            key: String,
            at: Nextbillionai::PostalcodeRetrieveCoordinatesParams::At,
            country: String,
            format_:
              Nextbillionai::PostalcodeRetrieveCoordinatesParams::Format::OrSymbol,
            postalcode: String,
            request_options: Nextbillionai::RequestOptions
          }
        )
      end
      def to_hash
      end

      class At < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::PostalcodeRetrieveCoordinatesParams::At,
              Nextbillionai::Internal::AnyHash
            )
          end

        # Latitude of the location.
        sig { returns(T.nilable(Float)) }
        attr_reader :lat

        sig { params(lat: Float).void }
        attr_writer :lat

        # Longitude of the location.
        sig { returns(T.nilable(Float)) }
        attr_reader :lng

        sig { params(lng: Float).void }
        attr_writer :lng

        # Location coordinates that you want to get the postal code of. If not providing
        # postalcode in the request, at becomes mandatory. Please note that only 1 point
        # can be requested. [See this example](#note).
        sig { params(lat: Float, lng: Float).returns(T.attached_class) }
        def self.new(
          # Latitude of the location.
          lat: nil,
          # Longitude of the location.
          lng: nil
        )
        end

        sig { override.returns({ lat: Float, lng: Float }) }
        def to_hash
        end
      end

      # Specify the format in which the boundary details of the post code will be
      # returned. When specified, the boundary details will be returned in the geojson
      # format. When not specified, the boundary details are returned in general format.
      module Format
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Nextbillionai::PostalcodeRetrieveCoordinatesParams::Format
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GEOJSON =
          T.let(
            :geojson,
            Nextbillionai::PostalcodeRetrieveCoordinatesParams::Format::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::PostalcodeRetrieveCoordinatesParams::Format::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
