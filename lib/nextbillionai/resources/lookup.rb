# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Lookup
      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::LookupByIDParams} for more details.
      #
      # Lookup By ID
      #
      # @overload by_id(id:, key:, request_options: {})
      #
      # @param id [String] Specify the unique identifier of a specific POI, Street, Geography, Point Addres
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::LookupByIDResponse]
      #
      # @see Nextbillionai::Models::LookupByIDParams
      def by_id(params)
        parsed, options = Nextbillionai::LookupByIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: "lookup",
          query: parsed,
          model: Nextbillionai::Models::LookupByIDResponse,
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
