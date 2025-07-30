# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      module Asset
        # @see NextbillionSDK::Resources::Skynet::Asset::Location#list
        class LocationListParams < NextbillionSDK::Internal::Type::BaseModel
          extend NextbillionSDK::Internal::Type::RequestParameters::Converter
          include NextbillionSDK::Internal::Type::RequestParameters

          # @!attribute key
          #   A key is a unique identifier that is required to authenticate a request to the
          #   API.
          #
          #   @return [String]
          required :key, String

          # @!attribute cluster
          #   the cluster of the region you want to use
          #
          #   @return [Symbol, NextbillionSDK::Models::Skynet::Asset::LocationListParams::Cluster, nil]
          optional :cluster, enum: -> { NextbillionSDK::Skynet::Asset::LocationListParams::Cluster }

          # @!attribute correction
          #   Describe the geometry characteristics through a , separated list of properties.
          #
          #   Setting mapmatch to 1 returns the geometry of the tracked points, snapped to the
          #   nearest road.
          #
          #   Setting interpolate to 1 smoothens the snapped geometry by adding more points,
          #   as needed. Please note, mapmatch should be set to 1 for interpolate to be
          #   effective.
          #
          #   mode is used to set the transport mode for which the snapped route will be
          #   determined. Allowed values for mode are car and truck.
          #
          #   @return [String, nil]
          optional :correction, String

          # @!attribute end_time
          #   Time until which the tracked locations of the asset need to be retrieved.
          #
          #   @return [Integer, nil]
          optional :end_time, Integer

          # @!attribute geometry_type
          #   Set the geometry format to encode the path linking the tracked locations of the
          #   asset.
          #
          #   Please note that geometry_type is effective only when mapmatch property of
          #   correction parameter is set to 1.
          #
          #   @return [Symbol, NextbillionSDK::Models::Skynet::Asset::LocationListParams::GeometryType, nil]
          optional :geometry_type,
                   enum: -> {
                     NextbillionSDK::Skynet::Asset::LocationListParams::GeometryType
                   }

          # @!attribute pn
          #   Denotes page number. Use this along with the ps parameter to implement
          #   pagination for your searched results. This parameter does not have a maximum
          #   limit but would return an empty response in case a higher value is provided when
          #   the result-set itself is smaller.
          #
          #   @return [Integer, nil]
          optional :pn, Integer

          # @!attribute ps
          #   Denotes number of search results per page. Use this along with the pn parameter
          #   to implement pagination for your searched results.
          #
          #   @return [Integer, nil]
          optional :ps, Integer

          # @!attribute start_time
          #   Time after which the tracked locations of the asset need to be retrieved.
          #
          #   @return [Integer, nil]
          optional :start_time, Integer

          # @!method initialize(key:, cluster: nil, correction: nil, end_time: nil, geometry_type: nil, pn: nil, ps: nil, start_time: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Skynet::Asset::LocationListParams} for more details.
          #
          #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
          #
          #   @param cluster [Symbol, NextbillionSDK::Models::Skynet::Asset::LocationListParams::Cluster] the cluster of the region you want to use
          #
          #   @param correction [String] Describe the geometry characteristics through a , separated list of properties.
          #
          #   @param end_time [Integer] Time until which the tracked locations of the asset need to be retrieved.
          #
          #   @param geometry_type [Symbol, NextbillionSDK::Models::Skynet::Asset::LocationListParams::GeometryType] Set the geometry format to encode the path linking the tracked locations of the
          #
          #   @param pn [Integer] Denotes page number. Use this along with the ps parameter to implement paginatio
          #
          #   @param ps [Integer] Denotes number of search results per page. Use this along with the pn parameter
          #
          #   @param start_time [Integer] Time after which the tracked locations of the asset need to be retrieved.
          #
          #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]

          # the cluster of the region you want to use
          module Cluster
            extend NextbillionSDK::Internal::Type::Enum

            AMERICA = :america

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Set the geometry format to encode the path linking the tracked locations of the
          # asset.
          #
          # Please note that geometry_type is effective only when mapmatch property of
          # correction parameter is set to 1.
          module GeometryType
            extend NextbillionSDK::Internal::Type::Enum

            POLYLINE = :polyline
            POLYLINE6 = :polyline6
            GEOJSON = :geojson

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
