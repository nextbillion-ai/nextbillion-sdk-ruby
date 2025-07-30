# typed: strong

module Nextbillionai
  module Resources
    class Areas
      # Get available areas
      sig do
        params(
          key: String,
          request_options: Nextbillionai::RequestOptions::OrHash
        ).returns(T::Array[Nextbillionai::Models::AreaListResponseItem])
      end
      def list(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Nextbillionai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
