# typed: strong

module NextbillionSDK
  module Resources
    class Skynet
      class Search
        class Polygon
          # Polygon Search
          sig do
            params(
              key: String,
              polygon:
                NextbillionSDK::Skynet::Search::PolygonCreateParams::Polygon::OrHash,
              filter: String,
              match_filter:
                NextbillionSDK::Skynet::Search::PolygonCreateParams::MatchFilter::OrHash,
              max_search_limit: T::Boolean,
              pn: Integer,
              ps: Integer,
              sort:
                NextbillionSDK::Skynet::Search::PolygonCreateParams::Sort::OrHash,
              request_options: NextbillionSDK::RequestOptions::OrHash
            ).returns(NextbillionSDK::Skynet::SearchResponse)
          end
          def create(
            # Query param: A key is a unique identifier that is required to authenticate a
            # request to the API.
            key:,
            # Body param: An object to collect geoJSON details of a custom polygon. Please
            # ensure that:
            #
            # - the `polygon` provided is enclosed. This can be achieved by making the last
            #   location coordinate in the list equal to the first location coordinate of the
            #   list.
            #
            # - the 'polygon' provided does not contain multiple rings.
            #
            # The contents of this object follow the
            # [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
            #
            # Please note that the maximum area of the search polygon allowed is 3000
            # km<sup>2</sup>.
            polygon:,
            # Body param: **`tags` parameter will be deprecated soon! Please use the
            # `include_any_of_attributes` or `include_all_of_attributes` parameters to match
            # assets based on their labels or markers.**
            #
            # Use this parameter to filter the assets found inside the specified area by their
            # `tag`. Multiple `tag` can be separated using comma (`,`).
            #
            # Please note the tags are case sensitive.
            filter: nil,
            # Body param: An object to define the `attributes` which will be used to filter
            # the assets found within the `polygon`.
            match_filter: nil,
            # Body param: if ture, can get 16x bigger limitation in search.
            max_search_limit: nil,
            # Body param: Denotes page number. Use this along with the `ps` parameter to
            # implement pagination for your searched results. This parameter does not have a
            # maximum limit but would return an empty response in case a higher value is
            # provided when the result-set itself is smaller.
            pn: nil,
            # Body param: Denotes number of search results per page. Use this along with the
            # `pn` parameter to implement pagination for your searched results. Please note
            # that `ps` has a default value of 20 and accepts integers only in the range of
            # [1, 100].
            ps: nil,
            # Body param:
            sort: nil,
            request_options: {}
          )
          end

          # Polygon Search
          sig do
            params(
              key: String,
              polygon: String,
              filter: String,
              include_all_of_attributes: String,
              include_any_of_attributes: String,
              max_search_limit: T::Boolean,
              pn: Integer,
              ps: Integer,
              sort_by:
                NextbillionSDK::Skynet::Search::PolygonGetParams::SortBy::OrSymbol,
              sort_destination: String,
              sort_driving_mode:
                NextbillionSDK::Skynet::Search::PolygonGetParams::SortDrivingMode::OrSymbol,
              request_options: NextbillionSDK::RequestOptions::OrHash
            ).returns(NextbillionSDK::Skynet::SearchResponse)
          end
          def get(
            # A key is a unique identifier that is required to authenticate a request to the
            # API.
            key:,
            # Define a custom polygon enclosing the area to be searched. It should be a pipe
            # (`|`) delimited list of location coordinates.
            #
            # Please ensure that the `polygon` provided is enclosed. This can be achieved by
            # making the last location coordinate in the list equal to the first location
            # coordinate of the list.
            #
            # Please note that the maximum area of the search polygon allowed is 3000
            # km<sup>2</sup>.
            polygon:,
            # **`tags` parameter will be deprecated soon! Please use the
            # `include_any_of_attributes` or `include_all_of_attributes` parameters to match
            # assets based on their labels or markers.**
            #
            # Use this parameter to filter the assets found inside the specified area by their
            # `tags`. Multiple `tags` can be separated using commas (`,`).
            #
            # Please note the tags are case sensitive.
            filter: nil,
            # Use this parameter to filter the assets found inside the specified area by their
            # `attributes`. Only the assets having all the `attributes` that are added to this
            # parameter, will be returned in the search results. Multiple `attributes` can be
            # separated using pipes (`|`).
            #
            # Please note the attributes are case sensitive. Also, this parameter can not be
            # used in conjunction with `include_any_of_attributes` parameter.
            include_all_of_attributes: nil,
            # Use this parameter to filter the assets found inside the specified area by their
            # `attributes`. Assets having at least one of the `attributes` added to this
            # parameter, will be returned in the search results. Multiple `attributes` can be
            # separated using pipes (`|`).
            #
            # Please note the attributes are case sensitive. Also, this parameter can not be
            # used in conjunction with `include_all_of_attributes` parameter.
            include_any_of_attributes: nil,
            # When true, the maximum limit is 20Km for around search API and 48000 Km2 for
            # other search methods.
            max_search_limit: nil,
            # Denotes page number. Use this along with the `ps` parameter to implement
            # pagination for your searched results. This parameter does not have a maximum
            # limit but would return an empty response in case a higher value is provided when
            # the result-set itself is smaller.
            pn: nil,
            # Denotes number of search results per page. Use this along with the `pn`
            # parameter to implement pagination for your searched results.
            ps: nil,
            # Specify the metric to sort the assets returned in the search result. The valid
            # values are:
            #
            # - **distance** : Sorts the assets by driving distance to the given
            #   `sort_destination` .
            # - **duration** : Sorts the assets by travel time to the given `sort_destination`
            #   .
            # - **straight_distance** : Sort the assets by straight-line distance to the given
            #   `sort-destination` .
            sort_by: nil,
            # Specifies the location coordinates of the point which acts as destination for
            # sorting the assets in the search results. The service will sort each asset based
            # on the driving distance or travel time to this destination, from its current
            # location. Use the `sort_by` parameter to configure the metric that should be
            # used for sorting the assets. Please note that `sort_destination` is required
            # when `sort_by` is provided.
            sort_destination: nil,
            # Specifies the driving mode to be used for determining travel duration or driving
            # distance for sorting the assets in search result.
            sort_driving_mode: nil,
            request_options: {}
          )
          end

          # @api private
          sig do
            params(client: NextbillionSDK::Client).returns(T.attached_class)
          end
          def self.new(client:)
          end
        end
      end
    end
  end
end
