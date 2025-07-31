# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Isochrone
      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::IsochroneComputeParams} for more details.
      #
      # The NextBillion.ai Isochrone API computes areas that are reachable within a
      # specified amount of time from a location, and returns the reachable regions as
      # contours of polygons or lines that you can display on a map.
      #
      # @overload compute(contours_meters:, contours_minutes:, coordinates:, key:, contours_colors: nil, denoise: nil, departure_time: nil, generalize: nil, mode: nil, polygons: nil, request_options: {})
      #
      # @param contours_meters [Integer] The distances, in meters, to use for each isochrone contour. You can specify up
      #
      # @param contours_minutes [Integer] The times, in minutes, to use for each isochrone contour. You can specify up to
      #
      # @param coordinates [String] The coordinates of the location which acts as the starting point for which the i
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param contours_colors [String] The hex code of the color to fill isochrone contour. When requesting multiple co
      #
      # @param denoise [Float] A floating point value from 0.0 to 1.0 can be used to remove smaller contours. T
      #
      # @param departure_time [Integer] Use this parameter to set a departure time, expressed as UNIX epoch timestamp in
      #
      # @param generalize [Float] A positive floating point value, in meters, used as the tolerance for Douglas-Pe
      #
      # @param mode [Symbol, Nextbillionai::Models::IsochroneComputeParams::Mode] Set which driving mode the service should use to determine the contour. For exam
      #
      # @param polygons [Boolean] Specify whether to return the contours as GeoJSON polygons (true) or linestrings
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::IsochroneComputeResponse]
      #
      # @see Nextbillionai::Models::IsochroneComputeParams
      def compute(params)
        parsed, options = Nextbillionai::IsochroneComputeParams.dump_request(params)
        @client.request(
          method: :get,
          path: "isochrone/json",
          query: parsed,
          model: Nextbillionai::Models::IsochroneComputeResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Nextbillionai::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
