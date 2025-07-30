# typed: strong

module Nextbillionai
  module Models
    class RestrictionListByBboxParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::RestrictionListByBboxParams,
            Nextbillionai::Internal::AnyHash
          )
        end

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      # Specifies the maximum latitude value for the bounding box.
      sig { returns(Float) }
      attr_accessor :max_lat

      # Specifies the maximum longitude value for the bounding box.
      sig { returns(Float) }
      attr_accessor :max_lon

      # Specifies the minimum latitude value for the bounding box.
      sig { returns(Float) }
      attr_accessor :min_lat

      # Specifies the minimum longitude value for the bounding box.
      sig { returns(Float) }
      attr_accessor :min_lon

      # Specify the modes of travel that the restriction pertains to.
      sig do
        returns(
          T.nilable(
            T::Array[Nextbillionai::RestrictionListByBboxParams::Mode::OrSymbol]
          )
        )
      end
      attr_reader :mode

      sig do
        params(
          mode:
            T::Array[Nextbillionai::RestrictionListByBboxParams::Mode::OrSymbol]
        ).void
      end
      attr_writer :mode

      # Specify the type of restrictions to fetch.
      sig do
        returns(
          T.nilable(
            Nextbillionai::RestrictionListByBboxParams::RestrictionType::OrSymbol
          )
        )
      end
      attr_reader :restriction_type

      sig do
        params(
          restriction_type:
            Nextbillionai::RestrictionListByBboxParams::RestrictionType::OrSymbol
        ).void
      end
      attr_writer :restriction_type

      # This parameter represents where the restriction comes from and cannot be
      # modified by clients sending requests to the API endpoint.
      #
      # For example, an API endpoint that returns a list of restrictions could include
      # the source parameter to indicate where each item comes from. This parameter can
      # be useful for filtering, sorting, or grouping the results based on their source.
      sig do
        returns(
          T.nilable(
            Nextbillionai::RestrictionListByBboxParams::Source::OrSymbol
          )
        )
      end
      attr_reader :source

      sig do
        params(
          source: Nextbillionai::RestrictionListByBboxParams::Source::OrSymbol
        ).void
      end
      attr_writer :source

      # This parameter is used to filter restrictions based on their state i.e. whether
      # the restriction is currently enabled, disabled, or deleted. For example, users
      # can retrieve a list of all the deleted restrictions by setting state=deleted.
      sig do
        returns(
          T.nilable(Nextbillionai::RestrictionListByBboxParams::State::OrSymbol)
        )
      end
      attr_reader :state

      sig do
        params(
          state: Nextbillionai::RestrictionListByBboxParams::State::OrSymbol
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
          T.nilable(
            Nextbillionai::RestrictionListByBboxParams::Status::OrSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status: Nextbillionai::RestrictionListByBboxParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      # This is internal parameter with a default value as false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :transform

      sig { params(transform: T::Boolean).void }
      attr_writer :transform

      sig do
        params(
          key: String,
          max_lat: Float,
          max_lon: Float,
          min_lat: Float,
          min_lon: Float,
          mode:
            T::Array[
              Nextbillionai::RestrictionListByBboxParams::Mode::OrSymbol
            ],
          restriction_type:
            Nextbillionai::RestrictionListByBboxParams::RestrictionType::OrSymbol,
          source: Nextbillionai::RestrictionListByBboxParams::Source::OrSymbol,
          state: Nextbillionai::RestrictionListByBboxParams::State::OrSymbol,
          status: Nextbillionai::RestrictionListByBboxParams::Status::OrSymbol,
          transform: T::Boolean,
          request_options: Nextbillionai::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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
        # This is internal parameter with a default value as false.
        transform: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            key: String,
            max_lat: Float,
            max_lon: Float,
            min_lat: Float,
            min_lon: Float,
            mode:
              T::Array[
                Nextbillionai::RestrictionListByBboxParams::Mode::OrSymbol
              ],
            restriction_type:
              Nextbillionai::RestrictionListByBboxParams::RestrictionType::OrSymbol,
            source:
              Nextbillionai::RestrictionListByBboxParams::Source::OrSymbol,
            state: Nextbillionai::RestrictionListByBboxParams::State::OrSymbol,
            status:
              Nextbillionai::RestrictionListByBboxParams::Status::OrSymbol,
            transform: T::Boolean,
            request_options: Nextbillionai::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Mode
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::RestrictionListByBboxParams::Mode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MODE_0W =
          T.let(
            :"0w",
            Nextbillionai::RestrictionListByBboxParams::Mode::TaggedSymbol
          )
        MODE_2W =
          T.let(
            :"2w",
            Nextbillionai::RestrictionListByBboxParams::Mode::TaggedSymbol
          )
        MODE_3W =
          T.let(
            :"3w",
            Nextbillionai::RestrictionListByBboxParams::Mode::TaggedSymbol
          )
        MODE_4W =
          T.let(
            :"4w",
            Nextbillionai::RestrictionListByBboxParams::Mode::TaggedSymbol
          )
        MODE_6W =
          T.let(
            :"6w",
            Nextbillionai::RestrictionListByBboxParams::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::RestrictionListByBboxParams::Mode::TaggedSymbol
            ]
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
            T.all(
              Symbol,
              Nextbillionai::RestrictionListByBboxParams::RestrictionType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TURN =
          T.let(
            :turn,
            Nextbillionai::RestrictionListByBboxParams::RestrictionType::TaggedSymbol
          )
        PARKING =
          T.let(
            :parking,
            Nextbillionai::RestrictionListByBboxParams::RestrictionType::TaggedSymbol
          )
        FIXEDSPEED =
          T.let(
            :fixedspeed,
            Nextbillionai::RestrictionListByBboxParams::RestrictionType::TaggedSymbol
          )
        MAXSPEED =
          T.let(
            :maxspeed,
            Nextbillionai::RestrictionListByBboxParams::RestrictionType::TaggedSymbol
          )
        CLOSURE =
          T.let(
            :closure,
            Nextbillionai::RestrictionListByBboxParams::RestrictionType::TaggedSymbol
          )
        TRUCK =
          T.let(
            :truck,
            Nextbillionai::RestrictionListByBboxParams::RestrictionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::RestrictionListByBboxParams::RestrictionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # This parameter represents where the restriction comes from and cannot be
      # modified by clients sending requests to the API endpoint.
      #
      # For example, an API endpoint that returns a list of restrictions could include
      # the source parameter to indicate where each item comes from. This parameter can
      # be useful for filtering, sorting, or grouping the results based on their source.
      module Source
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::RestrictionListByBboxParams::Source)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RRT =
          T.let(
            :rrt,
            Nextbillionai::RestrictionListByBboxParams::Source::TaggedSymbol
          )
        PBF =
          T.let(
            :pbf,
            Nextbillionai::RestrictionListByBboxParams::Source::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::RestrictionListByBboxParams::Source::TaggedSymbol
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
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::RestrictionListByBboxParams::State)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(
            :enabled,
            Nextbillionai::RestrictionListByBboxParams::State::TaggedSymbol
          )
        DISABLED =
          T.let(
            :disabled,
            Nextbillionai::RestrictionListByBboxParams::State::TaggedSymbol
          )
        DELETED =
          T.let(
            :deleted,
            Nextbillionai::RestrictionListByBboxParams::State::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::RestrictionListByBboxParams::State::TaggedSymbol
            ]
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
            T.all(Symbol, Nextbillionai::RestrictionListByBboxParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            Nextbillionai::RestrictionListByBboxParams::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            Nextbillionai::RestrictionListByBboxParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::RestrictionListByBboxParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
