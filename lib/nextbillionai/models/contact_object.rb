# frozen_string_literal: true

module Nextbillionai
  module Models
    class ContactObject < Nextbillionai::Internal::Type::BaseModel
      # @!attribute categories
      #   The list of place categories this contact refers to.
      #
      #   @return [Array<Nextbillionai::Models::ContactObject::Category>, nil]
      optional :categories,
               -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::ContactObject::Category] }

      # @!attribute label
      #   Optional label for the contact string, such as "Customer Service" or "Pharmacy
      #   Fax".
      #
      #   @return [String, nil]
      optional :label, String

      # @!attribute value
      #   Contact information, as specified by the contact type.
      #
      #   @return [String, nil]
      optional :value, String

      # @!method initialize(categories: nil, label: nil, value: nil)
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::ContactObject} for more details.
      #
      #   @param categories [Array<Nextbillionai::Models::ContactObject::Category>] The list of place categories this contact refers to.
      #
      #   @param label [String] Optional label for the contact string, such as "Customer Service" or "Pharmacy F
      #
      #   @param value [String] Contact information, as specified by the contact type.

      class Category < Nextbillionai::Internal::Type::BaseModel
        # @!attribute id
        #   Identifier number for an associated category. For example: "900-9300-0000"
        #
        #   @return [String, nil]
        optional :id, String

        # @!method initialize(id: nil)
        #   @param id [String] Identifier number for an associated category. For example: "900-9300-0000"
      end
    end
  end
end
