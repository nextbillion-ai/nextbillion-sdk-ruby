# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::Skynet#subscribe
    class SkynetSubscribeParams < NextbillionSDK::Internal::Type::BaseModel
      extend NextbillionSDK::Internal::Type::RequestParameters::Converter
      include NextbillionSDK::Internal::Type::RequestParameters

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
      #   @return [Symbol, NextbillionSDK::Models::SkynetSubscribeParams::Action]
      required :action, enum: -> { NextbillionSDK::SkynetSubscribeParams::Action }

      # @!attribute id
      #   Specify a custom ID for the subscription. It can be used to reference a given
      #   subscription in the downstream applications / systems.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute params
      #
      #   @return [NextbillionSDK::Models::SkynetSubscribeParams::Params, nil]
      optional :params, -> { NextbillionSDK::SkynetSubscribeParams::Params }

      # @!method initialize(action:, id: nil, params: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::SkynetSubscribeParams} for more details.
      #
      #   @param action [Symbol, NextbillionSDK::Models::SkynetSubscribeParams::Action] Specify the behavior that needs to be achieved for the subscription. Following v
      #
      #   @param id [String] Specify a custom ID for the subscription. It can be used to reference a given su
      #
      #   @param params [NextbillionSDK::Models::SkynetSubscribeParams::Params]
      #
      #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]

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
        extend NextbillionSDK::Internal::Type::Enum

        TRIP_SUBSCRIBE = :"`TRIP_SUBSCRIBE`"
        TRIP_UNSUBSCRIBE = :"`TRIP_UNSUBSCRIBE`"
        HEARTBEAT = :"`HEARTBEAT`"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Params < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Specify the ID of an active trip that needs to be subscribed. The ID of a trip
        #   is returned in the response when _Start A Trip_ request is acknowledged.
        #
        #   This attribute is mandatory when `action` is set to either "TRIP_SUBSCRIBE" or
        #   "TRIP_UNSUBSCRIBE"
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::SkynetSubscribeParams::Params} for more details.
        #
        #   @param id [String] Specify the ID of an active trip that needs to be subscribed. The ID of a trip i
      end
    end
  end
end
