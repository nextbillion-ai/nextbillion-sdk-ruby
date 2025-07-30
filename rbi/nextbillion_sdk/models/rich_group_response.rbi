# typed: strong

module NextbillionSDK
  module Models
    class RichGroupResponse < NextbillionSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::RichGroupResponse,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # Returns the unique ID of the restriction. This ID can be used for update,
      # delete, get operations on the restriction using the available API methods.
      sig { returns(T.nilable(Integer)) }
      attr_reader :id

      sig { params(id: Integer).void }
      attr_writer :id

      # Returns the area to which the restriction belongs to.
      sig { returns(T.nilable(String)) }
      attr_reader :area

      sig { params(area: String).void }
      attr_writer :area

      # Returns the details of the bounding box containing the restriction.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :bbox

      sig { params(bbox: T.anything).void }
      attr_writer :bbox

      # Returns the comments that were provided for the restriction at the time of
      # creating or updating the request.
      sig { returns(T.nilable(String)) }
      attr_reader :comment

      sig { params(comment: String).void }
      attr_writer :comment

      # The timestamp at which the restriction was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :create_at

      sig { params(create_at: Time).void }
      attr_writer :create_at

      # Returns the direction of travel on the segments to which the restriction
      # applies.
      sig do
        returns(
          T.nilable(NextbillionSDK::RichGroupResponse::Direction::TaggedSymbol)
        )
      end
      attr_reader :direction

      sig do
        params(
          direction: NextbillionSDK::RichGroupResponse::Direction::OrSymbol
        ).void
      end
      attr_writer :direction

      # The time when the restriction ceases to be in-effect. It is a UNIX timestamp.
      sig { returns(T.nilable(Float)) }
      attr_reader :end_time

      sig { params(end_time: Float).void }
      attr_writer :end_time

      # Returns the list of coordinates representing the area that was used to apply the
      # given restriction. The geofence returned is same as that provided while creating
      # or updating the restriction.
      sig { returns(T.nilable(T.anything)) }
      attr_reader :geofence

      sig { params(geofence: T.anything).void }
      attr_writer :geofence

      # Returns the highway information on which the restriction applies to. If no
      # highway is impacted by the restriction, then this field is not present in the
      # response.
      sig { returns(T.nilable(String)) }
      attr_reader :highway

      sig { params(highway: String).void }
      attr_writer :highway

      # Returns an array denoting all the traveling modes the restriction applies on.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :mode

      sig { params(mode: T::Array[String]).void }
      attr_writer :mode

      # Returns the name of the restriction. This value is same as that provided at the
      # time of creating or updating the restriction.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Returns the time periods during which this restriction active or repeats on. The
      # time values follow a
      # [given format](https://wiki.openstreetmap.org/wiki/Key:opening_hours).
      sig { returns(T.nilable(String)) }
      attr_reader :repeat_on

      sig { params(repeat_on: String).void }
      attr_writer :repeat_on

      # Returns the type of restriction. This is the same value as provided when
      # creating or updating the restriction.
      sig do
        returns(
          T.nilable(
            NextbillionSDK::RichGroupResponse::RestrictionType::TaggedSymbol
          )
        )
      end
      attr_reader :restriction_type

      sig do
        params(
          restriction_type:
            NextbillionSDK::RichGroupResponse::RestrictionType::OrSymbol
        ).void
      end
      attr_writer :restriction_type

      # Returns the fixed speed of segments. This field is not present in the response
      # if the restriction type is not fixedspeed
      sig { returns(T.nilable(Float)) }
      attr_reader :speed

      sig { params(speed: Float).void }
      attr_writer :speed

      # Returns the maximum speed of segments. This field is not present in the response
      # if the restriction type is not maxspeed
      sig { returns(T.nilable(Float)) }
      attr_reader :speed_limit

      sig { params(speed_limit: Float).void }
      attr_writer :speed_limit

      # The time when the restriction starts to be in-effect. It is a UNIX timestamp.
      sig { returns(T.nilable(Float)) }
      attr_reader :start_time

      sig { params(start_time: Float).void }
      attr_writer :start_time

      # Returns the state of the "restriction" itself - enabled, disabled or deleted. It
      # does not denote if the restriction is actually in effect or not.
      sig do
        returns(
          T.nilable(NextbillionSDK::RichGroupResponse::State::TaggedSymbol)
        )
      end
      attr_reader :state

      sig do
        params(state: NextbillionSDK::RichGroupResponse::State::OrSymbol).void
      end
      attr_writer :state

      # Returns the status of the restriction at the time of making the request i.e.
      # whether the restriction is in force or not. It will have one of the following
      # values: active or inactive.
      #
      # Please note that this field can not be directly influenced by the users. It will
      # always be calculated using the start_time, end_time and repeat_on parameters.
      sig do
        returns(
          T.nilable(NextbillionSDK::RichGroupResponse::Status::TaggedSymbol)
        )
      end
      attr_reader :status

      sig do
        params(status: NextbillionSDK::RichGroupResponse::Status::OrSymbol).void
      end
      attr_writer :status

      # The timestamp at which the restriction was updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :update_at

      sig { params(update_at: Time).void }
      attr_writer :update_at

      sig do
        params(
          id: Integer,
          area: String,
          bbox: T.anything,
          comment: String,
          create_at: Time,
          direction: NextbillionSDK::RichGroupResponse::Direction::OrSymbol,
          end_time: Float,
          geofence: T.anything,
          highway: String,
          mode: T::Array[String],
          name: String,
          repeat_on: String,
          restriction_type:
            NextbillionSDK::RichGroupResponse::RestrictionType::OrSymbol,
          speed: Float,
          speed_limit: Float,
          start_time: Float,
          state: NextbillionSDK::RichGroupResponse::State::OrSymbol,
          status: NextbillionSDK::RichGroupResponse::Status::OrSymbol,
          update_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Returns the unique ID of the restriction. This ID can be used for update,
        # delete, get operations on the restriction using the available API methods.
        id: nil,
        # Returns the area to which the restriction belongs to.
        area: nil,
        # Returns the details of the bounding box containing the restriction.
        bbox: nil,
        # Returns the comments that were provided for the restriction at the time of
        # creating or updating the request.
        comment: nil,
        # The timestamp at which the restriction was created.
        create_at: nil,
        # Returns the direction of travel on the segments to which the restriction
        # applies.
        direction: nil,
        # The time when the restriction ceases to be in-effect. It is a UNIX timestamp.
        end_time: nil,
        # Returns the list of coordinates representing the area that was used to apply the
        # given restriction. The geofence returned is same as that provided while creating
        # or updating the restriction.
        geofence: nil,
        # Returns the highway information on which the restriction applies to. If no
        # highway is impacted by the restriction, then this field is not present in the
        # response.
        highway: nil,
        # Returns an array denoting all the traveling modes the restriction applies on.
        mode: nil,
        # Returns the name of the restriction. This value is same as that provided at the
        # time of creating or updating the restriction.
        name: nil,
        # Returns the time periods during which this restriction active or repeats on. The
        # time values follow a
        # [given format](https://wiki.openstreetmap.org/wiki/Key:opening_hours).
        repeat_on: nil,
        # Returns the type of restriction. This is the same value as provided when
        # creating or updating the restriction.
        restriction_type: nil,
        # Returns the fixed speed of segments. This field is not present in the response
        # if the restriction type is not fixedspeed
        speed: nil,
        # Returns the maximum speed of segments. This field is not present in the response
        # if the restriction type is not maxspeed
        speed_limit: nil,
        # The time when the restriction starts to be in-effect. It is a UNIX timestamp.
        start_time: nil,
        # Returns the state of the "restriction" itself - enabled, disabled or deleted. It
        # does not denote if the restriction is actually in effect or not.
        state: nil,
        # Returns the status of the restriction at the time of making the request i.e.
        # whether the restriction is in force or not. It will have one of the following
        # values: active or inactive.
        #
        # Please note that this field can not be directly influenced by the users. It will
        # always be calculated using the start_time, end_time and repeat_on parameters.
        status: nil,
        # The timestamp at which the restriction was updated.
        update_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: Integer,
            area: String,
            bbox: T.anything,
            comment: String,
            create_at: Time,
            direction:
              NextbillionSDK::RichGroupResponse::Direction::TaggedSymbol,
            end_time: Float,
            geofence: T.anything,
            highway: String,
            mode: T::Array[String],
            name: String,
            repeat_on: String,
            restriction_type:
              NextbillionSDK::RichGroupResponse::RestrictionType::TaggedSymbol,
            speed: Float,
            speed_limit: Float,
            start_time: Float,
            state: NextbillionSDK::RichGroupResponse::State::TaggedSymbol,
            status: NextbillionSDK::RichGroupResponse::Status::TaggedSymbol,
            update_at: Time
          }
        )
      end
      def to_hash
      end

      # Returns the direction of travel on the segments to which the restriction
      # applies.
      module Direction
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, NextbillionSDK::RichGroupResponse::Direction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FORWARD =
          T.let(
            :forward,
            NextbillionSDK::RichGroupResponse::Direction::TaggedSymbol
          )
        BACKWARD =
          T.let(
            :backward,
            NextbillionSDK::RichGroupResponse::Direction::TaggedSymbol
          )
        BOTH =
          T.let(
            :both,
            NextbillionSDK::RichGroupResponse::Direction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[NextbillionSDK::RichGroupResponse::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Returns the type of restriction. This is the same value as provided when
      # creating or updating the restriction.
      module RestrictionType
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, NextbillionSDK::RichGroupResponse::RestrictionType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLOSURE =
          T.let(
            :closure,
            NextbillionSDK::RichGroupResponse::RestrictionType::TaggedSymbol
          )
        MAXSPEED =
          T.let(
            :maxspeed,
            NextbillionSDK::RichGroupResponse::RestrictionType::TaggedSymbol
          )
        FIXEDSPEED =
          T.let(
            :fixedspeed,
            NextbillionSDK::RichGroupResponse::RestrictionType::TaggedSymbol
          )
        PARKING =
          T.let(
            :parking,
            NextbillionSDK::RichGroupResponse::RestrictionType::TaggedSymbol
          )
        TURN =
          T.let(
            :turn,
            NextbillionSDK::RichGroupResponse::RestrictionType::TaggedSymbol
          )
        TRUCK =
          T.let(
            :truck,
            NextbillionSDK::RichGroupResponse::RestrictionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::RichGroupResponse::RestrictionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Returns the state of the "restriction" itself - enabled, disabled or deleted. It
      # does not denote if the restriction is actually in effect or not.
      module State
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, NextbillionSDK::RichGroupResponse::State)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(
            :enabled,
            NextbillionSDK::RichGroupResponse::State::TaggedSymbol
          )
        DISABLED =
          T.let(
            :disabled,
            NextbillionSDK::RichGroupResponse::State::TaggedSymbol
          )
        DELETED =
          T.let(
            :deleted,
            NextbillionSDK::RichGroupResponse::State::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[NextbillionSDK::RichGroupResponse::State::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Returns the status of the restriction at the time of making the request i.e.
      # whether the restriction is in force or not. It will have one of the following
      # values: active or inactive.
      #
      # Please note that this field can not be directly influenced by the users. It will
      # always be calculated using the start_time, end_time and repeat_on parameters.
      module Status
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, NextbillionSDK::RichGroupResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            NextbillionSDK::RichGroupResponse::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            NextbillionSDK::RichGroupResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[NextbillionSDK::RichGroupResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
