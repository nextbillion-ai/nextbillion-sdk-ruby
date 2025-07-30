# typed: strong

module NextbillionSDK
  module Resources
    class Skynet
      class Asset
        sig { returns(NextbillionSDK::Resources::Skynet::Asset::Event) }
        attr_reader :event

        sig { returns(NextbillionSDK::Resources::Skynet::Asset::Location) }
        attr_reader :location

        # Create an Asset
        sig do
          params(
            key: String,
            cluster:
              NextbillionSDK::Skynet::AssetCreateParams::Cluster::OrSymbol,
            attributes: T.anything,
            custom_id: String,
            description: String,
            meta_data: T.anything,
            name: String,
            tags: T::Array[String],
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(NextbillionSDK::Models::Skynet::AssetCreateResponse)
        end
        def create(
          # Query param: A key is a unique identifier that is required to authenticate a
          # request to the API.
          key:,
          # Query param: the cluster of the region you want to use
          cluster: nil,
          # Body param: attributes can be used to store custom information about an asset in
          # key:value format. Use attributes to add any useful information or context to
          # your assets like the vehicle type, shift timing etc. Moreover, these attributes
          # can be used to filter assets in **Search**, **Monitor**, and _Get Asset List_
          # queries.
          #
          # Please note that the maximum number of key:value pairs that can be added to an
          # attributes object is 100. Also, the overall size of attributes object should not
          # exceed 65kb.
          attributes: nil,
          # Body param: Set a unique ID for the new asset. If not provided, an ID will be
          # automatically generated in UUID format. A valid custom*id can contain letters,
          # numbers, "-", & "*" only.
          #
          # Please note that the ID of an asset can not be changed once it is created.
          custom_id: nil,
          # Body param: Description for the asset.
          description: nil,
          # Body param: Any valid json object data. Can be used to save customized data. Max
          # size is 65kb.
          meta_data: nil,
          # Body param: Name of the asset. Use this field to assign a meaningful, custom
          # name to the asset being created.
          name: nil,
          # Body param: **This parameter will be deprecated soon! Please use the attributes
          # parameter to add labels or markers for the asset.**
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

        # Get an Asset
        sig do
          params(
            id: String,
            key: String,
            cluster:
              NextbillionSDK::Skynet::AssetRetrieveParams::Cluster::OrSymbol,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(NextbillionSDK::Models::Skynet::AssetRetrieveResponse)
        end
        def retrieve(
          # ID of the asset to be fetched. This is the same ID that was generated/provided
          # at the time of creating the asset.
          id,
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # the cluster of the region you want to use
          cluster: nil,
          request_options: {}
        )
        end

        # Update an Asset
        sig do
          params(
            id: String,
            key: String,
            cluster:
              NextbillionSDK::Skynet::AssetUpdateParams::Cluster::OrSymbol,
            attributes: T.anything,
            description: String,
            meta_data: T.anything,
            name: String,
            tags: T::Array[String],
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(NextbillionSDK::Skynet::SimpleResp)
        end
        def update(
          # Path param: ID of the asset to be updated. This is the same ID that was
          # generated/provided at the time of creating the asset.
          id,
          # Query param: A key is a unique identifier that is required to authenticate a
          # request to the API.
          key:,
          # Query param: the cluster of the region you want to use
          cluster: nil,
          # Body param: Use this param to update the attributes of an asset in key:value
          # format. Users can maintain any useful information or context about the assets by
          # utilising this parameter.
          #
          # Please be careful when using this parameter while updating an asset as the new
          # attributes object provided will completely overwrite the old attributes object.
          # Use the _Update Asset Attributes_ method to add new or modify existing
          # attributes.
          #
          # Another point to note is that the overall size of the attributes object cannot
          # exceed 65kb and the maximum number of key:value pairs that can be added to this
          # object is 100.
          attributes: nil,
          # Body param: Use this param to update the description of an asset.
          description: nil,
          # Body param: Any valid json object data. Can be used to save customized data. Max
          # size is 65kb.
          meta_data: nil,
          # Body param: Use this param to update the name of an asset. Users can assign
          # meaningful custom names to their assets.
          name: nil,
          # Body param: **This parameter will be deprecated soon! Please use the attributes
          # parameter to add labels or markers for the asset.**
          #
          # Use this param to update the tags of an asset. tags can be used to filter asset
          # in _Get Asset List_, **Search** and **Monitor** queries.
          tags: nil,
          request_options: {}
        )
        end

        # Get Asset List
        sig do
          params(
            key: String,
            cluster: NextbillionSDK::Skynet::AssetListParams::Cluster::OrSymbol,
            include_all_of_attributes: String,
            include_any_of_attributes: String,
            pn: Integer,
            ps: Integer,
            sort: String,
            tags: String,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(NextbillionSDK::Models::Skynet::AssetListResponse)
        end
        def list(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # the cluster of the region you want to use
          cluster: nil,
          # Use this parameter to filter the assets by their attributes. Only the assets
          # having all the attributes added to this parameter, will be returned in the
          # response. Multiple attributes can be separated using pipes (|).
          #
          # Please note the attributes are case sensitive. Also, this parameter can not be
          # used in conjunction with include_any_of_attributes parameter.
          include_all_of_attributes: nil,
          # Use this parameter to filter the assets by their attributes. Assets having at
          # least one of the attributes added to this parameter, will be returned in the
          # response. Multiple attributes can be separated using pipes (|).
          #
          # Please note the attributes are case sensitive. Also, this parameter can not be
          # used in conjunction with include_all_of_attributes parameter.
          include_any_of_attributes: nil,
          # Denotes page number. Use this along with the ps parameter to implement
          # pagination for your searched results. This parameter does not have a maximum
          # limit but would return an empty response in case a higher value is provided when
          # the result-set itself is smaller.
          pn: nil,
          # Denotes number of search results per page. Use this along with the pn parameter
          # to implement pagination for your searched results.
          ps: nil,
          # Provide a single field to sort the results by. Only updated_at or created_at
          # fields can be selected for ordering the results.
          #
          # By default, the result is sorted by created_at field in the descending order.
          # Allowed values for specifying the order are asc for ascending order and desc for
          # descending order.
          sort: nil,
          # **This parameter will be deprecated soon! Please use the
          # include_all_of_attributes or include_any_of_attributes parameters to provide
          # labels or markers for the assets to be retrieved.**
          #
          # tags can be used to filter the assets. Only those assets which have all the tags
          # provided, will be included in the result. In case multiple tags need to be
          # specified, use , to separate them.
          tags: nil,
          request_options: {}
        )
        end

        # Delete an Asset
        sig do
          params(
            id: String,
            key: String,
            cluster:
              NextbillionSDK::Skynet::AssetDeleteParams::Cluster::OrSymbol,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(NextbillionSDK::Skynet::SimpleResp)
        end
        def delete(
          # ID of the asset to be deleted. This is the same ID that was generated/provided
          # at the time of creating the asset.
          id,
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # the cluster of the region you want to use
          cluster: nil,
          request_options: {}
        )
        end

        # Bind asset to device
        sig do
          params(
            id: String,
            key: String,
            device_id: String,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(NextbillionSDK::Skynet::SimpleResp)
        end
        def bind(
          # Path param: ID of asset to which a device needs to be linked. This is the same
          # ID that was generated/provided at the time of creating the asset.
          id,
          # Query param: A key is a unique identifier that is required to authenticate a
          # request to the API.
          key:,
          # Body param: Device ID to be linked to the asset identified by id.
          #
          # Please note that the device needs to be linked to an asset before using it in
          # the _Upload locations of an Asset_ method for sending GPS information about the
          # asset.
          device_id:,
          request_options: {}
        )
        end

        # Upload track info
        sig do
          params(
            id: String,
            key: String,
            device_id: String,
            locations:
              NextbillionSDK::Skynet::AssetTrackParams::Locations::OrHash,
            cluster:
              NextbillionSDK::Skynet::AssetTrackParams::Cluster::OrSymbol,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(NextbillionSDK::Skynet::SimpleResp)
        end
        def track(
          # Path param: ID of the asset whose track information is to be uploaded. This is
          # the same ID that was generated/provided at the time of creating the asset.
          id,
          # Query param: A key is a unique identifier that is required to authenticate a
          # request to the API.
          key:,
          # Body param: ID of the device used to upload the tracking information of the
          # asset.
          #
          # Please note that the device_id used here must already be linked to the asset.
          # Use the _Bind Device to Asset_ method to link a device with your asset.
          device_id:,
          # Body param: An array of objects to collect the location tracking information for
          # an asset. Each object must correspond to details of only one location.
          locations:,
          # Query param: the cluster of the region you want to use
          cluster: nil,
          request_options: {}
        )
        end

        # Update asset attributes. (add)
        sig do
          params(
            id: String,
            key: String,
            attributes: T.anything,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(NextbillionSDK::Skynet::SimpleResp)
        end
        def update_attributes(
          # Path param: ID of the asset whose attributes need to be updated. This is the
          # same ID that was generated/provided at the time of creating the asset.
          id,
          # Query param: A key is a unique identifier that is required to authenticate a
          # request to the API.
          key:,
          # Body param: attributes can be used to add any useful information or context to
          # your assets like the vehicle type, shift timing etc. These attributes can also
          # be used to filter assets in **Search**, **Monitor**, and _Get Asset List_
          # queries.
          #
          # Provide the attributes to be added or updated, in key:value format. If an
          # existing key is provided in the input, then the value will be modified as per
          # the input value. If a new key is provided in the input, then the key would be
          # added to the existing set. The contents of any value field are neither altered
          # nor removed unless specifically referred to by its key in the input request.
          #
          # Please note that the maximum number of key:value pairs that can be added to an
          # attributes object is 100. Also, the overall size of attributes object should not
          # exceed 65kb.
          attributes:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: NextbillionSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
