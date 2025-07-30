# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Isochrone#compute
    class IsochroneComputeParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      # @!attribute contours_meters
      #   The distances, in meters, to use for each isochrone contour. You can specify up
      #   to four contours. Distances must be in increasing order. The maximum distance
      #   that can be specified is 60000 meters (60 km).
      #
      #   @return [Integer]
      required :contours_meters, Integer

      # @!attribute contours_minutes
      #   The times, in minutes, to use for each isochrone contour. You can specify up to
      #   four contours. Times must be in increasing order. The maximum time that can be
      #   specified is 40 minutes.
      #
      #   @return [Integer]
      required :contours_minutes, Integer

      # @!attribute coordinates
      #   The coordinates of the location which acts as the starting point for which the
      #   isochrone lines need to be determined.
      #
      #   @return [String]
      required :coordinates, String

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute contours_colors
      #   The hex code of the color to fill isochrone contour. When requesting multiple
      #   contours, it is recommended to provide color codes for each of the requested
      #   contours, separated by a ",". If no colors are specified, the Isochrone API will
      #   assign a random color scheme to the output.
      #
      #   @return [String, nil]
      optional :contours_colors, String

      # @!attribute denoise
      #   A floating point value from 0.0 to 1.0 can be used to remove smaller contours.
      #   The default is 1.0. A value of 1.0 will only return the largest contour for a
      #   given value. A value of 0.5 drops any contours that are less than half the area
      #   of the largest contour in the set of contours for that same value.
      #
      #   @return [Float, nil]
      optional :denoise, Float

      # @!attribute departure_time
      #   Use this parameter to set a departure time, expressed as UNIX epoch timestamp in
      #   seconds, for calculating the isochrone contour. The response will consider the
      #   typical traffic conditions at the given time and return a contour which can be
      #   reached under those traffic conditions. Please note that if no input is provided
      #   for this parameter then the traffic conditions at the time of making the request
      #   are considered.
      #
      #   @return [Integer, nil]
      optional :departure_time, Integer

      # @!attribute generalize
      #   A positive floating point value, in meters, used as the tolerance for
      #   Douglas-Peucker generalization. There is no upper bound. If no value is
      #   specified in the request, the Isochrone API will choose the most optimized
      #   generalization to use for the request. Note that the generalization of contours
      #   can lead to self-intersections, as well as intersections of adjacent contours.
      #
      #   @return [Float, nil]
      optional :generalize, Float

      # @!attribute mode
      #   Set which driving mode the service should use to determine the contour. For
      #   example, if you use "car", the API will return an isochrone contour that a car
      #   can reach within the specified time or after driving the specified distance.
      #   Using "truck" will return a contour that a truck can reach after taking into
      #   account appropriate truck routing restrictions.
      #
      #   Note: Only the "car" profile is enabled by default. Please note that customized
      #   profiles (including "truck") might not be available for all regions. Please
      #   contact your [NextBillion.ai](http://NextBillion.ai) account manager, sales
      #   representative or reach out at
      #   [support@nextbillion.ai](mailto:support@nextbillion.ai) in case you need
      #   additional profiles.
      #
      #   @return [Symbol, Nextbillionai::Models::IsochroneComputeParams::Mode, nil]
      optional :mode, enum: -> { Nextbillionai::IsochroneComputeParams::Mode }

      # @!attribute polygons
      #   Specify whether to return the contours as GeoJSON polygons (true) or linestrings
      #   (false, default). When polygons=true, any contour that forms a ring is returned
      #   as a polygon.
      #
      #   @return [Boolean, nil]
      optional :polygons, Nextbillionai::Internal::Type::Boolean

      # @!method initialize(contours_meters:, contours_minutes:, coordinates:, key:, contours_colors: nil, denoise: nil, departure_time: nil, generalize: nil, mode: nil, polygons: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::IsochroneComputeParams} for more details.
      #
      #   @param contours_meters [Integer] The distances, in meters, to use for each isochrone contour. You can specify up
      #
      #   @param contours_minutes [Integer] The times, in minutes, to use for each isochrone contour. You can specify up to
      #
      #   @param coordinates [String] The coordinates of the location which acts as the starting point for which the i
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param contours_colors [String] The hex code of the color to fill isochrone contour. When requesting multiple co
      #
      #   @param denoise [Float] A floating point value from 0.0 to 1.0 can be used to remove smaller contours. T
      #
      #   @param departure_time [Integer] Use this parameter to set a departure time, expressed as UNIX epoch timestamp in
      #
      #   @param generalize [Float] A positive floating point value, in meters, used as the tolerance for Douglas-Pe
      #
      #   @param mode [Symbol, Nextbillionai::Models::IsochroneComputeParams::Mode] Set which driving mode the service should use to determine the contour. For exam
      #
      #   @param polygons [Boolean] Specify whether to return the contours as GeoJSON polygons (true) or linestrings
      #
      #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

      # Set which driving mode the service should use to determine the contour. For
      # example, if you use "car", the API will return an isochrone contour that a car
      # can reach within the specified time or after driving the specified distance.
      # Using "truck" will return a contour that a truck can reach after taking into
      # account appropriate truck routing restrictions.
      #
      # Note: Only the "car" profile is enabled by default. Please note that customized
      # profiles (including "truck") might not be available for all regions. Please
      # contact your [NextBillion.ai](http://NextBillion.ai) account manager, sales
      # representative or reach out at
      # [support@nextbillion.ai](mailto:support@nextbillion.ai) in case you need
      # additional profiles.
      module Mode
        extend Nextbillionai::Internal::Type::Enum

        CAR = :"`car`"
        TRUCK = :"`truck`"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
