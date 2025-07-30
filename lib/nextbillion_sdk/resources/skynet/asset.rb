# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Skynet
      class Asset
        # @return [NextbillionSDK::Resources::Skynet::Asset::Event]
        attr_reader :event

        # @return [NextbillionSDK::Resources::Skynet::Asset::Location]
        attr_reader :location

        # Some parameter documentations has been truncated, see
        # {NextbillionSDK::Models::Skynet::AssetCreateParams} for more details.
        #
        # Create an Asset
        #
        # @overload create(key:, cluster: nil, attributes: nil, custom_id: nil, description: nil, meta_data: nil, name: nil, tags: nil, request_options: {})
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param cluster [Symbol, NextbillionSDK::Models::Skynet::AssetCreateParams::Cluster] Query param: the cluster of the region you want to use
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
        # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [NextbillionSDK::Models::Skynet::AssetCreateResponse]
        #
        # @see NextbillionSDK::Models::Skynet::AssetCreateParams
        def create(params)
          parsed, options = NextbillionSDK::Skynet::AssetCreateParams.dump_request(params)
          query_params = [:key, :cluster]
          @client.request(
            method: :post,
            path: "skynet/asset",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: NextbillionSDK::Models::Skynet::AssetCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {NextbillionSDK::Models::Skynet::AssetRetrieveParams} for more details.
        #
        # Get an Asset
        #
        # @overload retrieve(id, key:, cluster: nil, request_options: {})
        #
        # @param id [String] ID of the asset to be fetched. This is the same ID that was generated/provided a
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param cluster [Symbol, NextbillionSDK::Models::Skynet::AssetRetrieveParams::Cluster] the cluster of the region you want to use
        #
        # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [NextbillionSDK::Models::Skynet::AssetRetrieveResponse]
        #
        # @see NextbillionSDK::Models::Skynet::AssetRetrieveParams
        def retrieve(id, params)
          parsed, options = NextbillionSDK::Skynet::AssetRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["skynet/asset/%1$s", id],
            query: parsed,
            model: NextbillionSDK::Models::Skynet::AssetRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {NextbillionSDK::Models::Skynet::AssetUpdateParams} for more details.
        #
        # Update an Asset
        #
        # @overload update(id, key:, cluster: nil, attributes: nil, description: nil, meta_data: nil, name: nil, tags: nil, request_options: {})
        #
        # @param id [String] Path param: ID of the asset to be updated. This is the same ID that was generate
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param cluster [Symbol, NextbillionSDK::Models::Skynet::AssetUpdateParams::Cluster] Query param: the cluster of the region you want to use
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
        # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [NextbillionSDK::Models::Skynet::SimpleResp]
        #
        # @see NextbillionSDK::Models::Skynet::AssetUpdateParams
        def update(id, params)
          parsed, options = NextbillionSDK::Skynet::AssetUpdateParams.dump_request(params)
          query_params = [:key, :cluster]
          @client.request(
            method: :put,
            path: ["skynet/asset/%1$s", id],
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: NextbillionSDK::Skynet::SimpleResp,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {NextbillionSDK::Models::Skynet::AssetListParams} for more details.
        #
        # Get Asset List
        #
        # @overload list(key:, cluster: nil, include_all_of_attributes: nil, include_any_of_attributes: nil, pn: nil, ps: nil, sort: nil, tags: nil, request_options: {})
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param cluster [Symbol, NextbillionSDK::Models::Skynet::AssetListParams::Cluster] the cluster of the region you want to use
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
        # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [NextbillionSDK::Models::Skynet::AssetListResponse]
        #
        # @see NextbillionSDK::Models::Skynet::AssetListParams
        def list(params)
          parsed, options = NextbillionSDK::Skynet::AssetListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "skynet/asset/list",
            query: parsed,
            model: NextbillionSDK::Models::Skynet::AssetListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {NextbillionSDK::Models::Skynet::AssetDeleteParams} for more details.
        #
        # Delete an Asset
        #
        # @overload delete(id, key:, cluster: nil, request_options: {})
        #
        # @param id [String] ID of the asset to be deleted. This is the same ID that was generated/provided a
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param cluster [Symbol, NextbillionSDK::Models::Skynet::AssetDeleteParams::Cluster] the cluster of the region you want to use
        #
        # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [NextbillionSDK::Models::Skynet::SimpleResp]
        #
        # @see NextbillionSDK::Models::Skynet::AssetDeleteParams
        def delete(id, params)
          parsed, options = NextbillionSDK::Skynet::AssetDeleteParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["skynet/asset/%1$s", id],
            query: parsed,
            model: NextbillionSDK::Skynet::SimpleResp,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {NextbillionSDK::Models::Skynet::AssetBindParams} for more details.
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
        # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [NextbillionSDK::Models::Skynet::SimpleResp]
        #
        # @see NextbillionSDK::Models::Skynet::AssetBindParams
        def bind(id, params)
          parsed, options = NextbillionSDK::Skynet::AssetBindParams.dump_request(params)
          query_params = [:key]
          @client.request(
            method: :post,
            path: ["skynet/asset/%1$s/bind", id],
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: NextbillionSDK::Skynet::SimpleResp,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {NextbillionSDK::Models::Skynet::AssetTrackParams} for more details.
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
        # @param locations [NextbillionSDK::Models::Skynet::AssetTrackParams::Locations] Body param: An array of objects to collect the location tracking information for
        #
        # @param cluster [Symbol, NextbillionSDK::Models::Skynet::AssetTrackParams::Cluster] Query param: the cluster of the region you want to use
        #
        # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [NextbillionSDK::Models::Skynet::SimpleResp]
        #
        # @see NextbillionSDK::Models::Skynet::AssetTrackParams
        def track(id, params)
          parsed, options = NextbillionSDK::Skynet::AssetTrackParams.dump_request(params)
          query_params = [:key, :cluster]
          @client.request(
            method: :post,
            path: ["skynet/asset/%1$s/track", id],
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: NextbillionSDK::Skynet::SimpleResp,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {NextbillionSDK::Models::Skynet::AssetUpdateAttributesParams} for more details.
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
        # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [NextbillionSDK::Models::Skynet::SimpleResp]
        #
        # @see NextbillionSDK::Models::Skynet::AssetUpdateAttributesParams
        def update_attributes(id, params)
          parsed, options = NextbillionSDK::Skynet::AssetUpdateAttributesParams.dump_request(params)
          query_params = [:key]
          @client.request(
            method: :put,
            path: ["skynet/asset/%1$s/attributes", id],
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: NextbillionSDK::Skynet::SimpleResp,
            options: options
          )
        end

        # @api private
        #
        # @param client [NextbillionSDK::Client]
        def initialize(client:)
          @client = client
          @event = NextbillionSDK::Resources::Skynet::Asset::Event.new(client: client)
          @location = NextbillionSDK::Resources::Skynet::Asset::Location.new(client: client)
        end
      end
    end
  end
end
