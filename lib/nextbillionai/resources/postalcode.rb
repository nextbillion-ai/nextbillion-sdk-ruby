# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Postalcode
      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::PostalcodeRetrieveCoordinatesParams} for more details.
      #
      # Retrieve coordinates by postal code
      #
      # @overload retrieve_coordinates(key:, at: nil, country: nil, format_: nil, postalcode: nil, request_options: {})
      #
      # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
      #
      # @param at [Nextbillionai::Models::PostalcodeRetrieveCoordinatesParams::At] Body param: Location coordinates that you want to get the postal code of. If not
      #
      # @param country [String] Body param: Country containing the postal code or the location. It is mandatory
      #
      # @param format_ [Symbol, Nextbillionai::Models::PostalcodeRetrieveCoordinatesParams::Format] Body param: Specify the format in which the boundary details of the post code wi
      #
      # @param postalcode [String] Body param: Provide the postal code for which the information is needed. At leas
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::PostalcodeRetrieveCoordinatesResponse]
      #
      # @see Nextbillionai::Models::PostalcodeRetrieveCoordinatesParams
      def retrieve_coordinates(params)
        parsed, options = Nextbillionai::PostalcodeRetrieveCoordinatesParams.dump_request(params)
        query_params = [:key]
        @client.request(
          method: :post,
          path: "postalcode",
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: Nextbillionai::Models::PostalcodeRetrieveCoordinatesResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Nextbillionai::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
