# typed: strong

module NextbillionSDK
  module Resources
    class Lookup
      # Lookup By ID
      sig do
        params(
          id: String,
          key: String,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(NextbillionSDK::Models::LookupByIDResponse)
      end
      def by_id(
        # Specify the unique identifier of a specific POI, Street, Geography, Point
        # Address or other entities to retrieve its details.
        id:,
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
