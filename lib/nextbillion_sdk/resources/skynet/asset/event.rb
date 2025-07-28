# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Skynet
      class Asset
        class Event
          # Some parameter documentations has been truncated, see
          # {NextbillionSDK::Models::Skynet::Asset::EventListParams} for more details.
          #
          # Event History of an Asset
          #
          # @overload list(id, key:, cluster: nil, end_time: nil, monitor_id: nil, pn: nil, ps: nil, start_time: nil, request_options: {})
          #
          # @param id [String] ID of the `asset` whose event history needs to be fetched. This is the same ID t
          #
          # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
          #
          # @param cluster [Symbol, NextbillionSDK::Models::Skynet::Asset::EventListParams::Cluster] the cluster of the region you want to use
          #
          # @param end_time [Integer] Time before which the events triggered by the `asset` need to be retrieved.
          #
          # @param monitor_id [String] Filter the events by `monitor_id`. When provided, only the events triggered by t
          #
          # @param pn [Integer] Denotes page number. Use this along with the `ps` parameter to implement paginat
          #
          # @param ps [Integer] Denotes number of search results per page. Use this along with the `pn` paramete
          #
          # @param start_time [Integer] Time after which the events triggered by the `asset` need to be retrieved.
          #
          # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [NextbillionSDK::Models::Skynet::Asset::EventListResponse]
          #
          # @see NextbillionSDK::Models::Skynet::Asset::EventListParams
          def list(id, params)
            parsed, options = NextbillionSDK::Skynet::Asset::EventListParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["skynet/asset/%1$s/event/list", id],
              query: parsed,
              model: NextbillionSDK::Models::Skynet::Asset::EventListResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [NextbillionSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
