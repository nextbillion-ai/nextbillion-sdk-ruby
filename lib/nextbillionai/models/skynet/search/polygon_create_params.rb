# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      module Search
        # @see Nextbillionai::Resources::Skynet::Search::Polygon#create
        class PolygonCreateParams < Nextbillionai::Internal::Type::BaseModel
          extend Nextbillionai::Internal::Type::RequestParameters::Converter
          include Nextbillionai::Internal::Type::RequestParameters

          # @!attribute key
          #   A key is a unique identifier that is required to authenticate a request to the
          #   API.
          #
          #   @return [String]
          required :key, String

          # @!attribute polygon
          #   An object to collect geoJSON details of a custom polygon. Please ensure that:
          #
          #   - the `polygon` provided is enclosed. This can be achieved by making the last
          #     location coordinate in the list equal to the first location coordinate of the
          #     list.
          #
          #   - the 'polygon' provided does not contain multiple rings.
          #
          #   The contents of this object follow the
          #   [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
          #
          #   Please note that the maximum area of the search polygon allowed is 3000
          #   km<sup>2</sup>.
          #
          #   @return [Nextbillionai::Models::Skynet::Search::PolygonCreateParams::Polygon]
          required :polygon, -> { Nextbillionai::Skynet::Search::PolygonCreateParams::Polygon }

          # @!attribute filter
          #   **`tags` parameter will be deprecated soon! Please use the
          #   `include_any_of_attributes` or `include_all_of_attributes` parameters to match
          #   assets based on their labels or markers.**
          #
          #   Use this parameter to filter the assets found inside the specified area by their
          #   `tag`. Multiple `tag` can be separated using comma (`,`).
          #
          #   Please note the tags are case sensitive.
          #
          #   @return [String, nil]
          optional :filter, String

          # @!attribute match_filter
          #   An object to define the `attributes` which will be used to filter the assets
          #   found within the `polygon`.
          #
          #   @return [Nextbillionai::Models::Skynet::Search::PolygonCreateParams::MatchFilter, nil]
          optional :match_filter, -> { Nextbillionai::Skynet::Search::PolygonCreateParams::MatchFilter }

          # @!attribute max_search_limit
          #   if ture, can get 16x bigger limitation in search.
          #
          #   @return [Boolean, nil]
          optional :max_search_limit, Nextbillionai::Internal::Type::Boolean

          # @!attribute pn
          #   Denotes page number. Use this along with the `ps` parameter to implement
          #   pagination for your searched results. This parameter does not have a maximum
          #   limit but would return an empty response in case a higher value is provided when
          #   the result-set itself is smaller.
          #
          #   @return [Integer, nil]
          optional :pn, Integer

          # @!attribute ps
          #   Denotes number of search results per page. Use this along with the `pn`
          #   parameter to implement pagination for your searched results. Please note that
          #   `ps` has a default value of 20 and accepts integers only in the range of [1,
          #   100].
          #
          #   @return [Integer, nil]
          optional :ps, Integer

          # @!attribute sort
          #
          #   @return [Nextbillionai::Models::Skynet::Search::PolygonCreateParams::Sort, nil]
          optional :sort, -> { Nextbillionai::Skynet::Search::PolygonCreateParams::Sort }

          # @!method initialize(key:, polygon:, filter: nil, match_filter: nil, max_search_limit: nil, pn: nil, ps: nil, sort: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Skynet::Search::PolygonCreateParams} for more details.
          #
          #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
          #
          #   @param polygon [Nextbillionai::Models::Skynet::Search::PolygonCreateParams::Polygon] An object to collect geoJSON details of a custom polygon. Please ensure that:
          #
          #   @param filter [String] \*\*`tags` parameter will be deprecated soon! Please use the
          #   `include_any_of_attri
          #
          #   @param match_filter [Nextbillionai::Models::Skynet::Search::PolygonCreateParams::MatchFilter] An object to define the `attributes` which will be used to filter the assets fou
          #
          #   @param max_search_limit [Boolean] if ture, can get 16x bigger limitation in search.
          #
          #   @param pn [Integer] Denotes page number. Use this along with the `ps` parameter to implement paginat
          #
          #   @param ps [Integer] Denotes number of search results per page. Use this along with the `pn` paramete
          #
          #   @param sort [Nextbillionai::Models::Skynet::Search::PolygonCreateParams::Sort]
          #
          #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

          class Polygon < Nextbillionai::Internal::Type::BaseModel
            # @!attribute coordinates
            #   An array of coordinates in the [longitude, latitude] format, representing the
            #   polygon boundary.
            #
            #   @return [Array<Float>]
            required :coordinates, Nextbillionai::Internal::Type::ArrayOf[Float]

            # @!attribute type
            #   Type of the geoJSON geometry. Should always be `polygon`.
            #
            #   @return [String]
            required :type, String

            # @!method initialize(coordinates:, type:)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Skynet::Search::PolygonCreateParams::Polygon} for more
            #   details.
            #
            #   An object to collect geoJSON details of a custom polygon. Please ensure that:
            #
            #   - the `polygon` provided is enclosed. This can be achieved by making the last
            #     location coordinate in the list equal to the first location coordinate of the
            #     list.
            #
            #   - the 'polygon' provided does not contain multiple rings.
            #
            #   The contents of this object follow the
            #   [geoJSON standard](https://datatracker.ietf.org/doc/html/rfc7946).
            #
            #   Please note that the maximum area of the search polygon allowed is 3000
            #   km<sup>2</sup>.
            #
            #   @param coordinates [Array<Float>] An array of coordinates in the [longitude, latitude] format, representing the po
            #
            #   @param type [String] Type of the geoJSON geometry. Should always be `polygon`.
          end

          class MatchFilter < Nextbillionai::Internal::Type::BaseModel
            # @!attribute include_all_of_attributes
            #   Use this parameter to filter the assets found inside the specified area by their
            #   `attributes`. Only the assets having all the `attributes` that are added to this
            #   parameter, will be returned in the search results. Multiple `attributes` can be
            #   separated using commas (`,`).
            #
            #   Please note the attributes are case sensitive. Also, this parameter can not be
            #   used in conjunction with `include_any_of_attributes` parameter.
            #
            #   @return [String, nil]
            optional :include_all_of_attributes, String

            # @!attribute include_any_of_attributes
            #   Use this parameter to filter the assets found inside the specified area by their
            #   `attributes`. Assets having at least one of the `attributes` added to this
            #   parameter, will be returned in the search results. Multiple `attributes` can be
            #   separated using commas (`,`).
            #
            #   Please note the attributes are case sensitive. Also, this parameter can not be
            #   used in conjunction with `include_all_of_attributes` parameter.
            #
            #   @return [String, nil]
            optional :include_any_of_attributes, String

            # @!method initialize(include_all_of_attributes: nil, include_any_of_attributes: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Skynet::Search::PolygonCreateParams::MatchFilter} for
            #   more details.
            #
            #   An object to define the `attributes` which will be used to filter the assets
            #   found within the `polygon`.
            #
            #   @param include_all_of_attributes [String] Use this parameter to filter the assets found inside the specified area by their
            #
            #   @param include_any_of_attributes [String] Use this parameter to filter the assets found inside the specified area by their
          end

          class Sort < Nextbillionai::Internal::Type::BaseModel
            # @!attribute sort_by
            #   Specify the metric to sort the assets returned in the search result. The valid
            #   values are:
            #
            #   - **distance** : Sorts the assets by driving distance to the given
            #     `sort_destination` .
            #   - **duration** : Sorts the assets by travel time to the given `sort_destination`
            #     .
            #   - **straight_distance** : Sort the assets by straight-line distance to the given
            #     `sort-destination` .
            #
            #   @return [Symbol, Nextbillionai::Models::Skynet::Search::PolygonCreateParams::Sort::SortBy, nil]
            optional :sort_by, enum: -> { Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortBy }

            # @!attribute sort_destination
            #   Specifies the location coordinates of the point which acts as destination for
            #   sorting the assets in the search results. The service will sort each asset based
            #   on the driving distance or travel time to this destination, from its current
            #   location. Use the `sort_by` parameter to configure the metric that should be
            #   used for sorting the assets. Please note that `sort_destination` is required
            #   when `sort_by` is provided.
            #
            #   @return [Nextbillionai::Models::Skynet::Search::PolygonCreateParams::Sort::SortDestination, nil]
            optional :sort_destination,
                     -> { Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortDestination }

            # @!attribute sort_driving_mode
            #   Specifies the driving mode to be used for determining travel duration or driving
            #   distance for sorting the assets in search result.
            #
            #   @return [Symbol, Nextbillionai::Models::Skynet::Search::PolygonCreateParams::Sort::SortDrivingMode, nil]
            optional :sort_driving_mode,
                     enum: -> { Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortDrivingMode }

            # @!method initialize(sort_by: nil, sort_destination: nil, sort_driving_mode: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Skynet::Search::PolygonCreateParams::Sort} for more
            #   details.
            #
            #   @param sort_by [Symbol, Nextbillionai::Models::Skynet::Search::PolygonCreateParams::Sort::SortBy] Specify the metric to sort the assets returned in the search result. The valid v
            #
            #   @param sort_destination [Nextbillionai::Models::Skynet::Search::PolygonCreateParams::Sort::SortDestination] Specifies the location coordinates of the point which acts as destination for so
            #
            #   @param sort_driving_mode [Symbol, Nextbillionai::Models::Skynet::Search::PolygonCreateParams::Sort::SortDrivingMode] Specifies the driving mode to be used for determining travel duration or driving

            # Specify the metric to sort the assets returned in the search result. The valid
            # values are:
            #
            # - **distance** : Sorts the assets by driving distance to the given
            #   `sort_destination` .
            # - **duration** : Sorts the assets by travel time to the given `sort_destination`
            #   .
            # - **straight_distance** : Sort the assets by straight-line distance to the given
            #   `sort-destination` .
            #
            # @see Nextbillionai::Models::Skynet::Search::PolygonCreateParams::Sort#sort_by
            module SortBy
              extend Nextbillionai::Internal::Type::Enum

              DISTANCE = :"`distance`"
              DURATION = :"`duration`"
              STRAIGHT_DISTANCE = :"`straight_distance`"

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Nextbillionai::Models::Skynet::Search::PolygonCreateParams::Sort#sort_destination
            class SortDestination < Nextbillionai::Internal::Type::BaseModel
              # @!attribute lat
              #   Latitude of the destination location
              #
              #   @return [Float]
              required :lat, Float

              # @!attribute lon
              #   Longitude of the destination location
              #
              #   @return [Float]
              required :lon, Float

              # @!method initialize(lat:, lon:)
              #   Specifies the location coordinates of the point which acts as destination for
              #   sorting the assets in the search results. The service will sort each asset based
              #   on the driving distance or travel time to this destination, from its current
              #   location. Use the `sort_by` parameter to configure the metric that should be
              #   used for sorting the assets. Please note that `sort_destination` is required
              #   when `sort_by` is provided.
              #
              #   @param lat [Float] Latitude of the destination location
              #
              #   @param lon [Float] Longitude of the destination location
            end

            # Specifies the driving mode to be used for determining travel duration or driving
            # distance for sorting the assets in search result.
            #
            # @see Nextbillionai::Models::Skynet::Search::PolygonCreateParams::Sort#sort_driving_mode
            module SortDrivingMode
              extend Nextbillionai::Internal::Type::Enum

              CAR = :"`car`"
              TRUCK = :"`truck`"

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
