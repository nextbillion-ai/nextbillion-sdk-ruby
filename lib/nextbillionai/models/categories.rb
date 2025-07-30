# frozen_string_literal: true

module Nextbillionai
  module Models
    class Categories < Nextbillionai::Internal::Type::BaseModel
      # @!attribute id
      #   Identifier number for an associated category.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute name
      #   Name of the place category in the result item language.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute primary
      #   Whether or not it is a primary category. This field is visible only when the
      #   value is 'true'.
      #
      #   @return [String, nil]
      optional :primary, String

      # @!method initialize(id: nil, name: nil, primary: nil)
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::Categories} for more details.
      #
      #   @param id [String] Identifier number for an associated category.
      #
      #   @param name [String] Name of the place category in the result item language.
      #
      #   @param primary [String] Whether or not it is a primary category. This field is visible only when the val
    end
  end
end
