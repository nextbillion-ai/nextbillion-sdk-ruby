# typed: strong

module NextbillionSDK
  module Resources
    class Skynet
      class Search
        sig { returns(NextbillionSDK::Resources::Skynet::Search::Polygon) }
        attr_reader :polygon

        # Around Search
        sig do
          params(
            center: String,
            key: String,
            radius: Float,
            filter: String,
            include_all_of_attributes: String,
            include_any_of_attributes: String,
            max_search_limit: T::Boolean,
            pn: Integer,
            ps: Integer,
            sort_by:
              NextbillionSDK::Skynet::SearchAroundParams::SortBy::OrSymbol,
            sort_destination: String,
            sort_driving_mode:
              NextbillionSDK::Skynet::SearchAroundParams::SortDrivingMode::OrSymbol,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(NextbillionSDK::Skynet::SearchResponse)
        end
        def around(
          # Location coordinates of the point which would act as the center of the circular
          # area to be searched.
          center:,
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # Radius, in meters, of the circular area to be searched.
          radius:,
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

        # Bound Search
        sig do
          params(
            bound: String,
            key: String,
            filter: String,
            include_all_of_attributes: String,
            include_any_of_attributes: String,
            max_search_limit: T::Boolean,
            pn: Integer,
            ps: Integer,
            sort_by:
              NextbillionSDK::Skynet::SearchBoundParams::SortBy::OrSymbol,
            sort_destination: String,
            sort_driving_mode:
              NextbillionSDK::Skynet::SearchBoundParams::SortDrivingMode::OrSymbol,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(NextbillionSDK::Skynet::SearchResponse)
        end
        def bound(
          # Specify two, pipe (|) delimited location coordinates which would act as corners
          # of the bounding box area to be searched. The first one should be the southwest
          # coordinate of the `bounds` and the second one should be the northeast coordinate
          # of the `bounds`.
          bound:,
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
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
        sig { params(client: NextbillionSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
