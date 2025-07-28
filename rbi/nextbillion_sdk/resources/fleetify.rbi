# typed: strong

module NextbillionSDK
  module Resources
    class Fleetify
      sig { returns(NextbillionSDK::Resources::Fleetify::Routes) }
      attr_reader :routes

      sig { returns(NextbillionSDK::Resources::Fleetify::DocumentTemplates) }
      attr_reader :document_templates

      # @api private
      sig { params(client: NextbillionSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
