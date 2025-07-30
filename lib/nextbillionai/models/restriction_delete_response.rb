# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Restrictions#delete
    class RestrictionDeleteResponse < Nextbillionai::Internal::Type::BaseModel
      # @!attribute id
      #   It is the unique ID of the restriction.
      #
      #   @return [Float, nil]
      optional :id, Float

      # @!attribute state
      #   Returns the state of the restriction. It would always be `deleted`.
      #
      #   @return [String, nil]
      optional :state, String

      # @!method initialize(id: nil, state: nil)
      #   @param id [Float] It is the unique ID of the restriction.
      #
      #   @param state [String] Returns the state of the restriction. It would always be `deleted`.
    end
  end
end
