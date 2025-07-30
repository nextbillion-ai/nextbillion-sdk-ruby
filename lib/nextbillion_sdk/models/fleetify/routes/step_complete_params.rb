# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Fleetify
      module Routes
        # @see NextbillionSDK::Resources::Fleetify::Routes::Steps#complete
        class StepCompleteParams < NextbillionSDK::Internal::Type::BaseModel
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

          # @!attribute document
          #   A key-value map storing form submission data, where keys correspond to field
          #   labels and values can be of any type depend on the type of according document
          #   item.
          #
          #   @return [Object, nil]
          optional :document, NextbillionSDK::Internal::Type::Unknown

          # @!attribute mode
          #   Sets the status of the route step. Currently only completed is supported.
          #
          #   Note: once marked completed, a step cannot transition to other statuses. You can
          #   only update the document afterwards.
          #
          #   @return [String, nil]
          optional :mode, String

          # @!attribute status
          #   Sets the status of the route step. Currently only completed is supported.
          #
          #   Note: once marked completed, a step cannot transition to other statuses. You can
          #   only update the document afterwards.
          #
          #   @return [String, nil]
          optional :status, String

          # @!method initialize(route_id:, key:, document: nil, mode: nil, status: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Fleetify::Routes::StepCompleteParams} for more details.
          #
          #   @param route_id [String]
          #
          #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
          #
          #   @param document [Object] A key-value map storing form submission data, where keys correspond to field lab
          #
          #   @param mode [String] Sets the status of the route step. Currently only completed is supported.
          #
          #   @param status [String] Sets the status of the route step. Currently only completed is supported.
          #
          #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
