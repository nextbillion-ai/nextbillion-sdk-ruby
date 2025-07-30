# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Skynet
      class Monitor
        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::MonitorCreateParams} for more details.
        #
        # Create a Monitor
        #
        # @overload create(key:, tags:, type:, cluster: nil, custom_id: nil, description: nil, geofence_config: nil, geofence_ids: nil, idle_config: nil, match_filter: nil, meta_data: nil, name: nil, speeding_config: nil, request_options: {})
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param tags [Array<String>] Body param: Use this parameter to add `tags` to the `monitor`. `tags` can be use
        #
        # @param type [Symbol, Nextbillionai::Models::Skynet::MonitorCreateParams::Type] Body param: Specify the type of activity the `monitor` would detect.
        #
        # @param cluster [Symbol, Nextbillionai::Models::Skynet::MonitorCreateParams::Cluster] Query param: the cluster of the region you want to use
        #
        # @param custom_id [String] Body param: Set a unique ID for the new `monitor`. If not provided, an ID will b
        #
        # @param description [String] Body param: Add a description for your `monitor` using this parameter.
        #
        # @param geofence_config [Nextbillionai::Models::Skynet::MonitorCreateParams::GeofenceConfig] Body param: Geofences are geographic boundaries surrounding an area of interest.
        #
        # @param geofence_ids [Array<String>] Body param: \*\*Deprecated. Please use the `geofence_config` to specify the
        # geofen
        #
        # @param idle_config [Nextbillionai::Models::Skynet::MonitorCreateParams::IdleConfig] Body param: `idle_config` is used to set up constraints for creating idle events
        #
        # @param match_filter [Nextbillionai::Models::Skynet::MonitorCreateParams::MatchFilter] Body param: This object is used to identify the asset(s) on which the `monitor`
        #
        # @param meta_data [Object] Body param: Any valid json object data. Can be used to save customized data. Max
        #
        # @param name [String] Body param: Name of the `monitor`. Use this field to assign a meaningful, custom
        #
        # @param speeding_config [Nextbillionai::Models::Skynet::MonitorCreateParams::SpeedingConfig] Body param: `speeding_config` is used to set up constraints for creating over-sp
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::MonitorCreateResponse]
        #
        # @see Nextbillionai::Models::Skynet::MonitorCreateParams
        def create(params)
          parsed, options = Nextbillionai::Skynet::MonitorCreateParams.dump_request(params)
          query_params = [:key, :cluster]
          @client.request(
            method: :post,
            path: "skynet/monitor",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: Nextbillionai::Models::Skynet::MonitorCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::MonitorRetrieveParams} for more details.
        #
        # Get a Monitor
        #
        # @overload retrieve(id, key:, request_options: {})
        #
        # @param id [String] ID of the `monitor` to be fetched. This is the same ID that was generated at the
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::MonitorRetrieveResponse]
        #
        # @see Nextbillionai::Models::Skynet::MonitorRetrieveParams
        def retrieve(id, params)
          parsed, options = Nextbillionai::Skynet::MonitorRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["skynet/monitor/%1$s", id],
            query: parsed,
            model: Nextbillionai::Models::Skynet::MonitorRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::MonitorUpdateParams} for more details.
        #
        # Update a Monitor
        #
        # @overload update(id, key:, description: nil, geofence_config: nil, geofence_ids: nil, idle_config: nil, match_filter: nil, meta_data: nil, name: nil, speeding_config: nil, tags: nil, type: nil, request_options: {})
        #
        # @param id [String] Path param: ID of the `monitor` to be updated. This is the same ID that was gene
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param description [String] Body param: Use this parameter to update the `description` of the `monitor`.
        #
        # @param geofence_config [Nextbillionai::Models::Skynet::MonitorUpdateParams::GeofenceConfig] Body param: `geofence_config` is used to update the set of geofences linked to t
        #
        # @param geofence_ids [Array<String>] Body param: Use this parameter to update the geofences linked to the `monitor` b
        #
        # @param idle_config [Nextbillionai::Models::Skynet::MonitorUpdateParams::IdleConfig] Body param: `idle_config` is used to update the constraints for creating idle ev
        #
        # @param match_filter [Nextbillionai::Models::Skynet::MonitorUpdateParams::MatchFilter] Body param: Use this object to update the `attributes` of the `monitor`. Please
        #
        # @param meta_data [Object] Body param: Any valid json object data. Can be used to save customized data. Max
        #
        # @param name [String] Body param: Use this parameter to update the `name` of the `monitor`. Users can
        #
        # @param speeding_config [Nextbillionai::Models::Skynet::MonitorUpdateParams::SpeedingConfig] Body param: `speeding_config` is used to update the tolerance values for creatin
        #
        # @param tags [Array<String>] Body param: Use this parameter to update the `tags` of the `monitor`. `tags` can
        #
        # @param type [Symbol, Nextbillionai::Models::Skynet::MonitorUpdateParams::Type] Body param: Use this parameter to update the `type` of the `monitor`. The `monit
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::SimpleResp]
        #
        # @see Nextbillionai::Models::Skynet::MonitorUpdateParams
        def update(id, params)
          parsed, options = Nextbillionai::Skynet::MonitorUpdateParams.dump_request(params)
          query_params = [:key]
          @client.request(
            method: :put,
            path: ["skynet/monitor/%1$s", id],
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: Nextbillionai::Skynet::SimpleResp,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::MonitorListParams} for more details.
        #
        # Get Monitor List
        #
        # @overload list(key:, cluster: nil, pn: nil, ps: nil, sort: nil, tags: nil, request_options: {})
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param cluster [Symbol, Nextbillionai::Models::Skynet::MonitorListParams::Cluster] the cluster of the region you want to use
        #
        # @param pn [Integer] Denotes page number. Use this along with the `ps` parameter to implement paginat
        #
        # @param ps [Integer] Denotes number of search results per page. Use this along with the `pn` paramete
        #
        # @param sort [String] Provide a single field to sort the results by. Only `updated_at` or `created_at`
        #
        # @param tags [String] `tags` can be used to filter the monitors. Only those monitors which have all th
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::MonitorListResponse]
        #
        # @see Nextbillionai::Models::Skynet::MonitorListParams
        def list(params)
          parsed, options = Nextbillionai::Skynet::MonitorListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "skynet/monitor/list",
            query: parsed,
            model: Nextbillionai::Models::Skynet::MonitorListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::MonitorDeleteParams} for more details.
        #
        # Delete a Monitor
        #
        # @overload delete(id, key:, request_options: {})
        #
        # @param id [String] D of the `monitor` to be deleted. This is the same ID that was generated at the
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::SimpleResp]
        #
        # @see Nextbillionai::Models::Skynet::MonitorDeleteParams
        def delete(id, params)
          parsed, options = Nextbillionai::Skynet::MonitorDeleteParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["skynet/monitor/%1$s", id],
            query: parsed,
            model: Nextbillionai::Skynet::SimpleResp,
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
