# typed: strong

module Nextbillionai
  module Models
    class OptimizationComputeParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::OptimizationComputeParams,
            Nextbillionai::Internal::AnyHash
          )
        end

      # This is a pipe-separated list of coordinates.
      #
      # Minimum 3 pairs of coordinates and Maximum 12 pairs of coordinates are allowed.
      sig { returns(String) }
      attr_accessor :coordinates

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      # A semicolon-separated list indicating the side of the road from which to
      # approach waypoints in a requested route. If provided, the number of approaches
      # must be the same as the number of coordinates. However, you can skip a
      # coordinate and show its position in the list with the ; separator.
      sig do
        returns(
          T.nilable(
            Nextbillionai::OptimizationComputeParams::Approaches::OrSymbol
          )
        )
      end
      attr_reader :approaches

      sig do
        params(
          approaches:
            Nextbillionai::OptimizationComputeParams::Approaches::OrSymbol
        ).void
      end
      attr_writer :approaches

      # Specify the destination coordinate of the returned route. If the input is last,
      # the last coordinate will be the destination.
      sig do
        returns(
          T.nilable(
            Nextbillionai::OptimizationComputeParams::Destination::OrSymbol
          )
        )
      end
      attr_reader :destination

      sig do
        params(
          destination:
            Nextbillionai::OptimizationComputeParams::Destination::OrSymbol
        ).void
      end
      attr_writer :destination

      # Sets the output format of the route geometry in the response.
      #
      # On providing polyline and polyline6 as input, respective encoded geometry is
      # returned. However, when geojson is provided as the input value, polyline encoded
      # geometry is returned in the response along with a geojson details of the route.
      sig do
        returns(
          T.nilable(
            Nextbillionai::OptimizationComputeParams::Geometries::OrSymbol
          )
        )
      end
      attr_reader :geometries

      sig do
        params(
          geometries:
            Nextbillionai::OptimizationComputeParams::Geometries::OrSymbol
        ).void
      end
      attr_writer :geometries

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
      sig do
        returns(
          T.nilable(Nextbillionai::OptimizationComputeParams::Mode::OrSymbol)
        )
      end
      attr_reader :mode

      sig do
        params(
          mode: Nextbillionai::OptimizationComputeParams::Mode::OrSymbol
        ).void
      end
      attr_writer :mode

      # Indicates whether the returned route is a roundtrip.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :roundtrip

      sig { params(roundtrip: T::Boolean).void }
      attr_writer :roundtrip

      # The coordinate at which to start the returned route. If this is not configured,
      # the return route’s destination will be the first coordinate.
      sig do
        returns(
          T.nilable(Nextbillionai::OptimizationComputeParams::Source::OrSymbol)
        )
      end
      attr_reader :source

      sig do
        params(
          source: Nextbillionai::OptimizationComputeParams::Source::OrSymbol
        ).void
      end
      attr_writer :source

      # Indicates whether the return geometry should be computed or not.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :with_geometry

      sig { params(with_geometry: T::Boolean).void }
      attr_writer :with_geometry

      sig do
        params(
          coordinates: String,
          key: String,
          approaches:
            Nextbillionai::OptimizationComputeParams::Approaches::OrSymbol,
          destination:
            Nextbillionai::OptimizationComputeParams::Destination::OrSymbol,
          geometries:
            Nextbillionai::OptimizationComputeParams::Geometries::OrSymbol,
          mode: Nextbillionai::OptimizationComputeParams::Mode::OrSymbol,
          roundtrip: T::Boolean,
          source: Nextbillionai::OptimizationComputeParams::Source::OrSymbol,
          with_geometry: T::Boolean,
          request_options: Nextbillionai::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # This is a pipe-separated list of coordinates.
        #
        # Minimum 3 pairs of coordinates and Maximum 12 pairs of coordinates are allowed.
        coordinates:,
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # A semicolon-separated list indicating the side of the road from which to
        # approach waypoints in a requested route. If provided, the number of approaches
        # must be the same as the number of coordinates. However, you can skip a
        # coordinate and show its position in the list with the ; separator.
        approaches: nil,
        # Specify the destination coordinate of the returned route. If the input is last,
        # the last coordinate will be the destination.
        destination: nil,
        # Sets the output format of the route geometry in the response.
        #
        # On providing polyline and polyline6 as input, respective encoded geometry is
        # returned. However, when geojson is provided as the input value, polyline encoded
        # geometry is returned in the response along with a geojson details of the route.
        geometries: nil,
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
        mode: nil,
        # Indicates whether the returned route is a roundtrip.
        roundtrip: nil,
        # The coordinate at which to start the returned route. If this is not configured,
        # the return route’s destination will be the first coordinate.
        source: nil,
        # Indicates whether the return geometry should be computed or not.
        with_geometry: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            coordinates: String,
            key: String,
            approaches:
              Nextbillionai::OptimizationComputeParams::Approaches::OrSymbol,
            destination:
              Nextbillionai::OptimizationComputeParams::Destination::OrSymbol,
            geometries:
              Nextbillionai::OptimizationComputeParams::Geometries::OrSymbol,
            mode: Nextbillionai::OptimizationComputeParams::Mode::OrSymbol,
            roundtrip: T::Boolean,
            source: Nextbillionai::OptimizationComputeParams::Source::OrSymbol,
            with_geometry: T::Boolean,
            request_options: Nextbillionai::RequestOptions
          }
        )
      end
      def to_hash
      end

      # A semicolon-separated list indicating the side of the road from which to
      # approach waypoints in a requested route. If provided, the number of approaches
      # must be the same as the number of coordinates. However, you can skip a
      # coordinate and show its position in the list with the ; separator.
      module Approaches
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::OptimizationComputeParams::Approaches)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UNRESTRICTED =
          T.let(
            :unrestricted,
            Nextbillionai::OptimizationComputeParams::Approaches::TaggedSymbol
          )
        CURB =
          T.let(
            :curb,
            Nextbillionai::OptimizationComputeParams::Approaches::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::OptimizationComputeParams::Approaches::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Specify the destination coordinate of the returned route. If the input is last,
      # the last coordinate will be the destination.
      module Destination
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::OptimizationComputeParams::Destination)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ANY =
          T.let(
            :any,
            Nextbillionai::OptimizationComputeParams::Destination::TaggedSymbol
          )
        LAST =
          T.let(
            :last,
            Nextbillionai::OptimizationComputeParams::Destination::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::OptimizationComputeParams::Destination::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Sets the output format of the route geometry in the response.
      #
      # On providing polyline and polyline6 as input, respective encoded geometry is
      # returned. However, when geojson is provided as the input value, polyline encoded
      # geometry is returned in the response along with a geojson details of the route.
      module Geometries
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::OptimizationComputeParams::Geometries)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        POLYLINE =
          T.let(
            :polyline,
            Nextbillionai::OptimizationComputeParams::Geometries::TaggedSymbol
          )
        POLYLINE6 =
          T.let(
            :polyline6,
            Nextbillionai::OptimizationComputeParams::Geometries::TaggedSymbol
          )
        GEOJSON =
          T.let(
            :geojson,
            Nextbillionai::OptimizationComputeParams::Geometries::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::OptimizationComputeParams::Geometries::TaggedSymbol
            ]
          )
        end
        def self.values
        end
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

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::OptimizationComputeParams::Mode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CAR =
          T.let(
            :car,
            Nextbillionai::OptimizationComputeParams::Mode::TaggedSymbol
          )
        TRUCK =
          T.let(
            :truck,
            Nextbillionai::OptimizationComputeParams::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::OptimizationComputeParams::Mode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The coordinate at which to start the returned route. If this is not configured,
      # the return route’s destination will be the first coordinate.
      module Source
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::OptimizationComputeParams::Source)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ANY =
          T.let(
            :any,
            Nextbillionai::OptimizationComputeParams::Source::TaggedSymbol
          )
        FIRST =
          T.let(
            :first,
            Nextbillionai::OptimizationComputeParams::Source::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::OptimizationComputeParams::Source::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
