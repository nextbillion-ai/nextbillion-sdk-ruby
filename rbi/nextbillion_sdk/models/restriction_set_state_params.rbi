# typed: strong

module NextbillionSDK
  module Models
    class RestrictionSetStateParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::RestrictionSetStateParams,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      # Use this field to specify the new state of the restriction. Please note that
      # this method cannot update the state of restrictions that are currently in
      # 'deleted' state.
      sig do
        returns(NextbillionSDK::RestrictionSetStateParams::State::OrSymbol)
      end
      attr_accessor :state

      sig do
        params(
          key: String,
          state: NextbillionSDK::RestrictionSetStateParams::State::OrSymbol,
          request_options: NextbillionSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # Use this field to specify the new state of the restriction. Please note that
        # this method cannot update the state of restrictions that are currently in
        # 'deleted' state.
        state:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            key: String,
            state: NextbillionSDK::RestrictionSetStateParams::State::OrSymbol,
            request_options: NextbillionSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Use this field to specify the new state of the restriction. Please note that
      # this method cannot update the state of restrictions that are currently in
      # 'deleted' state.
      module State
        extend NextbillionSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, NextbillionSDK::RestrictionSetStateParams::State)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(
            :enabled,
            NextbillionSDK::RestrictionSetStateParams::State::TaggedSymbol
          )
        DISABLED =
          T.let(
            :disabled,
            NextbillionSDK::RestrictionSetStateParams::State::TaggedSymbol
          )
        DELETED =
          T.let(
            :deleted,
            NextbillionSDK::RestrictionSetStateParams::State::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              NextbillionSDK::RestrictionSetStateParams::State::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
