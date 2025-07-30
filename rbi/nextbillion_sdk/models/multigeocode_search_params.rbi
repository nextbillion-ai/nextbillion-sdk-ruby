# typed: strong

module NextbillionSDK
  module Models
    class MultigeocodeSearchParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::MultigeocodeSearchParams,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      # Specify the center of the search context expressed as coordinates.
      sig { returns(NextbillionSDK::MultigeocodeSearchParams::At) }
      attr_reader :at

      sig do
        params(at: NextbillionSDK::MultigeocodeSearchParams::At::OrHash).void
      end
      attr_writer :at

      # A free-form, complete or incomplete string to be searched. It allows searching
      # for places using keywords or names.
      sig { returns(String) }
      attr_accessor :query

      # Specifies the primary city of the place.
      sig { returns(T.nilable(String)) }
      attr_reader :city

      sig { params(city: String).void }
      attr_writer :city

      # Country of the search context provided as comma-separated
      # [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country
      # codes.
      # Note: Country codes should be provided in uppercase.
      sig { returns(T.nilable(String)) }
      attr_reader :country

      sig { params(country: String).void }
      attr_writer :country

      # Specifies the district of the search place.
      sig { returns(T.nilable(String)) }
      attr_reader :district

      sig { params(district: String).void }
      attr_writer :district

      # Sets the maximum number of results to be returned.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Filters the results to places within the specified radius from the 'at'
      # location.
      #
      # Note: Supports 'meter' (m) and 'kilometer' (km) units. If no radius is given,
      # the search method returns as many results as specified in limit.
      sig { returns(T.nilable(String)) }
      attr_reader :radius

      sig { params(radius: String).void }
      attr_writer :radius

      # Specifies the state of the search place.
      sig { returns(T.nilable(String)) }
      attr_reader :state

      sig { params(state: String).void }
      attr_writer :state

      # Specifies the street name of the search place.
      sig { returns(T.nilable(String)) }
      attr_reader :street

      sig { params(street: String).void }
      attr_writer :street

      # Specifies the subDistrict of the search place.
      sig { returns(T.nilable(String)) }
      attr_reader :sub_district

      sig { params(sub_district: String).void }
      attr_writer :sub_district

      sig do
        params(
          key: String,
          at: NextbillionSDK::MultigeocodeSearchParams::At::OrHash,
          query: String,
          city: String,
          country: String,
          district: String,
          limit: Integer,
          radius: String,
          state: String,
          street: String,
          sub_district: String,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # Specify the center of the search context expressed as coordinates.
        at:,
        # A free-form, complete or incomplete string to be searched. It allows searching
        # for places using keywords or names.
        query:,
        # Specifies the primary city of the place.
        city: nil,
        # Country of the search context provided as comma-separated
        # [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country
        # codes.
        # Note: Country codes should be provided in uppercase.
        country: nil,
        # Specifies the district of the search place.
        district: nil,
        # Sets the maximum number of results to be returned.
        limit: nil,
        # Filters the results to places within the specified radius from the 'at'
        # location.
        #
        # Note: Supports 'meter' (m) and 'kilometer' (km) units. If no radius is given,
        # the search method returns as many results as specified in limit.
        radius: nil,
        # Specifies the state of the search place.
        state: nil,
        # Specifies the street name of the search place.
        street: nil,
        # Specifies the subDistrict of the search place.
        sub_district: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            key: String,
            at: NextbillionSDK::MultigeocodeSearchParams::At,
            query: String,
            city: String,
            country: String,
            district: String,
            limit: Integer,
            radius: String,
            state: String,
            street: String,
            sub_district: String,
            request_options: NextbillionSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class At < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::MultigeocodeSearchParams::At,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # Latitude coordinate of the location
        sig { returns(Float) }
        attr_accessor :lat

        # Longitude coordinate of the location.
        sig { returns(Float) }
        attr_accessor :lng

        # Specify the center of the search context expressed as coordinates.
        sig { params(lat: Float, lng: Float).returns(T.attached_class) }
        def self.new(
          # Latitude coordinate of the location
          lat:,
          # Longitude coordinate of the location.
          lng:
        )
        end

        sig { override.returns({ lat: Float, lng: Float }) }
        def to_hash
        end
      end
    end
  end
end
