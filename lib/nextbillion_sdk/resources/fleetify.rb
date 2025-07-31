# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Fleetify
      # @return [NextbillionSDK::Resources::Fleetify::Routes]
      attr_reader :routes

      # @return [NextbillionSDK::Resources::Fleetify::DocumentTemplates]
      attr_reader :document_templates

      # @api private
      #
      # @param client [NextbillionSDK::Client]
      def initialize(client:)
        @client = client
        @routes = NextbillionSDK::Resources::Fleetify::Routes.new(client: client)
        @document_templates = NextbillionSDK::Resources::Fleetify::DocumentTemplates.new(client: client)
      end
    end
  end
end
