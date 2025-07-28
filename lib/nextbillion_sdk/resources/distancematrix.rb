# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Distancematrix
      # @return [NextbillionSDK::Resources::Distancematrix::Json]
      attr_reader :json

      # @api private
      #
      # @param client [NextbillionSDK::Client]
      def initialize(client:)
        @client = client
        @json = NextbillionSDK::Resources::Distancematrix::Json.new(client: client)
      end
    end
  end
end
