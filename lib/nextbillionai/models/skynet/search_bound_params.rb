# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      # @see Nextbillionai::Resources::Skynet::Search#bound
      class SearchBoundParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        # @!attribute bound
        #   Specify two, pipe (|) delimited location coordinates which would act as corners
        #   of the bounding box area to be searched. The first one should be the southwest
        #   coordinate of the bounds and the second one should be the northeast coordinate
        #   of the bounds.
        #
        #   @return [String]
        required :bound, String

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute filter
        #   **tags parameter will be deprecated soon! Please use the
        #   include_any_of_attributes or include_all_of_attributes parameters to match
        #   assets based on their labels or markers.**
        #
        #   Use this parameter to filter the assets found inside the specified area by their
        #   tags. Multiple tags can be separated using commas (,).
        #
        #   Please note the tags are case sensitive.
        #
        #   @return [String, nil]
        optional :filter, String

        # @!attribute include_all_of_attributes
        #   Use this parameter to filter the assets found inside the specified area by their
        #   attributes. Only the assets having all the attributes that are added to this
        #   parameter, will be returned in the search results. Multiple attributes can be
        #   separated using pipes (|).
        #
        #   Please note the attributes are case sensitive. Also, this parameter can not be
        #   used in conjunction with include_any_of_attributes parameter.
        #
        #   @return [String, nil]
        optional :include_all_of_attributes, String

        # @!attribute include_any_of_attributes
        #   Use this parameter to filter the assets found inside the specified area by their
        #   attributes. Assets having at least one of the attributes added to this
        #   parameter, will be returned in the search results. Multiple attributes can be
        #   separated using pipes (|).
        #
        #   Please note the attributes are case sensitive. Also, this parameter can not be
        #   used in conjunction with include_all_of_attributes parameter.
        #
        #   @return [String, nil]
        optional :include_any_of_attributes, String

        # @!attribute max_search_limit
        #   When true, the maximum limit is 20Km for around search API and 48000 Km2 for
        #   other search methods.
        #
        #   @return [Boolean, nil]
        optional :max_search_limit, Nextbillionai::Internal::Type::Boolean

        # @!attribute pn
        #   Denotes page number. Use this along with the ps parameter to implement
        #   pagination for your searched results. This parameter does not have a maximum
        #   limit but would return an empty response in case a higher value is provided when
        #   the result-set itself is smaller.
        #
        #   @return [Integer, nil]
        optional :pn, Integer

        # @!attribute ps
        #   Denotes number of search results per page. Use this along with the pn parameter
        #   to implement pagination for your searched results.
        #
        #   @return [Integer, nil]
        optional :ps, Integer

        # @!attribute sort_by
        #   Specify the metric to sort the assets returned in the search result. The valid
        #   values are:
        #
        #   - **distance** : Sorts the assets by driving distance to the given
        #     sort_destination .
        #   - **duration** : Sorts the assets by travel time to the given sort_destination .
        #   - **straight_distance** : Sort the assets by straight-line distance to the given
        #     sort-destination .
        #
        #   @return [Symbol, Nextbillionai::Models::Skynet::SearchBoundParams::SortBy, nil]
        optional :sort_by, enum: -> { Nextbillionai::Skynet::SearchBoundParams::SortBy }

        # @!attribute sort_destination
        #   Specifies the location coordinates of the point which acts as destination for
        #   sorting the assets in the search results. The service will sort each asset based
        #   on the driving distance or travel time to this destination, from its current
        #   location. Use the sort_by parameter to configure the metric that should be used
        #   for sorting the assets. Please note that sort_destination is required when
        #   sort_by is provided.
        #
        #   @return [String, nil]
        optional :sort_destination, String

        # @!attribute sort_driving_mode
        #   Specifies the driving mode to be used for determining travel duration or driving
        #   distance for sorting the assets in search result.
        #
        #   @return [Symbol, Nextbillionai::Models::Skynet::SearchBoundParams::SortDrivingMode, nil]
        optional :sort_driving_mode, enum: -> { Nextbillionai::Skynet::SearchBoundParams::SortDrivingMode }

        # @!method initialize(bound:, key:, filter: nil, include_all_of_attributes: nil, include_any_of_attributes: nil, max_search_limit: nil, pn: nil, ps: nil, sort_by: nil, sort_destination: nil, sort_driving_mode: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Skynet::SearchBoundParams} for more details.
        #
        #   @param bound [String] Specify two, pipe (|) delimited location coordinates which would act as corners
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param filter [String] \*\*tags parameter will be deprecated soon! Please use the
        #   include_any_of_attribut
        #
        #   @param include_all_of_attributes [String] Use this parameter to filter the assets found inside the specified area by their
        #
        #   @param include_any_of_attributes [String] Use this parameter to filter the assets found inside the specified area by their
        #
        #   @param max_search_limit [Boolean] When true, the maximum limit is 20Km for around search API and 48000 Km2 for oth
        #
        #   @param pn [Integer] Denotes page number. Use this along with the ps parameter to implement paginatio
        #
        #   @param ps [Integer] Denotes number of search results per page. Use this along with the pn parameter
        #
        #   @param sort_by [Symbol, Nextbillionai::Models::Skynet::SearchBoundParams::SortBy] Specify the metric to sort the assets returned in the search result. The valid v
        #
        #   @param sort_destination [String] Specifies the location coordinates of the point which acts as destination for so
        #
        #   @param sort_driving_mode [Symbol, Nextbillionai::Models::Skynet::SearchBoundParams::SortDrivingMode] Specifies the driving mode to be used for determining travel duration or driving
        #
        #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

        # Specify the metric to sort the assets returned in the search result. The valid
        # values are:
        #
        # - **distance** : Sorts the assets by driving distance to the given
        #   sort_destination .
        # - **duration** : Sorts the assets by travel time to the given sort_destination .
        # - **straight_distance** : Sort the assets by straight-line distance to the given
        #   sort-destination .
        module SortBy
          extend Nextbillionai::Internal::Type::Enum

          DISTANCE = :distance
          DURATION = :duration
          STRAIGHT_DISTANCE = :straight_distance

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Specifies the driving mode to be used for determining travel duration or driving
        # distance for sorting the assets in search result.
        module SortDrivingMode
          extend Nextbillionai::Internal::Type::Enum

          CAR = :car
          TRUCK = :truck

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
