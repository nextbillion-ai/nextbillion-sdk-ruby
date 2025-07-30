# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      # @see Nextbillionai::Resources::Skynet::Asset#list
      class AssetListParams < Nextbillionai::Internal::Type::BaseModel
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
        #   @return [Symbol, Nextbillionai::Models::Skynet::AssetListParams::Cluster, nil]
        optional :cluster, enum: -> { Nextbillionai::Skynet::AssetListParams::Cluster }

        # @!attribute include_all_of_attributes
        #   Use this parameter to filter the assets by their `attributes`. Only the assets
        #   having all the `attributes` added to this parameter, will be returned in the
        #   response. Multiple `attributes` can be separated using pipes (`|`).
        #
        #   Please note the attributes are case sensitive. Also, this parameter can not be
        #   used in conjunction with `include_any_of_attributes` parameter.
        #
        #   @return [String, nil]
        optional :include_all_of_attributes, String

        # @!attribute include_any_of_attributes
        #   Use this parameter to filter the assets by their `attributes`. Assets having at
        #   least one of the `attributes` added to this parameter, will be returned in the
        #   response. Multiple `attributes` can be separated using pipes (`|`).
        #
        #   Please note the attributes are case sensitive. Also, this parameter can not be
        #   used in conjunction with `include_all_of_attributes` parameter.
        #
        #   @return [String, nil]
        optional :include_any_of_attributes, String

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
        #   **This parameter will be deprecated soon! Please use the
        #   `include_all_of_attributes` or `include_any_of_attributes` parameters to provide
        #   labels or markers for the assets to be retrieved.**
        #
        #   `tags` can be used to filter the assets. Only those assets which have all the
        #   `tags` provided, will be included in the result. In case multiple `tags` need to
        #   be specified, use `,` to separate them.
        #
        #   @return [String, nil]
        optional :tags, String

        # @!method initialize(key:, cluster: nil, include_all_of_attributes: nil, include_any_of_attributes: nil, pn: nil, ps: nil, sort: nil, tags: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Skynet::AssetListParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param cluster [Symbol, Nextbillionai::Models::Skynet::AssetListParams::Cluster] the cluster of the region you want to use
        #
        #   @param include_all_of_attributes [String] Use this parameter to filter the assets by their `attributes`. Only the assets h
        #
        #   @param include_any_of_attributes [String] Use this parameter to filter the assets by their `attributes`. Assets having at
        #
        #   @param pn [Integer] Denotes page number. Use this along with the `ps` parameter to implement paginat
        #
        #   @param ps [Integer] Denotes number of search results per page. Use this along with the `pn` paramete
        #
        #   @param sort [String] Provide a single field to sort the results by. Only `updated_at` or `created_at`
        #
        #   @param tags [String] \*\*This parameter will be deprecated soon! Please use the
        #   `include_all_of_attribu
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
