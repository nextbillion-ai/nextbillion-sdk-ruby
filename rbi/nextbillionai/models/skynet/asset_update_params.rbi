# typed: strong

module Nextbillionai
  module Models
    module Skynet
      class AssetUpdateParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Skynet::AssetUpdateParams,
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
              Nextbillionai::Skynet::AssetUpdateParams::Cluster::OrSymbol
            )
          )
        end
        attr_reader :cluster

        sig do
          params(
            cluster: Nextbillionai::Skynet::AssetUpdateParams::Cluster::OrSymbol
          ).void
        end
        attr_writer :cluster

        # Use this param to update the `attributes` of an asset in `key`:`value` format.
        # Users can maintain any useful information or context about the assets by
        # utilising this parameter.
        #
        # Please be careful when using this parameter while updating an `asset` as the new
        # `attributes` object provided will completely overwrite the old `attributes`
        # object. Use the _Update Asset Attributes_ method to add new or modify existing
        # attributes.
        #
        # Another point to note is that the overall size of the `attributes` object cannot
        # exceed 65kb and the maximum number of `key`:`value` pairs that can be added to
        # this object is 100.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :attributes

        sig { params(attributes: T.anything).void }
        attr_writer :attributes

        # Use this param to update the `description` of an `asset`.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Any valid json object data. Can be used to save customized data. Max size is
        # 65kb.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :meta_data

        sig { params(meta_data: T.anything).void }
        attr_writer :meta_data

        # Use this param to update the `name` of an `asset`. Users can assign meaningful
        # custom names to their assets.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # **This parameter will be deprecated soon! Please use the `attributes` parameter
        # to add labels or markers for the asset.**
        #
        # Use this param to update the `tags` of an `asset`. `tags` can be used to filter
        # `asset` in _Get Asset List_, **Search** and **Monitor** queries.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        sig do
          params(
            key: String,
            cluster:
              Nextbillionai::Skynet::AssetUpdateParams::Cluster::OrSymbol,
            attributes: T.anything,
            description: String,
            meta_data: T.anything,
            name: String,
            tags: T::Array[String],
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # the cluster of the region you want to use
          cluster: nil,
          # Use this param to update the `attributes` of an asset in `key`:`value` format.
          # Users can maintain any useful information or context about the assets by
          # utilising this parameter.
          #
          # Please be careful when using this parameter while updating an `asset` as the new
          # `attributes` object provided will completely overwrite the old `attributes`
          # object. Use the _Update Asset Attributes_ method to add new or modify existing
          # attributes.
          #
          # Another point to note is that the overall size of the `attributes` object cannot
          # exceed 65kb and the maximum number of `key`:`value` pairs that can be added to
          # this object is 100.
          attributes: nil,
          # Use this param to update the `description` of an `asset`.
          description: nil,
          # Any valid json object data. Can be used to save customized data. Max size is
          # 65kb.
          meta_data: nil,
          # Use this param to update the `name` of an `asset`. Users can assign meaningful
          # custom names to their assets.
          name: nil,
          # **This parameter will be deprecated soon! Please use the `attributes` parameter
          # to add labels or markers for the asset.**
          #
          # Use this param to update the `tags` of an `asset`. `tags` can be used to filter
          # `asset` in _Get Asset List_, **Search** and **Monitor** queries.
          tags: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              cluster:
                Nextbillionai::Skynet::AssetUpdateParams::Cluster::OrSymbol,
              attributes: T.anything,
              description: String,
              meta_data: T.anything,
              name: String,
              tags: T::Array[String],
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
              T.all(Symbol, Nextbillionai::Skynet::AssetUpdateParams::Cluster)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AMERICA =
            T.let(
              :america,
              Nextbillionai::Skynet::AssetUpdateParams::Cluster::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Nextbillionai::Skynet::AssetUpdateParams::Cluster::TaggedSymbol
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
