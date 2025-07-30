# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Skynet
      # @return [Nextbillionai::Resources::Skynet::Asset]
      attr_reader :asset

      # @return [Nextbillionai::Resources::Skynet::Monitor]
      attr_reader :monitor

      # @return [Nextbillionai::Resources::Skynet::Trip]
      attr_reader :trip

      # @return [Nextbillionai::Resources::Skynet::NamespacedApikeys]
      attr_reader :namespaced_apikeys

      # @return [Nextbillionai::Resources::Skynet::Config]
      attr_reader :config

      # @return [Nextbillionai::Resources::Skynet::Search]
      attr_reader :search

      # Some parameter documentations has been truncated, see
      # {Nextbillionai::Models::SkynetSubscribeParams} for more details.
      #
      # POST Action
      #
      # @overload subscribe(action:, id: nil, params: nil, request_options: {})
      #
      # @param action [Symbol, Nextbillionai::Models::SkynetSubscribeParams::Action] Specify the behavior that needs to be achieved for the subscription. Following v
      #
      # @param id [String] Specify a custom ID for the subscription. It can be used to reference a given su
      #
      # @param params [Nextbillionai::Models::SkynetSubscribeParams::Params]
      #
      # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Nextbillionai::Models::SkynetSubscribeResponse]
      #
      # @see Nextbillionai::Models::SkynetSubscribeParams
      def subscribe(params)
        parsed, options = Nextbillionai::SkynetSubscribeParams.dump_request(params)
        @client.request(
          method: :post,
          path: "skynet/subscribe",
          body: parsed,
          model: Nextbillionai::Models::SkynetSubscribeResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Nextbillionai::Client]
      def initialize(client:)
        @client = client
        @asset = Nextbillionai::Resources::Skynet::Asset.new(client: client)
        @monitor = Nextbillionai::Resources::Skynet::Monitor.new(client: client)
        @trip = Nextbillionai::Resources::Skynet::Trip.new(client: client)
        @namespaced_apikeys = Nextbillionai::Resources::Skynet::NamespacedApikeys.new(client: client)
        @config = Nextbillionai::Resources::Skynet::Config.new(client: client)
        @search = Nextbillionai::Resources::Skynet::Search.new(client: client)
      end
    end
  end
end
