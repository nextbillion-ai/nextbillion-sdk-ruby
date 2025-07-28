# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      class MonitorListParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Skynet::MonitorListParams,
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
              NextbillionSDK::Skynet::MonitorListParams::Cluster::OrSymbol
            )
          )
        end
        attr_reader :cluster

        sig do
          params(
            cluster:
              NextbillionSDK::Skynet::MonitorListParams::Cluster::OrSymbol
          ).void
        end
        attr_writer :cluster

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

        # Provide a single field to sort the results by. Only `updated_at` or `created_at`
        # fields can be selected for ordering the results.
        #
        # By default, the result is sorted by `created_at` field in the descending order.
        # Allowed values for specifying the order are `asc` for ascending order and `desc`
        # for descending order.
        sig { returns(T.nilable(String)) }
        attr_reader :sort

        sig { params(sort: String).void }
        attr_writer :sort

        # `tags` can be used to filter the monitors. Only those monitors which have all
        # the `tags` provided here, will be included in the search result. In case
        # multiple `tags` need to be specified, use `,` to separate them.
        sig { returns(T.nilable(String)) }
        attr_reader :tags

        sig { params(tags: String).void }
        attr_writer :tags

        sig do
          params(
            key: String,
            cluster:
              NextbillionSDK::Skynet::MonitorListParams::Cluster::OrSymbol,
            pn: Integer,
            ps: Integer,
            sort: String,
            tags: String,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # the cluster of the region you want to use
          cluster: nil,
          # Denotes page number. Use this along with the `ps` parameter to implement
          # pagination for your searched results. This parameter does not have a maximum
          # limit but would return an empty response in case a higher value is provided when
          # the result-set itself is smaller.
          pn: nil,
          # Denotes number of search results per page. Use this along with the `pn`
          # parameter to implement pagination for your searched results.
          ps: nil,
          # Provide a single field to sort the results by. Only `updated_at` or `created_at`
          # fields can be selected for ordering the results.
          #
          # By default, the result is sorted by `created_at` field in the descending order.
          # Allowed values for specifying the order are `asc` for ascending order and `desc`
          # for descending order.
          sort: nil,
          # `tags` can be used to filter the monitors. Only those monitors which have all
          # the `tags` provided here, will be included in the search result. In case
          # multiple `tags` need to be specified, use `,` to separate them.
          tags: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              cluster:
                NextbillionSDK::Skynet::MonitorListParams::Cluster::OrSymbol,
              pn: Integer,
              ps: Integer,
              sort: String,
              tags: String,
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
              T.all(Symbol, NextbillionSDK::Skynet::MonitorListParams::Cluster)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AMERICA =
            T.let(
              :america,
              NextbillionSDK::Skynet::MonitorListParams::Cluster::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                NextbillionSDK::Skynet::MonitorListParams::Cluster::TaggedSymbol
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
