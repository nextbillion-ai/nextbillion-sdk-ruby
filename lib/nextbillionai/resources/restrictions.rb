# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Restrictions
      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::RestrictionCreateParams} for more details.
      #
      # Create a new restriction
      #
      # @overload create(restriction_type, key:, area:, name:, latlon: nil, comment: nil, direction: nil, end_time: nil, geofence: nil, height: nil, length: nil, mode: nil, repeat_on: nil, segments: nil, speed: nil, speed_limit: nil, start_time: nil, tracks: nil, turns: nil, weight: nil, width: nil, request_options: {})
      #
      # @param restriction_type [Symbol, Nextbillionai::Models::RestrictionCreateParams::RestrictionType] Path param: Specify the type of restriction being created. Following restriction
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
      # @param direction [Symbol, Nextbillionai::Models::RichGroupRequest::Direction] Body param: Represents the traffic direction on the segments to which the restri
      #
      # @param end_time [Float] Body param: Provide a UNIX epoch timestamp in seconds, representing the time whe
      #
      # @param geofence [Array<Array<Float>>] Body param: An array of coordinates denoting the boundary of an area in which th
      #
      # @param height [Integer] Body param: Specify the maximum truck height, in centimeter, that will be allow
      #
      # @param length [Integer] Body param: Specify the maximum truck length, in centimeter, that will be allow
      #
      # @param mode [Array<Symbol, Nextbillionai::Models::RichGroupRequest::Mode>] Body param: Provide the driving modes for which the restriction should be effect
      #
      # @param repeat_on [String] Body param: It represents the days and times when the restriction is in effect.
      #
      # @param segments [Array<Nextbillionai::Models::RichGroupRequest::Segment>] Body param: An array of objects to collect the details of the segments of a road
      #
      # @param speed [Float] Body param: Provide the the fixed speed of the segment where the restriction nee
      #
      # @param speed_limit [Float] Body param: Provide the the maximum speed of the segment where the restriction n
      #
      # @param start_time [Float] Body param: Provide a UNIX epoch timestamp in seconds, representing the start ti
      #
      # @param tracks [Array<Array<Float>>] Body param: Specify a sequence of coordinates (track) where the restriction is t
      #
      # @param turns [Array<Nextbillionai::Models::RichGroupRequest::Turn>] Body param: An array of objects to collect the details of the turns of a road on
      #
      # @param weight [Integer] Body param: Specify the maximum truck weight, in kilograms, that the restriction
      #
      # @param width [Integer] Body param: Specify the maximum truck width, in centimeter, that will be allowe
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::RichGroupResponse]
      #
      # @see Nextbillionai::Models::RestrictionCreateParams
      def create(restriction_type, params)
        parsed, options = Nextbillionai::RestrictionCreateParams.dump_request(params)
        query_params = [:key, :latlon]
        @client.request(
          method: :post,
          path: ["restrictions/%1$s", restriction_type],
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: Nextbillionai::RichGroupResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::RestrictionRetrieveParams} for more details.
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
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::RichGroupResponse]
      #
      # @see Nextbillionai::Models::RestrictionRetrieveParams
      def retrieve(id, params)
        parsed, options = Nextbillionai::RestrictionRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["restrictions/%1$s", id],
          query: parsed,
          model: Nextbillionai::RichGroupResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::RestrictionUpdateParams} for more details.
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
      # @param direction [Symbol, Nextbillionai::Models::RichGroupRequest::Direction] Body param: Represents the traffic direction on the segments to which the restri
      #
      # @param end_time [Float] Body param: Provide a UNIX epoch timestamp in seconds, representing the time whe
      #
      # @param geofence [Array<Array<Float>>] Body param: An array of coordinates denoting the boundary of an area in which th
      #
      # @param height [Integer] Body param: Specify the maximum truck height, in centimeter, that will be allow
      #
      # @param length [Integer] Body param: Specify the maximum truck length, in centimeter, that will be allow
      #
      # @param mode [Array<Symbol, Nextbillionai::Models::RichGroupRequest::Mode>] Body param: Provide the driving modes for which the restriction should be effect
      #
      # @param repeat_on [String] Body param: It represents the days and times when the restriction is in effect.
      #
      # @param segments [Array<Nextbillionai::Models::RichGroupRequest::Segment>] Body param: An array of objects to collect the details of the segments of a road
      #
      # @param speed [Float] Body param: Provide the the fixed speed of the segment where the restriction nee
      #
      # @param speed_limit [Float] Body param: Provide the the maximum speed of the segment where the restriction n
      #
      # @param start_time [Float] Body param: Provide a UNIX epoch timestamp in seconds, representing the start ti
      #
      # @param tracks [Array<Array<Float>>] Body param: Specify a sequence of coordinates (track) where the restriction is t
      #
      # @param turns [Array<Nextbillionai::Models::RichGroupRequest::Turn>] Body param: An array of objects to collect the details of the turns of a road on
      #
      # @param weight [Integer] Body param: Specify the maximum truck weight, in kilograms, that the restriction
      #
      # @param width [Integer] Body param: Specify the maximum truck width, in centimeter, that will be allowe
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::RichGroupResponse]
      #
      # @see Nextbillionai::Models::RestrictionUpdateParams
      def update(id, params)
        parsed, options = Nextbillionai::RestrictionUpdateParams.dump_request(params)
        query_params = [:key, :latlon]
        @client.request(
          method: :patch,
          path: ["restrictions/%1$s", id],
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: Nextbillionai::RichGroupResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::RestrictionListParams} for more details.
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
      # @param mode [Symbol, Nextbillionai::Models::RestrictionListParams::Mode] Specify the modes of travel that the restriction pertains to.
      #
      # @param name [String] The name of the restriction. This should be same as that provided while creating
      #
      # @param restriction_type [Symbol, Nextbillionai::Models::RestrictionListParams::RestrictionType] Specify the type of restrictions to fetch.
      #
      # @param source [Symbol, Nextbillionai::Models::RestrictionListParams::Source] It represents where it comes from, currently the possible values include "rrt",
      #
      # @param state [Symbol, Nextbillionai::Models::RestrictionListParams::State] This parameter is used to filter restrictions based on their state i.e. whether
      #
      # @param status [Symbol, Nextbillionai::Models::RestrictionListParams::Status] Restrictions can be active or inactive at a given time by virtue of their nature
      #
      # @param transform [Boolean] a internal parameter
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::RestrictionListResponse]
      #
      # @see Nextbillionai::Models::RestrictionListParams
      def list(params)
        parsed, options = Nextbillionai::RestrictionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "restrictions/list",
          query: parsed,
          model: Nextbillionai::Models::RestrictionListResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::RestrictionDeleteParams} for more details.
      #
      # Delete a restriction by ID
      #
      # @overload delete(id, key:, request_options: {})
      #
      # @param id [Integer] Unique ID of the restriction. This is the ID that was generated at the time of c
      #
      # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::RestrictionDeleteResponse]
      #
      # @see Nextbillionai::Models::RestrictionDeleteParams
      def delete(id, params)
        parsed, options = Nextbillionai::RestrictionDeleteParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["restrictions/%1$s", id],
          query: parsed,
          model: Nextbillionai::Models::RestrictionDeleteResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::RestrictionListByBboxParams} for more details.
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
      # @param mode [Array<Symbol, Nextbillionai::Models::RestrictionListByBboxParams::Mode>] Specify the modes of travel that the restriction pertains to.
      #
      # @param restriction_type [Symbol, Nextbillionai::Models::RestrictionListByBboxParams::RestrictionType] Specify the type of restrictions to fetch.
      #
      # @param source [Symbol, Nextbillionai::Models::RestrictionListByBboxParams::Source] This parameter represents where the restriction comes from and cannot be modifie
      #
      # @param state [Symbol, Nextbillionai::Models::RestrictionListByBboxParams::State] This parameter is used to filter restrictions based on their state i.e. whether
      #
      # @param status [Symbol, Nextbillionai::Models::RestrictionListByBboxParams::Status] Restrictions can be active or inactive at a given time by virtue of their nature
      #
      # @param transform [Boolean] This is internal parameter with a default value as `false`.
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Nextbillionai::Models::RichGroupResponse>]
      #
      # @see Nextbillionai::Models::RestrictionListByBboxParams
      def list_by_bbox(params)
        parsed, options = Nextbillionai::RestrictionListByBboxParams.dump_request(params)
        @client.request(
          method: :get,
          path: "restrictions",
          query: parsed,
          model: Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::RichGroupResponse],
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::RestrictionSetStateParams} for more details.
      #
      # Set the state of a restriction by ID
      #
      # @overload set_state(id, key:, state:, request_options: {})
      #
      # @param id [Integer] Path param: Unique ID of the restriction. This is the ID that was generated at t
      #
      # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
      #
      # @param state [Symbol, Nextbillionai::Models::RestrictionSetStateParams::State] Body param: Use this field to specify the new `state` of the restriction. Please
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::RichGroupResponse]
      #
      # @see Nextbillionai::Models::RestrictionSetStateParams
      def set_state(id, params)
        parsed, options = Nextbillionai::RestrictionSetStateParams.dump_request(params)
        query_params = [:key]
        @client.request(
          method: :put,
          path: ["restrictions/%1$s/state", id],
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: Nextbillionai::RichGroupResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Nextbillionai::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
