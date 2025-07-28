# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Mdm
      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::MdmCreateDistanceMatrixParams} for more details.
      #
      # Create a massive distance matrix task
      #
      # @overload create_distance_matrix(key:, option:, origins:, spliter: nil, area: nil, avoid: nil, cross_border: nil, departure_time: nil, destinations: nil, destinations_approach: nil, hazmat_type: nil, mode: nil, origins_approach: nil, route_type: nil, truck_axle_load: nil, truck_size: nil, truck_weight: nil, request_options: {})
      #
      # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
      #
      # @param option [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::Option] Query param: Use this option to switch to truck-specific routing or time based r
      #
      # @param origins [String] Body param: `origins` are the starting point of your route. Ensure that origins
      #
      # @param spliter [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::Spliter] Query param: Specify a spliter to split the matrix by. It accepts 2 values:
      #
      # @param area [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::Area] Body param: Provide the country that the coordinates belong to.
      #
      # @param avoid [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::Avoid] Body param: Setting this will ensure the route avoids the object(s) specified as
      #
      # @param cross_border [Boolean] Body param: Specify if crossing an international border is expected for operatio
      #
      # @param departure_time [Integer] Body param: This is a number in UNIX epoch timestamp in seconds format that can
      #
      # @param destinations [String] Body param: `destinations` are the ending coordinates of your route. Ensure that
      #
      # @param destinations_approach [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::DestinationsApproach] Body param: Specify the side of the road from which to approach `destinations` p
      #
      # @param hazmat_type [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::HazmatType] Body param: Specify the type of hazardous material being carried and the service
      #
      # @param mode [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::Mode] Body param: Set which driving mode the service should use to determine a route.
      #
      # @param origins_approach [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::OriginsApproach] Body param: Specify the side of the road from which to approach `origins` points
      #
      # @param route_type [Symbol, NextbillionSDK::Models::MdmCreateDistanceMatrixParams::RouteType] Body param: Set the route type that needs to be returned. Please note that `rout
      #
      # @param truck_axle_load [Float] Body param: Specify the total load per axle (including the weight of trailers an
      #
      # @param truck_size [String] Body param: This defines the dimensions of a truck in centimeters (cm) in the fo
      #
      # @param truck_weight [Integer] Body param: This parameter defines the weight of the truck including trailers an
      #
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [NextbillionSDK::Models::MdmCreateDistanceMatrixResponse]
      #
      # @see NextbillionSDK::Models::MdmCreateDistanceMatrixParams
      def create_distance_matrix(params)
        parsed, options = NextbillionSDK::MdmCreateDistanceMatrixParams.dump_request(params)
        query_params = [:key, :option, :spliter]
        @client.request(
          method: :post,
          path: "mdm/create",
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: NextbillionSDK::Models::MdmCreateDistanceMatrixResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::MdmGetDistanceMatrixStatusParams} for more details.
      #
      # Get massive distance matrix task status
      #
      # @overload get_distance_matrix_status(id:, key:, request_options: {})
      #
      # @param id [String] Provide the unique ID that was returned on successful submission of the Asynchro
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [NextbillionSDK::Models::MdmGetDistanceMatrixStatusResponse]
      #
      # @see NextbillionSDK::Models::MdmGetDistanceMatrixStatusParams
      def get_distance_matrix_status(params)
        parsed, options = NextbillionSDK::MdmGetDistanceMatrixStatusParams.dump_request(params)
        @client.request(
          method: :get,
          path: "mdm/status",
          query: parsed,
          model: NextbillionSDK::Models::MdmGetDistanceMatrixStatusResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [NextbillionSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
