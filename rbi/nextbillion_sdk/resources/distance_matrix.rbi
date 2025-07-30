# typed: strong

module NextbillionSDK
  module Resources
    class DistanceMatrix
      sig { returns(NextbillionSDK::Resources::DistanceMatrix::Json) }
      attr_reader :json

      # @api private
      sig { params(client: NextbillionSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
