# typed: strong

module NextbillionSDK
  module Models
    class Categories < NextbillionSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(NextbillionSDK::Categories, NextbillionSDK::Internal::AnyHash)
        end

      # Identifier number for an associated category.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Name of the place category in the result item language.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Whether or not it is a primary category. This field is visible only when the
      # value is 'true'.
      sig { returns(T.nilable(String)) }
      attr_reader :primary

      sig { params(primary: String).void }
      attr_writer :primary

      sig do
        params(id: String, name: String, primary: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # Identifier number for an associated category.
        id: nil,
        # Name of the place category in the result item language.
        name: nil,
        # Whether or not it is a primary category. This field is visible only when the
        # value is 'true'.
        primary: nil
      )
      end

      sig { override.returns({ id: String, name: String, primary: String }) }
      def to_hash
      end
    end
  end
end
