# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Restrictions
      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::RestrictionCreateParams} for more details.
      #
      # Create a new restriction
      #
      # @overload create(restriction_type, key:, area:, name:, latlon: nil, comment: nil, direction: nil, end_time: nil, geofence: nil, height: nil, length: nil, mode: nil, repeat_on: nil, segments: nil, speed: nil, speed_limit: nil, start_time: nil, tracks: nil, turns: nil, weight: nil, width: nil, request_options: {})
      #
      # @param restriction_type [Symbol, NextbillionSDK::Models::RestrictionCreateParams::RestrictionType] Path param: Specify the type of restriction being created. Following restriction
      #
      # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
      #
      # @param area [String] Body param: Specify the area name. It represents a region where restrictions can
      #
      # @param name [String] Body param: Specify a custom, descriptive name for the restriction.
      #
      # @param latlon [Boolean] Query param: Use this parameter to decide the format for specifying the geofence
      #
      # @param comment [String] Body param: Use this parameter to add any custom information about the restricti
      #
      # @param direction [Symbol, NextbillionSDK::Models::RichGroupRequest::Direction] Body param: Represents the traffic direction on the segments to which the restri
      #
      # @param end_time [Float] Body param: Provide a UNIX epoch timestamp in seconds, representing the time whe
      #
      # @param geofence [Array<Array<Float>>] Body param: An array of coordinates denoting the boundary of an area in which th
      #
      # @param height [Integer] Body param: Specify the maximum truck height, in centimeter, that will be allow
      #
      # @param length [Integer] Body param: Specify the maximum truck length, in centimeter, that will be allow
      #
      # @param mode [Array<Symbol, NextbillionSDK::Models::RichGroupRequest::Mode>] Body param: Provide the driving modes for which the restriction should be effect
      #
      # @param repeat_on [String] Body param: It represents the days and times when the restriction is in effect.
      #
      # @param segments [Array<NextbillionSDK::Models::RichGroupRequest::Segment>] Body param: An array of objects to collect the details of the segments of a road
      #
      # @param speed [Float] Body param: Provide the the fixed speed of the segment where the restriction nee
      #
      # @param speed_limit [Float] Body param: Provide the the maximum speed of the segment where the restriction n
      #
      # @param start_time [Float] Body param: Provide a UNIX epoch timestamp in seconds, representing the start ti
      #
      # @param tracks [Array<Array<Float>>] Body param: Specify a sequence of coordinates (track) where the restriction is t
      #
      # @param turns [Array<NextbillionSDK::Models::RichGroupRequest::Turn>] Body param: An array of objects to collect the details of the turns of a road on
      #
      # @param weight [Integer] Body param: Specify the maximum truck weight, in kilograms, that the restriction
      #
      # @param width [Integer] Body param: Specify the maximum truck width, in centimeter, that will be allowe
      #
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [NextbillionSDK::Models::RichGroupResponse]
      #
      # @see NextbillionSDK::Models::RestrictionCreateParams
      def create(restriction_type, params)
        parsed, options = NextbillionSDK::RestrictionCreateParams.dump_request(params)
        query_params = [:key, :latlon]
        @client.request(
          method: :post,
          path: ["restrictions/%1$s", restriction_type],
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: NextbillionSDK::RichGroupResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::RestrictionRetrieveParams} for more details.
      #
      # Get a restriction by id
      #
      # @overload retrieve(id, key:, transform: nil, request_options: {})
      #
      # @param id [Integer] Unique ID of the restriction. This is the ID that was generated at the time of c
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param transform [Boolean] a internal parameter
      #
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [NextbillionSDK::Models::RichGroupResponse]
      #
      # @see NextbillionSDK::Models::RestrictionRetrieveParams
      def retrieve(id, params)
        parsed, options = NextbillionSDK::RestrictionRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["restrictions/%1$s", id],
          query: parsed,
          model: NextbillionSDK::RichGroupResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::RestrictionUpdateParams} for more details.
      #
      # Update a restriction
      #
      # @overload update(id, key:, area:, name:, latlon: nil, comment: nil, direction: nil, end_time: nil, geofence: nil, height: nil, length: nil, mode: nil, repeat_on: nil, segments: nil, speed: nil, speed_limit: nil, start_time: nil, tracks: nil, turns: nil, weight: nil, width: nil, request_options: {})
      #
      # @param id [Integer] Path param: Unique ID of the restriction. This is the ID that was generated at t
      #
      # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
      #
      # @param area [String] Body param: Specify the area name. It represents a region where restrictions can
      #
      # @param name [String] Body param: Specify a custom, descriptive name for the restriction.
      #
      # @param latlon [Boolean] Query param: Use this parameter to decide the format for specifying the geofence
      #
      # @param comment [String] Body param: Use this parameter to add any custom information about the restricti
      #
      # @param direction [Symbol, NextbillionSDK::Models::RichGroupRequest::Direction] Body param: Represents the traffic direction on the segments to which the restri
      #
      # @param end_time [Float] Body param: Provide a UNIX epoch timestamp in seconds, representing the time whe
      #
      # @param geofence [Array<Array<Float>>] Body param: An array of coordinates denoting the boundary of an area in which th
      #
      # @param height [Integer] Body param: Specify the maximum truck height, in centimeter, that will be allow
      #
      # @param length [Integer] Body param: Specify the maximum truck length, in centimeter, that will be allow
      #
      # @param mode [Array<Symbol, NextbillionSDK::Models::RichGroupRequest::Mode>] Body param: Provide the driving modes for which the restriction should be effect
      #
      # @param repeat_on [String] Body param: It represents the days and times when the restriction is in effect.
      #
      # @param segments [Array<NextbillionSDK::Models::RichGroupRequest::Segment>] Body param: An array of objects to collect the details of the segments of a road
      #
      # @param speed [Float] Body param: Provide the the fixed speed of the segment where the restriction nee
      #
      # @param speed_limit [Float] Body param: Provide the the maximum speed of the segment where the restriction n
      #
      # @param start_time [Float] Body param: Provide a UNIX epoch timestamp in seconds, representing the start ti
      #
      # @param tracks [Array<Array<Float>>] Body param: Specify a sequence of coordinates (track) where the restriction is t
      #
      # @param turns [Array<NextbillionSDK::Models::RichGroupRequest::Turn>] Body param: An array of objects to collect the details of the turns of a road on
      #
      # @param weight [Integer] Body param: Specify the maximum truck weight, in kilograms, that the restriction
      #
      # @param width [Integer] Body param: Specify the maximum truck width, in centimeter, that will be allowe
      #
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [NextbillionSDK::Models::RichGroupResponse]
      #
      # @see NextbillionSDK::Models::RestrictionUpdateParams
      def update(id, params)
        parsed, options = NextbillionSDK::RestrictionUpdateParams.dump_request(params)
        query_params = [:key, :latlon]
        @client.request(
          method: :patch,
          path: ["restrictions/%1$s", id],
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: NextbillionSDK::RichGroupResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::RestrictionListParams} for more details.
      #
      # Get the paginated list of restrictions
      #
      # @overload list(area:, key:, limit:, offset:, mode: nil, name: nil, restriction_type: nil, source: nil, state: nil, status: nil, transform: nil, request_options: {})
      #
      # @param area [String] Specify the area name. It represents a region where restrictions can be applied.
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param limit [Integer] The number of restrictions to be returned in the response. Please note that if t
      #
      # @param offset [Integer] An integer value indicating the number of items in the collection that need to b
      #
      # @param mode [Symbol, NextbillionSDK::Models::RestrictionListParams::Mode] Specify the modes of travel that the restriction pertains to.
      #
      # @param name [String] The name of the restriction. This should be same as that provided while creating
      #
      # @param restriction_type [Symbol, NextbillionSDK::Models::RestrictionListParams::RestrictionType] Specify the type of restrictions to fetch.
      #
      # @param source [Symbol, NextbillionSDK::Models::RestrictionListParams::Source] It represents where it comes from, currently the possible values include "rrt",
      #
      # @param state [Symbol, NextbillionSDK::Models::RestrictionListParams::State] This parameter is used to filter restrictions based on their state i.e. whether
      #
      # @param status [Symbol, NextbillionSDK::Models::RestrictionListParams::Status] Restrictions can be active or inactive at a given time by virtue of their nature
      #
      # @param transform [Boolean] a internal parameter
      #
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [NextbillionSDK::Models::RestrictionListResponse]
      #
      # @see NextbillionSDK::Models::RestrictionListParams
      def list(params)
        parsed, options = NextbillionSDK::RestrictionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "restrictions/list",
          query: parsed,
          model: NextbillionSDK::Models::RestrictionListResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::RestrictionDeleteParams} for more details.
      #
      # Delete a restriction by ID
      #
      # @overload delete(id, key:, request_options: {})
      #
      # @param id [Integer] Unique ID of the restriction. This is the ID that was generated at the time of c
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [NextbillionSDK::Models::RestrictionDeleteResponse]
      #
      # @see NextbillionSDK::Models::RestrictionDeleteParams
      def delete(id, params)
        parsed, options = NextbillionSDK::RestrictionDeleteParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["restrictions/%1$s", id],
          query: parsed,
          model: NextbillionSDK::Models::RestrictionDeleteResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::RestrictionListByBboxParams} for more details.
      #
      # Get restrictions by bbox
      #
      # @overload list_by_bbox(key:, max_lat:, max_lon:, min_lat:, min_lon:, mode: nil, restriction_type: nil, source: nil, state: nil, status: nil, transform: nil, request_options: {})
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param max_lat [Float] Specifies the maximum latitude value for the bounding box.
      #
      # @param max_lon [Float] Specifies the maximum longitude value for the bounding box.
      #
      # @param min_lat [Float] Specifies the minimum latitude value for the bounding box.
      #
      # @param min_lon [Float] Specifies the minimum longitude value for the bounding box.
      #
      # @param mode [Array<Symbol, NextbillionSDK::Models::RestrictionListByBboxParams::Mode>] Specify the modes of travel that the restriction pertains to.
      #
      # @param restriction_type [Symbol, NextbillionSDK::Models::RestrictionListByBboxParams::RestrictionType] Specify the type of restrictions to fetch.
      #
      # @param source [Symbol, NextbillionSDK::Models::RestrictionListByBboxParams::Source] This parameter represents where the restriction comes from and cannot be modifie
      #
      # @param state [Symbol, NextbillionSDK::Models::RestrictionListByBboxParams::State] This parameter is used to filter restrictions based on their state i.e. whether
      #
      # @param status [Symbol, NextbillionSDK::Models::RestrictionListByBboxParams::Status] Restrictions can be active or inactive at a given time by virtue of their nature
      #
      # @param transform [Boolean] This is internal parameter with a default value as false.
      #
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<NextbillionSDK::Models::RichGroupResponse>]
      #
      # @see NextbillionSDK::Models::RestrictionListByBboxParams
      def list_by_bbox(params)
        parsed, options = NextbillionSDK::RestrictionListByBboxParams.dump_request(params)
        @client.request(
          method: :get,
          path: "restrictions",
          query: parsed,
          model: NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::RichGroupResponse],
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::RestrictionSetStateParams} for more details.
      #
      # Set the state of a restriction by ID
      #
      # @overload set_state(id, key:, state:, request_options: {})
      #
      # @param id [Integer] Path param: Unique ID of the restriction. This is the ID that was generated at t
      #
      # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
      #
      # @param state [Symbol, NextbillionSDK::Models::RestrictionSetStateParams::State] Body param: Use this field to specify the new state of the restriction. Please n
      #
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [NextbillionSDK::Models::RichGroupResponse]
      #
      # @see NextbillionSDK::Models::RestrictionSetStateParams
      def set_state(id, params)
        parsed, options = NextbillionSDK::RestrictionSetStateParams.dump_request(params)
        query_params = [:key]
        @client.request(
          method: :put,
          path: ["restrictions/%1$s/state", id],
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: NextbillionSDK::RichGroupResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [NextbillionSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
