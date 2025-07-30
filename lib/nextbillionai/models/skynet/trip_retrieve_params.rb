# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      # @see Nextbillionai::Resources::Skynet::Trip#retrieve
      class TripRetrieveParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute cluster
        #   the cluster of the region you want to use
        #
        #   @return [Symbol, Nextbillionai::Models::Skynet::TripRetrieveParams::Cluster, nil]
        optional :cluster, enum: -> { Nextbillionai::Skynet::TripRetrieveParams::Cluster }

        # @!method initialize(key:, cluster: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Skynet::TripRetrieveParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param cluster [Symbol, Nextbillionai::Models::Skynet::TripRetrieveParams::Cluster] the cluster of the region you want to use
        #
        #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

        # the cluster of the region you want to use
        module Cluster
          extend Nextbillionai::Internal::Type::Enum

          AMERICA = :america

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
