# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Restrictions#set_state
    class RestrictionSetStateParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute state
      #   Use this field to specify the new `state` of the restriction. Please note that
      #   this method cannot update the state of restrictions that are currently in
      #   'deleted' state.
      #
      #   @return [Symbol, Nextbillionai::Models::RestrictionSetStateParams::State]
      required :state, enum: -> { Nextbillionai::RestrictionSetStateParams::State }

      # @!method initialize(key:, state:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::RestrictionSetStateParams} for more details.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param state [Symbol, Nextbillionai::Models::RestrictionSetStateParams::State] Use this field to specify the new `state` of the restriction. Please note that t
      #
      #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

      # Use this field to specify the new `state` of the restriction. Please note that
      # this method cannot update the state of restrictions that are currently in
      # 'deleted' state.
      module State
        extend Nextbillionai::Internal::Type::Enum

        ENABLED = :"`enabled`"
        DISABLED = :"`disabled`"
        DELETED = :"`deleted`"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
