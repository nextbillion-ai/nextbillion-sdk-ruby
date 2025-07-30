# typed: strong

module Nextbillionai
  module Models
    class GeocodeBatchCreateResponse < Nextbillionai::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::Models::GeocodeBatchCreateResponse,
            Nextbillionai::Internal::AnyHash
          )
        end

      # The results are presented as a JSON list of candidates in ranked order
      # (most-likely to least-likely) based on the matched location criteria.
      sig do
        returns(
          T.nilable(
            T::Array[Nextbillionai::Models::GeocodeBatchCreateResponse::Item]
          )
        )
      end
      attr_reader :items

      sig do
        params(
          items:
            T::Array[
              Nextbillionai::Models::GeocodeBatchCreateResponse::Item::OrHash
            ]
        ).void
      end
      attr_writer :items

      sig do
        params(
          items:
            T::Array[
              Nextbillionai::Models::GeocodeBatchCreateResponse::Item::OrHash
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
              T::Array[Nextbillionai::Models::GeocodeBatchCreateResponse::Item]
          }
        )
      end
      def to_hash
      end

      class Item < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::GeocodeBatchCreateResponse::Item,
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
        # result covers. place typed results have no mapView.
        sig { returns(T.nilable(Nextbillionai::MapView)) }
        attr_reader :map_view

        sig { params(map_view: Nextbillionai::MapView::OrHash).void }
        attr_writer :map_view

        # Returns the location coordinates of the result.
        sig { returns(T.nilable(Nextbillionai::Position)) }
        attr_reader :position

        sig { params(position: Nextbillionai::Position::OrHash).void }
        attr_writer :position

        # Score of the result. A higher score indicates a closer match.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Models::GeocodeBatchCreateResponse::Item::Scoring
            )
          )
        end
        attr_reader :scoring

        sig do
          params(
            scoring:
              Nextbillionai::Models::GeocodeBatchCreateResponse::Item::Scoring::OrHash
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
            position: Nextbillionai::Position::OrHash,
            scoring:
              Nextbillionai::Models::GeocodeBatchCreateResponse::Item::Scoring::OrHash,
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
          # result covers. place typed results have no mapView.
          map_view: nil,
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
              position: Nextbillionai::Position,
              scoring:
                Nextbillionai::Models::GeocodeBatchCreateResponse::Item::Scoring,
              title: String
            }
          )
        end
        def to_hash
        end

        class Scoring < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::GeocodeBatchCreateResponse::Item::Scoring,
                Nextbillionai::Internal::AnyHash
              )
            end

          # A breakdown of how closely individual field of the result matched with the
          # provided query q.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :field_score

          sig { params(field_score: T.anything).void }
          attr_writer :field_score

          # A score, out of 1, indicating how closely the result matches with the provided
          # query q .
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
            # provided query q.
            field_score: nil,
            # A score, out of 1, indicating how closely the result matches with the provided
            # query q .
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
