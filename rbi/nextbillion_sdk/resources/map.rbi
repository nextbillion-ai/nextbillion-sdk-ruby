# typed: strong

module NextbillionSDK
  module Resources
    class Map
      # Road Segments
      sig do
        params(request_options: NextbillionSDK::RequestOptions::OrHash).void
      end
      def create_segment(request_options: {})
      end

      # @api private
      sig { params(client: NextbillionSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
