# frozen_string_literal: true

module NextbillionSDK
  module Models
    class Address < NextbillionSDK::Internal::Type::BaseModel
      # @!attribute city
      #   The name of the primary locality of the place.
      #
      #   @return [String, nil]
      optional :city, String

      # @!attribute country_code
      #   A three-letter country code.
      #
      #   @return [String, nil]
      optional :country_code, String, api_name: :countryCode

      # @!attribute country_name
      #   The localised country name.
      #
      #   @return [String, nil]
      optional :country_name, String, api_name: :countryName

      # @!attribute county
      #   A division of a state; typically, a secondary-level administrative division of a
      #   country or equivalent.
      #
      #   @return [String, nil]
      optional :county, String

      # @!attribute district
      #   A division of city; typically an administrative unit within a larger city or a
      #   customary name of a city's neighborhood.
      #
      #   @return [String, nil]
      optional :district, String

      # @!attribute house_number
      #   House number of the returned place, if available.
      #
      #   @return [String, nil]
      optional :house_number, String, api_name: :houseNumber

      # @!attribute label
      #   Assembled address value built out of the address components according to the
      #   regional postal rules. These are the same rules for all endpoints. It may not
      #   include all the input terms.
      #
      #   @return [String, nil]
      optional :label, String

      # @!attribute postal_code
      #   An alphanumeric string included in a postal address to facilitate mail sorting,
      #   such as post code, postcode, or ZIP code.
      #
      #   @return [String, nil]
      optional :postal_code, String, api_name: :postalCode

      # @!attribute state
      #   The state division of a country.
      #
      #   @return [String, nil]
      optional :state, String

      # @!attribute state_code
      #   A country specific state code or state name abbreviation. For example, in the
      #   United States it is the two letter state abbreviation: "CA" for California.
      #
      #   @return [String, nil]
      optional :state_code, String, api_name: :stateCode

      # @!attribute street
      #   Name of street of the returned place, if available.
      #
      #   @return [String, nil]
      optional :street, String

      # @!method initialize(city: nil, country_code: nil, country_name: nil, county: nil, district: nil, house_number: nil, label: nil, postal_code: nil, state: nil, state_code: nil, street: nil)
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::Address} for more details.
      #
      #   Postal address of the result item.
      #
      #   @param city [String] The name of the primary locality of the place.
      #
      #   @param country_code [String] A three-letter country code.
      #
      #   @param country_name [String] The localised country name.
      #
      #   @param county [String] A division of a state; typically, a secondary-level administrative division of a
      #
      #   @param district [String] A division of city; typically an administrative unit within a larger city or a c
      #
      #   @param house_number [String] House number of the returned place, if available.
      #
      #   @param label [String] Assembled address value built out of the address components according to the reg
      #
      #   @param postal_code [String] An alphanumeric string included in a postal address to facilitate mail sorting,
      #
      #   @param state [String] The state division of a country.
      #
      #   @param state_code [String] A country specific state code or state name abbreviation. For example, in the Un
      #
      #   @param street [String] Name of street of the returned place, if available.
    end
  end
end
