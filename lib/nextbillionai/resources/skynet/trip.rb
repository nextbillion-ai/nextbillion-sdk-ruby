# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Skynet
      class Trip
        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::TripRetrieveParams} for more details.
        #
        # Retrieves detailed information about a specific trip.
        #
        # @overload retrieve(id, key:, cluster: nil, request_options: {})
        #
        # @param id [String] Specify the ID of trip that is to be retrieved.
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param cluster [Symbol, Nextbillionai::Models::Skynet::TripRetrieveParams::Cluster] the cluster of the region you want to use
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::TripRetrieveResponse]
        #
        # @see Nextbillionai::Models::Skynet::TripRetrieveParams
        def retrieve(id, params)
          parsed, options = Nextbillionai::Skynet::TripRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["skynet/trip/%1$s", id],
            query: parsed,
            model: Nextbillionai::Models::Skynet::TripRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::TripUpdateParams} for more details.
        #
        # Updates the data of a specified trip with the provided data.
        #
        # @overload update(id, key:, asset_id:, cluster: nil, attributes: nil, description: nil, meta_data: nil, name: nil, stops: nil, request_options: {})
        #
        # @param id [String] Path param: Specify the ID of the trip to be updated. Please note that a trip wh
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param asset_id [String] Body param: Use this param to update the ID of the asset which made this trip. P
        #
        # @param cluster [Symbol, Nextbillionai::Models::Skynet::TripUpdateParams::Cluster] Query param: the cluster of the region you want to use
        #
        # @param attributes [Object] Body param: Use this field to update the attributes of the trip. Please note tha
        #
        # @param description [String] Body param: Use this parameter to update the custom description of the trip.
        #
        # @param meta_data [Object] Body param: Use this JSON object to update additional details about the trip. Th
        #
        # @param name [String] Body param: Use this property to update the name of the trip.
        #
        # @param stops [Array<Nextbillionai::Models::Skynet::TripUpdateParams::Stop>] Body param: Use this object to update the details of the stops made during the t
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::SimpleResp]
        #
        # @see Nextbillionai::Models::Skynet::TripUpdateParams
        def update(id, params)
          parsed, options = Nextbillionai::Skynet::TripUpdateParams.dump_request(params)
          query_params = [:key, :cluster]
          @client.request(
            method: :put,
            path: ["skynet/trip/%1$s", id],
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: Nextbillionai::Skynet::SimpleResp,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::TripDeleteParams} for more details.
        #
        # Deletes a specified trip from the system.
        #
        # @overload delete(id, key:, cluster: nil, request_options: {})
        #
        # @param id [String] Specify the ID of the trip to be deleted.
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param cluster [Symbol, Nextbillionai::Models::Skynet::TripDeleteParams::Cluster] the cluster of the region you want to use
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::SimpleResp]
        #
        # @see Nextbillionai::Models::Skynet::TripDeleteParams
        def delete(id, params)
          parsed, options = Nextbillionai::Skynet::TripDeleteParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["skynet/trip/%1$s", id],
            query: parsed,
            model: Nextbillionai::Skynet::SimpleResp,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::TripEndParams} for more details.
        #
        # End a trip
        #
        # @overload end_(key:, id:, cluster: nil, request_options: {})
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param id [String] Body param: Specify the ID of the trip to be ended.
        #
        # @param cluster [Symbol, Nextbillionai::Models::Skynet::TripEndParams::Cluster] Query param: the cluster of the region you want to use
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::SimpleResp]
        #
        # @see Nextbillionai::Models::Skynet::TripEndParams
        def end_(params)
          parsed, options = Nextbillionai::Skynet::TripEndParams.dump_request(params)
          query_params = [:key, :cluster]
          @client.request(
            method: :post,
            path: "skynet/trip/end",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: Nextbillionai::Skynet::SimpleResp,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::TripGetSummaryParams} for more details.
        #
        # Get summary of an ended trip
        #
        # @overload get_summary(id, key:, cluster: nil, request_options: {})
        #
        # @param id [String] Specify the ID of the trip whose summary needs to be generated. Please ensure th
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param cluster [Symbol, Nextbillionai::Models::Skynet::TripGetSummaryParams::Cluster] the cluster of the region you want to use
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::TripGetSummaryResponse]
        #
        # @see Nextbillionai::Models::Skynet::TripGetSummaryParams
        def get_summary(id, params)
          parsed, options = Nextbillionai::Skynet::TripGetSummaryParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["skynet/trip/%1$s/summary", id],
            query: parsed,
            model: Nextbillionai::Models::Skynet::TripGetSummaryResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Skynet::TripStartParams} for more details.
        #
        # Add a new trip to the system with the provided data.
        #
        # @overload start(key:, asset_id:, cluster: nil, attributes: nil, custom_id: nil, description: nil, meta_data: nil, name: nil, stops: nil, request_options: {})
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param asset_id [String] Body param: Specify the ID of the asset which is making this trip. The asset wil
        #
        # @param cluster [Symbol, Nextbillionai::Models::Skynet::TripStartParams::Cluster] Query param: the cluster of the region you want to use
        #
        # @param attributes [Object] Body param: attributes can be used to store custom information about a trip in k
        #
        # @param custom_id [String] Body param: Set a unique ID for the new trip. If not provided, an ID will be aut
        #
        # @param description [String] Body param: Add a custom description for the trip.
        #
        # @param meta_data [Object] Body param: An JSON object to collect additional details about the trip. Use thi
        #
        # @param name [String] Body param: Specify a name for the trip.
        #
        # @param stops [Array<Nextbillionai::Models::Skynet::TripStartParams::Stop>] Body param: An array of objects to collect the details about all the stops that
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::TripStartResponse]
        #
        # @see Nextbillionai::Models::Skynet::TripStartParams
        def start(params)
          parsed, options = Nextbillionai::Skynet::TripStartParams.dump_request(params)
          query_params = [:key, :cluster]
          @client.request(
            method: :post,
            path: "skynet/trip/start",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: Nextbillionai::Models::Skynet::TripStartResponse,
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
