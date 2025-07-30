# typed: strong

module Nextbillionai
  module Models
    class RestrictionsItemListResponseItem < Nextbillionai::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::Models::RestrictionsItemListResponseItem,
            Nextbillionai::Internal::AnyHash
          )
        end

      sig { returns(Float) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :area

      sig do
        returns(
          Nextbillionai::Models::RestrictionsItemListResponseItem::Coordinate
        )
      end
      attr_reader :coordinate

      sig do
        params(
          coordinate:
            Nextbillionai::Models::RestrictionsItemListResponseItem::Coordinate::OrHash
        ).void
      end
      attr_writer :coordinate

      sig { returns(Float) }
      attr_accessor :group_id

      sig do
        returns(
          Nextbillionai::Models::RestrictionsItemListResponseItem::GroupType::TaggedSymbol
        )
      end
      attr_accessor :group_type

      sig do
        returns(
          T::Array[
            Nextbillionai::Models::RestrictionsItemListResponseItem::Mode::TaggedSymbol
          ]
        )
      end
      attr_accessor :mode

      sig { returns(String) }
      attr_accessor :repeat_on

      sig do
        returns(
          Nextbillionai::Models::RestrictionsItemListResponseItem::RestrictionType::TaggedSymbol
        )
      end
      attr_accessor :restriction_type

      sig do
        returns(
          Nextbillionai::Models::RestrictionsItemListResponseItem::Source::TaggedSymbol
        )
      end
      attr_accessor :source

      sig do
        returns(
          Nextbillionai::Models::RestrictionsItemListResponseItem::State::TaggedSymbol
        )
      end
      attr_accessor :state

      sig do
        returns(
          Nextbillionai::Models::RestrictionsItemListResponseItem::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      sig do
        params(
          id: Float,
          area: String,
          coordinate:
            Nextbillionai::Models::RestrictionsItemListResponseItem::Coordinate::OrHash,
          group_id: Float,
          group_type:
            Nextbillionai::Models::RestrictionsItemListResponseItem::GroupType::OrSymbol,
          mode:
            T::Array[
              Nextbillionai::Models::RestrictionsItemListResponseItem::Mode::OrSymbol
            ],
          repeat_on: String,
          restriction_type:
            Nextbillionai::Models::RestrictionsItemListResponseItem::RestrictionType::OrSymbol,
          source:
            Nextbillionai::Models::RestrictionsItemListResponseItem::Source::OrSymbol,
          state:
            Nextbillionai::Models::RestrictionsItemListResponseItem::State::OrSymbol,
          status:
            Nextbillionai::Models::RestrictionsItemListResponseItem::Status::OrSymbol
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
              Nextbillionai::Models::RestrictionsItemListResponseItem::Coordinate,
            group_id: Float,
            group_type:
              Nextbillionai::Models::RestrictionsItemListResponseItem::GroupType::TaggedSymbol,
            mode:
              T::Array[
                Nextbillionai::Models::RestrictionsItemListResponseItem::Mode::TaggedSymbol
              ],
            repeat_on: String,
            restriction_type:
              Nextbillionai::Models::RestrictionsItemListResponseItem::RestrictionType::TaggedSymbol,
            source:
              Nextbillionai::Models::RestrictionsItemListResponseItem::Source::TaggedSymbol,
            state:
              Nextbillionai::Models::RestrictionsItemListResponseItem::State::TaggedSymbol,
            status:
              Nextbillionai::Models::RestrictionsItemListResponseItem::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Coordinate < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::RestrictionsItemListResponseItem::Coordinate,
              Nextbillionai::Internal::AnyHash
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
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Nextbillionai::Models::RestrictionsItemListResponseItem::GroupType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SEGMENT =
          T.let(
            :segment,
            Nextbillionai::Models::RestrictionsItemListResponseItem::GroupType::TaggedSymbol
          )
        TURN =
          T.let(
            :turn,
            Nextbillionai::Models::RestrictionsItemListResponseItem::GroupType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::Models::RestrictionsItemListResponseItem::GroupType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Mode
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Nextbillionai::Models::RestrictionsItemListResponseItem::Mode
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MODE_0W =
          T.let(
            :"0w",
            Nextbillionai::Models::RestrictionsItemListResponseItem::Mode::TaggedSymbol
          )
        MODE_1W =
          T.let(
            :"1w",
            Nextbillionai::Models::RestrictionsItemListResponseItem::Mode::TaggedSymbol
          )
        MODE_2W =
          T.let(
            :"2w",
            Nextbillionai::Models::RestrictionsItemListResponseItem::Mode::TaggedSymbol
          )
        MODE_3W =
          T.let(
            :"3w",
            Nextbillionai::Models::RestrictionsItemListResponseItem::Mode::TaggedSymbol
          )
        MODE_4W =
          T.let(
            :"4w",
            Nextbillionai::Models::RestrictionsItemListResponseItem::Mode::TaggedSymbol
          )
        MODE_6W =
          T.let(
            :"6w",
            Nextbillionai::Models::RestrictionsItemListResponseItem::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::Models::RestrictionsItemListResponseItem::Mode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module RestrictionType
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Nextbillionai::Models::RestrictionsItemListResponseItem::RestrictionType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CLOSURE =
          T.let(
            :closure,
            Nextbillionai::Models::RestrictionsItemListResponseItem::RestrictionType::TaggedSymbol
          )
        FIXEDSPEED =
          T.let(
            :fixedspeed,
            Nextbillionai::Models::RestrictionsItemListResponseItem::RestrictionType::TaggedSymbol
          )
        MAXSPEED =
          T.let(
            :maxspeed,
            Nextbillionai::Models::RestrictionsItemListResponseItem::RestrictionType::TaggedSymbol
          )
        TURN =
          T.let(
            :turn,
            Nextbillionai::Models::RestrictionsItemListResponseItem::RestrictionType::TaggedSymbol
          )
        TRUCK =
          T.let(
            :truck,
            Nextbillionai::Models::RestrictionsItemListResponseItem::RestrictionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::Models::RestrictionsItemListResponseItem::RestrictionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Source
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Nextbillionai::Models::RestrictionsItemListResponseItem::Source
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RRT =
          T.let(
            :rrt,
            Nextbillionai::Models::RestrictionsItemListResponseItem::Source::TaggedSymbol
          )
        PBF =
          T.let(
            :pbf,
            Nextbillionai::Models::RestrictionsItemListResponseItem::Source::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::Models::RestrictionsItemListResponseItem::Source::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module State
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Nextbillionai::Models::RestrictionsItemListResponseItem::State
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(
            :enabled,
            Nextbillionai::Models::RestrictionsItemListResponseItem::State::TaggedSymbol
          )
        DISABLED =
          T.let(
            :disabled,
            Nextbillionai::Models::RestrictionsItemListResponseItem::State::TaggedSymbol
          )
        DELETED =
          T.let(
            :deleted,
            Nextbillionai::Models::RestrictionsItemListResponseItem::State::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::Models::RestrictionsItemListResponseItem::State::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Status
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Nextbillionai::Models::RestrictionsItemListResponseItem::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            Nextbillionai::Models::RestrictionsItemListResponseItem::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            Nextbillionai::Models::RestrictionsItemListResponseItem::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::Models::RestrictionsItemListResponseItem::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end

    RestrictionsItemListResponse =
      T.let(
        Nextbillionai::Internal::Type::ArrayOf[
          Nextbillionai::Models::RestrictionsItemListResponseItem
        ],
        Nextbillionai::Internal::Type::Converter
      )
  end
end
