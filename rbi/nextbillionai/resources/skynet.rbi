# typed: strong

module Nextbillionai
  module Resources
    class Skynet
      sig { returns(Nextbillionai::Resources::Skynet::Asset) }
      attr_reader :asset

      sig { returns(Nextbillionai::Resources::Skynet::Monitor) }
      attr_reader :monitor

      sig { returns(Nextbillionai::Resources::Skynet::Trip) }
      attr_reader :trip

      sig { returns(Nextbillionai::Resources::Skynet::NamespacedApikeys) }
      attr_reader :namespaced_apikeys

      sig { returns(Nextbillionai::Resources::Skynet::Config) }
      attr_reader :config

      sig { returns(Nextbillionai::Resources::Skynet::Search) }
      attr_reader :search

      # POST Action
      sig do
        params(
          action: Nextbillionai::SkynetSubscribeParams::Action::OrSymbol,
          id: String,
          params: Nextbillionai::SkynetSubscribeParams::Params::OrHash,
          request_options: Nextbillionai::RequestOptions::OrHash
        ).returns(Nextbillionai::Models::SkynetSubscribeResponse)
      end
      def subscribe(
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

      # @api private
      sig { params(client: Nextbillionai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
