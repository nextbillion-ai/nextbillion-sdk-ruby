# typed: strong

module NextbillionSDK
  module Models
    class RestrictionListByBboxParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::RestrictionListByBboxParams,
            NextbillionSDK::Internal::AnyHash
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
            T::Array[
              NextbillionSDK::RestrictionListByBboxParams::Mode::OrSymbol
            ]
          )
        )
      end
      attr_reader :mode

      sig do
        params(
          mode:
            T::Array[
              NextbillionSDK::RestrictionListByBboxParams::Mode::OrSymbol
            ]
        ).void
      end
      attr_writer :mode

      # Specify the type of restrictions to fetch.
      sig do
        returns(
          T.nilable(
            NextbillionSDK::RestrictionListByBboxParams::RestrictionType::OrSymbol
          )
        )
      end
      attr_reader :restriction_type

      sig do
        params(
          restriction_type:
            NextbillionSDK::RestrictionListByBboxParams::RestrictionType::OrSymbol
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
            NextbillionSDK::RestrictionListByBboxParams::Source::OrSymbol
          )
        )
      end
      attr_reader :source

      sig do
        params(
          source: NextbillionSDK::RestrictionListByBboxParams::Source::OrSymbol
        ).void
      end
      attr_writer :source

      # This parameter is used to filter restrictions based on their state i.e. whether
      # the restriction is currently enabled, disabled, or deleted. For example, users
      # can retrieve a list of all the deleted restrictions by setting `state=deleted`.
      sig do
        returns(
          T.nilable(
            NextbillionSDK::RestrictionListByBboxParams::State::OrSymbol
          )
        )
      end
      attr_reader :state

      sig do
        params(
          state: NextbillionSDK::RestrictionListByBboxParams::State::OrSymbol
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
            NextbillionSDK::RestrictionListByBboxParams::Status::OrSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status: NextbillionSDK::RestrictionListByBboxParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      # This is internal parameter with a default value as `false`.
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
              NextbillionSDK::RestrictionListByBboxParams::Mode::OrSymbol
            ],
          restriction_type:
            NextbillionSDK::RestrictionListByBboxParams::RestrictionType::OrSymbol,
          source: NextbillionSDK::RestrictionListByBboxParams::Source::OrSymbol,
          state: NextbillionSDK::RestrictionListByBboxParams::State::OrSymbol,
          status: NextbillionSDK::RestrictionListByBboxParams::Status::OrSymbol,
          transform: T::Boolean,
          request_options: NextbillionSDK::RequestOptions::OrHash
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
                NextbillionSDK::RestrictionListByBboxParams::Mode::OrSymbol
              ],
            restriction_type:
              NextbillionSDK::RestrictionListByBboxParams::RestrictionType::OrSymbol,
            source:
              NextbillionSDK::RestrictionListByBboxParams::Source::OrSymbol,
            state: NextbillionSDK::RestrictionListByBboxParams::State::OrSymbol,
            status:
              NextbillionSDK::RestrictionListByBboxParams::Status::OrSymbol,
            transform: T::Boolean,
            request_options: NextbillionSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Mode
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, NextbillionSDK::RestrictionListByBboxParams::Mode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MODE_0W =
          T.let(
            :"0w",
            NextbillionSDK::RestrictionListByBboxParams::Mode::TaggedSymbol
          )
        MODE_2W =
          T.let(
            :"2w",
            NextbillionSDK::RestrictionListByBboxParams::Mode::TaggedSymbol
          )
        MODE_3W =
          T.let(
            :"3w",
            NextbillionSDK::RestrictionListByBboxParams::Mode::TaggedSymbol
          )
        MODE_4W =
          T.let(
            :"4w",
            NextbillionSDK::RestrictionListByBboxParams::Mode::TaggedSymbol
          )
        MODE_6W =
          T.let(
            :"6w",
            NextbillionSDK::RestrictionListByBboxParams::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::RestrictionListByBboxParams::Mode::TaggedSymbol
            ]
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
              NextbillionSDK::RestrictionListByBboxParams::RestrictionType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TURN =
          T.let(
            :turn,
            NextbillionSDK::RestrictionListByBboxParams::RestrictionType::TaggedSymbol
          )
        PARKING =
          T.let(
            :parking,
            NextbillionSDK::RestrictionListByBboxParams::RestrictionType::TaggedSymbol
          )
        FIXEDSPEED =
          T.let(
            :fixedspeed,
            NextbillionSDK::RestrictionListByBboxParams::RestrictionType::TaggedSymbol
          )
        MAXSPEED =
          T.let(
            :maxspeed,
            NextbillionSDK::RestrictionListByBboxParams::RestrictionType::TaggedSymbol
          )
        CLOSURE =
          T.let(
            :closure,
            NextbillionSDK::RestrictionListByBboxParams::RestrictionType::TaggedSymbol
          )
        TRUCK =
          T.let(
            :truck,
            NextbillionSDK::RestrictionListByBboxParams::RestrictionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::RestrictionListByBboxParams::RestrictionType::TaggedSymbol
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
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, NextbillionSDK::RestrictionListByBboxParams::Source)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RRT =
          T.let(
            :rrt,
            NextbillionSDK::RestrictionListByBboxParams::Source::TaggedSymbol
          )
        PBF =
          T.let(
            :pbf,
            NextbillionSDK::RestrictionListByBboxParams::Source::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::RestrictionListByBboxParams::Source::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # This parameter is used to filter restrictions based on their state i.e. whether
      # the restriction is currently enabled, disabled, or deleted. For example, users
      # can retrieve a list of all the deleted restrictions by setting `state=deleted`.
      module State
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, NextbillionSDK::RestrictionListByBboxParams::State)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(
            :"`enabled`",
            NextbillionSDK::RestrictionListByBboxParams::State::TaggedSymbol
          )
        DISABLED =
          T.let(
            :"`disabled`",
            NextbillionSDK::RestrictionListByBboxParams::State::TaggedSymbol
          )
        DELETED =
          T.let(
            :"`deleted`",
            NextbillionSDK::RestrictionListByBboxParams::State::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::RestrictionListByBboxParams::State::TaggedSymbol
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
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, NextbillionSDK::RestrictionListByBboxParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :"`active`",
            NextbillionSDK::RestrictionListByBboxParams::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :"`inactive`",
            NextbillionSDK::RestrictionListByBboxParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::RestrictionListByBboxParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
