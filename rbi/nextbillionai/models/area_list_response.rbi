# typed: strong

module Nextbillionai
  module Models
    class AreaListResponseItem < Nextbillionai::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::Models::AreaListResponseItem,
            Nextbillionai::Internal::AnyHash
          )
        end

      # Returns the code for the available area.
      sig { returns(T.nilable(String)) }
      attr_reader :code

      sig { params(code: String).void }
      attr_writer :code

      # Returns available traveling modes for the given area.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :modes

      sig { params(modes: T::Array[String]).void }
      attr_writer :modes

      # Returns the name of the available area.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Returns the offset from UTC time.
      sig { returns(T.nilable(Float)) }
      attr_reader :timezone

      sig { params(timezone: Float).void }
      attr_writer :timezone

      sig do
        params(
          code: String,
          modes: T::Array[String],
          name: String,
          timezone: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the code for the available area.
        code: nil,
        # Returns available traveling modes for the given area.
        modes: nil,
        # Returns the name of the available area.
        name: nil,
        # Returns the offset from UTC time.
        timezone: nil
      )
      end

      sig do
        override.returns(
          {
            code: String,
            modes: T::Array[String],
            name: String,
            timezone: Float
          }
        )
      end
      def to_hash
      end
    end

    AreaListResponse =
      T.let(
        Nextbillionai::Internal::Type::ArrayOf[
          Nextbillionai::Models::AreaListResponseItem
        ],
        Nextbillionai::Internal::Type::Converter
      )
  end
end
