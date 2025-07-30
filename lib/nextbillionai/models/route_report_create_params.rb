# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::RouteReport#create
    class RouteReportCreateParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute original_shape
      #   Takes a route geometry as input and returns the route details. Accepts
      #   `polyline` and `polyline6` encoded geometry as input.
      #
      #   **Note**: Route geometries generated from sources other than
      #   [NextBillion.ai](http://NextBillion.ai) services, are not supported in this
      #   version.
      #
      #   @return [String]
      required :original_shape, String

      # @!attribute original_shape_type
      #   Specify the encoding type of route geometry provided in `original_shape` input.
      #   Please note that an error is returned when this parameter is not specified while
      #   an input is added to `original_shape` parameter.
      #
      #   @return [Symbol, Nextbillionai::Models::RouteReportCreateParams::OriginalShapeType]
      required :original_shape_type, enum: -> { Nextbillionai::RouteReportCreateParams::OriginalShapeType }

      # @!method initialize(key:, original_shape:, original_shape_type:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::RouteReportCreateParams} for more details.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param original_shape [String] Takes a route geometry as input and returns the route details. Accepts `polyline
      #
      #   @param original_shape_type [Symbol, Nextbillionai::Models::RouteReportCreateParams::OriginalShapeType] Specify the encoding type of route geometry provided in `original_shape` input.
      #
      #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

      # Specify the encoding type of route geometry provided in `original_shape` input.
      # Please note that an error is returned when this parameter is not specified while
      # an input is added to `original_shape` parameter.
      module OriginalShapeType
        extend Nextbillionai::Internal::Type::Enum

        POLYLINE = :"`polyline`"
        POLYLINE6 = :"`polyline6`"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
