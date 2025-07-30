# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      # @see NextbillionSDK::Resources::Skynet::Asset#update
      class AssetUpdateParams < NextbillionSDK::Internal::Type::BaseModel
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
        #   @return [Symbol, NextbillionSDK::Models::Skynet::AssetUpdateParams::Cluster, nil]
        optional :cluster, enum: -> { NextbillionSDK::Skynet::AssetUpdateParams::Cluster }

        # @!attribute attributes
        #   Use this param to update the attributes of an asset in key:value format. Users
        #   can maintain any useful information or context about the assets by utilising
        #   this parameter.
        #
        #   Please be careful when using this parameter while updating an asset as the new
        #   attributes object provided will completely overwrite the old attributes object.
        #   Use the _Update Asset Attributes_ method to add new or modify existing
        #   attributes.
        #
        #   Another point to note is that the overall size of the attributes object cannot
        #   exceed 65kb and the maximum number of key:value pairs that can be added to this
        #   object is 100.
        #
        #   @return [Object, nil]
        optional :attributes, NextbillionSDK::Internal::Type::Unknown

        # @!attribute description
        #   Use this param to update the description of an asset.
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
        #   Use this param to update the name of an asset. Users can assign meaningful
        #   custom names to their assets.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute tags
        #   **This parameter will be deprecated soon! Please use the attributes parameter to
        #   add labels or markers for the asset.**
        #
        #   Use this param to update the tags of an asset. tags can be used to filter asset
        #   in _Get Asset List_, **Search** and **Monitor** queries.
        #
        #   @return [Array<String>, nil]
        optional :tags, NextbillionSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(key:, cluster: nil, attributes: nil, description: nil, meta_data: nil, name: nil, tags: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Skynet::AssetUpdateParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param cluster [Symbol, NextbillionSDK::Models::Skynet::AssetUpdateParams::Cluster] the cluster of the region you want to use
        #
        #   @param attributes [Object] Use this param to update the attributes of an asset in key:value format. Users c
        #
        #   @param description [String] Use this param to update the description of an asset.
        #
        #   @param meta_data [Object] Any valid json object data. Can be used to save customized data. Max size is 65k
        #
        #   @param name [String] Use this param to update the name of an asset. Users can assign meaningful custo
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
