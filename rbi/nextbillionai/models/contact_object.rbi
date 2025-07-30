# typed: strong

module Nextbillionai
  module Models
    class ContactObject < Nextbillionai::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Nextbillionai::ContactObject, Nextbillionai::Internal::AnyHash)
        end

      # The list of place categories this contact refers to.
      sig do
        returns(T.nilable(T::Array[Nextbillionai::ContactObject::Category]))
      end
      attr_reader :categories

      sig do
        params(
          categories: T::Array[Nextbillionai::ContactObject::Category::OrHash]
        ).void
      end
      attr_writer :categories

      # Optional label for the contact string, such as "Customer Service" or "Pharmacy
      # Fax".
      sig { returns(T.nilable(String)) }
      attr_reader :label

      sig { params(label: String).void }
      attr_writer :label

      # Contact information, as specified by the contact type.
      sig { returns(T.nilable(String)) }
      attr_reader :value

      sig { params(value: String).void }
      attr_writer :value

      sig do
        params(
          categories: T::Array[Nextbillionai::ContactObject::Category::OrHash],
          label: String,
          value: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The list of place categories this contact refers to.
        categories: nil,
        # Optional label for the contact string, such as "Customer Service" or "Pharmacy
        # Fax".
        label: nil,
        # Contact information, as specified by the contact type.
        value: nil
      )
      end

      sig do
        override.returns(
          {
            categories: T::Array[Nextbillionai::ContactObject::Category],
            label: String,
            value: String
          }
        )
      end
      def to_hash
      end

      class Category < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::ContactObject::Category,
              Nextbillionai::Internal::AnyHash
            )
          end

        # Identifier number for an associated category. For example: "900-9300-0000"
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # Identifier number for an associated category. For example: "900-9300-0000"
          id: nil
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end
