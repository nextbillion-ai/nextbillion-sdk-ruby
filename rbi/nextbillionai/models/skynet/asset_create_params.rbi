# typed: strong

module Nextbillionai
  module Models
    module Skynet
      class AssetCreateParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Skynet::AssetCreateParams,
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
              Nextbillionai::Skynet::AssetCreateParams::Cluster::OrSymbol
            )
          )
        end
        attr_reader :cluster

        sig do
          params(
            cluster: Nextbillionai::Skynet::AssetCreateParams::Cluster::OrSymbol
          ).void
        end
        attr_writer :cluster

        # attributes can be used to store custom information about an asset in key:value
        # format. Use attributes to add any useful information or context to your assets
        # like the vehicle type, shift timing etc. Moreover, these attributes can be used
        # to filter assets in **Search**, **Monitor**, and _Get Asset List_ queries.
        #
        # Please note that the maximum number of key:value pairs that can be added to an
        # attributes object is 100. Also, the overall size of attributes object should not
        # exceed 65kb.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :attributes

        sig { params(attributes: T.anything).void }
        attr_writer :attributes

        # Set a unique ID for the new asset. If not provided, an ID will be automatically
        # generated in UUID format. A valid custom*id can contain letters, numbers, "-", &
        # "*" only.
        #
        # Please note that the ID of an asset can not be changed once it is created.
        sig { returns(T.nilable(String)) }
        attr_reader :custom_id

        sig { params(custom_id: String).void }
        attr_writer :custom_id

        # Description for the asset.
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

        # Name of the asset. Use this field to assign a meaningful, custom name to the
        # asset being created.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # **This parameter will be deprecated soon! Please use the attributes parameter to
        # add labels or markers for the asset.**
        #
        # Tags of the asset. tags can be used for filtering assets in operations like _Get
        # Asset List_ and asset **Search** methods. They can also be used for monitoring
        # of assets using the **Monitor** methods after linking tags and asset.
        #
        # Valid tags are strings consisting of alphanumeric characters (A-Z, a-z, 0-9)
        # along with the underscore ('\_') and hyphen ('-') symbols.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        sig do
          params(
            key: String,
            cluster:
              Nextbillionai::Skynet::AssetCreateParams::Cluster::OrSymbol,
            attributes: T.anything,
            custom_id: String,
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
          # attributes can be used to store custom information about an asset in key:value
          # format. Use attributes to add any useful information or context to your assets
          # like the vehicle type, shift timing etc. Moreover, these attributes can be used
          # to filter assets in **Search**, **Monitor**, and _Get Asset List_ queries.
          #
          # Please note that the maximum number of key:value pairs that can be added to an
          # attributes object is 100. Also, the overall size of attributes object should not
          # exceed 65kb.
          attributes: nil,
          # Set a unique ID for the new asset. If not provided, an ID will be automatically
          # generated in UUID format. A valid custom*id can contain letters, numbers, "-", &
          # "*" only.
          #
          # Please note that the ID of an asset can not be changed once it is created.
          custom_id: nil,
          # Description for the asset.
          description: nil,
          # Any valid json object data. Can be used to save customized data. Max size is
          # 65kb.
          meta_data: nil,
          # Name of the asset. Use this field to assign a meaningful, custom name to the
          # asset being created.
          name: nil,
          # **This parameter will be deprecated soon! Please use the attributes parameter to
          # add labels or markers for the asset.**
          #
          # Tags of the asset. tags can be used for filtering assets in operations like _Get
          # Asset List_ and asset **Search** methods. They can also be used for monitoring
          # of assets using the **Monitor** methods after linking tags and asset.
          #
          # Valid tags are strings consisting of alphanumeric characters (A-Z, a-z, 0-9)
          # along with the underscore ('\_') and hyphen ('-') symbols.
          tags: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              cluster:
                Nextbillionai::Skynet::AssetCreateParams::Cluster::OrSymbol,
              attributes: T.anything,
              custom_id: String,
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
              T.all(Symbol, Nextbillionai::Skynet::AssetCreateParams::Cluster)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AMERICA =
            T.let(
              :america,
              Nextbillionai::Skynet::AssetCreateParams::Cluster::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Nextbillionai::Skynet::AssetCreateParams::Cluster::TaggedSymbol
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
