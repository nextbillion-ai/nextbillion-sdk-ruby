# typed: strong

module Nextbillionai
  module Models
    class RestrictionSetStateParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::RestrictionSetStateParams,
            Nextbillionai::Internal::AnyHash
          )
        end

      # A key is a unique identifier that is required to authenticate a request to the
      # API.
      sig { returns(String) }
      attr_accessor :key

      # Use this field to specify the new `state` of the restriction. Please note that
      # this method cannot update the state of restrictions that are currently in
      # 'deleted' state.
      sig { returns(Nextbillionai::RestrictionSetStateParams::State::OrSymbol) }
      attr_accessor :state

      sig do
        params(
          key: String,
          state: Nextbillionai::RestrictionSetStateParams::State::OrSymbol,
          request_options: Nextbillionai::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        key:,
        # Use this field to specify the new `state` of the restriction. Please note that
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
            state: Nextbillionai::RestrictionSetStateParams::State::OrSymbol,
            request_options: Nextbillionai::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Use this field to specify the new `state` of the restriction. Please note that
      # this method cannot update the state of restrictions that are currently in
      # 'deleted' state.
      module State
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::RestrictionSetStateParams::State)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(
            :"`enabled`",
            Nextbillionai::RestrictionSetStateParams::State::TaggedSymbol
          )
        DISABLED =
          T.let(
            :"`disabled`",
            Nextbillionai::RestrictionSetStateParams::State::TaggedSymbol
          )
        DELETED =
          T.let(
            :"`deleted`",
            Nextbillionai::RestrictionSetStateParams::State::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Nextbillionai::RestrictionSetStateParams::State::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
