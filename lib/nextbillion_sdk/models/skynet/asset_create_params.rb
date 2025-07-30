# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      # @see NextbillionSDK::Resources::Skynet::Asset#create
      class AssetCreateParams < NextbillionSDK::Internal::Type::BaseModel
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
        #   @return [Symbol, NextbillionSDK::Models::Skynet::AssetCreateParams::Cluster, nil]
        optional :cluster, enum: -> { NextbillionSDK::Skynet::AssetCreateParams::Cluster }

        # @!attribute attributes
        #   attributes can be used to store custom information about an asset in key:value
        #   format. Use attributes to add any useful information or context to your assets
        #   like the vehicle type, shift timing etc. Moreover, these attributes can be used
        #   to filter assets in **Search**, **Monitor**, and _Get Asset List_ queries.
        #
        #   Please note that the maximum number of key:value pairs that can be added to an
        #   attributes object is 100. Also, the overall size of attributes object should not
        #   exceed 65kb.
        #
        #   @return [Object, nil]
        optional :attributes, NextbillionSDK::Internal::Type::Unknown

        # @!attribute custom_id
        #   Set a unique ID for the new asset. If not provided, an ID will be automatically
        #   generated in UUID format. A valid custom*id can contain letters, numbers, "-", &
        #   "*" only.
        #
        #   Please note that the ID of an asset can not be changed once it is created.
        #
        #   @return [String, nil]
        optional :custom_id, String

        # @!attribute description
        #   Description for the asset.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute meta_data
        #   Any valid json object data. Can be used to save customized data. Max size is
        #   65kb.
        #
        #   @return [Object, nil]
        optional :meta_data, NextbillionSDK::Internal::Type::Unknown

        # @!attribute name
        #   Name of the asset. Use this field to assign a meaningful, custom name to the
        #   asset being created.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute tags
        #   **This parameter will be deprecated soon! Please use the attributes parameter to
        #   add labels or markers for the asset.**
        #
        #   Tags of the asset. tags can be used for filtering assets in operations like _Get
        #   Asset List_ and asset **Search** methods. They can also be used for monitoring
        #   of assets using the **Monitor** methods after linking tags and asset.
        #
        #   Valid tags are strings consisting of alphanumeric characters (A-Z, a-z, 0-9)
        #   along with the underscore ('\_') and hyphen ('-') symbols.
        #
        #   @return [Array<String>, nil]
        optional :tags, NextbillionSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(key:, cluster: nil, attributes: nil, custom_id: nil, description: nil, meta_data: nil, name: nil, tags: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Skynet::AssetCreateParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param cluster [Symbol, NextbillionSDK::Models::Skynet::AssetCreateParams::Cluster] the cluster of the region you want to use
        #
        #   @param attributes [Object] attributes can be used to store custom information about an asset in key:value f
        #
        #   @param custom_id [String] Set a unique ID for the new asset. If not provided, an ID will be automatically
        #
        #   @param description [String] Description for the asset.
        #
        #   @param meta_data [Object] Any valid json object data. Can be used to save customized data. Max size is 65k
        #
        #   @param name [String] Name of the asset. Use this field to assign a meaningful, custom name to the ass
        #
        #   @param tags [Array<String>] \*\*This parameter will be deprecated soon! Please use the attributes parameter
        #   to
        #
        #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]

        # the cluster of the region you want to use
        module Cluster
          extend NextbillionSDK::Internal::Type::Enum

          AMERICA = :america

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
