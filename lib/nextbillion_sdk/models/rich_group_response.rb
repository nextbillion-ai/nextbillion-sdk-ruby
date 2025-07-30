# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::Restrictions#create
    class RichGroupResponse < NextbillionSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Returns the unique ID of the restriction. This ID can be used for update,
      #   delete, get operations on the restriction using the available API methods.
      #
      #   @return [Integer, nil]
      optional :id, Integer

      # @!attribute area
      #   Returns the area to which the restriction belongs to.
      #
      #   @return [String, nil]
      optional :area, String

      # @!attribute bbox
      #   Returns the details of the bounding box containing the restriction.
      #
      #   @return [Object, nil]
      optional :bbox, NextbillionSDK::Internal::Type::Unknown

      # @!attribute comment
      #   Returns the comments that were provided for the restriction at the time of
      #   creating or updating the request.
      #
      #   @return [String, nil]
      optional :comment, String

      # @!attribute create_at
      #   The timestamp at which the restriction was created.
      #
      #   @return [Time, nil]
      optional :create_at, Time

      # @!attribute direction
      #   Returns the direction of travel on the segments to which the restriction
      #   applies.
      #
      #   @return [Symbol, NextbillionSDK::Models::RichGroupResponse::Direction, nil]
      optional :direction, enum: -> { NextbillionSDK::RichGroupResponse::Direction }

      # @!attribute end_time
      #   The time when the restriction ceases to be in-effect. It is a UNIX timestamp.
      #
      #   @return [Float, nil]
      optional :end_time, Float

      # @!attribute geofence
      #   Returns the list of coordinates representing the area that was used to apply the
      #   given restriction. The geofence returned is same as that provided while creating
      #   or updating the restriction.
      #
      #   @return [Object, nil]
      optional :geofence, NextbillionSDK::Internal::Type::Unknown

      # @!attribute highway
      #   Returns the highway information on which the restriction applies to. If no
      #   highway is impacted by the restriction, then this field is not present in the
      #   response.
      #
      #   @return [String, nil]
      optional :highway, String

      # @!attribute mode
      #   Returns an array denoting all the traveling modes the restriction applies on.
      #
      #   @return [Array<String>, nil]
      optional :mode, NextbillionSDK::Internal::Type::ArrayOf[String]

      # @!attribute name
      #   Returns the name of the restriction. This value is same as that provided at the
      #   time of creating or updating the restriction.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute repeat_on
      #   Returns the time periods during which this restriction active or repeats on. The
      #   time values follow a
      #   [given format](https://wiki.openstreetmap.org/wiki/Key:opening_hours).
      #
      #   @return [String, nil]
      optional :repeat_on, String

      # @!attribute restriction_type
      #   Returns the type of restriction. This is the same value as provided when
      #   creating or updating the restriction.
      #
      #   @return [Symbol, NextbillionSDK::Models::RichGroupResponse::RestrictionType, nil]
      optional :restriction_type, enum: -> { NextbillionSDK::RichGroupResponse::RestrictionType }

      # @!attribute speed
      #   Returns the fixed speed of segments. This field is not present in the response
      #   if the restriction type is not fixedspeed
      #
      #   @return [Float, nil]
      optional :speed, Float

      # @!attribute speed_limit
      #   Returns the maximum speed of segments. This field is not present in the response
      #   if the restriction type is not maxspeed
      #
      #   @return [Float, nil]
      optional :speed_limit, Float

      # @!attribute start_time
      #   The time when the restriction starts to be in-effect. It is a UNIX timestamp.
      #
      #   @return [Float, nil]
      optional :start_time, Float

      # @!attribute state
      #   Returns the state of the "restriction" itself - enabled, disabled or deleted. It
      #   does not denote if the restriction is actually in effect or not.
      #
      #   @return [Symbol, NextbillionSDK::Models::RichGroupResponse::State, nil]
      optional :state, enum: -> { NextbillionSDK::RichGroupResponse::State }

      # @!attribute status
      #   Returns the status of the restriction at the time of making the request i.e.
      #   whether the restriction is in force or not. It will have one of the following
      #   values: active or inactive.
      #
      #   Please note that this field can not be directly influenced by the users. It will
      #   always be calculated using the start_time, end_time and repeat_on parameters.
      #
      #   @return [Symbol, NextbillionSDK::Models::RichGroupResponse::Status, nil]
      optional :status, enum: -> { NextbillionSDK::RichGroupResponse::Status }

      # @!attribute update_at
      #   The timestamp at which the restriction was updated.
      #
      #   @return [Time, nil]
      optional :update_at, Time

      # @!method initialize(id: nil, area: nil, bbox: nil, comment: nil, create_at: nil, direction: nil, end_time: nil, geofence: nil, highway: nil, mode: nil, name: nil, repeat_on: nil, restriction_type: nil, speed: nil, speed_limit: nil, start_time: nil, state: nil, status: nil, update_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::RichGroupResponse} for more details.
      #
      #   @param id [Integer] Returns the unique ID of the restriction. This ID can be used for update, delete
      #
      #   @param area [String] Returns the area to which the restriction belongs to.
      #
      #   @param bbox [Object] Returns the details of the bounding box containing the restriction.
      #
      #   @param comment [String] Returns the comments that were provided for the restriction at the time of creat
      #
      #   @param create_at [Time] The timestamp at which the restriction was created.
      #
      #   @param direction [Symbol, NextbillionSDK::Models::RichGroupResponse::Direction] Returns the direction of travel on the segments to which the restriction applies
      #
      #   @param end_time [Float] The time when the restriction ceases to be in-effect. It is a UNIX timestamp.
      #
      #   @param geofence [Object] Returns the list of coordinates representing the area that was used to apply the
      #
      #   @param highway [String] Returns the highway information on which the restriction applies to. If no highw
      #
      #   @param mode [Array<String>] Returns an array denoting all the traveling modes the restriction applies on.
      #
      #   @param name [String] Returns the name of the restriction. This value is same as that provided at the
      #
      #   @param repeat_on [String] Returns the time periods during which this restriction active or repeats on. The
      #
      #   @param restriction_type [Symbol, NextbillionSDK::Models::RichGroupResponse::RestrictionType] Returns the type of restriction. This is the same value as provided when creatin
      #
      #   @param speed [Float] Returns the fixed speed of segments. This field is not present in the response i
      #
      #   @param speed_limit [Float] Returns the maximum speed of segments. This field is not present in the response
      #
      #   @param start_time [Float] The time when the restriction starts to be in-effect. It is a UNIX timestamp.
      #
      #   @param state [Symbol, NextbillionSDK::Models::RichGroupResponse::State] Returns the state of the "restriction" itself - enabled, disabled or deleted. It
      #
      #   @param status [Symbol, NextbillionSDK::Models::RichGroupResponse::Status] Returns the status of the restriction at the time of making the request i.e. whe
      #
      #   @param update_at [Time] The timestamp at which the restriction was updated.

      # Returns the direction of travel on the segments to which the restriction
      # applies.
      #
      # @see NextbillionSDK::Models::RichGroupResponse#direction
      module Direction
        extend NextbillionSDK::Internal::Type::Enum

        FORWARD = :forward
        BACKWARD = :backward
        BOTH = :both

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Returns the type of restriction. This is the same value as provided when
      # creating or updating the restriction.
      #
      # @see NextbillionSDK::Models::RichGroupResponse#restriction_type
      module RestrictionType
        extend NextbillionSDK::Internal::Type::Enum

        CLOSURE = :closure
        MAXSPEED = :maxspeed
        FIXEDSPEED = :fixedspeed
        PARKING = :parking
        TURN = :turn
        TRUCK = :truck

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Returns the state of the "restriction" itself - enabled, disabled or deleted. It
      # does not denote if the restriction is actually in effect or not.
      #
      # @see NextbillionSDK::Models::RichGroupResponse#state
      module State
        extend NextbillionSDK::Internal::Type::Enum

        ENABLED = :enabled
        DISABLED = :disabled
        DELETED = :deleted

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Returns the status of the restriction at the time of making the request i.e.
      # whether the restriction is in force or not. It will have one of the following
      # values: active or inactive.
      #
      # Please note that this field can not be directly influenced by the users. It will
      # always be calculated using the start_time, end_time and repeat_on parameters.
      #
      # @see NextbillionSDK::Models::RichGroupResponse#status
      module Status
        extend NextbillionSDK::Internal::Type::Enum

        ACTIVE = :active
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
