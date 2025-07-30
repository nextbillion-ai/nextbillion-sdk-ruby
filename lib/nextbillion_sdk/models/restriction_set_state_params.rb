# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::Restrictions#set_state
    class RestrictionSetStateParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      # @!attribute key
      #   A key is a unique identifier that is required to authenticate a request to the
      #   API.
      #
      #   @return [String]
      required :key, String

      # @!attribute state
      #   Use this field to specify the new state of the restriction. Please note that
      #   this method cannot update the state of restrictions that are currently in
      #   'deleted' state.
      #
      #   @return [Symbol, NextbillionSDK::Models::RestrictionSetStateParams::State]
      required :state, enum: -> { NextbillionSDK::RestrictionSetStateParams::State }

      # @!method initialize(key:, state:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::RestrictionSetStateParams} for more details.
      #
      #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      #   @param state [Symbol, NextbillionSDK::Models::RestrictionSetStateParams::State] Use this field to specify the new state of the restriction. Please note that thi
      #
      #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]

      # Use this field to specify the new state of the restriction. Please note that
      # this method cannot update the state of restrictions that are currently in
      # 'deleted' state.
      module State
        extend NextbillionSDK::Internal::Type::Enum

        ENABLED = :enabled
        DISABLED = :disabled
        DELETED = :deleted

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
