# typed: strong

module NextbillionSDK
  module Resources
    class Restrictions
      # Create a new restriction
      sig do
        params(
          restriction_type:
            NextbillionSDK::RestrictionCreateParams::RestrictionType::OrSymbol,
          key: String,
          area: String,
          name: String,
          latlon: T::Boolean,
          comment: String,
          direction: NextbillionSDK::RichGroupRequest::Direction::OrSymbol,
          end_time: Float,
          geofence: T::Array[T::Array[Float]],
          height: Integer,
          length: Integer,
          mode: T::Array[NextbillionSDK::RichGroupRequest::Mode::OrSymbol],
          repeat_on: String,
          segments: T::Array[NextbillionSDK::RichGroupRequest::Segment::OrHash],
          speed: Float,
          speed_limit: Float,
          start_time: Float,
          tracks: T::Array[T::Array[Float]],
          turns: T::Array[NextbillionSDK::RichGroupRequest::Turn::OrHash],
          weight: Integer,
          width: Integer,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(NextbillionSDK::RichGroupResponse)
      end
      def create(
        # Path param: Specify the type of restriction being created. Following restriction
        # types are supported:
        #
        # - `turn`: Taking the given turn is restricted.
        #
        # - `fixedspeed`: Applies a fixed speed restriction in the given `segments` or
        #   `geofence`.
        #
        # - `maxspeed`: Applies a maximum speed limit in the given `segments` or
        #   `geofence`.
        #
        # - `closure`: The given `segments` or `geofence` is closed for specified `mode`
        #   of travel.
        #
        # - `truck`: Trucks are restricted in the given `segments` or `geofence`.
        #
        # - `parking`: No parking allowed in the given `segments` or `geofence`.
        restriction_type,
        # Query param: A key is a unique identifier that is required to authenticate a
        # request to the API.
        key:,
        # Body param: Specify the area name. It represents a region where restrictions can
        # be applied. This is a custom field and it is recommended for the users to check
        # with [NextBillion.ai](www.nextbillion.ai) support for the right value.
        # Alternatively, users can invoke the _[Areas](#supported-areas)_ method to get a
        # list of available areas for them.
        area:,
        # Body param: Specify a custom, descriptive name for the restriction.
        name:,
        # Query param: Use this parameter to decide the format for specifying the geofence
        # coordinates. If true, then the coordinates of geofence can be specified as
        # "latitude,longitude" format, otherwise they should be specified in
        # "longitude,latitude" format.
        latlon: nil,
        # Body param: Use this parameter to add any custom information about the
        # restriction being created.
        comment: nil,
        # Body param: Represents the traffic direction on the segments to which the
        # restriction will be applied.
        direction: nil,
        # Body param: Provide a UNIX epoch timestamp in seconds, representing the time
        # when the restriction should cease to be in-effect.
        end_time: nil,
        # Body param: An array of coordinates denoting the boundary of an area in which
        # the restrictions are to be applied. The format in which coordinates should be
        # listed is defined by the `latlon` field.
        #
        # Geofences can be used to create all restriction types, except for a `turn` type
        # restriction. Please note that `segments` is not required when using `geofence`
        # to create restrictions.
        geofence: nil,
        # Body param: Specify the maximum truck height, in centimeter, that will be
        # allowed under the restriction. A value of 0 indicates no limit.
        #
        # Please note this parameter is effective only when `restriction_type` is `truck`.
        # At least one of truck parameters - `weight`, `height`, `width` and `truck` -
        # needs to be provided when restriction type is `truck`.
        height: nil,
        # Body param: Specify the maximum truck length, in centimeter, that will be
        # allowed under the restriction. A value of 0 indicates no limit.
        #
        # Please note this parameter is effective only when `restriction_type` is `truck`.
        # At least one of truck parameters - `weight`, `height`, `width` and `truck` -
        # needs to be provided when restriction type is `truck`.
        length: nil,
        # Body param: Provide the driving modes for which the restriction should be
        # effective. If the value is an empty array or if it is not provided then the
        # restriction would be applied for all modes.
        mode: nil,
        # Body param: It represents the days and times when the restriction is in effect.
        # Users can use this property to set recurring or one-time restrictions as per the
        # [given format](https://wiki.openstreetmap.org/wiki/Key:opening_hours) for
        # specifying the recurring schedule of the restriction.
        #
        # Please provided values as per the local time of the region where the restriction
        # is being applied.
        repeat_on: nil,
        # Body param: An array of objects to collect the details of the segments of a road
        # on which the restriction has to be applied. Each object corresponds to a new
        # segment.
        #
        # Please note that `segments` is mandatory for all `restrtiction_type` except
        # `turn`.
        segments: nil,
        # Body param: Provide the the fixed speed of the segment where the restriction
        # needs to be applied. Please note that this parameter is mandatory when the
        # `restrictionType` is `fixedspeed`.
        speed: nil,
        # Body param: Provide the the maximum speed of the segment where the restriction
        # needs to be applied. Please note that this parameter is mandatory when the
        # `restrictionType` is `maxspeed`.
        speed_limit: nil,
        # Body param: Provide a UNIX epoch timestamp in seconds, representing the start
        # time for the restriction to be in-effect.
        start_time: nil,
        # Body param: Specify a sequence of coordinates (track) where the restriction is
        # to be applied. The coordinates will be snapped to nearest road. Please note when
        # using `tracks`, `segments` and `turns` are not required.
        tracks: nil,
        # Body param: An array of objects to collect the details of the turns of a road on
        # which the restriction has to be applied. Each object corresponds to a new turn.
        #
        # Please note that `turns` is mandatory for when `restrtiction_type=turn`.
        turns: nil,
        # Body param: Specify the maximum truck weight, in kilograms, that the restriction
        # will allow. A value of 0 indicates no limit.
        #
        # Please note this parameter is effective only when `restriction_type` is `truck`.
        # At least one of truck parameters - `weight`, `height`, `width` and `truck` -
        # needs to be provided for is `truck` restriction type.
        weight: nil,
        # Body param: Specify the maximum truck width, in centimeter, that will be allowed
        # under the restriction. A value of 0 indicates no limit.
        #
        # Please note this parameter is effective only when `restriction_type` is `truck`.
        # At least one of truck parameters - `weight`, `height`, `width` and `truck` -
        # needs to be provided when restriction type is `truck`.
        width: nil,
        request_options: {}
      )
      end

      # Get a restriction by id
      sig do
        params(
          id: Integer,
          key: String,
          transform: T::Boolean,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(NextbillionSDK::RichGroupResponse)
      end
      def retrieve(
        # Unique ID of the restriction. This is the ID that was generated at the time of
        # creating the restriction.
        id,
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # a internal parameter
        transform: nil,
        request_options: {}
      )
      end

      # Update a restriction
      sig do
        params(
          id: Integer,
          key: String,
          area: String,
          name: String,
          latlon: T::Boolean,
          comment: String,
          direction: NextbillionSDK::RichGroupRequest::Direction::OrSymbol,
          end_time: Float,
          geofence: T::Array[T::Array[Float]],
          height: Integer,
          length: Integer,
          mode: T::Array[NextbillionSDK::RichGroupRequest::Mode::OrSymbol],
          repeat_on: String,
          segments: T::Array[NextbillionSDK::RichGroupRequest::Segment::OrHash],
          speed: Float,
          speed_limit: Float,
          start_time: Float,
          tracks: T::Array[T::Array[Float]],
          turns: T::Array[NextbillionSDK::RichGroupRequest::Turn::OrHash],
          weight: Integer,
          width: Integer,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(NextbillionSDK::RichGroupResponse)
      end
      def update(
        # Path param: Unique ID of the restriction. This is the ID that was generated at
        # the time of creating the restriction.
        id,
        # Query param: A key is a unique identifier that is required to authenticate a
        # request to the API.
        key:,
        # Body param: Specify the area name. It represents a region where restrictions can
        # be applied. This is a custom field and it is recommended for the users to check
        # with [NextBillion.ai](www.nextbillion.ai) support for the right value.
        # Alternatively, users can invoke the _[Areas](#supported-areas)_ method to get a
        # list of available areas for them.
        area:,
        # Body param: Specify a custom, descriptive name for the restriction.
        name:,
        # Query param: Use this parameter to decide the format for specifying the geofence
        # coordinates. If true, then the coordinates of geofence can be specified as
        # "latitude,longitude" format, otherwise they should be specified in
        # "longitude,latitude" format.
        latlon: nil,
        # Body param: Use this parameter to add any custom information about the
        # restriction being created.
        comment: nil,
        # Body param: Represents the traffic direction on the segments to which the
        # restriction will be applied.
        direction: nil,
        # Body param: Provide a UNIX epoch timestamp in seconds, representing the time
        # when the restriction should cease to be in-effect.
        end_time: nil,
        # Body param: An array of coordinates denoting the boundary of an area in which
        # the restrictions are to be applied. The format in which coordinates should be
        # listed is defined by the `latlon` field.
        #
        # Geofences can be used to create all restriction types, except for a `turn` type
        # restriction. Please note that `segments` is not required when using `geofence`
        # to create restrictions.
        geofence: nil,
        # Body param: Specify the maximum truck height, in centimeter, that will be
        # allowed under the restriction. A value of 0 indicates no limit.
        #
        # Please note this parameter is effective only when `restriction_type` is `truck`.
        # At least one of truck parameters - `weight`, `height`, `width` and `truck` -
        # needs to be provided when restriction type is `truck`.
        height: nil,
        # Body param: Specify the maximum truck length, in centimeter, that will be
        # allowed under the restriction. A value of 0 indicates no limit.
        #
        # Please note this parameter is effective only when `restriction_type` is `truck`.
        # At least one of truck parameters - `weight`, `height`, `width` and `truck` -
        # needs to be provided when restriction type is `truck`.
        length: nil,
        # Body param: Provide the driving modes for which the restriction should be
        # effective. If the value is an empty array or if it is not provided then the
        # restriction would be applied for all modes.
        mode: nil,
        # Body param: It represents the days and times when the restriction is in effect.
        # Users can use this property to set recurring or one-time restrictions as per the
        # [given format](https://wiki.openstreetmap.org/wiki/Key:opening_hours) for
        # specifying the recurring schedule of the restriction.
        #
        # Please provided values as per the local time of the region where the restriction
        # is being applied.
        repeat_on: nil,
        # Body param: An array of objects to collect the details of the segments of a road
        # on which the restriction has to be applied. Each object corresponds to a new
        # segment.
        #
        # Please note that `segments` is mandatory for all `restrtiction_type` except
        # `turn`.
        segments: nil,
        # Body param: Provide the the fixed speed of the segment where the restriction
        # needs to be applied. Please note that this parameter is mandatory when the
        # `restrictionType` is `fixedspeed`.
        speed: nil,
        # Body param: Provide the the maximum speed of the segment where the restriction
        # needs to be applied. Please note that this parameter is mandatory when the
        # `restrictionType` is `maxspeed`.
        speed_limit: nil,
        # Body param: Provide a UNIX epoch timestamp in seconds, representing the start
        # time for the restriction to be in-effect.
        start_time: nil,
        # Body param: Specify a sequence of coordinates (track) where the restriction is
        # to be applied. The coordinates will be snapped to nearest road. Please note when
        # using `tracks`, `segments` and `turns` are not required.
        tracks: nil,
        # Body param: An array of objects to collect the details of the turns of a road on
        # which the restriction has to be applied. Each object corresponds to a new turn.
        #
        # Please note that `turns` is mandatory for when `restrtiction_type=turn`.
        turns: nil,
        # Body param: Specify the maximum truck weight, in kilograms, that the restriction
        # will allow. A value of 0 indicates no limit.
        #
        # Please note this parameter is effective only when `restriction_type` is `truck`.
        # At least one of truck parameters - `weight`, `height`, `width` and `truck` -
        # needs to be provided for is `truck` restriction type.
        weight: nil,
        # Body param: Specify the maximum truck width, in centimeter, that will be allowed
        # under the restriction. A value of 0 indicates no limit.
        #
        # Please note this parameter is effective only when `restriction_type` is `truck`.
        # At least one of truck parameters - `weight`, `height`, `width` and `truck` -
        # needs to be provided when restriction type is `truck`.
        width: nil,
        request_options: {}
      )
      end

      # Get the paginated list of restrictions
      sig do
        params(
          area: String,
          key: String,
          limit: Integer,
          offset: Integer,
          mode: NextbillionSDK::RestrictionListParams::Mode::OrSymbol,
          name: String,
          restriction_type:
            NextbillionSDK::RestrictionListParams::RestrictionType::OrSymbol,
          source: NextbillionSDK::RestrictionListParams::Source::OrSymbol,
          state: NextbillionSDK::RestrictionListParams::State::OrSymbol,
          status: NextbillionSDK::RestrictionListParams::Status::OrSymbol,
          transform: T::Boolean,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(NextbillionSDK::Models::RestrictionListResponse)
      end
      def list(
        # Specify the area name. It represents a region where restrictions can be applied.
        #
        # _The area it belongs to. See Area API_
        area:,
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # The number of restrictions to be returned in the response. Please note that if
        # the `limit` is set to a number more than the total number of available
        # restrictions, then all restrictions would be returned together.
        limit:,
        # An integer value indicating the number of items in the collection that need to
        # be skipped in the response. Please note that the offset starts from 0, so the
        # first item returned in the result would be the item at (offset + 1) position in
        # collection.
        #
        # Users can use `offset` along with `limit` to implement paginated result.
        offset:,
        # Specify the modes of travel that the restriction pertains to.
        mode: nil,
        # The name of the restriction. This should be same as that provided while creating
        # or updating the restriction.
        name: nil,
        # Specify the type of restrictions to fetch.
        restriction_type: nil,
        # It represents where it comes from, currently the possible values include "rrt",
        # "xsm"
        source: nil,
        # This parameter is used to filter restrictions based on their state i.e. whether
        # the restriction is currently enabled, disabled, or deleted. For example, users
        # can retrieve a list of all the deleted restrictions by setting `state=deleted`.
        state: nil,
        # Restrictions can be active or inactive at a given time by virtue of their
        # nature. For example, maximum speed limits can be active on the roads leading to
        # schools during school hours and be inactive afterwards or certain road closure
        # restrictions be active during holidays/concerts and be inactive otherwise.
        #
        # Use this parameter to filter the restrictions based on their status at the time
        # of making the request i.e. whether they are in force or not.
        status: nil,
        # a internal parameter
        transform: nil,
        request_options: {}
      )
      end

      # Delete a restriction by ID
      sig do
        params(
          id: Integer,
          key: String,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(NextbillionSDK::Models::RestrictionDeleteResponse)
      end
      def delete(
        # Unique ID of the restriction. This is the ID that was generated at the time of
        # creating the restriction.
        id,
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        request_options: {}
      )
      end

      # Get restrictions by bbox
      sig do
        params(
          key: String,
          max_lat: Float,
          max_lon: Float,
          min_lat: Float,
          min_lon: Float,
          mode:
            T::Array[
              NextbillionSDK::RestrictionListByBboxParams::Mode::OrSymbol
            ],
          restriction_type:
            NextbillionSDK::RestrictionListByBboxParams::RestrictionType::OrSymbol,
          source: NextbillionSDK::RestrictionListByBboxParams::Source::OrSymbol,
          state: NextbillionSDK::RestrictionListByBboxParams::State::OrSymbol,
          status: NextbillionSDK::RestrictionListByBboxParams::Status::OrSymbol,
          transform: T::Boolean,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(T::Array[NextbillionSDK::RichGroupResponse])
      end
      def list_by_bbox(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # Specifies the maximum latitude value for the bounding box.
        max_lat:,
        # Specifies the maximum longitude value for the bounding box.
        max_lon:,
        # Specifies the minimum latitude value for the bounding box.
        min_lat:,
        # Specifies the minimum longitude value for the bounding box.
        min_lon:,
        # Specify the modes of travel that the restriction pertains to.
        mode: nil,
        # Specify the type of restrictions to fetch.
        restriction_type: nil,
        # This parameter represents where the restriction comes from and cannot be
        # modified by clients sending requests to the API endpoint.
        #
        # For example, an API endpoint that returns a list of restrictions could include
        # the source parameter to indicate where each item comes from. This parameter can
        # be useful for filtering, sorting, or grouping the results based on their source.
        source: nil,
        # This parameter is used to filter restrictions based on their state i.e. whether
        # the restriction is currently enabled, disabled, or deleted. For example, users
        # can retrieve a list of all the deleted restrictions by setting `state=deleted`.
        state: nil,
        # Restrictions can be active or inactive at a given time by virtue of their
        # nature. For example, maximum speed limits can be active on the roads leading to
        # schools during school hours and be inactive afterwards or certain road closure
        # restrictions be active during holidays/concerts and be inactive otherwise.
        #
        # Use this parameter to filter the restrictions based on their status at the time
        # of making the request i.e. whether they are in force or not.
        status: nil,
        # This is internal parameter with a default value as `false`.
        transform: nil,
        request_options: {}
      )
      end

      # Set the state of a restriction by ID
      sig do
        params(
          id: Integer,
          key: String,
          state: NextbillionSDK::RestrictionSetStateParams::State::OrSymbol,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(NextbillionSDK::RichGroupResponse)
      end
      def set_state(
        # Path param: Unique ID of the restriction. This is the ID that was generated at
        # the time of creating the restriction.
        id,
        # Query param: A key is a unique identifier that is required to authenticate a
        # request to the API.
        key:,
        # Body param: Use this field to specify the new `state` of the restriction. Please
        # note that this method cannot update the state of restrictions that are currently
        # in 'deleted' state.
        state:,
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
