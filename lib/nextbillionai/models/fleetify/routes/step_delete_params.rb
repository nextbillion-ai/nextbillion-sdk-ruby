# frozen_string_literal: true

module Nextbillionai
  module Models
    module Fleetify
      module Routes
        # @see Nextbillionai::Resources::Fleetify::Routes::Steps#delete
        class StepDeleteParams < Nextbillionai::Internal::Type::BaseModel
          extend Nextbillionai::Internal::Type::RequestParameters::Converter
          include Nextbillionai::Internal::Type::RequestParameters

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
          #   {Nextbillionai::Models::Fleetify::Routes::StepDeleteParams} for more details.
          #
          #   @param route_id [String]
          #
          #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
          #
          #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
