# frozen_string_literal: true

module NextbillionSDK
  module Resources
    class Multigeocode
      # @return [NextbillionSDK::Resources::Multigeocode::Place]
      attr_reader :place

      # Some parameter documentations has been truncated, see
      # {NextbillionSDK::Models::MultigeocodeSearchParams} for more details.
      #
      # The method enables searching for known places from multiple data sources
      #
      # Use this method to find known places in default or your own custom (proprietary)
      # dataset and get a combined search result. It accepts free-form, partially
      # correct or even incomplete search texts. Results would be ranked based on the
      # search score of a place.
      #
      # @overload search(key:, at:, query:, city: nil, country: nil, district: nil, limit: nil, radius: nil, state: nil, street: nil, sub_district: nil, request_options: {})
      #
      # @param key [String] Query param: A key is a unique identifier that is required to authenticate a req
      #
      # @param at [NextbillionSDK::Models::MultigeocodeSearchParams::At] Body param: Specify the center of the search context expressed as coordinates.
      #
      # @param query [String] Body param: A free-form, complete or incomplete string to be searched. It allows
      #
      # @param city [String] Body param: Specifies the primary city of the place.
      #
      # @param country [String] Body param: Country of the search context provided as comma-separated [ISO 3166-
      #
      # @param district [String] Body param: Specifies the district of the search place.
      #
      # @param limit [Integer] Body param: Sets the maximum number of results to be returned.
      #
      # @param radius [String] Body param: Filters the results to places within the specified radius from the '
      #
      # @param state [String] Body param: Specifies the state of the search place.
      #
      # @param street [String] Body param: Specifies the street name of the search place.
      #
      # @param sub_district [String] Body param: Specifies the subDistrict of the search place.
      #
      # @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [NextbillionSDK::Models::MultigeocodeSearchResponse]
      #
      # @see NextbillionSDK::Models::MultigeocodeSearchParams
      def search(params)
        parsed, options = NextbillionSDK::MultigeocodeSearchParams.dump_request(params)
        query_params = [:key]
        @client.request(
          method: :post,
          path: "multigeocode/search",
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: NextbillionSDK::Models::MultigeocodeSearchResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [NextbillionSDK::Client]
      def initialize(client:)
        @client = client
        @place = NextbillionSDK::Resources::Multigeocode::Place.new(client: client)
      end
    end
  end
end
