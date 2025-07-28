# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Lookup
      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::LookupByIDParams} for more details.
      #
      # Lookup By ID
      #
      # @overload by_id(id:, key:, request_options: {})
      #
      # @param id [String] Specify the unique identifier of a specific POI, Street, Geography, Point Addres
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [NextbillionSDK::Models::LookupByIDResponse]
      #
      # @see NextbillionSDK::Models::LookupByIDParams
      def by_id(params)
        parsed, options = NextbillionSDK::LookupByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: "lookup",
          query: parsed,
          model: NextbillionSDK::Models::LookupByIDResponse,
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
