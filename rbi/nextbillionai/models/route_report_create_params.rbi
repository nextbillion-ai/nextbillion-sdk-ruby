# typed: strong

module Nextbillionai
  module Models
    class RouteReportCreateParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::RouteReportCreateParams,
            Nextbillionai::Internal::AnyHash
          )
        end

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      # Takes a route geometry as input and returns the route details. Accepts polyline
      # and polyline6 encoded geometry as input.
      #
      # **Note**: Route geometries generated from sources other than
      # [NextBillion.ai](http://NextBillion.ai) services, are not supported in this
      # version.
      sig { returns(String) }
      attr_accessor :original_shape

      # Specify the encoding type of route geometry provided in original_shape input.
      # Please note that an error is returned when this parameter is not specified while
      # an input is added to original_shape parameter.
      sig do
        returns(
          Nextbillionai::RouteReportCreateParams::OriginalShapeType::OrSymbol
        )
      end
      attr_accessor :original_shape_type

      sig do
        params(
          key: String,
          original_shape: String,
          original_shape_type:
            Nextbillionai::RouteReportCreateParams::OriginalShapeType::OrSymbol,
          request_options: Nextbillionai::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # Takes a route geometry as input and returns the route details. Accepts polyline
        # and polyline6 encoded geometry as input.
        #
        # **Note**: Route geometries generated from sources other than
        # [NextBillion.ai](http://NextBillion.ai) services, are not supported in this
        # version.
        original_shape:,
        # Specify the encoding type of route geometry provided in original_shape input.
        # Please note that an error is returned when this parameter is not specified while
        # an input is added to original_shape parameter.
        original_shape_type:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            key: String,
            original_shape: String,
            original_shape_type:
              Nextbillionai::RouteReportCreateParams::OriginalShapeType::OrSymbol,
            request_options: Nextbillionai::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Specify the encoding type of route geometry provided in original_shape input.
      # Please note that an error is returned when this parameter is not specified while
      # an input is added to original_shape parameter.
      module OriginalShapeType
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Nextbillionai::RouteReportCreateParams::OriginalShapeType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        POLYLINE =
          T.let(
            :polyline,
            Nextbillionai::RouteReportCreateParams::OriginalShapeType::TaggedSymbol
          )
        POLYLINE6 =
          T.let(
            :polyline6,
            Nextbillionai::RouteReportCreateParams::OriginalShapeType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::RouteReportCreateParams::OriginalShapeType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
