# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      module Asset
        # @see Nextbillionai::Resources::Skynet::Asset::Event#list
        class EventListParams < Nextbillionai::Internal::Type::BaseModel
          extend Nextbillionai::Internal::Type::RequestParameters::Converter
          include Nextbillionai::Internal::Type::RequestParameters

          # @!attribute key
          #   A key is a unique identifier that is required to authenticate a request to the
          #   API.
          #
          #   @return [String]
          required :key, String

          # @!attribute cluster
          #   the cluster of the region you want to use
          #
          #   @return [Symbol, Nextbillionai::Models::Skynet::Asset::EventListParams::Cluster, nil]
          optional :cluster, enum: -> { Nextbillionai::Skynet::Asset::EventListParams::Cluster }

          # @!attribute end_time
          #   Time before which the events triggered by the `asset` need to be retrieved.
          #
          #   @return [Integer, nil]
          optional :end_time, Integer

          # @!attribute monitor_id
          #   Filter the events by `monitor_id`. When provided, only the events triggered by
          #   the `monitor` will be returned in response.
          #
          #   Please note that if the `attributes` of the asset identified by `id` and those
          #   of the `monitor` do not match, then no events might be returned for this
          #   `monitor_id`.
          #
          #   @return [String, nil]
          optional :monitor_id, String

          # @!attribute pn
          #   Denotes page number. Use this along with the `ps` parameter to implement
          #   pagination for your searched results. This parameter does not have a maximum
          #   limit but would return an empty response in case a higher value is provided when
          #   the result-set itself is smaller.
          #
          #   @return [Integer, nil]
          optional :pn, Integer

          # @!attribute ps
          #   Denotes number of search results per page. Use this along with the `pn`
          #   parameter to implement pagination for your searched results.
          #
          #   @return [Integer, nil]
          optional :ps, Integer

          # @!attribute start_time
          #   Time after which the events triggered by the `asset` need to be retrieved.
          #
          #   @return [Integer, nil]
          optional :start_time, Integer

          # @!method initialize(key:, cluster: nil, end_time: nil, monitor_id: nil, pn: nil, ps: nil, start_time: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Skynet::Asset::EventListParams} for more details.
          #
          #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
          #
          #   @param cluster [Symbol, Nextbillionai::Models::Skynet::Asset::EventListParams::Cluster] the cluster of the region you want to use
          #
          #   @param end_time [Integer] Time before which the events triggered by the `asset` need to be retrieved.
          #
          #   @param monitor_id [String] Filter the events by `monitor_id`. When provided, only the events triggered by t
          #
          #   @param pn [Integer] Denotes page number. Use this along with the `ps` parameter to implement paginat
          #
          #   @param ps [Integer] Denotes number of search results per page. Use this along with the `pn` paramete
          #
          #   @param start_time [Integer] Time after which the events triggered by the `asset` need to be retrieved.
          #
          #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

          # the cluster of the region you want to use
          module Cluster
            extend Nextbillionai::Internal::Type::Enum

            AMERICA = :america

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
