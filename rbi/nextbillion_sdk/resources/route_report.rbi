# typed: strong

module NextbillionSDK
  module Resources
    class RouteReport
      # Route Report
      sig do
        params(
          key: String,
          original_shape: String,
          original_shape_type:
            NextbillionSDK::RouteReportCreateParams::OriginalShapeType::OrSymbol,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(NextbillionSDK::Models::RouteReportCreateResponse)
      end
      def create(
        # Query param: A key is a unique identifier that is required to authenticate a
        # request to the API.
        key:,
        # Body param: Takes a route geometry as input and returns the route details.
        # Accepts `polyline` and `polyline6` encoded geometry as input.
        #
        # **Note**: Route geometries generated from sources other than
        # [NextBillion.ai](http://NextBillion.ai) services, are not supported in this
        # version.
        original_shape:,
        # Body param: Specify the encoding type of route geometry provided in
        # `original_shape` input. Please note that an error is returned when this
        # parameter is not specified while an input is added to `original_shape`
        # parameter.
        original_shape_type:,
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
