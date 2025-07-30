# typed: strong

module Nextbillionai
  module Models
    class RestrictionsItemListParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::RestrictionsItemListParams,
            Nextbillionai::Internal::AnyHash
          )
        end

      sig { returns(Float) }
      attr_accessor :max_lat

      sig { returns(Float) }
      attr_accessor :max_lon

      sig { returns(Float) }
      attr_accessor :min_lat

      sig { returns(Float) }
      attr_accessor :min_lon

      sig { returns(T.nilable(Float)) }
      attr_reader :group_id

      sig { params(group_id: Float).void }
      attr_writer :group_id

      sig do
        returns(
          T.nilable(Nextbillionai::RestrictionsItemListParams::Mode::OrSymbol)
        )
      end
      attr_reader :mode

      sig do
        params(
          mode: Nextbillionai::RestrictionsItemListParams::Mode::OrSymbol
        ).void
      end
      attr_writer :mode

      sig do
        returns(
          T.nilable(
            Nextbillionai::RestrictionsItemListParams::RestrictionType::OrSymbol
          )
        )
      end
      attr_reader :restriction_type

      sig do
        params(
          restriction_type:
            Nextbillionai::RestrictionsItemListParams::RestrictionType::OrSymbol
        ).void
      end
      attr_writer :restriction_type

      sig { returns(T.nilable(String)) }
      attr_reader :source

      sig { params(source: String).void }
      attr_writer :source

      sig do
        returns(
          T.nilable(Nextbillionai::RestrictionsItemListParams::State::OrSymbol)
        )
      end
      attr_reader :state

      sig do
        params(
          state: Nextbillionai::RestrictionsItemListParams::State::OrSymbol
        ).void
      end
      attr_writer :state

      sig do
        returns(
          T.nilable(Nextbillionai::RestrictionsItemListParams::Status::OrSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: Nextbillionai::RestrictionsItemListParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          max_lat: Float,
          max_lon: Float,
          min_lat: Float,
          min_lon: Float,
          group_id: Float,
          mode: Nextbillionai::RestrictionsItemListParams::Mode::OrSymbol,
          restriction_type:
            Nextbillionai::RestrictionsItemListParams::RestrictionType::OrSymbol,
          source: String,
          state: Nextbillionai::RestrictionsItemListParams::State::OrSymbol,
          status: Nextbillionai::RestrictionsItemListParams::Status::OrSymbol,
          request_options: Nextbillionai::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        max_lat:,
        max_lon:,
        min_lat:,
        min_lon:,
        group_id: nil,
        mode: nil,
        restriction_type: nil,
        source: nil,
        state: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            max_lat: Float,
            max_lon: Float,
            min_lat: Float,
            min_lon: Float,
            group_id: Float,
            mode: Nextbillionai::RestrictionsItemListParams::Mode::OrSymbol,
            restriction_type:
              Nextbillionai::RestrictionsItemListParams::RestrictionType::OrSymbol,
            source: String,
            state: Nextbillionai::RestrictionsItemListParams::State::OrSymbol,
            status: Nextbillionai::RestrictionsItemListParams::Status::OrSymbol,
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
            T.all(Symbol, Nextbillionai::RestrictionsItemListParams::Mode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MODE_0W =
          T.let(
            :"0w",
            Nextbillionai::RestrictionsItemListParams::Mode::TaggedSymbol
          )
        MODE_1W =
          T.let(
            :"1w",
            Nextbillionai::RestrictionsItemListParams::Mode::TaggedSymbol
          )
        MODE_2W =
          T.let(
            :"2w",
            Nextbillionai::RestrictionsItemListParams::Mode::TaggedSymbol
          )
        MODE_3W =
          T.let(
            :"3w",
            Nextbillionai::RestrictionsItemListParams::Mode::TaggedSymbol
          )
        MODE_4W =
          T.let(
            :"4w",
            Nextbillionai::RestrictionsItemListParams::Mode::TaggedSymbol
          )
        MODE_6W =
          T.let(
            :"6w",
            Nextbillionai::RestrictionsItemListParams::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::RestrictionsItemListParams::Mode::TaggedSymbol
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
              Nextbillionai::RestrictionsItemListParams::RestrictionType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TURN =
          T.let(
            :turn,
            Nextbillionai::RestrictionsItemListParams::RestrictionType::TaggedSymbol
          )
        PARKING =
          T.let(
            :parking,
            Nextbillionai::RestrictionsItemListParams::RestrictionType::TaggedSymbol
          )
        FIXEDSPEED =
          T.let(
            :fixedspeed,
            Nextbillionai::RestrictionsItemListParams::RestrictionType::TaggedSymbol
          )
        MAXSPEED =
          T.let(
            :maxspeed,
            Nextbillionai::RestrictionsItemListParams::RestrictionType::TaggedSymbol
          )
        CLOSURE =
          T.let(
            :closure,
            Nextbillionai::RestrictionsItemListParams::RestrictionType::TaggedSymbol
          )
        TRUCK =
          T.let(
            :truck,
            Nextbillionai::RestrictionsItemListParams::RestrictionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::RestrictionsItemListParams::RestrictionType::TaggedSymbol
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
            T.all(Symbol, Nextbillionai::RestrictionsItemListParams::State)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(
            :enabled,
            Nextbillionai::RestrictionsItemListParams::State::TaggedSymbol
          )
        DISABLED =
          T.let(
            :disabled,
            Nextbillionai::RestrictionsItemListParams::State::TaggedSymbol
          )
        DELETED =
          T.let(
            :deleted,
            Nextbillionai::RestrictionsItemListParams::State::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::RestrictionsItemListParams::State::TaggedSymbol
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
            T.all(Symbol, Nextbillionai::RestrictionsItemListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            Nextbillionai::RestrictionsItemListParams::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            Nextbillionai::RestrictionsItemListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::RestrictionsItemListParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
