# typed: strong

module Nextbillionai
  module Resources
    class Skynet
      class Asset
        class Event
          # Event History of an Asset
          sig do
            params(
              id: String,
              key: String,
              cluster:
                Nextbillionai::Skynet::Asset::EventListParams::Cluster::OrSymbol,
              end_time: Integer,
              monitor_id: String,
              pn: Integer,
              ps: Integer,
              start_time: Integer,
              request_options: Nextbillionai::RequestOptions::OrHash
            ).returns(Nextbillionai::Models::Skynet::Asset::EventListResponse)
          end
          def list(
            # ID of the `asset` whose event history needs to be fetched. This is the same ID
            # that was generated/provided at the time of creating the `asset`.
            id,
            # A key is a unique identifier that is required to authenticate a request to the
            # API.
            key:,
            # the cluster of the region you want to use
            cluster: nil,
            # Time before which the events triggered by the `asset` need to be retrieved.
            end_time: nil,
            # Filter the events by `monitor_id`. When provided, only the events triggered by
            # the `monitor` will be returned in response.
            #
            # Please note that if the `attributes` of the asset identified by `id` and those
            # of the `monitor` do not match, then no events might be returned for this
            # `monitor_id`.
            monitor_id: nil,
            # Denotes page number. Use this along with the `ps` parameter to implement
            # pagination for your searched results. This parameter does not have a maximum
            # limit but would return an empty response in case a higher value is provided when
            # the result-set itself is smaller.
            pn: nil,
            # Denotes number of search results per page. Use this along with the `pn`
            # parameter to implement pagination for your searched results.
            ps: nil,
            # Time after which the events triggered by the `asset` need to be retrieved.
            start_time: nil,
            request_options: {}
          )
          end

          # @api private
          sig do
            params(client: Nextbillionai::Client).returns(T.attached_class)
          end
          def self.new(client:)
          end
        end
      end
    end
  end
end
