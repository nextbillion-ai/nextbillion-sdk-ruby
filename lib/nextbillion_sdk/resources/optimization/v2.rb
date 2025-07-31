# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Optimization
      class V2
        # Some parameter documentations has been truncated, see
        # {NextbillionSDK::Models::Optimization::V2RetrieveResultParams} for more details.
        #
        # Flexible GET
        #
        # @overload retrieve_result(id:, key:, request_options: {})
        #
        # @param id [String] The unique ID that was returned on successful submission of the Optimization POS
        #
        # @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [NextbillionSDK::Models::Optimization::V2RetrieveResultResponse]
        #
        # @see NextbillionSDK::Models::Optimization::V2RetrieveResultParams
        def retrieve_result(params)
          parsed, options = NextbillionSDK::Optimization::V2RetrieveResultParams.dump_request(params)
          @client.request(
            method: :get,
            path: "optimization/v2/result",
            query: parsed,
            model: NextbillionSDK::Models::Optimization::V2RetrieveResultResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {NextbillionSDK::Models::Optimization::V2SubmitParams} for more details.
        #
        # Flexible POST
        #
        # @overload submit(key:, locations:, vehicles:, cost_matrix: nil, depots: nil, description: nil, distance_matrix: nil, duration_matrix: nil, existing_solution_id: nil, jobs: nil, options: nil, relations: nil, shipments: nil, solution: nil, unassigned: nil, zones: nil, request_options: {})
        #
        # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
        #
        # @param locations [NextbillionSDK::Models::Optimization::V2SubmitParams::Locations] Body param: The `locations` object is used to define all the locations that will
        #
        # @param vehicles [Array<NextbillionSDK::Models::Optimization::Vehicle>] Body param: The `vehicles` attribute describes the characteristics and constrain
        #
        # @param cost_matrix [Array<Array<Integer>>] Body param: An array of arrays to denote the user-defined costs of traveling bet
        #
        # @param depots [Array<NextbillionSDK::Models::Optimization::V2SubmitParams::Depot>] Body param: `depots` object is used to collect the details of a depot. Depots ca
        #
        # @param description [String] Body param: Define the optimization job using any custom message. This descripti
        #
        # @param distance_matrix [Array<Array<Integer>>] Body param: An array of arrays to denote the user-defined distances, in meters,
        #
        # @param duration_matrix [Array<Array<Integer>>] Body param: An array of arrays to denote the user-defined durations, in seconds,
        #
        # @param existing_solution_id [String] Body param: The previous optimization request id used to retrieve solution for r
        #
        # @param jobs [Array<NextbillionSDK::Models::Optimization::Job>] Body param: `jobs` object is used to collect the details of a particular job or
        #
        # @param options [NextbillionSDK::Models::Optimization::V2SubmitParams::Options] Body param: It represents the set of options that can be used to configure optim
        #
        # @param relations [Array<NextbillionSDK::Models::Optimization::V2SubmitParams::Relation>] Body param: `relations` attribute is an array of individual relation objects. `t
        #
        # @param shipments [Array<NextbillionSDK::Models::Optimization::Shipment>] Body param: The `shipments` object is used to collect the details of shipments t
        #
        # @param solution [Array<NextbillionSDK::Models::Optimization::V2SubmitParams::Solution>] Body param: This attribute is related to the re-optimization feature. It allows
        #
        # @param unassigned [NextbillionSDK::Models::Optimization::V2SubmitParams::Unassigned] Body param: `unassigned` attribute is related to the re-optimization feature. Th
        #
        # @param zones [Array<NextbillionSDK::Models::Optimization::V2SubmitParams::Zone>] Body param: An array of objects to specify geometry of all the zones involved. E
        #
        # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [NextbillionSDK::Models::PostResponse]
        #
        # @see NextbillionSDK::Models::Optimization::V2SubmitParams
        def submit(params)
          parsed, options = NextbillionSDK::Optimization::V2SubmitParams.dump_request(params)
          query_params = [:key]
          @client.request(
            method: :post,
            path: "optimization/v2",
            query: parsed.slice(*query_params),
            body: parsed.except(*query_params),
            model: NextbillionSDK::PostResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [NextbillionSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
