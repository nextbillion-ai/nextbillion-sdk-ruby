# frozen_string_literal: true

module NextbillionSDK
  module Models
    class Contacts < NextbillionSDK::Internal::Type::BaseModel
      # @!attribute email
      #
      #   @return [Array<NextbillionSDK::Models::ContactObject>, nil]
      optional :email, -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::ContactObject] }

      # @!attribute fax
      #
      #   @return [Array<NextbillionSDK::Models::ContactObject>, nil]
      optional :fax, -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::ContactObject] }

      # @!attribute mobile
      #
      #   @return [Array<NextbillionSDK::Models::ContactObject>, nil]
      optional :mobile, -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::ContactObject] }

      # @!attribute phone
      #
      #   @return [Array<NextbillionSDK::Models::ContactObject>, nil]
      optional :phone, -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::ContactObject] }

      # @!attribute toll_free
      #
      #   @return [Array<NextbillionSDK::Models::ContactObject>, nil]
      optional :toll_free,
               -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::ContactObject] },
               api_name: :tollFree

      # @!attribute www
      #
      #   @return [Array<NextbillionSDK::Models::ContactObject>, nil]
      optional :www, -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::ContactObject] }

      # @!method initialize(email: nil, fax: nil, mobile: nil, phone: nil, toll_free: nil, www: nil)
      #   @param email [Array<NextbillionSDK::Models::ContactObject>]
      #   @param fax [Array<NextbillionSDK::Models::ContactObject>]
      #   @param mobile [Array<NextbillionSDK::Models::ContactObject>]
      #   @param phone [Array<NextbillionSDK::Models::ContactObject>]
      #   @param toll_free [Array<NextbillionSDK::Models::ContactObject>]
      #   @param www [Array<NextbillionSDK::Models::ContactObject>]
    end
  end
end
