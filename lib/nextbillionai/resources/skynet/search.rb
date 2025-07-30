# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Skynet
      class Search
        # @return [Nextbillionai::Resources::Skynet::Search::Polygon]
        attr_reader :polygon

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::SearchAroundParams} for more details.
        #
        # Around Search
        #
        # @overload around(center:, key:, radius:, filter: nil, include_all_of_attributes: nil, include_any_of_attributes: nil, max_search_limit: nil, pn: nil, ps: nil, sort_by: nil, sort_destination: nil, sort_driving_mode: nil, request_options: {})
        #
        # @param center [String] Location coordinates of the point which would act as the center of the circular
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param radius [Float] Radius, in meters, of the circular area to be searched.
        #
        # @param filter [String] \*\*`tags` parameter will be deprecated soon! Please use the
        # `include_any_of_attri
        #
        # @param include_all_of_attributes [String] Use this parameter to filter the assets found inside the specified area by their
        #
        # @param include_any_of_attributes [String] Use this parameter to filter the assets found inside the specified area by their
        #
        # @param max_search_limit [Boolean] When true, the maximum limit is 20Km for around search API and 48000 Km2 for oth
        #
        # @param pn [Integer] Denotes page number. Use this along with the `ps` parameter to implement paginat
        #
        # @param ps [Integer] Denotes number of search results per page. Use this along with the `pn` paramete
        #
        # @param sort_by [Symbol, Nextbillionai::Models::Skynet::SearchAroundParams::SortBy] Specify the metric to sort the assets returned in the search result. The valid v
        #
        # @param sort_destination [String] Specifies the location coordinates of the point which acts as destination for so
        #
        # @param sort_driving_mode [Symbol, Nextbillionai::Models::Skynet::SearchAroundParams::SortDrivingMode] Specifies the driving mode to be used for determining travel duration or driving
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::SearchResponse]
        #
        # @see Nextbillionai::Models::Skynet::SearchAroundParams
        def around(params)
          parsed, options = Nextbillionai::Skynet::SearchAroundParams.dump_request(params)
          @client.request(
            method: :get,
            path: "skynet/search/around",
            query: parsed,
            model: Nextbillionai::Skynet::SearchResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::SearchBoundParams} for more details.
        #
        # Bound Search
        #
        # @overload bound(bound:, key:, filter: nil, include_all_of_attributes: nil, include_any_of_attributes: nil, max_search_limit: nil, pn: nil, ps: nil, sort_by: nil, sort_destination: nil, sort_driving_mode: nil, request_options: {})
        #
        # @param bound [String] Specify two, pipe (|) delimited location coordinates which would act as corners
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param filter [String] \*\*`tags` parameter will be deprecated soon! Please use the
        # `include_any_of_attri
        #
        # @param include_all_of_attributes [String] Use this parameter to filter the assets found inside the specified area by their
        #
        # @param include_any_of_attributes [String] Use this parameter to filter the assets found inside the specified area by their
        #
        # @param max_search_limit [Boolean] When true, the maximum limit is 20Km for around search API and 48000 Km2 for oth
        #
        # @param pn [Integer] Denotes page number. Use this along with the `ps` parameter to implement paginat
        #
        # @param ps [Integer] Denotes number of search results per page. Use this along with the `pn` paramete
        #
        # @param sort_by [Symbol, Nextbillionai::Models::Skynet::SearchBoundParams::SortBy] Specify the metric to sort the assets returned in the search result. The valid v
        #
        # @param sort_destination [String] Specifies the location coordinates of the point which acts as destination for so
        #
        # @param sort_driving_mode [Symbol, Nextbillionai::Models::Skynet::SearchBoundParams::SortDrivingMode] Specifies the driving mode to be used for determining travel duration or driving
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::SearchResponse]
        #
        # @see Nextbillionai::Models::Skynet::SearchBoundParams
        def bound(params)
          parsed, options = Nextbillionai::Skynet::SearchBoundParams.dump_request(params)
          @client.request(
            method: :get,
            path: "skynet/search/bound",
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
          @polygon = Nextbillionai::Resources::Skynet::Search::Polygon.new(client: client)
        end
      end
    end
  end
end
