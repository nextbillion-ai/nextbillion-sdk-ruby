# typed: strong

module Nextbillionai
  module Models
    class MapView < Nextbillionai::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Nextbillionai::MapView, Nextbillionai::Internal::AnyHash)
        end

      # Longitude of the eastern-side of the box.
      sig { returns(T.nilable(String)) }
      attr_reader :east

      sig { params(east: String).void }
      attr_writer :east

      # Longitude of the northern-side of the box.
      sig { returns(T.nilable(String)) }
      attr_reader :north

      sig { params(north: String).void }
      attr_writer :north

      # Longitude of the southern-side of the box.
      sig { returns(T.nilable(String)) }
      attr_reader :south

      sig { params(south: String).void }
      attr_writer :south

      # Longitude of the western-side of the box.
      sig { returns(T.nilable(String)) }
      attr_reader :west

      sig { params(west: String).void }
      attr_writer :west

      # The bounding box enclosing the geometric shape (area or line) that an individual
      # result covers. `place` typed results have no `mapView`.
      sig do
        params(
          east: String,
          north: String,
          south: String,
          west: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Longitude of the eastern-side of the box.
        east: nil,
        # Longitude of the northern-side of the box.
        north: nil,
        # Longitude of the southern-side of the box.
        south: nil,
        # Longitude of the western-side of the box.
        west: nil
      )
      end

      sig do
        override.returns(
          { east: String, north: String, south: String, west: String }
        )
      end
      def to_hash
      end
    end
  end
end
