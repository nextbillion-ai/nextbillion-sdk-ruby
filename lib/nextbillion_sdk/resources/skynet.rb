# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Skynet
      # @return [NextbillionSDK::Resources::Skynet::Asset]
      attr_reader :asset

      # @return [NextbillionSDK::Resources::Skynet::Monitor]
      attr_reader :monitor

      # @return [NextbillionSDK::Resources::Skynet::Trip]
      attr_reader :trip

      # @return [NextbillionSDK::Resources::Skynet::NamespacedApikeys]
      attr_reader :namespaced_apikeys

      # @return [NextbillionSDK::Resources::Skynet::Config]
      attr_reader :config

      # @return [NextbillionSDK::Resources::Skynet::Search]
      attr_reader :search

      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::SkynetSubscribeParams} for more details.
      #
      # POST Action
      #
      # @overload subscribe(action:, id: nil, params: nil, request_options: {})
      #
      # @param action [Symbol, NextbillionSDK::Models::SkynetSubscribeParams::Action] Specify the behavior that needs to be achieved for the subscription. Following v
      #
      # @param id [String] Specify a custom ID for the subscription. It can be used to reference a given su
      #
      # @param params [NextbillionSDK::Models::SkynetSubscribeParams::Params]
      #
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [NextbillionSDK::Models::SkynetSubscribeResponse]
      #
      # @see NextbillionSDK::Models::SkynetSubscribeParams
      def subscribe(params)
        parsed, options = NextbillionSDK::SkynetSubscribeParams.dump_request(params)
        @client.request(
          method: :post,
          path: "skynet/subscribe",
          body: parsed,
          model: NextbillionSDK::Models::SkynetSubscribeResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [NextbillionSDK::Client]
      def initialize(client:)
        @client = client
        @asset = NextbillionSDK::Resources::Skynet::Asset.new(client: client)
        @monitor = NextbillionSDK::Resources::Skynet::Monitor.new(client: client)
        @trip = NextbillionSDK::Resources::Skynet::Trip.new(client: client)
        @namespaced_apikeys = NextbillionSDK::Resources::Skynet::NamespacedApikeys.new(client: client)
        @config = NextbillionSDK::Resources::Skynet::Config.new(client: client)
        @search = NextbillionSDK::Resources::Skynet::Search.new(client: client)
      end
    end
  end
end
