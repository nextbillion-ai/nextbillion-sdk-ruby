# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Optimization#compute
    class OptimizationComputeParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      # @!attribute coordinates
      #   This is a pipe-separated list of coordinates.
      #
      #   Minimum 3 pairs of coordinates and Maximum 12 pairs of coordinates are allowed.
      #
      #   @return [String]
      required :coordinates, String

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute approaches
      #   A semicolon-separated list indicating the side of the road from which to
      #   approach waypoints in a requested route. If provided, the number of `approaches`
      #   must be the same as the number of `coordinates`. However, you can skip a
      #   coordinate and show its position in the list with the `;` separator.
      #
      #   @return [Symbol, Nextbillionai::Models::OptimizationComputeParams::Approaches, nil]
      optional :approaches, enum: -> { Nextbillionai::OptimizationComputeParams::Approaches }

      # @!attribute destination
      #   Specify the destination coordinate of the returned route. If the input is
      #   `last`, the last coordinate will be the destination.
      #
      #   @return [Symbol, Nextbillionai::Models::OptimizationComputeParams::Destination, nil]
      optional :destination, enum: -> { Nextbillionai::OptimizationComputeParams::Destination }

      # @!attribute geometries
      #   Sets the output format of the route geometry in the response.
      #
      #   On providing `polyline` and `polyline6` as input, respective encoded geometry is
      #   returned. However, when `geojson` is provided as the input value, `polyline`
      #   encoded geometry is returned in the response along with a geojson details of the
      #   route.
      #
      #   @return [Symbol, Nextbillionai::Models::OptimizationComputeParams::Geometries, nil]
      optional :geometries, enum: -> { Nextbillionai::OptimizationComputeParams::Geometries }

      # @!attribute mode
      #   Set which driving mode the service should use to determine a route. For example,
      #   if you use "car", the API will return a route that a car can take. Using "truck"
      #   will return a route a truck can use, taking into account appropriate truck
      #   routing restrictions.
      #
      #   When "mode=truck", following are the default dimensions that are used:
      #
      #   \- truck_height = 214 centimeters
      #
      #   \- truck_width = 183 centimeters
      #
      #   \- truck_length = 519 centimeters
      #
      #   \- truck_weight = 5000 kg
      #
      #   Please use the Directions Flexible version if you want to use custom truck
      #   dimensions.
      #
      #   Note: Only the "car" profile is enabled by default. Please note that customized
      #   profiles (including "truck") might not be available for all regions. Please
      #   contact your [NextBillion.ai](http://NextBillion.ai) account manager, sales
      #   representative or reach out at
      #   [support@nextbillion.ai](mailto:support@nextbillion.ai) in case you need
      #   additional profiles.
      #
      #   @return [Symbol, Nextbillionai::Models::OptimizationComputeParams::Mode, nil]
      optional :mode, enum: -> { Nextbillionai::OptimizationComputeParams::Mode }

      # @!attribute roundtrip
      #   Indicates whether the returned route is a roundtrip.
      #
      #   @return [Boolean, nil]
      optional :roundtrip, Nextbillionai::Internal::Type::Boolean

      # @!attribute source
      #   The coordinate at which to start the returned route. If this is not configured,
      #   the return route’s destination will be the first coordinate.
      #
      #   @return [Symbol, Nextbillionai::Models::OptimizationComputeParams::Source, nil]
      optional :source, enum: -> { Nextbillionai::OptimizationComputeParams::Source }

      # @!attribute with_geometry
      #   Indicates whether the return geometry should be computed or not.
      #
      #   @return [Boolean, nil]
      optional :with_geometry, Nextbillionai::Internal::Type::Boolean

      # @!method initialize(coordinates:, key:, approaches: nil, destination: nil, geometries: nil, mode: nil, roundtrip: nil, source: nil, with_geometry: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::OptimizationComputeParams} for more details.
      #
      #   @param coordinates [String] This is a pipe-separated list of coordinates.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param approaches [Symbol, Nextbillionai::Models::OptimizationComputeParams::Approaches] A semicolon-separated list indicating the side of the road from which to approac
      #
      #   @param destination [Symbol, Nextbillionai::Models::OptimizationComputeParams::Destination] Specify the destination coordinate of the returned route. If the input is `last`
      #
      #   @param geometries [Symbol, Nextbillionai::Models::OptimizationComputeParams::Geometries] Sets the output format of the route geometry in the response.
      #
      #   @param mode [Symbol, Nextbillionai::Models::OptimizationComputeParams::Mode] Set which driving mode the service should use to determine a route. For example,
      #
      #   @param roundtrip [Boolean] Indicates whether the returned route is a roundtrip.
      #
      #   @param source [Symbol, Nextbillionai::Models::OptimizationComputeParams::Source] The coordinate at which to start the returned route. If this is not configured,
      #
      #   @param with_geometry [Boolean] Indicates whether the return geometry should be computed or not.
      #
      #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

      # A semicolon-separated list indicating the side of the road from which to
      # approach waypoints in a requested route. If provided, the number of `approaches`
      # must be the same as the number of `coordinates`. However, you can skip a
      # coordinate and show its position in the list with the `;` separator.
      module Approaches
        extend Nextbillionai::Internal::Type::Enum

        UNRESTRICTED = :"`unrestricted`"
        CURB = :"`curb`"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Specify the destination coordinate of the returned route. If the input is
      # `last`, the last coordinate will be the destination.
      module Destination
        extend Nextbillionai::Internal::Type::Enum

        ANY = :"`any`"
        LAST = :"`last`"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sets the output format of the route geometry in the response.
      #
      # On providing `polyline` and `polyline6` as input, respective encoded geometry is
      # returned. However, when `geojson` is provided as the input value, `polyline`
      # encoded geometry is returned in the response along with a geojson details of the
      # route.
      module Geometries
        extend Nextbillionai::Internal::Type::Enum

        POLYLINE = :"`polyline`"
        POLYLINE6 = :"`polyline6`"
        GEOJSON = :"`geojson`"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Set which driving mode the service should use to determine a route. For example,
      # if you use "car", the API will return a route that a car can take. Using "truck"
      # will return a route a truck can use, taking into account appropriate truck
      # routing restrictions.
      #
      # When "mode=truck", following are the default dimensions that are used:
      #
      # \- truck_height = 214 centimeters
      #
      # \- truck_width = 183 centimeters
      #
      # \- truck_length = 519 centimeters
      #
      # \- truck_weight = 5000 kg
      #
      # Please use the Directions Flexible version if you want to use custom truck
      # dimensions.
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

      # The coordinate at which to start the returned route. If this is not configured,
      # the return route’s destination will be the first coordinate.
      module Source
        extend Nextbillionai::Internal::Type::Enum

        ANY = :"`any`"
        FIRST = :"`first`"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
