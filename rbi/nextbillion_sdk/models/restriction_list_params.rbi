# typed: strong

module NextbillionSDK
  module Models
    class RestrictionListParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::RestrictionListParams,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # Specify the area name. It represents a region where restrictions can be applied.
      #
      # _The area it belongs to. See Area API_
      sig { returns(String) }
      attr_accessor :area

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      # The number of restrictions to be returned in the response. Please note that if
      # the limit is set to a number more than the total number of available
      # restrictions, then all restrictions would be returned together.
      sig { returns(Integer) }
      attr_accessor :limit

      # An integer value indicating the number of items in the collection that need to
      # be skipped in the response. Please note that the offset starts from 0, so the
      # first item returned in the result would be the item at (offset + 1) position in
      # collection.
      #
      # Users can use offset along with limit to implement paginated result.
      sig { returns(Integer) }
      attr_accessor :offset

      # Specify the modes of travel that the restriction pertains to.
      sig do
        returns(
          T.nilable(NextbillionSDK::RestrictionListParams::Mode::OrSymbol)
        )
      end
      attr_reader :mode

      sig do
        params(mode: NextbillionSDK::RestrictionListParams::Mode::OrSymbol).void
      end
      attr_writer :mode

      # The name of the restriction. This should be same as that provided while creating
      # or updating the restriction.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Specify the type of restrictions to fetch.
      sig do
        returns(
          T.nilable(
            NextbillionSDK::RestrictionListParams::RestrictionType::OrSymbol
          )
        )
      end
      attr_reader :restriction_type

      sig do
        params(
          restriction_type:
            NextbillionSDK::RestrictionListParams::RestrictionType::OrSymbol
        ).void
      end
      attr_writer :restriction_type

      # It represents where it comes from, currently the possible values include "rrt",
      # "xsm"
      sig do
        returns(
          T.nilable(NextbillionSDK::RestrictionListParams::Source::OrSymbol)
        )
      end
      attr_reader :source

      sig do
        params(
          source: NextbillionSDK::RestrictionListParams::Source::OrSymbol
        ).void
      end
      attr_writer :source

      # This parameter is used to filter restrictions based on their state i.e. whether
      # the restriction is currently enabled, disabled, or deleted. For example, users
      # can retrieve a list of all the deleted restrictions by setting state=deleted.
      sig do
        returns(
          T.nilable(NextbillionSDK::RestrictionListParams::State::OrSymbol)
        )
      end
      attr_reader :state

      sig do
        params(
          state: NextbillionSDK::RestrictionListParams::State::OrSymbol
        ).void
      end
      attr_writer :state

      # Restrictions can be active or inactive at a given time by virtue of their
      # nature. For example, maximum speed limits can be active on the roads leading to
      # schools during school hours and be inactive afterwards or certain road closure
      # restrictions be active during holidays/concerts and be inactive otherwise.
      #
      # Use this parameter to filter the restrictions based on their status at the time
      # of making the request i.e. whether they are in force or not.
      sig do
        returns(
          T.nilable(NextbillionSDK::RestrictionListParams::Status::OrSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: NextbillionSDK::RestrictionListParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      # a internal parameter
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :transform

      sig { params(transform: T::Boolean).void }
      attr_writer :transform

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
        ).returns(T.attached_class)
      end
      def self.new(
        # Specify the area name. It represents a region where restrictions can be applied.
        #
        # _The area it belongs to. See Area API_
        area:,
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # The number of restrictions to be returned in the response. Please note that if
        # the limit is set to a number more than the total number of available
        # restrictions, then all restrictions would be returned together.
        limit:,
        # An integer value indicating the number of items in the collection that need to
        # be skipped in the response. Please note that the offset starts from 0, so the
        # first item returned in the result would be the item at (offset + 1) position in
        # collection.
        #
        # Users can use offset along with limit to implement paginated result.
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
        # can retrieve a list of all the deleted restrictions by setting state=deleted.
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

      sig do
        override.returns(
          {
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
            request_options: NextbillionSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Specify the modes of travel that the restriction pertains to.
      module Mode
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, NextbillionSDK::RestrictionListParams::Mode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MODE_0W =
          T.let(
            :"0w",
            NextbillionSDK::RestrictionListParams::Mode::TaggedSymbol
          )
        MODE_2W =
          T.let(
            :"2w",
            NextbillionSDK::RestrictionListParams::Mode::TaggedSymbol
          )
        MODE_3W =
          T.let(
            :"3w",
            NextbillionSDK::RestrictionListParams::Mode::TaggedSymbol
          )
        MODE_4W =
          T.let(
            :"4w",
            NextbillionSDK::RestrictionListParams::Mode::TaggedSymbol
          )
        MODE_6W =
          T.let(
            :"6w",
            NextbillionSDK::RestrictionListParams::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[NextbillionSDK::RestrictionListParams::Mode::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Specify the type of restrictions to fetch.
      module RestrictionType
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              NextbillionSDK::RestrictionListParams::RestrictionType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TURN =
          T.let(
            :turn,
            NextbillionSDK::RestrictionListParams::RestrictionType::TaggedSymbol
          )
        PARKING =
          T.let(
            :parking,
            NextbillionSDK::RestrictionListParams::RestrictionType::TaggedSymbol
          )
        FIXEDSPEED =
          T.let(
            :fixedspeed,
            NextbillionSDK::RestrictionListParams::RestrictionType::TaggedSymbol
          )
        MAXSPEED =
          T.let(
            :maxspeed,
            NextbillionSDK::RestrictionListParams::RestrictionType::TaggedSymbol
          )
        CLOSURE =
          T.let(
            :closure,
            NextbillionSDK::RestrictionListParams::RestrictionType::TaggedSymbol
          )
        TRUCK =
          T.let(
            :truck,
            NextbillionSDK::RestrictionListParams::RestrictionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::RestrictionListParams::RestrictionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # It represents where it comes from, currently the possible values include "rrt",
      # "xsm"
      module Source
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, NextbillionSDK::RestrictionListParams::Source)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RRT =
          T.let(
            :rrt,
            NextbillionSDK::RestrictionListParams::Source::TaggedSymbol
          )
        PBF =
          T.let(
            :pbf,
            NextbillionSDK::RestrictionListParams::Source::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::RestrictionListParams::Source::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # This parameter is used to filter restrictions based on their state i.e. whether
      # the restriction is currently enabled, disabled, or deleted. For example, users
      # can retrieve a list of all the deleted restrictions by setting state=deleted.
      module State
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, NextbillionSDK::RestrictionListParams::State)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(
            :enabled,
            NextbillionSDK::RestrictionListParams::State::TaggedSymbol
          )
        DISABLED =
          T.let(
            :disabled,
            NextbillionSDK::RestrictionListParams::State::TaggedSymbol
          )
        DELETED =
          T.let(
            :deleted,
            NextbillionSDK::RestrictionListParams::State::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[NextbillionSDK::RestrictionListParams::State::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Restrictions can be active or inactive at a given time by virtue of their
      # nature. For example, maximum speed limits can be active on the roads leading to
      # schools during school hours and be inactive afterwards or certain road closure
      # restrictions be active during holidays/concerts and be inactive otherwise.
      #
      # Use this parameter to filter the restrictions based on their status at the time
      # of making the request i.e. whether they are in force or not.
      module Status
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, NextbillionSDK::RestrictionListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            NextbillionSDK::RestrictionListParams::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            NextbillionSDK::RestrictionListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::RestrictionListParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
