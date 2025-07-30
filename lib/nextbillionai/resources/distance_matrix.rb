# frozen_string_literal: true

module Nextbillionai
  module Resources
    class DistanceMatrix
      # @return [Nextbillionai::Resources::DistanceMatrix::Json]
      attr_reader :json

      # @api private
      #
      # @param client [Nextbillionai::Client]
      def initialize(client:)
        @client = client
        @json = Nextbillionai::Resources::DistanceMatrix::Json.new(client: client)
      end
    end
  end
end
