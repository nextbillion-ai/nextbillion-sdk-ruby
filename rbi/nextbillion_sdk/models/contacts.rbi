# typed: strong

module NextbillionSDK
  module Models
    class Contacts < NextbillionSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(NextbillionSDK::Contacts, NextbillionSDK::Internal::AnyHash)
        end

      sig { returns(T.nilable(T::Array[NextbillionSDK::ContactObject])) }
      attr_reader :email

      sig do
        params(email: T::Array[NextbillionSDK::ContactObject::OrHash]).void
      end
      attr_writer :email

      sig { returns(T.nilable(T::Array[NextbillionSDK::ContactObject])) }
      attr_reader :fax

      sig { params(fax: T::Array[NextbillionSDK::ContactObject::OrHash]).void }
      attr_writer :fax

      sig { returns(T.nilable(T::Array[NextbillionSDK::ContactObject])) }
      attr_reader :mobile

      sig do
        params(mobile: T::Array[NextbillionSDK::ContactObject::OrHash]).void
      end
      attr_writer :mobile

      sig { returns(T.nilable(T::Array[NextbillionSDK::ContactObject])) }
      attr_reader :phone

      sig do
        params(phone: T::Array[NextbillionSDK::ContactObject::OrHash]).void
      end
      attr_writer :phone

      sig { returns(T.nilable(T::Array[NextbillionSDK::ContactObject])) }
      attr_reader :toll_free

      sig do
        params(toll_free: T::Array[NextbillionSDK::ContactObject::OrHash]).void
      end
      attr_writer :toll_free

      sig { returns(T.nilable(T::Array[NextbillionSDK::ContactObject])) }
      attr_reader :www

      sig { params(www: T::Array[NextbillionSDK::ContactObject::OrHash]).void }
      attr_writer :www

      sig do
        params(
          email: T::Array[NextbillionSDK::ContactObject::OrHash],
          fax: T::Array[NextbillionSDK::ContactObject::OrHash],
          mobile: T::Array[NextbillionSDK::ContactObject::OrHash],
          phone: T::Array[NextbillionSDK::ContactObject::OrHash],
          toll_free: T::Array[NextbillionSDK::ContactObject::OrHash],
          www: T::Array[NextbillionSDK::ContactObject::OrHash]
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
            email: T::Array[NextbillionSDK::ContactObject],
            fax: T::Array[NextbillionSDK::ContactObject],
            mobile: T::Array[NextbillionSDK::ContactObject],
            phone: T::Array[NextbillionSDK::ContactObject],
            toll_free: T::Array[NextbillionSDK::ContactObject],
            www: T::Array[NextbillionSDK::ContactObject]
          }
        )
      end
      def to_hash
      end
    end
  end
end
