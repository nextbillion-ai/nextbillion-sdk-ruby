# typed: strong

module Nextbillionai
  module Models
    class Contacts < Nextbillionai::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Nextbillionai::Contacts, Nextbillionai::Internal::AnyHash)
        end

      sig { returns(T.nilable(T::Array[Nextbillionai::ContactObject])) }
      attr_reader :email

      sig { params(email: T::Array[Nextbillionai::ContactObject::OrHash]).void }
      attr_writer :email

      sig { returns(T.nilable(T::Array[Nextbillionai::ContactObject])) }
      attr_reader :fax

      sig { params(fax: T::Array[Nextbillionai::ContactObject::OrHash]).void }
      attr_writer :fax

      sig { returns(T.nilable(T::Array[Nextbillionai::ContactObject])) }
      attr_reader :mobile

      sig do
        params(mobile: T::Array[Nextbillionai::ContactObject::OrHash]).void
      end
      attr_writer :mobile

      sig { returns(T.nilable(T::Array[Nextbillionai::ContactObject])) }
      attr_reader :phone

      sig { params(phone: T::Array[Nextbillionai::ContactObject::OrHash]).void }
      attr_writer :phone

      sig { returns(T.nilable(T::Array[Nextbillionai::ContactObject])) }
      attr_reader :toll_free

      sig do
        params(toll_free: T::Array[Nextbillionai::ContactObject::OrHash]).void
      end
      attr_writer :toll_free

      sig { returns(T.nilable(T::Array[Nextbillionai::ContactObject])) }
      attr_reader :www

      sig { params(www: T::Array[Nextbillionai::ContactObject::OrHash]).void }
      attr_writer :www

      sig do
        params(
          email: T::Array[Nextbillionai::ContactObject::OrHash],
          fax: T::Array[Nextbillionai::ContactObject::OrHash],
          mobile: T::Array[Nextbillionai::ContactObject::OrHash],
          phone: T::Array[Nextbillionai::ContactObject::OrHash],
          toll_free: T::Array[Nextbillionai::ContactObject::OrHash],
          www: T::Array[Nextbillionai::ContactObject::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        email: nil,
        fax: nil,
        mobile: nil,
        phone: nil,
        toll_free: nil,
        www: nil
      )
      end

      sig do
        override.returns(
          {
            email: T::Array[Nextbillionai::ContactObject],
            fax: T::Array[Nextbillionai::ContactObject],
            mobile: T::Array[Nextbillionai::ContactObject],
            phone: T::Array[Nextbillionai::ContactObject],
            toll_free: T::Array[Nextbillionai::ContactObject],
            www: T::Array[Nextbillionai::ContactObject]
          }
        )
      end
      def to_hash
      end
    end
  end
end
