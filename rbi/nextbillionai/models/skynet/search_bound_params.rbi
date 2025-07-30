# typed: strong

module Nextbillionai
  module Models
    module Skynet
      class SearchBoundParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Skynet::SearchBoundParams,
              Nextbillionai::Internal::AnyHash
            )
          end

        # Specify two, pipe (|) delimited location coordinates which would act as corners
        # of the bounding box area to be searched. The first one should be the southwest
        # coordinate of the `bounds` and the second one should be the northeast coordinate
        # of the `bounds`.
        sig { returns(String) }
        attr_accessor :bound

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # **`tags` parameter will be deprecated soon! Please use the
        # `include_any_of_attributes` or `include_all_of_attributes` parameters to match
        # assets based on their labels or markers.**
        #
        # Use this parameter to filter the assets found inside the specified area by their
        # `tags`. Multiple `tags` can be separated using commas (`,`).
        #
        # Please note the tags are case sensitive.
        sig { returns(T.nilable(String)) }
        attr_reader :filter

        sig { params(filter: String).void }
        attr_writer :filter

        # Use this parameter to filter the assets found inside the specified area by their
        # `attributes`. Only the assets having all the `attributes` that are added to this
        # parameter, will be returned in the search results. Multiple `attributes` can be
        # separated using pipes (`|`).
        #
        # Please note the attributes are case sensitive. Also, this parameter can not be
        # used in conjunction with `include_any_of_attributes` parameter.
        sig { returns(T.nilable(String)) }
        attr_reader :include_all_of_attributes

        sig { params(include_all_of_attributes: String).void }
        attr_writer :include_all_of_attributes

        # Use this parameter to filter the assets found inside the specified area by their
        # `attributes`. Assets having at least one of the `attributes` added to this
        # parameter, will be returned in the search results. Multiple `attributes` can be
        # separated using pipes (`|`).
        #
        # Please note the attributes are case sensitive. Also, this parameter can not be
        # used in conjunction with `include_all_of_attributes` parameter.
        sig { returns(T.nilable(String)) }
        attr_reader :include_any_of_attributes

        sig { params(include_any_of_attributes: String).void }
        attr_writer :include_any_of_attributes

        # When true, the maximum limit is 20Km for around search API and 48000 Km2 for
        # other search methods.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :max_search_limit

        sig { params(max_search_limit: T::Boolean).void }
        attr_writer :max_search_limit

        # Denotes page number. Use this along with the `ps` parameter to implement
        # pagination for your searched results. This parameter does not have a maximum
        # limit but would return an empty response in case a higher value is provided when
        # the result-set itself is smaller.
        sig { returns(T.nilable(Integer)) }
        attr_reader :pn

        sig { params(pn: Integer).void }
        attr_writer :pn

        # Denotes number of search results per page. Use this along with the `pn`
        # parameter to implement pagination for your searched results.
        sig { returns(T.nilable(Integer)) }
        attr_reader :ps

        sig { params(ps: Integer).void }
        attr_writer :ps

        # Specify the metric to sort the assets returned in the search result. The valid
        # values are:
        #
        # - **distance** : Sorts the assets by driving distance to the given
        #   `sort_destination` .
        # - **duration** : Sorts the assets by travel time to the given `sort_destination`
        #   .
        # - **straight_distance** : Sort the assets by straight-line distance to the given
        #   `sort-destination` .
        sig do
          returns(
            T.nilable(
              Nextbillionai::Skynet::SearchBoundParams::SortBy::OrSymbol
            )
          )
        end
        attr_reader :sort_by

        sig do
          params(
            sort_by: Nextbillionai::Skynet::SearchBoundParams::SortBy::OrSymbol
          ).void
        end
        attr_writer :sort_by

        # Specifies the location coordinates of the point which acts as destination for
        # sorting the assets in the search results. The service will sort each asset based
        # on the driving distance or travel time to this destination, from its current
        # location. Use the `sort_by` parameter to configure the metric that should be
        # used for sorting the assets. Please note that `sort_destination` is required
        # when `sort_by` is provided.
        sig { returns(T.nilable(String)) }
        attr_reader :sort_destination

        sig { params(sort_destination: String).void }
        attr_writer :sort_destination

        # Specifies the driving mode to be used for determining travel duration or driving
        # distance for sorting the assets in search result.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Skynet::SearchBoundParams::SortDrivingMode::OrSymbol
            )
          )
        end
        attr_reader :sort_driving_mode

        sig do
          params(
            sort_driving_mode:
              Nextbillionai::Skynet::SearchBoundParams::SortDrivingMode::OrSymbol
          ).void
        end
        attr_writer :sort_driving_mode

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
            sort_by: Nextbillionai::Skynet::SearchBoundParams::SortBy::OrSymbol,
            sort_destination: String,
            sort_driving_mode:
              Nextbillionai::Skynet::SearchBoundParams::SortDrivingMode::OrSymbol,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
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

        sig do
          override.returns(
            {
              bound: String,
              key: String,
              filter: String,
              include_all_of_attributes: String,
              include_any_of_attributes: String,
              max_search_limit: T::Boolean,
              pn: Integer,
              ps: Integer,
              sort_by:
                Nextbillionai::Skynet::SearchBoundParams::SortBy::OrSymbol,
              sort_destination: String,
              sort_driving_mode:
                Nextbillionai::Skynet::SearchBoundParams::SortDrivingMode::OrSymbol,
              request_options: Nextbillionai::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Specify the metric to sort the assets returned in the search result. The valid
        # values are:
        #
        # - **distance** : Sorts the assets by driving distance to the given
        #   `sort_destination` .
        # - **duration** : Sorts the assets by travel time to the given `sort_destination`
        #   .
        # - **straight_distance** : Sort the assets by straight-line distance to the given
        #   `sort-destination` .
        module SortBy
          extend Nextbillionai::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Nextbillionai::Skynet::SearchBoundParams::SortBy)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DISTANCE =
            T.let(
              :"`distance`",
              Nextbillionai::Skynet::SearchBoundParams::SortBy::TaggedSymbol
            )
          DURATION =
            T.let(
              :"`duration`",
              Nextbillionai::Skynet::SearchBoundParams::SortBy::TaggedSymbol
            )
          STRAIGHT_DISTANCE =
            T.let(
              :"`straight_distance`",
              Nextbillionai::Skynet::SearchBoundParams::SortBy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Nextbillionai::Skynet::SearchBoundParams::SortBy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Specifies the driving mode to be used for determining travel duration or driving
        # distance for sorting the assets in search result.
        module SortDrivingMode
          extend Nextbillionai::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Nextbillionai::Skynet::SearchBoundParams::SortDrivingMode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CAR =
            T.let(
              :"`car`",
              Nextbillionai::Skynet::SearchBoundParams::SortDrivingMode::TaggedSymbol
            )
          TRUCK =
            T.let(
              :"`truck`",
              Nextbillionai::Skynet::SearchBoundParams::SortDrivingMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Nextbillionai::Skynet::SearchBoundParams::SortDrivingMode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
