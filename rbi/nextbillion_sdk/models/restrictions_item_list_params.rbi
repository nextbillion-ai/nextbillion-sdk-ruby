# typed: strong

module NextbillionSDK
  module Models
    class RestrictionsItemListParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::RestrictionsItemListParams,
            NextbillionSDK::Internal::AnyHash
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
          T.nilable(NextbillionSDK::RestrictionsItemListParams::Mode::OrSymbol)
        )
      end
      attr_reader :mode

      sig do
        params(
          mode: NextbillionSDK::RestrictionsItemListParams::Mode::OrSymbol
        ).void
      end
      attr_writer :mode

      sig do
        returns(
          T.nilable(
            NextbillionSDK::RestrictionsItemListParams::RestrictionType::OrSymbol
          )
        )
      end
      attr_reader :restriction_type

      sig do
        params(
          restriction_type:
            NextbillionSDK::RestrictionsItemListParams::RestrictionType::OrSymbol
        ).void
      end
      attr_writer :restriction_type

      sig { returns(T.nilable(String)) }
      attr_reader :source

      sig { params(source: String).void }
      attr_writer :source

      sig do
        returns(
          T.nilable(NextbillionSDK::RestrictionsItemListParams::State::OrSymbol)
        )
      end
      attr_reader :state

      sig do
        params(
          state: NextbillionSDK::RestrictionsItemListParams::State::OrSymbol
        ).void
      end
      attr_writer :state

      sig do
        returns(
          T.nilable(
            NextbillionSDK::RestrictionsItemListParams::Status::OrSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status: NextbillionSDK::RestrictionsItemListParams::Status::OrSymbol
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
          mode: NextbillionSDK::RestrictionsItemListParams::Mode::OrSymbol,
          restriction_type:
            NextbillionSDK::RestrictionsItemListParams::RestrictionType::OrSymbol,
          source: String,
          state: NextbillionSDK::RestrictionsItemListParams::State::OrSymbol,
          status: NextbillionSDK::RestrictionsItemListParams::Status::OrSymbol,
          request_options: NextbillionSDK::RequestOptions::OrHash
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
            mode: NextbillionSDK::RestrictionsItemListParams::Mode::OrSymbol,
            restriction_type:
              NextbillionSDK::RestrictionsItemListParams::RestrictionType::OrSymbol,
            source: String,
            state: NextbillionSDK::RestrictionsItemListParams::State::OrSymbol,
            status:
              NextbillionSDK::RestrictionsItemListParams::Status::OrSymbol,
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
            T.all(Symbol, NextbillionSDK::RestrictionsItemListParams::Mode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MODE_0W =
          T.let(
            :"0w",
            NextbillionSDK::RestrictionsItemListParams::Mode::TaggedSymbol
          )
        MODE_1W =
          T.let(
            :"1w",
            NextbillionSDK::RestrictionsItemListParams::Mode::TaggedSymbol
          )
        MODE_2W =
          T.let(
            :"2w",
            NextbillionSDK::RestrictionsItemListParams::Mode::TaggedSymbol
          )
        MODE_3W =
          T.let(
            :"3w",
            NextbillionSDK::RestrictionsItemListParams::Mode::TaggedSymbol
          )
        MODE_4W =
          T.let(
            :"4w",
            NextbillionSDK::RestrictionsItemListParams::Mode::TaggedSymbol
          )
        MODE_6W =
          T.let(
            :"6w",
            NextbillionSDK::RestrictionsItemListParams::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::RestrictionsItemListParams::Mode::TaggedSymbol
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
              NextbillionSDK::RestrictionsItemListParams::RestrictionType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TURN =
          T.let(
            :turn,
            NextbillionSDK::RestrictionsItemListParams::RestrictionType::TaggedSymbol
          )
        PARKING =
          T.let(
            :parking,
            NextbillionSDK::RestrictionsItemListParams::RestrictionType::TaggedSymbol
          )
        FIXEDSPEED =
          T.let(
            :fixedspeed,
            NextbillionSDK::RestrictionsItemListParams::RestrictionType::TaggedSymbol
          )
        MAXSPEED =
          T.let(
            :maxspeed,
            NextbillionSDK::RestrictionsItemListParams::RestrictionType::TaggedSymbol
          )
        CLOSURE =
          T.let(
            :closure,
            NextbillionSDK::RestrictionsItemListParams::RestrictionType::TaggedSymbol
          )
        TRUCK =
          T.let(
            :truck,
            NextbillionSDK::RestrictionsItemListParams::RestrictionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::RestrictionsItemListParams::RestrictionType::TaggedSymbol
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
            T.all(Symbol, NextbillionSDK::RestrictionsItemListParams::State)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(
            :enabled,
            NextbillionSDK::RestrictionsItemListParams::State::TaggedSymbol
          )
        DISABLED =
          T.let(
            :disabled,
            NextbillionSDK::RestrictionsItemListParams::State::TaggedSymbol
          )
        DELETED =
          T.let(
            :deleted,
            NextbillionSDK::RestrictionsItemListParams::State::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::RestrictionsItemListParams::State::TaggedSymbol
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
            T.all(Symbol, NextbillionSDK::RestrictionsItemListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ACTIVE =
          T.let(
            :active,
            NextbillionSDK::RestrictionsItemListParams::Status::TaggedSymbol
          )
        INACTIVE =
          T.let(
            :inactive,
            NextbillionSDK::RestrictionsItemListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::RestrictionsItemListParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
