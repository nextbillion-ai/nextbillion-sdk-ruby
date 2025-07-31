# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Fleetify
      # @return [Nextbillionai::Resources::Fleetify::Routes]
      attr_reader :routes

      # @return [Nextbillionai::Resources::Fleetify::DocumentTemplates]
      attr_reader :document_templates

      # @api private
      #
      # @param client [Nextbillionai::Client]
      def initialize(client:)
        @client = client
        @routes = Nextbillionai::Resources::Fleetify::Routes.new(client: client)
        @document_templates = Nextbillionai::Resources::Fleetify::DocumentTemplates.new(client: client)
      end
    end
  end
end
