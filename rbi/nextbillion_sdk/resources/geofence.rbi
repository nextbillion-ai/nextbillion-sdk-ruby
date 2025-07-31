# typed: strong

module NextbillionSDK
  module Resources
    class Geofence
      sig { returns(NextbillionSDK::Resources::Geofence::Console) }
      attr_reader :console

      sig { returns(NextbillionSDK::Resources::Geofence::Batch) }
      attr_reader :batch

      # Create a geofence
      sig do
        params(
          key: String,
          type: NextbillionSDK::GeofenceEntityCreate::Type::OrSymbol,
          circle: NextbillionSDK::GeofenceEntityCreate::Circle::OrHash,
          custom_id: String,
          isochrone: NextbillionSDK::GeofenceEntityCreate::Isochrone::OrHash,
          meta_data: T.anything,
          name: String,
          polygon: NextbillionSDK::GeofenceEntityCreate::Polygon::OrHash,
          tags: T::Array[String],
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(NextbillionSDK::Models::GeofenceCreateResponse)
      end
      def create(
        # Query param: A key is a unique identifier that is required to authenticate a
        # request to the API.
        key:,
        # Body param: Specify the type of the geofence that is being created.
        type:,
        # Body param: Provide the details to create a circular geofence. Please note that
        # this object is mandatory when `type` is `circle`. When the `type` is not
        # `circle`, the properties of this object will be ignored while creating the
        # geofence.
        circle: nil,
        # Body param: Set an unique ID for the new geofence. If not provided, an ID will
        # be automatically generated in UUID format. A valid `custom_id` can contain
        # letters, numbers, "-", & "\_" only.
        #
        # Please note that the ID of a geofence can not be changed once it is created.
        custom_id: nil,
        # Body param: Provide the details to create an isochrone based geofence. Use this
        # object when `type` is `isochrone`. When the `type` is not `isochrone`, the
        # properties of this object will be ignored while creating the geofence.
        isochrone: nil,
        # Body param: Metadata of the geofence. Use this field to define custom attributes
        # that provide more context and information about the geofence being created like
        # country, group ID etc.
        #
        # The data being added should be in valid JSON object format (i.e. `key` and
        # `value` pairs). Max size allowed for the object is 65kb.
        meta_data: nil,
        # Body param: Name of the geofence. Use this field to assign a meaningful, custom
        # name to the geofence being created.
        name: nil,
        # Body param: Provide the details to create a custom polygon type of geofence.
        # Please note that this object is mandatory when `type` is `polygon`. When the
        # `type` is not `polygon`, the properties of this object will be ignored while
        # creating the geofence.
        #
        # Self-intersecting polygons or polygons containing other polygons are invalid and
        # will be removed while processing the request.
        #
        # Area of the polygon should be less than 2000 km<sup>2</sup>.
        polygon: nil,
        # Body param: An array of strings to associate multiple tags to the geofence.
        # `tags` can be used to search or filter geofences (using `Get Geofence List`
        # method).
        #
        # Create valid `tags` using a string consisting of alphanumeric characters (A-Z,
        # a-z, 0-9) along with the underscore ('\_') and hyphen ('-') symbols.
        tags: nil,
        request_options: {}
      )
      end

      # Get a Geofence
      sig do
        params(
          id: String,
          key: String,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(NextbillionSDK::Models::GeofenceRetrieveResponse)
      end
      def retrieve(
        # ID of the geofence to be fetched. This is the ID that was generated/provided at
        # the time of creating the geofence.
        id,
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        request_options: {}
      )
      end

      # Update a Geofence
      sig do
        params(
          id: String,
          key: String,
          circle: NextbillionSDK::GeofenceUpdateParams::Circle::OrHash,
          isochrone: NextbillionSDK::GeofenceUpdateParams::Isochrone::OrHash,
          meta_data: T.anything,
          name: String,
          polygon: NextbillionSDK::GeofenceUpdateParams::Polygon::OrHash,
          tags: T::Array[String],
          type: NextbillionSDK::GeofenceUpdateParams::Type::OrSymbol,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(NextbillionSDK::Skynet::SimpleResp)
      end
      def update(
        # Path param: ID of the geofence to be updated. This is the ID that was
        # generated/provided at the time of creating the geofence.
        id,
        # Query param: A key is a unique identifier that is required to authenticate a
        # request to the API.
        key:,
        # Body param: Use this object to update details of a circular geofence. Please
        # note that this object is mandatory only when `type` is `circle`. When the `type`
        # is not `circle`, the properties of this object will be ignored while creating
        # the geofence.
        circle: nil,
        # Body param: Use this object to update details of an isochrone based geofence.
        # Please note that this object is mandatory only when `type` is `isochrone`. When
        # the `type` is not `isochrone`, the properties of this object will be ignored
        # while creating the geofence.
        isochrone: nil,
        # Body param: Updated the `meta_data` associated with a geofence. Use this field
        # to define custom attributes that provide more context and information about the
        # geofence being updated like country, group ID etc.
        #
        # The data being added should be in valid JSON object format (i.e. `key` and
        # `value` pairs). Max size allowed for the object is 65kb.
        meta_data: nil,
        # Body param: Use this parameter to update the `name` of a geofence. Users can
        # assign meaningful custom names to their geofences.
        name: nil,
        # Body param: Use this object to update details of a custom polygon geofence.
        # Please note that this object is mandatory only when `type` is `polygon`. When
        # the `type` is not `polygon`, the properties of this object will be ignored while
        # creating the geofence.
        #
        # Self-intersecting polygons or polygons containing other polygons are invalid and
        # will be removed while processing the request.
        #
        # Area of the polygon should be less than 2000 km<sup>2</sup>.
        polygon: nil,
        # Body param: Use this parameter to add/modify one or multiple `tags` of a
        # geofence. `tags` can be used to search or filter geofences (using
        # `Get Geofence List` method).
        #
        # Valid values for updating `tags` consist of alphanumeric characters (A-Z, a-z,
        # 0-9) along with the underscore ('\_') and hyphen ('-') symbols.
        tags: nil,
        # Body param: Use this parameter to update the `type` of a geofence. Please note
        # that you will need to provide required details for creating a geofence of the
        # new `type`. Check other parameters of this method to know more.
        type: nil,
        request_options: {}
      )
      end

      # Get Geofence List
      sig do
        params(
          key: String,
          pn: Integer,
          ps: Integer,
          tags: String,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(NextbillionSDK::Models::GeofenceListResponse)
      end
      def list(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # Denotes page number. Use this along with the `ps` parameter to implement
        # pagination for your searched results. This parameter does not have a maximum
        # limit but would return an empty response in case a higher value is provided when
        # the result-set itself is smaller.
        pn: nil,
        # Denotes number of search results per page. Use this along with the `pn`
        # parameter to implement pagination for your searched results.
        ps: nil,
        # Comma (`,`) separated list of `tags` which will be used to filter the geofences.
        #
        # Please note only the geofences which have all the `tags` added to this parameter
        # will be included in the result. This parameter can accept a string with a
        # maximum length of 256 characters.
        tags: nil,
        request_options: {}
      )
      end

      # Delete a Geofence
      sig do
        params(
          id: String,
          key: String,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(NextbillionSDK::Skynet::SimpleResp)
      end
      def delete(
        # ID of the geofence to be deleted. This is the ID that was generated/provided at
        # the time of creating the geofence.
        id,
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        request_options: {}
      )
      end

      # Geofence Contains
      sig do
        params(
          key: String,
          locations: String,
          geofences: String,
          verbose: String,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(NextbillionSDK::Models::GeofenceContainsResponse)
      end
      def contains(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # Pipe (|) separated coordinates, in [latitude,longitude] format, of the locations
        # to be searched against the geofences.
        locations:,
        # A `,` separated list geofence IDs against which the `locations` will be
        # searched. If not provided, then the 'locations' will be searched against all
        # your existing geofences.
        #
        # Maximum length of the string can be 256 characters.
        geofences: nil,
        # When `true`, an array with detailed information of geofences is returned. When
        # `false`, an array containing only the IDs of the geofences is returned.
        verbose: nil,
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
