# typed: strong

module NextbillionSDK
  module Models
    class RestrictionsItemListResponseItem < NextbillionSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::Models::RestrictionsItemListResponseItem,
            NextbillionSDK::Internal::AnyHash
          )
        end

      sig { returns(Float) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :area

      sig do
        returns(
          NextbillionSDK::Models::RestrictionsItemListResponseItem::Coordinate
        )
      end
      attr_reader :coordinate

      sig do
        params(
          coordinate:
            NextbillionSDK::Models::RestrictionsItemListResponseItem::Coordinate::OrHash
        ).void
      end
      attr_writer :coordinate

      sig { returns(Float) }
      attr_accessor :group_id

      sig do
        returns(
          NextbillionSDK::Models::RestrictionsItemListResponseItem::GroupType::TaggedSymbol
        )
      end
      attr_accessor :group_type

      sig do
        returns(
          T::Array[
            NextbillionSDK::Models::RestrictionsItemListResponseItem::Mode::TaggedSymbol
          ]
        )
      end
      attr_accessor :mode

      sig { returns(String) }
      attr_accessor :repeat_on

      sig do
        returns(
          NextbillionSDK::Models::RestrictionsItemListResponseItem::RestrictionType::TaggedSymbol
        )
      end
      attr_accessor :restriction_type

      sig do
        returns(
          NextbillionSDK::Models::RestrictionsItemListResponseItem::Source::TaggedSymbol
        )
      end
      attr_accessor :source

      sig do
        returns(
          NextbillionSDK::Models::RestrictionsItemListResponseItem::State::TaggedSymbol
        )
      end
      attr_accessor :state

      sig do
        returns(
          NextbillionSDK::Models::RestrictionsItemListResponseItem::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      sig do
        params(
          id: Float,
          area: String,
          coordinate:
            NextbillionSDK::Models::RestrictionsItemListResponseItem::Coordinate::OrHash,
          group_id: Float,
          group_type:
            NextbillionSDK::Models::RestrictionsItemListResponseItem::GroupType::OrSymbol,
          mode:
            T::Array[
              NextbillionSDK::Models::RestrictionsItemListResponseItem::Mode::OrSymbol
            ],
          repeat_on: String,
          restriction_type:
            NextbillionSDK::Models::RestrictionsItemListResponseItem::RestrictionType::OrSymbol,
          source:
            NextbillionSDK::Models::RestrictionsItemListResponseItem::Source::OrSymbol,
          state:
            NextbillionSDK::Models::RestrictionsItemListResponseItem::State::OrSymbol,
          status:
            NextbillionSDK::Models::RestrictionsItemListResponseItem::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        area:,
        coordinate:,
        group_id:,
        group_type:,
        mode:,
        repeat_on:,
        restriction_type:,
        source:,
        state:,
        status:
      )
      end

      sig do
        override.returns(
          {
            id: Float,
            area: String,
            coordinate:
              NextbillionSDK::Models::RestrictionsItemListResponseItem::Coordinate,
            group_id: Float,
            group_type:
              NextbillionSDK::Models::RestrictionsItemListResponseItem::GroupType::TaggedSymbol,
            mode:
              T::Array[
                NextbillionSDK::Models::RestrictionsItemListResponseItem::Mode::TaggedSymbol
              ],
            repeat_on: String,
            restriction_type:
              NextbillionSDK::Models::RestrictionsItemListResponseItem::RestrictionType::TaggedSymbol,
            source:
              NextbillionSDK::Models::RestrictionsItemListResponseItem::Source::TaggedSymbol,
            state:
              NextbillionSDK::Models::RestrictionsItemListResponseItem::State::TaggedSymbol,
            status:
              NextbillionSDK::Models::RestrictionsItemListResponseItem::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Coordinate < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::RestrictionsItemListResponseItem::Coordinate,
              NextbillionSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Float)) }
        attr_reader :lat

        sig { params(lat: Float).void }
        attr_writer :lat

        sig { returns(T.nilable(Float)) }
        attr_reader :lon

        sig { params(lon: Float).void }
        attr_writer :lon

        sig { params(lat: Float, lon: Float).returns(T.attached_class) }
        def self.new(lat: nil, lon: nil)
        end

        sig { override.returns({ lat: Float, lon: Float }) }
        def to_hash
        end
      end

      module GroupType
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              NextbillionSDK::Models::RestrictionsItemListResponseItem::GroupType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SEGMENT =
          T.let(
            :segment,
            NextbillionSDK::Models::RestrictionsItemListResponseItem::GroupType::TaggedSymbol
          )
        TURN =
          T.let(
            :turn,
            NextbillionSDK::Models::RestrictionsItemListResponseItem::GroupType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::Models::RestrictionsItemListResponseItem::GroupType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Mode
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              NextbillionSDK::Models::RestrictionsItemListResponseItem::Mode
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MODE_0W =
          T.let(
            :"0w",
            NextbillionSDK::Models::RestrictionsItemListResponseItem::Mode::TaggedSymbol
          )
        MODE_1W =
          T.let(
            :"1w",
            NextbillionSDK::Models::RestrictionsItemListResponseItem::Mode::TaggedSymbol
          )
        MODE_2W =
          T.let(
            :"2w",
            NextbillionSDK::Models::RestrictionsItemListResponseItem::Mode::TaggedSymbol
          )
        MODE_3W =
          T.let(
            :"3w",
            NextbillionSDK::Models::RestrictionsItemListResponseItem::Mode::TaggedSymbol
          )
        MODE_4W =
          T.let(
            :"4w",
            NextbillionSDK::Models::RestrictionsItemListResponseItem::Mode::TaggedSymbol
          )
        MODE_6W =
          T.let(
            :"6w",
            NextbillionSDK::Models::RestrictionsItemListResponseItem::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::Models::RestrictionsItemListResponseItem::Mode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module RestrictionType
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              NextbillionSDK::Models::RestrictionsItemListResponseItem::RestrictionType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLOSURE =
          T.let(
            :closure,
            NextbillionSDK::Models::RestrictionsItemListResponseItem::RestrictionType::TaggedSymbol
          )
        FIXEDSPEED =
          T.let(
            :fixedspeed,
            NextbillionSDK::Models::RestrictionsItemListResponseItem::RestrictionType::TaggedSymbol
          )
        MAXSPEED =
          T.let(
            :maxspeed,
            NextbillionSDK::Models::RestrictionsItemListResponseItem::RestrictionType::TaggedSymbol
          )
        TURN =
          T.let(
            :turn,
            NextbillionSDK::Models::RestrictionsItemListResponseItem::RestrictionType::TaggedSymbol
          )
        TRUCK =
          T.let(
            :truck,
            NextbillionSDK::Models::RestrictionsItemListResponseItem::RestrictionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::Models::RestrictionsItemListResponseItem::RestrictionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Source
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              NextbillionSDK::Models::RestrictionsItemListResponseItem::Source
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RRT =
          T.let(
            :rrt,
            NextbillionSDK::Models::RestrictionsItemListResponseItem::Source::TaggedSymbol
          )
        PBF =
          T.let(
            :pbf,
            NextbillionSDK::Models::RestrictionsItemListResponseItem::Source::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::Models::RestrictionsItemListResponseItem::Source::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module State
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              NextbillionSDK::Models::RestrictionsItemListResponseItem::State
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(
            :enabled,
            NextbillionSDK::Models::RestrictionsItemListResponseItem::State::TaggedSymbol
          )
        DISABLED =
          T.let(
            :disabled,
            NextbillionSDK::Models::RestrictionsItemListResponseItem::State::TaggedSymbol
          )
        DELETED =
          T.let(
            :deleted,
            NextbillionSDK::Models::RestrictionsItemListResponseItem::State::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::Models::RestrictionsItemListResponseItem::State::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Status
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              NextbillionSDK::Models::RestrictionsItemListResponseItem::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            NextbillionSDK::Models::RestrictionsItemListResponseItem::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            NextbillionSDK::Models::RestrictionsItemListResponseItem::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::Models::RestrictionsItemListResponseItem::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end

    RestrictionsItemListResponse =
      T.let(
        NextbillionSDK::Internal::Type::ArrayOf[
          NextbillionSDK::Models::RestrictionsItemListResponseItem
        ],
        NextbillionSDK::Internal::Type::Converter
      )
  end
end
