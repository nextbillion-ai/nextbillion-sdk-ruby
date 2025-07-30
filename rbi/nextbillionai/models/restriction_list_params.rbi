# typed: strong

module Nextbillionai
  module Models
    class RestrictionListParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::RestrictionListParams,
            Nextbillionai::Internal::AnyHash
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
      # the `limit` is set to a number more than the total number of available
      # restrictions, then all restrictions would be returned together.
      sig { returns(Integer) }
      attr_accessor :limit

      # An integer value indicating the number of items in the collection that need to
      # be skipped in the response. Please note that the offset starts from 0, so the
      # first item returned in the result would be the item at (offset + 1) position in
      # collection.
      #
      # Users can use `offset` along with `limit` to implement paginated result.
      sig { returns(Integer) }
      attr_accessor :offset

      # Specify the modes of travel that the restriction pertains to.
      sig do
        returns(T.nilable(Nextbillionai::RestrictionListParams::Mode::OrSymbol))
      end
      attr_reader :mode

      sig do
        params(mode: Nextbillionai::RestrictionListParams::Mode::OrSymbol).void
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
            Nextbillionai::RestrictionListParams::RestrictionType::OrSymbol
          )
        )
      end
      attr_reader :restriction_type

      sig do
        params(
          restriction_type:
            Nextbillionai::RestrictionListParams::RestrictionType::OrSymbol
        ).void
      end
      attr_writer :restriction_type

      # It represents where it comes from, currently the possible values include "rrt",
      # "xsm"
      sig do
        returns(
          T.nilable(Nextbillionai::RestrictionListParams::Source::OrSymbol)
        )
      end
      attr_reader :source

      sig do
        params(
          source: Nextbillionai::RestrictionListParams::Source::OrSymbol
        ).void
      end
      attr_writer :source

      # This parameter is used to filter restrictions based on their state i.e. whether
      # the restriction is currently enabled, disabled, or deleted. For example, users
      # can retrieve a list of all the deleted restrictions by setting `state=deleted`.
      sig do
        returns(
          T.nilable(Nextbillionai::RestrictionListParams::State::OrSymbol)
        )
      end
      attr_reader :state

      sig do
        params(
          state: Nextbillionai::RestrictionListParams::State::OrSymbol
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
          T.nilable(Nextbillionai::RestrictionListParams::Status::OrSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: Nextbillionai::RestrictionListParams::Status::OrSymbol
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
          mode: Nextbillionai::RestrictionListParams::Mode::OrSymbol,
          name: String,
          restriction_type:
            Nextbillionai::RestrictionListParams::RestrictionType::OrSymbol,
          source: Nextbillionai::RestrictionListParams::Source::OrSymbol,
          state: Nextbillionai::RestrictionListParams::State::OrSymbol,
          status: Nextbillionai::RestrictionListParams::Status::OrSymbol,
          transform: T::Boolean,
          request_options: Nextbillionai::RequestOptions::OrHash
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

      sig do
        override.returns(
          {
            area: String,
            key: String,
            limit: Integer,
            offset: Integer,
            mode: Nextbillionai::RestrictionListParams::Mode::OrSymbol,
            name: String,
            restriction_type:
              Nextbillionai::RestrictionListParams::RestrictionType::OrSymbol,
            source: Nextbillionai::RestrictionListParams::Source::OrSymbol,
            state: Nextbillionai::RestrictionListParams::State::OrSymbol,
            status: Nextbillionai::RestrictionListParams::Status::OrSymbol,
            transform: T::Boolean,
            request_options: Nextbillionai::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Specify the modes of travel that the restriction pertains to.
      module Mode
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::RestrictionListParams::Mode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MODE_0W =
          T.let(
            :"`0w`",
            Nextbillionai::RestrictionListParams::Mode::TaggedSymbol
          )
        MODE_2W =
          T.let(
            :"`2w`",
            Nextbillionai::RestrictionListParams::Mode::TaggedSymbol
          )
        MODE_3W =
          T.let(
            :"`3w`",
            Nextbillionai::RestrictionListParams::Mode::TaggedSymbol
          )
        MODE_4W =
          T.let(
            :"`4w`",
            Nextbillionai::RestrictionListParams::Mode::TaggedSymbol
          )
        MODE_6W =
          T.let(
            :"`6w`",
            Nextbillionai::RestrictionListParams::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Nextbillionai::RestrictionListParams::Mode::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Specify the type of restrictions to fetch.
      module RestrictionType
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::RestrictionListParams::RestrictionType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TURN =
          T.let(
            :"`turn`",
            Nextbillionai::RestrictionListParams::RestrictionType::TaggedSymbol
          )
        PARKING =
          T.let(
            :"`parking`",
            Nextbillionai::RestrictionListParams::RestrictionType::TaggedSymbol
          )
        FIXEDSPEED =
          T.let(
            :"`fixedspeed`",
            Nextbillionai::RestrictionListParams::RestrictionType::TaggedSymbol
          )
        MAXSPEED =
          T.let(
            :"`maxspeed`",
            Nextbillionai::RestrictionListParams::RestrictionType::TaggedSymbol
          )
        CLOSURE =
          T.let(
            :"`closure`",
            Nextbillionai::RestrictionListParams::RestrictionType::TaggedSymbol
          )
        TRUCK =
          T.let(
            :"`truck`",
            Nextbillionai::RestrictionListParams::RestrictionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::RestrictionListParams::RestrictionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # It represents where it comes from, currently the possible values include "rrt",
      # "xsm"
      module Source
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::RestrictionListParams::Source)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RRT =
          T.let(
            :rrt,
            Nextbillionai::RestrictionListParams::Source::TaggedSymbol
          )
        PBF =
          T.let(
            :pbf,
            Nextbillionai::RestrictionListParams::Source::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Nextbillionai::RestrictionListParams::Source::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # This parameter is used to filter restrictions based on their state i.e. whether
      # the restriction is currently enabled, disabled, or deleted. For example, users
      # can retrieve a list of all the deleted restrictions by setting `state=deleted`.
      module State
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::RestrictionListParams::State)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(
            :"`enabled`",
            Nextbillionai::RestrictionListParams::State::TaggedSymbol
          )
        DISABLED =
          T.let(
            :"`disabled`",
            Nextbillionai::RestrictionListParams::State::TaggedSymbol
          )
        DELETED =
          T.let(
            :"`deleted`",
            Nextbillionai::RestrictionListParams::State::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Nextbillionai::RestrictionListParams::State::TaggedSymbol]
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
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::RestrictionListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :"`active`",
            Nextbillionai::RestrictionListParams::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :"`inactive`",
            Nextbillionai::RestrictionListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Nextbillionai::RestrictionListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
