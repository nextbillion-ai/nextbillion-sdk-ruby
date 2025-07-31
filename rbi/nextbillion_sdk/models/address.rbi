# typed: strong

module NextbillionSDK
  module Models
    class Address < NextbillionSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(NextbillionSDK::Address, NextbillionSDK::Internal::AnyHash)
        end

      # The name of the primary locality of the place.
      sig { returns(T.nilable(String)) }
      attr_reader :city

      sig { params(city: String).void }
      attr_writer :city

      # A three-letter country code.
      sig { returns(T.nilable(String)) }
      attr_reader :country_code

      sig { params(country_code: String).void }
      attr_writer :country_code

      # The localised country name.
      sig { returns(T.nilable(String)) }
      attr_reader :country_name

      sig { params(country_name: String).void }
      attr_writer :country_name

      # A division of a state; typically, a secondary-level administrative division of a
      # country or equivalent.
      sig { returns(T.nilable(String)) }
      attr_reader :county

      sig { params(county: String).void }
      attr_writer :county

      # A division of city; typically an administrative unit within a larger city or a
      # customary name of a city's neighborhood.
      sig { returns(T.nilable(String)) }
      attr_reader :district

      sig { params(district: String).void }
      attr_writer :district

      # House number of the returned place, if available.
      sig { returns(T.nilable(String)) }
      attr_reader :house_number

      sig { params(house_number: String).void }
      attr_writer :house_number

      # Assembled address value built out of the address components according to the
      # regional postal rules. These are the same rules for all endpoints. It may not
      # include all the input terms.
      sig { returns(T.nilable(String)) }
      attr_reader :label

      sig { params(label: String).void }
      attr_writer :label

      # An alphanumeric string included in a postal address to facilitate mail sorting,
      # such as post code, postcode, or ZIP code.
      sig { returns(T.nilable(String)) }
      attr_reader :postal_code

      sig { params(postal_code: String).void }
      attr_writer :postal_code

      # The state division of a country.
      sig { returns(T.nilable(String)) }
      attr_reader :state

      sig { params(state: String).void }
      attr_writer :state

      # A country specific state code or state name abbreviation. For example, in the
      # United States it is the two letter state abbreviation: "CA" for California.
      sig { returns(T.nilable(String)) }
      attr_reader :state_code

      sig { params(state_code: String).void }
      attr_writer :state_code

      # Name of street of the returned place, if available.
      sig { returns(T.nilable(String)) }
      attr_reader :street

      sig { params(street: String).void }
      attr_writer :street

      # Postal address of the result item.
      sig do
        params(
          city: String,
          country_code: String,
          country_name: String,
          county: String,
          district: String,
          house_number: String,
          label: String,
          postal_code: String,
          state: String,
          state_code: String,
          street: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The name of the primary locality of the place.
        city: nil,
        # A three-letter country code.
        country_code: nil,
        # The localised country name.
        country_name: nil,
        # A division of a state; typically, a secondary-level administrative division of a
        # country or equivalent.
        county: nil,
        # A division of city; typically an administrative unit within a larger city or a
        # customary name of a city's neighborhood.
        district: nil,
        # House number of the returned place, if available.
        house_number: nil,
        # Assembled address value built out of the address components according to the
        # regional postal rules. These are the same rules for all endpoints. It may not
        # include all the input terms.
        label: nil,
        # An alphanumeric string included in a postal address to facilitate mail sorting,
        # such as post code, postcode, or ZIP code.
        postal_code: nil,
        # The state division of a country.
        state: nil,
        # A country specific state code or state name abbreviation. For example, in the
        # United States it is the two letter state abbreviation: "CA" for California.
        state_code: nil,
        # Name of street of the returned place, if available.
        street: nil
      )
      end

      sig do
        override.returns(
          {
            city: String,
            country_code: String,
            country_name: String,
            county: String,
            district: String,
            house_number: String,
            label: String,
            postal_code: String,
            state: String,
            state_code: String,
            street: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
