# typed: strong

module Nextbillionai
  module Models
    module Skynet
      class ConfigUpdateParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Skynet::ConfigUpdateParams,
              Nextbillionai::Internal::AnyHash
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
              Nextbillionai::Skynet::ConfigUpdateParams::Cluster::OrSymbol
            )
          )
        end
        attr_reader :cluster

        sig do
          params(
            cluster:
              Nextbillionai::Skynet::ConfigUpdateParams::Cluster::OrSymbol
          ).void
        end
        attr_writer :cluster

        # Use this array to update information about the webhooks. Please note that the
        # webhooks will be overwritten every time this method is used.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :webhook

        sig { params(webhook: T::Array[String]).void }
        attr_writer :webhook

        sig do
          params(
            key: String,
            cluster:
              Nextbillionai::Skynet::ConfigUpdateParams::Cluster::OrSymbol,
            webhook: T::Array[String],
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # the cluster of the region you want to use
          cluster: nil,
          # Use this array to update information about the webhooks. Please note that the
          # webhooks will be overwritten every time this method is used.
          webhook: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              cluster:
                Nextbillionai::Skynet::ConfigUpdateParams::Cluster::OrSymbol,
              webhook: T::Array[String],
              request_options: Nextbillionai::RequestOptions
            }
          )
        end
        def to_hash
        end

        # the cluster of the region you want to use
        module Cluster
          extend Nextbillionai::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Nextbillionai::Skynet::ConfigUpdateParams::Cluster)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AMERICA =
            T.let(
              :america,
              Nextbillionai::Skynet::ConfigUpdateParams::Cluster::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Nextbillionai::Skynet::ConfigUpdateParams::Cluster::TaggedSymbol
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
