# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      module Asset
        class EventListParams < NextbillionSDK::Internal::Type::BaseModel
          extend NextbillionSDK::Internal::Type::RequestParameters::Converter
          include NextbillionSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Skynet::Asset::EventListParams,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          sig { returns(String) }
          attr_accessor :key

          # the cluster of the region you want to use
          sig do
            returns(
              T.nilable(
                NextbillionSDK::Skynet::Asset::EventListParams::Cluster::OrSymbol
              )
            )
          end
          attr_reader :cluster

          sig do
            params(
              cluster:
                NextbillionSDK::Skynet::Asset::EventListParams::Cluster::OrSymbol
            ).void
          end
          attr_writer :cluster

          # Time before which the events triggered by the `asset` need to be retrieved.
          sig { returns(T.nilable(Integer)) }
          attr_reader :end_time

          sig { params(end_time: Integer).void }
          attr_writer :end_time

          # Filter the events by `monitor_id`. When provided, only the events triggered by
          # the `monitor` will be returned in response.
          #
          # Please note that if the `attributes` of the asset identified by `id` and those
          # of the `monitor` do not match, then no events might be returned for this
          # `monitor_id`.
          sig { returns(T.nilable(String)) }
          attr_reader :monitor_id

          sig { params(monitor_id: String).void }
          attr_writer :monitor_id

          # Denotes page number. Use this along with the `ps` parameter to implement
          # pagination for your searched results. This parameter does not have a maximum
          # limit but would return an empty response in case a higher value is provided when
          # the result-set itself is smaller.
          sig { returns(T.nilable(Integer)) }
          attr_reader :pn

          sig { params(pn: Integer).void }
          attr_writer :pn

          # Denotes number of search results per page. Use this along with the `pn`
          # parameter to implement pagination for your searched results.
          sig { returns(T.nilable(Integer)) }
          attr_reader :ps

          sig { params(ps: Integer).void }
          attr_writer :ps

          # Time after which the events triggered by the `asset` need to be retrieved.
          sig { returns(T.nilable(Integer)) }
          attr_reader :start_time

          sig { params(start_time: Integer).void }
          attr_writer :start_time

          sig do
            params(
              key: String,
              cluster:
                NextbillionSDK::Skynet::Asset::EventListParams::Cluster::OrSymbol,
              end_time: Integer,
              monitor_id: String,
              pn: Integer,
              ps: Integer,
              start_time: Integer,
              request_options: NextbillionSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
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

          sig do
            override.returns(
              {
                key: String,
                cluster:
                  NextbillionSDK::Skynet::Asset::EventListParams::Cluster::OrSymbol,
                end_time: Integer,
                monitor_id: String,
                pn: Integer,
                ps: Integer,
                start_time: Integer,
                request_options: NextbillionSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          # the cluster of the region you want to use
          module Cluster
            extend NextbillionSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  NextbillionSDK::Skynet::Asset::EventListParams::Cluster
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AMERICA =
              T.let(
                :america,
                NextbillionSDK::Skynet::Asset::EventListParams::Cluster::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  NextbillionSDK::Skynet::Asset::EventListParams::Cluster::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
