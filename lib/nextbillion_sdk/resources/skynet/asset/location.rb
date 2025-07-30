# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Skynet
      class Asset
        class Location
          # Some parameter documentations has been truncated, see
          # {NextbillionSDK::Models::Skynet::Asset::LocationListParams} for more details.
          #
          # Track locations of an asset
          #
          # @overload list(id, key:, cluster: nil, correction: nil, end_time: nil, geometry_type: nil, pn: nil, ps: nil, start_time: nil, request_options: {})
          #
          # @param id [String] ID of the asset for which the location track information needs to be retrieved.
          #
          # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
          #
          # @param cluster [Symbol, NextbillionSDK::Models::Skynet::Asset::LocationListParams::Cluster] the cluster of the region you want to use
          #
          # @param correction [String] Describe the geometry characteristics through a , separated list of properties.
          #
          # @param end_time [Integer] Time until which the tracked locations of the asset need to be retrieved.
          #
          # @param geometry_type [Symbol, NextbillionSDK::Models::Skynet::Asset::LocationListParams::GeometryType] Set the geometry format to encode the path linking the tracked locations of the
          #
          # @param pn [Integer] Denotes page number. Use this along with the ps parameter to implement paginatio
          #
          # @param ps [Integer] Denotes number of search results per page. Use this along with the pn parameter
          #
          # @param start_time [Integer] Time after which the tracked locations of the asset need to be retrieved.
          #
          # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [NextbillionSDK::Models::Skynet::Asset::LocationListResponse]
          #
          # @see NextbillionSDK::Models::Skynet::Asset::LocationListParams
          def list(id, params)
            parsed, options = NextbillionSDK::Skynet::Asset::LocationListParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["skynet/asset/%1$s/location/list", id],
              query: parsed,
              model: NextbillionSDK::Models::Skynet::Asset::LocationListResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {NextbillionSDK::Models::Skynet::Asset::LocationGetLastParams} for more details.
          #
          # Track the last location of an asset
          #
          # @overload get_last(id, key:, cluster: nil, request_options: {})
          #
          # @param id [String] ID of the asset whose last location is to be retrieved. This is the same ID that
          #
          # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
          #
          # @param cluster [Symbol, NextbillionSDK::Models::Skynet::Asset::LocationGetLastParams::Cluster] the cluster of the region you want to use
          #
          # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [NextbillionSDK::Models::Skynet::Asset::LocationGetLastResponse]
          #
          # @see NextbillionSDK::Models::Skynet::Asset::LocationGetLastParams
          def get_last(id, params)
            parsed, options = NextbillionSDK::Skynet::Asset::LocationGetLastParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["skynet/asset/%1$s/location/last", id],
              query: parsed,
              model: NextbillionSDK::Models::Skynet::Asset::LocationGetLastResponse,
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
