# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Fleetify
      module Routes
        # @see NextbillionSDK::Resources::Fleetify::Routes::Steps#delete
        class StepDeleteParams < NextbillionSDK::Internal::Type::BaseModel
          extend NextbillionSDK::Internal::Type::RequestParameters::Converter
          include NextbillionSDK::Internal::Type::RequestParameters

          # @!attribute route_id
          #
          #   @return [String]
          required :route_id, String

          # @!attribute key
          #   A key is a unique identifier that is required to authenticate a request to the
          #   API.
          #
          #   @return [String]
          required :key, String

          # @!method initialize(route_id:, key:, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Fleetify::Routes::StepDeleteParams} for more details.
          #
          #   @param route_id [String]
          #
          #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
          #
          #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
