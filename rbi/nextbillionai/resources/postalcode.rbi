# typed: strong

module Nextbillionai
  module Resources
    class Postalcode
      # Retrieve coordinates by postal code
      sig do
        params(
          key: String,
          at: Nextbillionai::PostalcodeRetrieveCoordinatesParams::At::OrHash,
          country: String,
          format_:
            Nextbillionai::PostalcodeRetrieveCoordinatesParams::Format::OrSymbol,
          postalcode: String,
          request_options: Nextbillionai::RequestOptions::OrHash
        ).returns(Nextbillionai::Models::PostalcodeRetrieveCoordinatesResponse)
      end
      def retrieve_coordinates(
        # Query param: A key is a unique identifier that is required to authenticate a
        # request to the API.
        key:,
        # Body param: Location coordinates that you want to get the postal code of. If not
        # providing `postalcode` in the request, `at` becomes mandatory. Please note that
        # only 1 point can be requested. [See this example](#note).
        at: nil,
        # Body param: Country containing the postal code or the location. It is mandatory
        # if `postalcode` is provided in the request. [See this example](#note).
        #
        # Please check the [API Query Limits](#api-query-limits) section below for a list
        # of the countries covered by the Geocode Postcode API. Users can provide either
        # the name or the alpha-2/3 code as per the
        # [ISO 3166-1 standard](https://en.wikipedia.org/wiki/ISO_3166-1) of a country
        # covered by the API as input for this parameter.
        country: nil,
        # Body param: Specify the format in which the boundary details of the post code
        # will be returned. When specified, the boundary details will be returned in the
        # `geojson` format. When not specified, the boundary details are returned in
        # general format.
        format_: nil,
        # Body param: Provide the postal code for which the information is needed. At
        # least one of (`postalcode` + `country`) or `at` needs to be provided. Please
        # note that only 1 postal code can be requested. [See this example](#note).
        postalcode: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Nextbillionai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
