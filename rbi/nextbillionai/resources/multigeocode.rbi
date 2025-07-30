# typed: strong

module Nextbillionai
  module Resources
    class Multigeocode
      sig { returns(Nextbillionai::Resources::Multigeocode::Place) }
      attr_reader :place

      # The method enables searching for known places from multiple data sources
      #
      # Use this method to find known places in default or your own custom (proprietary)
      # dataset and get a combined search result. It accepts free-form, partially
      # correct or even incomplete search texts. Results would be ranked based on the
      # search score of a place.
      sig do
        params(
          key: String,
          at: Nextbillionai::MultigeocodeSearchParams::At::OrHash,
          query: String,
          city: String,
          country: String,
          district: String,
          limit: Integer,
          radius: String,
          state: String,
          street: String,
          sub_district: String,
          request_options: Nextbillionai::RequestOptions::OrHash
        ).returns(Nextbillionai::Models::MultigeocodeSearchResponse)
      end
      def search(
        # Query param: A key is a unique identifier that is required to authenticate a
        # request to the API.
        key:,
        # Body param: Specify the center of the search context expressed as coordinates.
        at:,
        # Body param: A free-form, complete or incomplete string to be searched. It allows
        # searching for places using keywords or names.
        query:,
        # Body param: Specifies the primary city of the place.
        city: nil,
        # Body param: Country of the search context provided as comma-separated
        # [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country
        # codes.
        # Note: Country codes should be provided in uppercase.
        country: nil,
        # Body param: Specifies the district of the search place.
        district: nil,
        # Body param: Sets the maximum number of results to be returned.
        limit: nil,
        # Body param: Filters the results to places within the specified radius from the
        # 'at' location.
        #
        # Note: Supports 'meter' (m) and 'kilometer' (km) units. If no radius is given,
        # the search method returns as many results as specified in limit.
        radius: nil,
        # Body param: Specifies the state of the search place.
        state: nil,
        # Body param: Specifies the street name of the search place.
        street: nil,
        # Body param: Specifies the subDistrict of the search place.
        sub_district: nil,
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
