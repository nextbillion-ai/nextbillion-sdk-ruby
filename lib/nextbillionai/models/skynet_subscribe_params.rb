# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Skynet#subscribe
    class SkynetSubscribeParams < Nextbillionai::Internal::Type::BaseModel
      extend Nextbillionai::Internal::Type::RequestParameters::Converter
      include Nextbillionai::Internal::Type::RequestParameters

      # @!attribute action
      #   Specify the behavior that needs to be achieved for the subscription. Following
      #   values are accepted:
      #
      #   - TRIP_SUBSCRIBE: Enable a trip subscription.
      #   - TRIP_UNSUBSCRIBE: Unsubscribe from a trip
      #   - HEARTBEAT: Enable heartbeat mechanism for a web-socket connection. The action
      #     message need to be sent at a frequency higher than every 5 mins to keep the
      #     connection alive. Alternatively, users can chose to respond to the ping frame
      #     sent by web socket server to keep the connection alive. Refer to
      #     [connection details](https://188--nbai-docs-stg.netlify.app/docs/tracking/api/live-tracking-api#connect-to-web-socket-server)
      #     for more details.
      #
      #   @return [Symbol, Nextbillionai::Models::SkynetSubscribeParams::Action]
      required :action, enum: -> { Nextbillionai::SkynetSubscribeParams::Action }

      # @!attribute id
      #   Specify a custom ID for the subscription. It can be used to reference a given
      #   subscription in the downstream applications / systems.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute params
      #
      #   @return [Nextbillionai::Models::SkynetSubscribeParams::Params, nil]
      optional :params, -> { Nextbillionai::SkynetSubscribeParams::Params }

      # @!method initialize(action:, id: nil, params: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::SkynetSubscribeParams} for more details.
      #
      #   @param action [Symbol, Nextbillionai::Models::SkynetSubscribeParams::Action] Specify the behavior that needs to be achieved for the subscription. Following v
      #
      #   @param id [String] Specify a custom ID for the subscription. It can be used to reference a given su
      #
      #   @param params [Nextbillionai::Models::SkynetSubscribeParams::Params]
      #
      #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

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

        TRIP_SUBSCRIBE = :TRIP_SUBSCRIBE
        TRIP_UNSUBSCRIBE = :TRIP_UNSUBSCRIBE
        HEARTBEAT = :HEARTBEAT

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Params < Nextbillionai::Internal::Type::BaseModel
        # @!attribute id
        #   Specify the ID of an active trip that needs to be subscribed. The ID of a trip
        #   is returned in the response when _Start A Trip_ request is acknowledged.
        #
        #   This attribute is mandatory when action is set to either "TRIP_SUBSCRIBE" or
        #   "TRIP_UNSUBSCRIBE"
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::SkynetSubscribeParams::Params} for more details.
        #
        #   @param id [String] Specify the ID of an active trip that needs to be subscribed. The ID of a trip i
      end
    end
  end
end
