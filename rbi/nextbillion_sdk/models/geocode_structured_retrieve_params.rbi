# typed: strong

module NextbillionSDK
  module Models
    class GeocodeStructuredRetrieveParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::GeocodeStructuredRetrieveParams,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # Specify a valid
      # [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country
      # code in which the place being searched should be located. Please note that this
      # is a case-sensitive field and the country code should be in all uppercase.
      sig { returns(String) }
      attr_accessor :country_code

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      # Specify the center of the search context expressed as coordinates.
      #
      # Please note that one of "at", "in=circle" or "in=bbox" should be provided for
      # relevant results.
      sig { returns(T.nilable(String)) }
      attr_reader :at

      sig { params(at: String).void }
      attr_writer :at

      # Specify the city in which the place being searched should be located.
      sig { returns(T.nilable(String)) }
      attr_reader :city

      sig { params(city: String).void }
      attr_writer :city

      # Specify the county division of the state in which the place being searched
      # should be located.
      sig { returns(T.nilable(String)) }
      attr_reader :county

      sig { params(county: String).void }
      attr_writer :county

      # Specify the house number of the place being searched.
      sig { returns(T.nilable(String)) }
      attr_reader :house_number

      sig { params(house_number: String).void }
      attr_writer :house_number

      # Search within a geographic area. This is a hard filter. Results will be returned
      # if they are located within the specified area.
      #
      # A geographic area can be
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

      # Sets the maximum number of results to be returned.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Specify the postal code in which the place being searched should be located.
      sig { returns(T.nilable(String)) }
      attr_reader :postal_code

      sig { params(postal_code: String).void }
      attr_writer :postal_code

      # Specify the state division of the country in which the place being searched
      # should be located.
      sig { returns(T.nilable(String)) }
      attr_reader :state

      sig { params(state: String).void }
      attr_writer :state

      # Specify the name of the street in which the place being searched should be
      # located.
      sig { returns(T.nilable(String)) }
      attr_reader :street

      sig { params(street: String).void }
      attr_writer :street

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
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
            request_options: NextbillionSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
