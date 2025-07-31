# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class DistanceMatrix
      # @return [NextbillionSDK::Resources::DistanceMatrix::Json]
      attr_reader :json

      # @api private
      #
      # @param client [NextbillionSDK::Client]
      def initialize(client:)
        @client = client
        @json = NextbillionSDK::Resources::DistanceMatrix::Json.new(client: client)
      end
    end
  end
end
