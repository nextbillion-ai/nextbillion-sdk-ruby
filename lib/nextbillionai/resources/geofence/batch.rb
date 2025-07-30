# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Geofence
      class Batch
        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Geofence::BatchCreateParams} for more details.
        #
        # Batch Creation of Geofence
        #
        # @overload create(key:, geofences: nil, request_options: {})
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param geofences [Array<Nextbillionai::Models::GeofenceEntityCreate>] Body param: An array of objects to collect the details of the multiple geofences
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Geofence::BatchCreateResponse]
        #
        # @see Nextbillionai::Models::Geofence::BatchCreateParams
        def create(params)
          parsed, options = Nextbillionai::Geofence::BatchCreateParams.dump_request(params)
          query_params = [:key]
          @client.request(
            method: :post,
            path: "geofence/batch",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: Nextbillionai::Models::Geofence::BatchCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Geofence::BatchListParams} for more details.
        #
        # Batch Query of Geofence
        #
        # @overload list(ids:, key:, request_options: {})
        #
        # @param ids [String] Comma(`,`) separated list of IDs of the geofences to be searched.
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Geofence::BatchListResponse]
        #
        # @see Nextbillionai::Models::Geofence::BatchListParams
        def list(params)
          parsed, options = Nextbillionai::Geofence::BatchListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "geofence/batch",
            query: parsed,
            model: Nextbillionai::Models::Geofence::BatchListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Geofence::BatchDeleteParams} for more details.
        #
        # Delete Batch Geofence
        #
        # @overload delete(key:, ids: nil, request_options: {})
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param ids [Array<String>] Body param: An array IDs of the geofence to be deleted. These are the IDs that w
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Skynet::SimpleResp]
        #
        # @see Nextbillionai::Models::Geofence::BatchDeleteParams
        def delete(params)
          parsed, options = Nextbillionai::Geofence::BatchDeleteParams.dump_request(params)
          query_params = [:key]
          @client.request(
            method: :delete,
            path: "geofence/batch",
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
        end
      end
    end
  end
end
