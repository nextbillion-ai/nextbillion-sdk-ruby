# frozen_string_literal: true

module Nextbillionai
  module Resources
    class Optimization
      class DriverAssignment
        # Some parameter documentations has been truncated, see
        # {Nextbillionai::Models::Optimization::DriverAssignmentAssignParams} for more
        # details.
        #
        # Assigns available drivers (vehicles) to open orders based on specified criteria
        # and constraints.
        #
        # @overload assign(key:, filter:, orders:, vehicles:, options: nil, request_options: {})
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param filter [Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Filter] Body param: Specify the filtering criterion for the vehicles with respect to eac
        #
        # @param orders [Array<Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Order>] Body param: Collects the details of open orders to be fulfilled. Each object rep
        #
        # @param vehicles [Array<Nextbillionai::Models::Optimization::Vehicle>] Body param: Collects the details of vehicles available to fulfill the orders. Ea
        #
        # @param options [Nextbillionai::Models::Optimization::DriverAssignmentAssignParams::Options] Body param: Configure the assignment constraints and response settings.
        #
        # @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Nextbillionai::Models::Optimization::DriverAssignmentAssignResponse]
        #
        # @see Nextbillionai::Models::Optimization::DriverAssignmentAssignParams
        def assign(params)
          parsed, options = Nextbillionai::Optimization::DriverAssignmentAssignParams.dump_request(params)
          query_params = [:key]
          @client.request(
            method: :post,
            path: "optimization/driver-assignment/v1",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: Nextbillionai::Models::Optimization::DriverAssignmentAssignResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Nextbillionai::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
