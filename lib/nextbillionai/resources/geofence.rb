# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Geofence
      # @return [Nextbillionai::Resources::Geofence::Console]
      attr_reader :console

      # @return [Nextbillionai::Resources::Geofence::Batch]
      attr_reader :batch

      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::GeofenceCreateParams} for more details.
      #
      # Create a geofence
      #
      # @overload create(key:, type:, circle: nil, custom_id: nil, isochrone: nil, meta_data: nil, name: nil, polygon: nil, tags: nil, request_options: {})
      #
      # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
      #
      # @param type [Symbol, Nextbillionai::Models::GeofenceEntityCreate::Type] Body param: Specify the type of the geofence that is being created.
      #
      # @param circle [Nextbillionai::Models::GeofenceEntityCreate::Circle] Body param: Provide the details to create a circular geofence. Please note that
      #
      # @param custom_id [String] Body param: Set an unique ID for the new geofence. If not provided, an ID will b
      #
      # @param isochrone [Nextbillionai::Models::GeofenceEntityCreate::Isochrone] Body param: Provide the details to create an isochrone based geofence. Use this
      #
      # @param meta_data [Object] Body param: Metadata of the geofence. Use this field to define custom attributes
      #
      # @param name [String] Body param: Name of the geofence. Use this field to assign a meaningful, custom
      #
      # @param polygon [Nextbillionai::Models::GeofenceEntityCreate::Polygon] Body param: Provide the details to create a custom polygon type of geofence. Ple
      #
      # @param tags [Array<String>] Body param: An array of strings to associate multiple tags to the geofence. tags
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::GeofenceCreateResponse]
      #
      # @see Nextbillionai::Models::GeofenceCreateParams
      def create(params)
        parsed, options = Nextbillionai::GeofenceCreateParams.dump_request(params)
        query_params = [:key]
        @client.request(
          method: :post,
          path: "geofence",
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: Nextbillionai::Models::GeofenceCreateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::GeofenceRetrieveParams} for more details.
      #
      # Get a Geofence
      #
      # @overload retrieve(id, key:, request_options: {})
      #
      # @param id [String] ID of the geofence to be fetched. This is the ID that was generated/provided at
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::GeofenceRetrieveResponse]
      #
      # @see Nextbillionai::Models::GeofenceRetrieveParams
      def retrieve(id, params)
        parsed, options = Nextbillionai::GeofenceRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["geofence/%1$s", id],
          query: parsed,
          model: Nextbillionai::Models::GeofenceRetrieveResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::GeofenceUpdateParams} for more details.
      #
      # Update a Geofence
      #
      # @overload update(id, key:, circle: nil, isochrone: nil, meta_data: nil, name: nil, polygon: nil, tags: nil, type: nil, request_options: {})
      #
      # @param id [String] Path param: ID of the geofence to be updated. This is the ID that was generated/
      #
      # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
      #
      # @param circle [Nextbillionai::Models::GeofenceUpdateParams::Circle] Body param: Use this object to update details of a circular geofence. Please not
      #
      # @param isochrone [Nextbillionai::Models::GeofenceUpdateParams::Isochrone] Body param: Use this object to update details of an isochrone based geofence. Pl
      #
      # @param meta_data [Object] Body param: Updated the meta_data associated with a geofence. Use this field to
      #
      # @param name [String] Body param: Use this parameter to update the name of a geofence. Users can assig
      #
      # @param polygon [Nextbillionai::Models::GeofenceUpdateParams::Polygon] Body param: Use this object to update details of a custom polygon geofence. Plea
      #
      # @param tags [Array<String>] Body param: Use this parameter to add/modify one or multiple tags of a geofence.
      #
      # @param type [Symbol, Nextbillionai::Models::GeofenceUpdateParams::Type] Body param: Use this parameter to update the type of a geofence. Please note tha
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::Skynet::SimpleResp]
      #
      # @see Nextbillionai::Models::GeofenceUpdateParams
      def update(id, params)
        parsed, options = Nextbillionai::GeofenceUpdateParams.dump_request(params)
        query_params = [:key]
        @client.request(
          method: :put,
          path: ["geofence/%1$s", id],
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: Nextbillionai::Skynet::SimpleResp,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::GeofenceListParams} for more details.
      #
      # Get Geofence List
      #
      # @overload list(key:, pn: nil, ps: nil, tags: nil, request_options: {})
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param pn [Integer] Denotes page number. Use this along with the ps parameter to implement paginatio
      #
      # @param ps [Integer] Denotes number of search results per page. Use this along with the pn parameter
      #
      # @param tags [String] Comma (,) separated list of tags which will be used to filter the geofences.
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::GeofenceListResponse]
      #
      # @see Nextbillionai::Models::GeofenceListParams
      def list(params)
        parsed, options = Nextbillionai::GeofenceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "geofence/list",
          query: parsed,
          model: Nextbillionai::Models::GeofenceListResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::GeofenceDeleteParams} for more details.
      #
      # Delete a Geofence
      #
      # @overload delete(id, key:, request_options: {})
      #
      # @param id [String] ID of the geofence to be deleted. This is the ID that was generated/provided at
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::Skynet::SimpleResp]
      #
      # @see Nextbillionai::Models::GeofenceDeleteParams
      def delete(id, params)
        parsed, options = Nextbillionai::GeofenceDeleteParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["geofence/%1$s", id],
          query: parsed,
          model: Nextbillionai::Skynet::SimpleResp,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::GeofenceContainsParams} for more details.
      #
      # Geofence Contains
      #
      # @overload contains(key:, locations:, geofences: nil, verbose: nil, request_options: {})
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param locations [String] Pipe (|) separated coordinates, in [latitude,longitude] format, of the locations
      #
      # @param geofences [String] A , separated list geofence IDs against which the locations will be searched. If
      #
      # @param verbose [String] When true, an array with detailed information of geofences is returned. When fal
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::GeofenceContainsResponse]
      #
      # @see Nextbillionai::Models::GeofenceContainsParams
      def contains(params)
        parsed, options = Nextbillionai::GeofenceContainsParams.dump_request(params)
        @client.request(
          method: :get,
          path: "geofence/contain",
          query: parsed,
          model: Nextbillionai::Models::GeofenceContainsResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Nextbillionai::Client]
      def initialize(client:)
        @client = client
        @console = Nextbillionai::Resources::Geofence::Console.new(client: client)
        @batch = Nextbillionai::Resources::Geofence::Batch.new(client: client)
      end
    end
  end
end
