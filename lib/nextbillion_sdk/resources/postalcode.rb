# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Postalcode
      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::PostalcodeRetrieveCoordinatesParams} for more details.
      #
      # Retrieve coordinates by postal code
      #
      # @overload retrieve_coordinates(key:, at: nil, country: nil, format_: nil, postalcode: nil, request_options: {})
      #
      # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
      #
      # @param at [NextbillionSDK::Models::PostalcodeRetrieveCoordinatesParams::At] Body param: Location coordinates that you want to get the postal code of. If not
      #
      # @param country [String] Body param: Country containing the postal code or the location. It is mandatory
      #
      # @param format_ [Symbol, NextbillionSDK::Models::PostalcodeRetrieveCoordinatesParams::Format] Body param: Specify the format in which the boundary details of the post code wi
      #
      # @param postalcode [String] Body param: Provide the postal code for which the information is needed. At leas
      #
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse]
      #
      # @see NextbillionSDK::Models::PostalcodeRetrieveCoordinatesParams
      def retrieve_coordinates(params)
        parsed, options = NextbillionSDK::PostalcodeRetrieveCoordinatesParams.dump_request(params)
        query_params = [:key]
        @client.request(
          method: :post,
          path: "postalcode",
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: NextbillionSDK::Models::PostalcodeRetrieveCoordinatesResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [NextbillionSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
