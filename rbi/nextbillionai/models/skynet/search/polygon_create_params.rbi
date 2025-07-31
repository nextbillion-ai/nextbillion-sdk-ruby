# typed: strong

module Nextbillionai
  module Models
    module Skynet
      module Search
        class PolygonCreateParams < Nextbillionai::Internal::Type::BaseModel
          extend Nextbillionai::Internal::Type::RequestParameters::Converter
          include Nextbillionai::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Skynet::Search::PolygonCreateParams,
                Nextbillionai::Internal::AnyHash
              )
            end

          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          sig { returns(String) }
          attr_accessor :key

          # An object to collect geoJSON details of a custom polygon. Please ensure that:
          #
          # - the polygon provided is enclosed. This can be achieved by making the last
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
          sig do
            returns(Nextbillionai::Skynet::Search::PolygonCreateParams::Polygon)
          end
          attr_reader :polygon

          sig do
            params(
              polygon:
                Nextbillionai::Skynet::Search::PolygonCreateParams::Polygon::OrHash
            ).void
          end
          attr_writer :polygon

          # **tags parameter will be deprecated soon! Please use the
          # include_any_of_attributes or include_all_of_attributes parameters to match
          # assets based on their labels or markers.**
          #
          # Use this parameter to filter the assets found inside the specified area by their
          # tag. Multiple tag can be separated using comma (,).
          #
          # Please note the tags are case sensitive.
          sig { returns(T.nilable(String)) }
          attr_reader :filter

          sig { params(filter: String).void }
          attr_writer :filter

          # An object to define the attributes which will be used to filter the assets found
          # within the polygon.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Skynet::Search::PolygonCreateParams::MatchFilter
              )
            )
          end
          attr_reader :match_filter

          sig do
            params(
              match_filter:
                Nextbillionai::Skynet::Search::PolygonCreateParams::MatchFilter::OrHash
            ).void
          end
          attr_writer :match_filter

          # if ture, can get 16x bigger limitation in search.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :max_search_limit

          sig { params(max_search_limit: T::Boolean).void }
          attr_writer :max_search_limit

          # Denotes page number. Use this along with the ps parameter to implement
          # pagination for your searched results. This parameter does not have a maximum
          # limit but would return an empty response in case a higher value is provided when
          # the result-set itself is smaller.
          sig { returns(T.nilable(Integer)) }
          attr_reader :pn

          sig { params(pn: Integer).void }
          attr_writer :pn

          # Denotes number of search results per page. Use this along with the pn parameter
          # to implement pagination for your searched results. Please note that ps has a
          # default value of 20 and accepts integers only in the range of [1, 100].
          sig { returns(T.nilable(Integer)) }
          attr_reader :ps

          sig { params(ps: Integer).void }
          attr_writer :ps

          sig do
            returns(
              T.nilable(
                Nextbillionai::Skynet::Search::PolygonCreateParams::Sort
              )
            )
          end
          attr_reader :sort

          sig do
            params(
              sort:
                Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::OrHash
            ).void
          end
          attr_writer :sort

          sig do
            params(
              key: String,
              polygon:
                Nextbillionai::Skynet::Search::PolygonCreateParams::Polygon::OrHash,
              filter: String,
              match_filter:
                Nextbillionai::Skynet::Search::PolygonCreateParams::MatchFilter::OrHash,
              max_search_limit: T::Boolean,
              pn: Integer,
              ps: Integer,
              sort:
                Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::OrHash,
              request_options: Nextbillionai::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # A key is a unique identifier that is required to authenticate a request to the
            # API.
            key:,
            # An object to collect geoJSON details of a custom polygon. Please ensure that:
            #
            # - the polygon provided is enclosed. This can be achieved by making the last
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
            # **tags parameter will be deprecated soon! Please use the
            # include_any_of_attributes or include_all_of_attributes parameters to match
            # assets based on their labels or markers.**
            #
            # Use this parameter to filter the assets found inside the specified area by their
            # tag. Multiple tag can be separated using comma (,).
            #
            # Please note the tags are case sensitive.
            filter: nil,
            # An object to define the attributes which will be used to filter the assets found
            # within the polygon.
            match_filter: nil,
            # if ture, can get 16x bigger limitation in search.
            max_search_limit: nil,
            # Denotes page number. Use this along with the ps parameter to implement
            # pagination for your searched results. This parameter does not have a maximum
            # limit but would return an empty response in case a higher value is provided when
            # the result-set itself is smaller.
            pn: nil,
            # Denotes number of search results per page. Use this along with the pn parameter
            # to implement pagination for your searched results. Please note that ps has a
            # default value of 20 and accepts integers only in the range of [1, 100].
            ps: nil,
            sort: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                key: String,
                polygon:
                  Nextbillionai::Skynet::Search::PolygonCreateParams::Polygon,
                filter: String,
                match_filter:
                  Nextbillionai::Skynet::Search::PolygonCreateParams::MatchFilter,
                max_search_limit: T::Boolean,
                pn: Integer,
                ps: Integer,
                sort: Nextbillionai::Skynet::Search::PolygonCreateParams::Sort,
                request_options: Nextbillionai::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Polygon < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Skynet::Search::PolygonCreateParams::Polygon,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # An array of coordinates in the [longitude, latitude] format, representing the
            # polygon boundary.
            sig { returns(T::Array[Float]) }
            attr_accessor :coordinates

            # Type of the geoJSON geometry. Should always be polygon.
            sig { returns(String) }
            attr_accessor :type

            # An object to collect geoJSON details of a custom polygon. Please ensure that:
            #
            # - the polygon provided is enclosed. This can be achieved by making the last
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
            sig do
              params(coordinates: T::Array[Float], type: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # An array of coordinates in the [longitude, latitude] format, representing the
              # polygon boundary.
              coordinates:,
              # Type of the geoJSON geometry. Should always be polygon.
              type:
            )
            end

            sig do
              override.returns({ coordinates: T::Array[Float], type: String })
            end
            def to_hash
            end
          end

          class MatchFilter < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Skynet::Search::PolygonCreateParams::MatchFilter,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Use this parameter to filter the assets found inside the specified area by their
            # attributes. Only the assets having all the attributes that are added to this
            # parameter, will be returned in the search results. Multiple attributes can be
            # separated using commas (,).
            #
            # Please note the attributes are case sensitive. Also, this parameter can not be
            # used in conjunction with include_any_of_attributes parameter.
            sig { returns(T.nilable(String)) }
            attr_reader :include_all_of_attributes

            sig { params(include_all_of_attributes: String).void }
            attr_writer :include_all_of_attributes

            # Use this parameter to filter the assets found inside the specified area by their
            # attributes. Assets having at least one of the attributes added to this
            # parameter, will be returned in the search results. Multiple attributes can be
            # separated using commas (,).
            #
            # Please note the attributes are case sensitive. Also, this parameter can not be
            # used in conjunction with include_all_of_attributes parameter.
            sig { returns(T.nilable(String)) }
            attr_reader :include_any_of_attributes

            sig { params(include_any_of_attributes: String).void }
            attr_writer :include_any_of_attributes

            # An object to define the attributes which will be used to filter the assets found
            # within the polygon.
            sig do
              params(
                include_all_of_attributes: String,
                include_any_of_attributes: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Use this parameter to filter the assets found inside the specified area by their
              # attributes. Only the assets having all the attributes that are added to this
              # parameter, will be returned in the search results. Multiple attributes can be
              # separated using commas (,).
              #
              # Please note the attributes are case sensitive. Also, this parameter can not be
              # used in conjunction with include_any_of_attributes parameter.
              include_all_of_attributes: nil,
              # Use this parameter to filter the assets found inside the specified area by their
              # attributes. Assets having at least one of the attributes added to this
              # parameter, will be returned in the search results. Multiple attributes can be
              # separated using commas (,).
              #
              # Please note the attributes are case sensitive. Also, this parameter can not be
              # used in conjunction with include_all_of_attributes parameter.
              include_any_of_attributes: nil
            )
            end

            sig do
              override.returns(
                {
                  include_all_of_attributes: String,
                  include_any_of_attributes: String
                }
              )
            end
            def to_hash
            end
          end

          class Sort < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Skynet::Search::PolygonCreateParams::Sort,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Specify the metric to sort the assets returned in the search result. The valid
            # values are:
            #
            # - **distance** : Sorts the assets by driving distance to the given
            #   sort_destination .
            # - **duration** : Sorts the assets by travel time to the given sort_destination .
            # - **straight_distance** : Sort the assets by straight-line distance to the given
            #   sort-destination .
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortBy::OrSymbol
                )
              )
            end
            attr_reader :sort_by

            sig do
              params(
                sort_by:
                  Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortBy::OrSymbol
              ).void
            end
            attr_writer :sort_by

            # Specifies the location coordinates of the point which acts as destination for
            # sorting the assets in the search results. The service will sort each asset based
            # on the driving distance or travel time to this destination, from its current
            # location. Use the sort_by parameter to configure the metric that should be used
            # for sorting the assets. Please note that sort_destination is required when
            # sort_by is provided.
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortDestination
                )
              )
            end
            attr_reader :sort_destination

            sig do
              params(
                sort_destination:
                  Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortDestination::OrHash
              ).void
            end
            attr_writer :sort_destination

            # Specifies the driving mode to be used for determining travel duration or driving
            # distance for sorting the assets in search result.
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortDrivingMode::OrSymbol
                )
              )
            end
            attr_reader :sort_driving_mode

            sig do
              params(
                sort_driving_mode:
                  Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortDrivingMode::OrSymbol
              ).void
            end
            attr_writer :sort_driving_mode

            sig do
              params(
                sort_by:
                  Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortBy::OrSymbol,
                sort_destination:
                  Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortDestination::OrHash,
                sort_driving_mode:
                  Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortDrivingMode::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # Specify the metric to sort the assets returned in the search result. The valid
              # values are:
              #
              # - **distance** : Sorts the assets by driving distance to the given
              #   sort_destination .
              # - **duration** : Sorts the assets by travel time to the given sort_destination .
              # - **straight_distance** : Sort the assets by straight-line distance to the given
              #   sort-destination .
              sort_by: nil,
              # Specifies the location coordinates of the point which acts as destination for
              # sorting the assets in the search results. The service will sort each asset based
              # on the driving distance or travel time to this destination, from its current
              # location. Use the sort_by parameter to configure the metric that should be used
              # for sorting the assets. Please note that sort_destination is required when
              # sort_by is provided.
              sort_destination: nil,
              # Specifies the driving mode to be used for determining travel duration or driving
              # distance for sorting the assets in search result.
              sort_driving_mode: nil
            )
            end

            sig do
              override.returns(
                {
                  sort_by:
                    Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortBy::OrSymbol,
                  sort_destination:
                    Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortDestination,
                  sort_driving_mode:
                    Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortDrivingMode::OrSymbol
                }
              )
            end
            def to_hash
            end

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

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortBy
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DISTANCE =
                T.let(
                  :distance,
                  Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortBy::TaggedSymbol
                )
              DURATION =
                T.let(
                  :duration,
                  Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortBy::TaggedSymbol
                )
              STRAIGHT_DISTANCE =
                T.let(
                  :straight_distance,
                  Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortBy::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortBy::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            class SortDestination < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortDestination,
                    Nextbillionai::Internal::AnyHash
                  )
                end

              # Latitude of the destination location
              sig { returns(Float) }
              attr_accessor :lat

              # Longitude of the destination location
              sig { returns(Float) }
              attr_accessor :lon

              # Specifies the location coordinates of the point which acts as destination for
              # sorting the assets in the search results. The service will sort each asset based
              # on the driving distance or travel time to this destination, from its current
              # location. Use the sort_by parameter to configure the metric that should be used
              # for sorting the assets. Please note that sort_destination is required when
              # sort_by is provided.
              sig { params(lat: Float, lon: Float).returns(T.attached_class) }
              def self.new(
                # Latitude of the destination location
                lat:,
                # Longitude of the destination location
                lon:
              )
              end

              sig { override.returns({ lat: Float, lon: Float }) }
              def to_hash
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
                    Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortDrivingMode
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CAR =
                T.let(
                  :car,
                  Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortDrivingMode::TaggedSymbol
                )
              TRUCK =
                T.let(
                  :truck,
                  Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortDrivingMode::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Nextbillionai::Skynet::Search::PolygonCreateParams::Sort::SortDrivingMode::TaggedSymbol
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
  end
end
