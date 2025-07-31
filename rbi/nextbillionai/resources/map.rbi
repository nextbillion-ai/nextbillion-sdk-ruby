# typed: strong

module Nextbillionai
  module Resources
    class Map
      # Road Segments
      sig do
        params(request_options: Nextbillionai::RequestOptions::OrHash).void
      end
      def create_segment(request_options: {})
      end

      # @api private
      sig { params(client: Nextbillionai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
