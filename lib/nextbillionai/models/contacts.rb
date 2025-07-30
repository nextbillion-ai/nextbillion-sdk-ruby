# frozen_string_literal: true

module Nextbillionai
  module Models
    class Contacts < Nextbillionai::Internal::Type::BaseModel
      # @!attribute email
      #
      #   @return [Array<Nextbillionai::Models::ContactObject>, nil]
      optional :email, -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::ContactObject] }

      # @!attribute fax
      #
      #   @return [Array<Nextbillionai::Models::ContactObject>, nil]
      optional :fax, -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::ContactObject] }

      # @!attribute mobile
      #
      #   @return [Array<Nextbillionai::Models::ContactObject>, nil]
      optional :mobile, -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::ContactObject] }

      # @!attribute phone
      #
      #   @return [Array<Nextbillionai::Models::ContactObject>, nil]
      optional :phone, -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::ContactObject] }

      # @!attribute toll_free
      #
      #   @return [Array<Nextbillionai::Models::ContactObject>, nil]
      optional :toll_free,
               -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::ContactObject] },
               api_name: :tollFree

      # @!attribute www
      #
      #   @return [Array<Nextbillionai::Models::ContactObject>, nil]
      optional :www, -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::ContactObject] }

      # @!method initialize(email: nil, fax: nil, mobile: nil, phone: nil, toll_free: nil, www: nil)
      #   @param email [Array<Nextbillionai::Models::ContactObject>]
      #   @param fax [Array<Nextbillionai::Models::ContactObject>]
      #   @param mobile [Array<Nextbillionai::Models::ContactObject>]
      #   @param phone [Array<Nextbillionai::Models::ContactObject>]
      #   @param toll_free [Array<Nextbillionai::Models::ContactObject>]
      #   @param www [Array<Nextbillionai::Models::ContactObject>]
    end
  end
end
