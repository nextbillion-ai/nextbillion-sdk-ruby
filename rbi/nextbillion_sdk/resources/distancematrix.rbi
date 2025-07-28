# typed: strong

module NextbillionSDK
  module Resources
    class Distancematrix
      sig { returns(NextbillionSDK::Resources::Distancematrix::Json) }
      attr_reader :json

      # @api private
      sig { params(client: NextbillionSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
