# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Skynet
      class Asset
        # @return [Nextbillionai::Resources::Skynet::Asset::Event]
        attr_reader :event

        # @return [Nextbillionai::Resources::Skynet::Asset::Location]
        attr_reader :location

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::AssetCreateParams} for more details.
        #
        # Create an Asset
        #
        # @overload create(key:, cluster: nil, attributes: nil, custom_id: nil, description: nil, meta_data: nil, name: nil, tags: nil, request_options: {})
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param cluster [Symbol, Nextbillionai::Models::Skynet::AssetCreateParams::Cluster] Query param: the cluster of the region you want to use
        #
        # @param attributes [Object] Body param: attributes can be used to store custom information about an asset in
        #
        # @param custom_id [String] Body param: Set a unique ID for the new asset. If not provided, an ID will be au
        #
        # @param description [String] Body param: Description for the asset.
        #
        # @param meta_data [Object] Body param: Any valid json object data. Can be used to save customized data. Max
        #
        # @param name [String] Body param: Name of the asset. Use this field to assign a meaningful, custom nam
        #
        # @param tags [Array<String>] Body param: \*\*This parameter will be deprecated soon! Please use the
        # attributes
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::AssetCreateResponse]
        #
        # @see Nextbillionai::Models::Skynet::AssetCreateParams
        def create(params)
          parsed, options = Nextbillionai::Skynet::AssetCreateParams.dump_request(params)
          query_params = [:key, :cluster]
          @client.request(
            method: :post,
            path: "skynet/asset",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: Nextbillionai::Models::Skynet::AssetCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::AssetRetrieveParams} for more details.
        #
        # Get an Asset
        #
        # @overload retrieve(id, key:, cluster: nil, request_options: {})
        #
        # @param id [String] ID of the asset to be fetched. This is the same ID that was generated/provided a
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param cluster [Symbol, Nextbillionai::Models::Skynet::AssetRetrieveParams::Cluster] the cluster of the region you want to use
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::AssetRetrieveResponse]
        #
        # @see Nextbillionai::Models::Skynet::AssetRetrieveParams
        def retrieve(id, params)
          parsed, options = Nextbillionai::Skynet::AssetRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["skynet/asset/%1$s", id],
            query: parsed,
            model: Nextbillionai::Models::Skynet::AssetRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::AssetUpdateParams} for more details.
        #
        # Update an Asset
        #
        # @overload update(id, key:, cluster: nil, attributes: nil, description: nil, meta_data: nil, name: nil, tags: nil, request_options: {})
        #
        # @param id [String] Path param: ID of the asset to be updated. This is the same ID that was generate
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param cluster [Symbol, Nextbillionai::Models::Skynet::AssetUpdateParams::Cluster] Query param: the cluster of the region you want to use
        #
        # @param attributes [Object] Body param: Use this param to update the attributes of an asset in key:value for
        #
        # @param description [String] Body param: Use this param to update the description of an asset.
        #
        # @param meta_data [Object] Body param: Any valid json object data. Can be used to save customized data. Max
        #
        # @param name [String] Body param: Use this param to update the name of an asset. Users can assign mean
        #
        # @param tags [Array<String>] Body param: \*\*This parameter will be deprecated soon! Please use the
        # attributes
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::SimpleResp]
        #
        # @see Nextbillionai::Models::Skynet::AssetUpdateParams
        def update(id, params)
          parsed, options = Nextbillionai::Skynet::AssetUpdateParams.dump_request(params)
          query_params = [:key, :cluster]
          @client.request(
            method: :put,
            path: ["skynet/asset/%1$s", id],
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: Nextbillionai::Skynet::SimpleResp,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::AssetListParams} for more details.
        #
        # Get Asset List
        #
        # @overload list(key:, cluster: nil, include_all_of_attributes: nil, include_any_of_attributes: nil, pn: nil, ps: nil, sort: nil, tags: nil, request_options: {})
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param cluster [Symbol, Nextbillionai::Models::Skynet::AssetListParams::Cluster] the cluster of the region you want to use
        #
        # @param include_all_of_attributes [String] Use this parameter to filter the assets by their attributes. Only the assets hav
        #
        # @param include_any_of_attributes [String] Use this parameter to filter the assets by their attributes. Assets having at le
        #
        # @param pn [Integer] Denotes page number. Use this along with the ps parameter to implement paginatio
        #
        # @param ps [Integer] Denotes number of search results per page. Use this along with the pn parameter
        #
        # @param sort [String] Provide a single field to sort the results by. Only updated_at or created_at fie
        #
        # @param tags [String] \*\*This parameter will be deprecated soon! Please use the
        # include_all_of_attribut
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::AssetListResponse]
        #
        # @see Nextbillionai::Models::Skynet::AssetListParams
        def list(params)
          parsed, options = Nextbillionai::Skynet::AssetListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "skynet/asset/list",
            query: parsed,
            model: Nextbillionai::Models::Skynet::AssetListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::AssetDeleteParams} for more details.
        #
        # Delete an Asset
        #
        # @overload delete(id, key:, cluster: nil, request_options: {})
        #
        # @param id [String] ID of the asset to be deleted. This is the same ID that was generated/provided a
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param cluster [Symbol, Nextbillionai::Models::Skynet::AssetDeleteParams::Cluster] the cluster of the region you want to use
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::SimpleResp]
        #
        # @see Nextbillionai::Models::Skynet::AssetDeleteParams
        def delete(id, params)
          parsed, options = Nextbillionai::Skynet::AssetDeleteParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["skynet/asset/%1$s", id],
            query: parsed,
            model: Nextbillionai::Skynet::SimpleResp,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::AssetBindParams} for more details.
        #
        # Bind asset to device
        #
        # @overload bind(id, key:, device_id:, request_options: {})
        #
        # @param id [String] Path param: ID of asset to which a device needs to be linked. This is the same I
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param device_id [String] Body param: Device ID to be linked to the asset identified by id.
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::SimpleResp]
        #
        # @see Nextbillionai::Models::Skynet::AssetBindParams
        def bind(id, params)
          parsed, options = Nextbillionai::Skynet::AssetBindParams.dump_request(params)
          query_params = [:key]
          @client.request(
            method: :post,
            path: ["skynet/asset/%1$s/bind", id],
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: Nextbillionai::Skynet::SimpleResp,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::AssetTrackParams} for more details.
        #
        # Upload track info
        #
        # @overload track(id, key:, device_id:, locations:, cluster: nil, request_options: {})
        #
        # @param id [String] Path param: ID of the asset whose track information is to be uploaded. This is t
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param device_id [String] Body param: ID of the device used to upload the tracking information of the asse
        #
        # @param locations [Nextbillionai::Models::Skynet::AssetTrackParams::Locations] Body param: An array of objects to collect the location tracking information for
        #
        # @param cluster [Symbol, Nextbillionai::Models::Skynet::AssetTrackParams::Cluster] Query param: the cluster of the region you want to use
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::SimpleResp]
        #
        # @see Nextbillionai::Models::Skynet::AssetTrackParams
        def track(id, params)
          parsed, options = Nextbillionai::Skynet::AssetTrackParams.dump_request(params)
          query_params = [:key, :cluster]
          @client.request(
            method: :post,
            path: ["skynet/asset/%1$s/track", id],
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: Nextbillionai::Skynet::SimpleResp,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::AssetUpdateAttributesParams} for more details.
        #
        # Update asset attributes. (add)
        #
        # @overload update_attributes(id, key:, attributes:, request_options: {})
        #
        # @param id [String] Path param: ID of the asset whose attributes need to be updated. This is the sam
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param attributes [Object] Body param: attributes can be used to add any useful information or context to y
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::SimpleResp]
        #
        # @see Nextbillionai::Models::Skynet::AssetUpdateAttributesParams
        def update_attributes(id, params)
          parsed, options = Nextbillionai::Skynet::AssetUpdateAttributesParams.dump_request(params)
          query_params = [:key]
          @client.request(
            method: :put,
            path: ["skynet/asset/%1$s/attributes", id],
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: Nextbillionai::Skynet::SimpleResp,
            options: options
          )
        end

        # @api private
        #
        # @param client [Nextbillionai::Client]
        def initialize(client:)
          @client = client
          @event = Nextbillionai::Resources::Skynet::Asset::Event.new(client: client)
          @location = Nextbillionai::Resources::Skynet::Asset::Location.new(client: client)
        end
      end
    end
  end
end
