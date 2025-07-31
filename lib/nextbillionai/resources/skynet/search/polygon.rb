# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Skynet
      class Search
        class Polygon
          # Some parameter documentations has been truncated, see
          # {Nextbillionai::Models::Skynet::Search::PolygonCreateParams} for more details.
          #
          # Polygon Search
          #
          # @overload create(key:, polygon:, filter: nil, match_filter: nil, max_search_limit: nil, pn: nil, ps: nil, sort: nil, request_options: {})
          #
          # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
          #
          # @param polygon [Nextbillionai::Models::Skynet::Search::PolygonCreateParams::Polygon] Body param: An object to collect geoJSON details of a custom polygon. Please ens
          #
          # @param filter [String] Body param: \*\*tags parameter will be deprecated soon! Please use the
          # include_any
          #
          # @param match_filter [Nextbillionai::Models::Skynet::Search::PolygonCreateParams::MatchFilter] Body param: An object to define the attributes which will be used to filter the
          #
          # @param max_search_limit [Boolean] Body param: if ture, can get 16x bigger limitation in search.
          #
          # @param pn [Integer] Body param: Denotes page number. Use this along with the ps parameter to impleme
          #
          # @param ps [Integer] Body param: Denotes number of search results per page. Use this along with the p
          #
          # @param sort [Nextbillionai::Models::Skynet::Search::PolygonCreateParams::Sort] Body param:
          #
          # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Nextbillionai::Models::Skynet::SearchResponse]
          #
          # @see Nextbillionai::Models::Skynet::Search::PolygonCreateParams
          def create(params)
            parsed, options = Nextbillionai::Skynet::Search::PolygonCreateParams.dump_request(params)
            query_params = [:key]
            @client.request(
              method: :post,
              path: "skynet/search/polygon",
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              model: Nextbillionai::Skynet::SearchResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Nextbillionai::Models::Skynet::Search::PolygonGetParams} for more details.
          #
          # Polygon Search
          #
          # @overload get(key:, polygon:, filter: nil, include_all_of_attributes: nil, include_any_of_attributes: nil, max_search_limit: nil, pn: nil, ps: nil, sort_by: nil, sort_destination: nil, sort_driving_mode: nil, request_options: {})
          #
          # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
          #
          # @param polygon [String] Define a custom polygon enclosing the area to be searched. It should be a pipe (
          #
          # @param filter [String] \*\*tags parameter will be deprecated soon! Please use the
          # include_any_of_attribut
          #
          # @param include_all_of_attributes [String] Use this parameter to filter the assets found inside the specified area by their
          #
          # @param include_any_of_attributes [String] Use this parameter to filter the assets found inside the specified area by their
          #
          # @param max_search_limit [Boolean] When true, the maximum limit is 20Km for around search API and 48000 Km2 for oth
          #
          # @param pn [Integer] Denotes page number. Use this along with the ps parameter to implement paginatio
          #
          # @param ps [Integer] Denotes number of search results per page. Use this along with the pn parameter
          #
          # @param sort_by [Symbol, Nextbillionai::Models::Skynet::Search::PolygonGetParams::SortBy] Specify the metric to sort the assets returned in the search result. The valid v
          #
          # @param sort_destination [String] Specifies the location coordinates of the point which acts as destination for so
          #
          # @param sort_driving_mode [Symbol, Nextbillionai::Models::Skynet::Search::PolygonGetParams::SortDrivingMode] Specifies the driving mode to be used for determining travel duration or driving
          #
          # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Nextbillionai::Models::Skynet::SearchResponse]
          #
          # @see Nextbillionai::Models::Skynet::Search::PolygonGetParams
          def get(params)
            parsed, options = Nextbillionai::Skynet::Search::PolygonGetParams.dump_request(params)
            @client.request(
              method: :get,
              path: "skynet/search/polygon",
              query: parsed,
              model: Nextbillionai::Skynet::SearchResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Nextbillionai::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
