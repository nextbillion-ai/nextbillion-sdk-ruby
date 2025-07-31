# typed: strong

module Nextbillionai
  module Resources
    class DistanceMatrix
      sig { returns(Nextbillionai::Resources::DistanceMatrix::Json) }
      attr_reader :json

      # @api private
      sig { params(client: Nextbillionai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
