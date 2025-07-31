# typed: strong

module NextbillionSDK
  module Resources
    class Areas
      # Get available areas
      sig do
        params(
          key: String,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(T::Array[NextbillionSDK::Models::AreaListResponseItem])
      end
      def list(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: NextbillionSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
