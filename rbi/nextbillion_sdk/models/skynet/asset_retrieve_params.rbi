# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      class AssetRetrieveParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Skynet::AssetRetrieveParams,
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
              NextbillionSDK::Skynet::AssetRetrieveParams::Cluster::OrSymbol
            )
          )
        end
        attr_reader :cluster

        sig do
          params(
            cluster:
              NextbillionSDK::Skynet::AssetRetrieveParams::Cluster::OrSymbol
          ).void
        end
        attr_writer :cluster

        sig do
          params(
            key: String,
            cluster:
              NextbillionSDK::Skynet::AssetRetrieveParams::Cluster::OrSymbol,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # the cluster of the region you want to use
          cluster: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              cluster:
                NextbillionSDK::Skynet::AssetRetrieveParams::Cluster::OrSymbol,
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
                NextbillionSDK::Skynet::AssetRetrieveParams::Cluster
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AMERICA =
            T.let(
              :america,
              NextbillionSDK::Skynet::AssetRetrieveParams::Cluster::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                NextbillionSDK::Skynet::AssetRetrieveParams::Cluster::TaggedSymbol
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
