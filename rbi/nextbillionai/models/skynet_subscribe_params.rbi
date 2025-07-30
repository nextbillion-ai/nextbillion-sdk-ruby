# typed: strong

module Nextbillionai
  module Models
    class SkynetSubscribeParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::SkynetSubscribeParams,
            Nextbillionai::Internal::AnyHash
          )
        end

      # Specify the behavior that needs to be achieved for the subscription. Following
      # values are accepted:
      #
      # - TRIP_SUBSCRIBE: Enable a trip subscription.
      # - TRIP_UNSUBSCRIBE: Unsubscribe from a trip
      # - HEARTBEAT: Enable heartbeat mechanism for a web-socket connection. The action
      #   message need to be sent at a frequency higher than every 5 mins to keep the
      #   connection alive. Alternatively, users can chose to respond to the ping frame
      #   sent by web socket server to keep the connection alive. Refer to
      #   [connection details](https://188--nbai-docs-stg.netlify.app/docs/tracking/api/live-tracking-api#connect-to-web-socket-server)
      #   for more details.
      sig { returns(Nextbillionai::SkynetSubscribeParams::Action::OrSymbol) }
      attr_accessor :action

      # Specify a custom ID for the subscription. It can be used to reference a given
      # subscription in the downstream applications / systems.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(Nextbillionai::SkynetSubscribeParams::Params)) }
      attr_reader :params

      sig do
        params(
          params: Nextbillionai::SkynetSubscribeParams::Params::OrHash
        ).void
      end
      attr_writer :params

      sig do
        params(
          action: Nextbillionai::SkynetSubscribeParams::Action::OrSymbol,
          id: String,
          params: Nextbillionai::SkynetSubscribeParams::Params::OrHash,
          request_options: Nextbillionai::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Specify the behavior that needs to be achieved for the subscription. Following
        # values are accepted:
        #
        # - TRIP_SUBSCRIBE: Enable a trip subscription.
        # - TRIP_UNSUBSCRIBE: Unsubscribe from a trip
        # - HEARTBEAT: Enable heartbeat mechanism for a web-socket connection. The action
        #   message need to be sent at a frequency higher than every 5 mins to keep the
        #   connection alive. Alternatively, users can chose to respond to the ping frame
        #   sent by web socket server to keep the connection alive. Refer to
        #   [connection details](https://188--nbai-docs-stg.netlify.app/docs/tracking/api/live-tracking-api#connect-to-web-socket-server)
        #   for more details.
        action:,
        # Specify a custom ID for the subscription. It can be used to reference a given
        # subscription in the downstream applications / systems.
        id: nil,
        params: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            action: Nextbillionai::SkynetSubscribeParams::Action::OrSymbol,
            id: String,
            params: Nextbillionai::SkynetSubscribeParams::Params,
            request_options: Nextbillionai::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Specify the behavior that needs to be achieved for the subscription. Following
      # values are accepted:
      #
      # - TRIP_SUBSCRIBE: Enable a trip subscription.
      # - TRIP_UNSUBSCRIBE: Unsubscribe from a trip
      # - HEARTBEAT: Enable heartbeat mechanism for a web-socket connection. The action
      #   message need to be sent at a frequency higher than every 5 mins to keep the
      #   connection alive. Alternatively, users can chose to respond to the ping frame
      #   sent by web socket server to keep the connection alive. Refer to
      #   [connection details](https://188--nbai-docs-stg.netlify.app/docs/tracking/api/live-tracking-api#connect-to-web-socket-server)
      #   for more details.
      module Action
        extend Nextbillionai::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Nextbillionai::SkynetSubscribeParams::Action)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRIP_SUBSCRIBE =
          T.let(
            :"`TRIP_SUBSCRIBE`",
            Nextbillionai::SkynetSubscribeParams::Action::TaggedSymbol
          )
        TRIP_UNSUBSCRIBE =
          T.let(
            :"`TRIP_UNSUBSCRIBE`",
            Nextbillionai::SkynetSubscribeParams::Action::TaggedSymbol
          )
        HEARTBEAT =
          T.let(
            :"`HEARTBEAT`",
            Nextbillionai::SkynetSubscribeParams::Action::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Nextbillionai::SkynetSubscribeParams::Action::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Params < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::SkynetSubscribeParams::Params,
              Nextbillionai::Internal::AnyHash
            )
          end

        # Specify the ID of an active trip that needs to be subscribed. The ID of a trip
        # is returned in the response when _Start A Trip_ request is acknowledged.
        #
        # This attribute is mandatory when `action` is set to either "TRIP_SUBSCRIBE" or
        # "TRIP_UNSUBSCRIBE"
        sig { returns(String) }
        attr_accessor :id

        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # Specify the ID of an active trip that needs to be subscribed. The ID of a trip
          # is returned in the response when _Start A Trip_ request is acknowledged.
          #
          # This attribute is mandatory when `action` is set to either "TRIP_SUBSCRIBE" or
          # "TRIP_UNSUBSCRIBE"
          id:
        )
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end
    end
  end
end
