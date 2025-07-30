# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      # @see Nextbillionai::Resources::Skynet::Config#update
      class ConfigUpdateParams < Nextbillionai::Internal::Type::BaseModel
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
        #   @return [Symbol, Nextbillionai::Models::Skynet::ConfigUpdateParams::Cluster, nil]
        optional :cluster, enum: -> { Nextbillionai::Skynet::ConfigUpdateParams::Cluster }

        # @!attribute webhook
        #   Use this array to update information about the webhooks. Please note that the
        #   webhooks will be overwritten every time this method is used.
        #
        #   @return [Array<String>, nil]
        optional :webhook, Nextbillionai::Internal::Type::ArrayOf[String]

        # @!method initialize(key:, cluster: nil, webhook: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Skynet::ConfigUpdateParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param cluster [Symbol, Nextbillionai::Models::Skynet::ConfigUpdateParams::Cluster] the cluster of the region you want to use
        #
        #   @param webhook [Array<String>] Use this array to update information about the webhooks. Please note that the we
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
