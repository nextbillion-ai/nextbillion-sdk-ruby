# typed: strong

module Nextbillionai
  module Resources
    class Fleetify
      sig { returns(Nextbillionai::Resources::Fleetify::Routes) }
      attr_reader :routes

      sig { returns(Nextbillionai::Resources::Fleetify::DocumentTemplates) }
      attr_reader :document_templates

      # @api private
      sig { params(client: Nextbillionai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
