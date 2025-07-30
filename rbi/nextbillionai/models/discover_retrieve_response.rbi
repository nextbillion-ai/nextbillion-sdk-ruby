# typed: strong

module Nextbillionai
  module Models
    class DiscoverRetrieveResponse < Nextbillionai::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::Models::DiscoverRetrieveResponse,
            Nextbillionai::Internal::AnyHash
          )
        end

      # The results are presented as a JSON list of candidates in ranked order
      # (most-likely to least-likely) based on the matched location criteria.
      sig do
        returns(
          T.nilable(
            T::Array[Nextbillionai::Models::DiscoverRetrieveResponse::Item]
          )
        )
      end
      attr_reader :items

      sig do
        params(
          items:
            T::Array[
              Nextbillionai::Models::DiscoverRetrieveResponse::Item::OrHash
            ]
        ).void
      end
      attr_writer :items

      sig do
        params(
          items:
            T::Array[
              Nextbillionai::Models::DiscoverRetrieveResponse::Item::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        # The results are presented as a JSON list of candidates in ranked order
        # (most-likely to least-likely) based on the matched location criteria.
        items: nil
      )
      end

      sig do
        override.returns(
          {
            items:
              T::Array[Nextbillionai::Models::DiscoverRetrieveResponse::Item]
          }
        )
      end
      def to_hash
      end

      class Item < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::DiscoverRetrieveResponse::Item,
              Nextbillionai::Internal::AnyHash
            )
          end

        # The unique identifier for the result item.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # An array returning the location coordinates of all the access points of the
        # search result.
        sig { returns(T.nilable(Nextbillionai::Access)) }
        attr_reader :access

        sig { params(access: Nextbillionai::Access::OrHash).void }
        attr_writer :access

        # Postal address of the result item.
        sig { returns(T.nilable(Nextbillionai::Address)) }
        attr_reader :address

        sig { params(address: Nextbillionai::Address::OrHash).void }
        attr_writer :address

        # The list of categories assigned to this place.
        sig { returns(T.nilable(T::Array[Nextbillionai::Categories])) }
        attr_reader :categories

        sig do
          params(categories: T::Array[Nextbillionai::Categories::OrHash]).void
        end
        attr_writer :categories

        # Contact information like phone, email or website.
        sig { returns(T.nilable(T::Array[Nextbillionai::Contacts])) }
        attr_reader :contacts

        sig { params(contacts: T::Array[Nextbillionai::Contacts::OrHash]).void }
        attr_writer :contacts

        # The distance "as the crow flies" from the search center to this result item in
        # meters.
        sig { returns(T.nilable(Integer)) }
        attr_reader :distance

        sig { params(distance: Integer).void }
        attr_writer :distance

        # The bounding box enclosing the geometric shape (area or line) that an individual
        # result covers. `place` typed results have no `mapView`.
        sig { returns(T.nilable(Nextbillionai::MapView)) }
        attr_reader :map_view

        sig { params(map_view: Nextbillionai::MapView::OrHash).void }
        attr_writer :map_view

        # Returns the operating hours of the place, if available.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Models::DiscoverRetrieveResponse::Item::OpeningHours
            )
          )
        end
        attr_reader :opening_hours

        sig do
          params(
            opening_hours:
              Nextbillionai::Models::DiscoverRetrieveResponse::Item::OpeningHours::OrHash
          ).void
        end
        attr_writer :opening_hours

        # Returns the location coordinates of the result.
        sig { returns(T.nilable(Nextbillionai::Position)) }
        attr_reader :position

        sig { params(position: Nextbillionai::Position::OrHash).void }
        attr_writer :position

        # Score of the result. A higher score indicates a closer match.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Models::DiscoverRetrieveResponse::Item::Scoring
            )
          )
        end
        attr_reader :scoring

        sig do
          params(
            scoring:
              Nextbillionai::Models::DiscoverRetrieveResponse::Item::Scoring::OrHash
          ).void
        end
        attr_writer :scoring

        # The localized display name of this result item.
        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        sig do
          params(
            id: String,
            access: Nextbillionai::Access::OrHash,
            address: Nextbillionai::Address::OrHash,
            categories: T::Array[Nextbillionai::Categories::OrHash],
            contacts: T::Array[Nextbillionai::Contacts::OrHash],
            distance: Integer,
            map_view: Nextbillionai::MapView::OrHash,
            opening_hours:
              Nextbillionai::Models::DiscoverRetrieveResponse::Item::OpeningHours::OrHash,
            position: Nextbillionai::Position::OrHash,
            scoring:
              Nextbillionai::Models::DiscoverRetrieveResponse::Item::Scoring::OrHash,
            title: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the result item.
          id: nil,
          # An array returning the location coordinates of all the access points of the
          # search result.
          access: nil,
          # Postal address of the result item.
          address: nil,
          # The list of categories assigned to this place.
          categories: nil,
          # Contact information like phone, email or website.
          contacts: nil,
          # The distance "as the crow flies" from the search center to this result item in
          # meters.
          distance: nil,
          # The bounding box enclosing the geometric shape (area or line) that an individual
          # result covers. `place` typed results have no `mapView`.
          map_view: nil,
          # Returns the operating hours of the place, if available.
          opening_hours: nil,
          # Returns the location coordinates of the result.
          position: nil,
          # Score of the result. A higher score indicates a closer match.
          scoring: nil,
          # The localized display name of this result item.
          title: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              access: Nextbillionai::Access,
              address: Nextbillionai::Address,
              categories: T::Array[Nextbillionai::Categories],
              contacts: T::Array[Nextbillionai::Contacts],
              distance: Integer,
              map_view: Nextbillionai::MapView,
              opening_hours:
                Nextbillionai::Models::DiscoverRetrieveResponse::Item::OpeningHours,
              position: Nextbillionai::Position,
              scoring:
                Nextbillionai::Models::DiscoverRetrieveResponse::Item::Scoring,
              title: String
            }
          )
        end
        def to_hash
        end

        class OpeningHours < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::DiscoverRetrieveResponse::Item::OpeningHours,
                Nextbillionai::Internal::AnyHash
              )
            end

          # A collection of attributes with details about the opening and closing hours for
          # each day of the week.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Nextbillionai::Models::DiscoverRetrieveResponse::Item::OpeningHours::TimeRange
                ]
              )
            )
          end
          attr_reader :time_ranges

          sig do
            params(
              time_ranges:
                T::Array[
                  Nextbillionai::Models::DiscoverRetrieveResponse::Item::OpeningHours::TimeRange::OrHash
                ]
            ).void
          end
          attr_writer :time_ranges

          # Returns the operating hours of the place, if available.
          sig do
            params(
              time_ranges:
                T::Array[
                  Nextbillionai::Models::DiscoverRetrieveResponse::Item::OpeningHours::TimeRange::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            # A collection of attributes with details about the opening and closing hours for
            # each day of the week.
            time_ranges: nil
          )
          end

          sig do
            override.returns(
              {
                time_ranges:
                  T::Array[
                    Nextbillionai::Models::DiscoverRetrieveResponse::Item::OpeningHours::TimeRange
                  ]
              }
            )
          end
          def to_hash
          end

          class TimeRange < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Models::DiscoverRetrieveResponse::Item::OpeningHours::TimeRange,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Returns the closing time details.
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Models::DiscoverRetrieveResponse::Item::OpeningHours::TimeRange::EndTime
                )
              )
            end
            attr_reader :end_time

            sig do
              params(
                end_time:
                  Nextbillionai::Models::DiscoverRetrieveResponse::Item::OpeningHours::TimeRange::EndTime::OrHash
              ).void
            end
            attr_writer :end_time

            # Returns the open time details.
            sig do
              returns(
                T.nilable(
                  Nextbillionai::Models::DiscoverRetrieveResponse::Item::OpeningHours::TimeRange::StartTime
                )
              )
            end
            attr_reader :start_time

            sig do
              params(
                start_time:
                  Nextbillionai::Models::DiscoverRetrieveResponse::Item::OpeningHours::TimeRange::StartTime::OrHash
              ).void
            end
            attr_writer :start_time

            sig do
              params(
                end_time:
                  Nextbillionai::Models::DiscoverRetrieveResponse::Item::OpeningHours::TimeRange::EndTime::OrHash,
                start_time:
                  Nextbillionai::Models::DiscoverRetrieveResponse::Item::OpeningHours::TimeRange::StartTime::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Returns the closing time details.
              end_time: nil,
              # Returns the open time details.
              start_time: nil
            )
            end

            sig do
              override.returns(
                {
                  end_time:
                    Nextbillionai::Models::DiscoverRetrieveResponse::Item::OpeningHours::TimeRange::EndTime,
                  start_time:
                    Nextbillionai::Models::DiscoverRetrieveResponse::Item::OpeningHours::TimeRange::StartTime
                }
              )
            end
            def to_hash
            end

            class EndTime < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Models::DiscoverRetrieveResponse::Item::OpeningHours::TimeRange::EndTime,
                    Nextbillionai::Internal::AnyHash
                  )
                end

              # The date to which the subsequent closing time details belong to.
              sig { returns(T.nilable(String)) }
              attr_reader :date

              sig { params(date: String).void }
              attr_writer :date

              # The hour of the day when the place closes.
              sig { returns(T.nilable(Integer)) }
              attr_reader :hour

              sig { params(hour: Integer).void }
              attr_writer :hour

              # The minute of the hour when the place closes.
              sig { returns(T.nilable(Integer)) }
              attr_reader :minute

              sig { params(minute: Integer).void }
              attr_writer :minute

              # Returns the closing time details.
              sig do
                params(date: String, hour: Integer, minute: Integer).returns(
                  T.attached_class
                )
              end
              def self.new(
                # The date to which the subsequent closing time details belong to.
                date: nil,
                # The hour of the day when the place closes.
                hour: nil,
                # The minute of the hour when the place closes.
                minute: nil
              )
              end

              sig do
                override.returns(
                  { date: String, hour: Integer, minute: Integer }
                )
              end
              def to_hash
              end
            end

            class StartTime < Nextbillionai::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Nextbillionai::Models::DiscoverRetrieveResponse::Item::OpeningHours::TimeRange::StartTime,
                    Nextbillionai::Internal::AnyHash
                  )
                end

              # The date to which the subsequent open time details belong to.
              sig { returns(T.nilable(String)) }
              attr_reader :date

              sig { params(date: String).void }
              attr_writer :date

              # The hour of the day when the place opens.
              sig { returns(T.nilable(Integer)) }
              attr_reader :hour

              sig { params(hour: Integer).void }
              attr_writer :hour

              # The minute of the hour when the place opens.
              sig { returns(T.nilable(Integer)) }
              attr_reader :minute

              sig { params(minute: Integer).void }
              attr_writer :minute

              # Returns the open time details.
              sig do
                params(date: String, hour: Integer, minute: Integer).returns(
                  T.attached_class
                )
              end
              def self.new(
                # The date to which the subsequent open time details belong to.
                date: nil,
                # The hour of the day when the place opens.
                hour: nil,
                # The minute of the hour when the place opens.
                minute: nil
              )
              end

              sig do
                override.returns(
                  { date: String, hour: Integer, minute: Integer }
                )
              end
              def to_hash
              end
            end
          end
        end

        class Scoring < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::DiscoverRetrieveResponse::Item::Scoring,
                Nextbillionai::Internal::AnyHash
              )
            end

          # A breakdown of how closely individual field of the result matched with the
          # provided query `q`.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :field_score

          sig { params(field_score: T.anything).void }
          attr_writer :field_score

          # A score, out of 1, indicating how closely the result matches with the provided
          # query `q` .
          sig { returns(T.nilable(Float)) }
          attr_reader :query_score

          sig { params(query_score: Float).void }
          attr_writer :query_score

          # Score of the result. A higher score indicates a closer match.
          sig do
            params(field_score: T.anything, query_score: Float).returns(
              T.attached_class
            )
          end
          def self.new(
            # A breakdown of how closely individual field of the result matched with the
            # provided query `q`.
            field_score: nil,
            # A score, out of 1, indicating how closely the result matches with the provided
            # query `q` .
            query_score: nil
          )
          end

          sig do
            override.returns({ field_score: T.anything, query_score: Float })
          end
          def to_hash
          end
        end
      end
    end
  end
end
