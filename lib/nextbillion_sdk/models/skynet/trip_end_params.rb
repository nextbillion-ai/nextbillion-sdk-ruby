# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      # @see NextbillionSDK::Resources::Skynet::Trip#end_
      class TripEndParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute id
        #   Specify the ID of the trip to be ended.
        #
        #   @return [String]
        required :id, String

        # @!attribute cluster
        #   the cluster of the region you want to use
        #
        #   @return [Symbol, NextbillionSDK::Models::Skynet::TripEndParams::Cluster, nil]
        optional :cluster, enum: -> { NextbillionSDK::Skynet::TripEndParams::Cluster }

        # @!method initialize(key:, id:, cluster: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Skynet::TripEndParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param id [String] Specify the ID of the trip to be ended.
        #
        #   @param cluster [Symbol, NextbillionSDK::Models::Skynet::TripEndParams::Cluster] the cluster of the region you want to use
        #
        #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]

        # the cluster of the region you want to use
        module Cluster
          extend NextbillionSDK::Internal::Type::Enum

          AMERICA = :america

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
