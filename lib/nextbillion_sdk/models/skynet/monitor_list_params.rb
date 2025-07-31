# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      # @see NextbillionSDK::Resources::Skynet::Monitor#list
      class MonitorListParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute cluster
        #   the cluster of the region you want to use
        #
        #   @return [Symbol, NextbillionSDK::Models::Skynet::MonitorListParams::Cluster, nil]
        optional :cluster, enum: -> { NextbillionSDK::Skynet::MonitorListParams::Cluster }

        # @!attribute pn
        #   Denotes page number. Use this along with the `ps` parameter to implement
        #   pagination for your searched results. This parameter does not have a maximum
        #   limit but would return an empty response in case a higher value is provided when
        #   the result-set itself is smaller.
        #
        #   @return [Integer, nil]
        optional :pn, Integer

        # @!attribute ps
        #   Denotes number of search results per page. Use this along with the `pn`
        #   parameter to implement pagination for your searched results.
        #
        #   @return [Integer, nil]
        optional :ps, Integer

        # @!attribute sort
        #   Provide a single field to sort the results by. Only `updated_at` or `created_at`
        #   fields can be selected for ordering the results.
        #
        #   By default, the result is sorted by `created_at` field in the descending order.
        #   Allowed values for specifying the order are `asc` for ascending order and `desc`
        #   for descending order.
        #
        #   @return [String, nil]
        optional :sort, String

        # @!attribute tags
        #   `tags` can be used to filter the monitors. Only those monitors which have all
        #   the `tags` provided here, will be included in the search result. In case
        #   multiple `tags` need to be specified, use `,` to separate them.
        #
        #   @return [String, nil]
        optional :tags, String

        # @!method initialize(key:, cluster: nil, pn: nil, ps: nil, sort: nil, tags: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Skynet::MonitorListParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param cluster [Symbol, NextbillionSDK::Models::Skynet::MonitorListParams::Cluster] the cluster of the region you want to use
        #
        #   @param pn [Integer] Denotes page number. Use this along with the `ps` parameter to implement paginat
        #
        #   @param ps [Integer] Denotes number of search results per page. Use this along with the `pn` paramete
        #
        #   @param sort [String] Provide a single field to sort the results by. Only `updated_at` or `created_at`
        #
        #   @param tags [String] `tags` can be used to filter the monitors. Only those monitors which have all th
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
