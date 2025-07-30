# typed: strong

module NextbillionSDK
  module Models
    class GeocodeBatchCreateResponse < NextbillionSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::Models::GeocodeBatchCreateResponse,
            NextbillionSDK::Internal::AnyHash
          )
        end

      # The results are presented as a JSON list of candidates in ranked order
      # (most-likely to least-likely) based on the matched location criteria.
      sig do
        returns(
          T.nilable(
            T::Array[NextbillionSDK::Models::GeocodeBatchCreateResponse::Item]
          )
        )
      end
      attr_reader :items

      sig do
        params(
          items:
            T::Array[
              NextbillionSDK::Models::GeocodeBatchCreateResponse::Item::OrHash
            ]
        ).void
      end
      attr_writer :items

      sig do
        params(
          items:
            T::Array[
              NextbillionSDK::Models::GeocodeBatchCreateResponse::Item::OrHash
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
              T::Array[NextbillionSDK::Models::GeocodeBatchCreateResponse::Item]
          }
        )
      end
      def to_hash
      end

      class Item < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::GeocodeBatchCreateResponse::Item,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the result item.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # An array returning the location coordinates of all the access points of the
        # search result.
        sig { returns(T.nilable(NextbillionSDK::Access)) }
        attr_reader :access

        sig { params(access: NextbillionSDK::Access::OrHash).void }
        attr_writer :access

        # Postal address of the result item.
        sig { returns(T.nilable(NextbillionSDK::Address)) }
        attr_reader :address

        sig { params(address: NextbillionSDK::Address::OrHash).void }
        attr_writer :address

        # The list of categories assigned to this place.
        sig { returns(T.nilable(T::Array[NextbillionSDK::Categories])) }
        attr_reader :categories

        sig do
          params(categories: T::Array[NextbillionSDK::Categories::OrHash]).void
        end
        attr_writer :categories

        # Contact information like phone, email or website.
        sig { returns(T.nilable(T::Array[NextbillionSDK::Contacts])) }
        attr_reader :contacts

        sig do
          params(contacts: T::Array[NextbillionSDK::Contacts::OrHash]).void
        end
        attr_writer :contacts

        # The distance "as the crow flies" from the search center to this result item in
        # meters.
        sig { returns(T.nilable(Integer)) }
        attr_reader :distance

        sig { params(distance: Integer).void }
        attr_writer :distance

        # The bounding box enclosing the geometric shape (area or line) that an individual
        # result covers. place typed results have no mapView.
        sig { returns(T.nilable(NextbillionSDK::MapView)) }
        attr_reader :map_view

        sig { params(map_view: NextbillionSDK::MapView::OrHash).void }
        attr_writer :map_view

        # Returns the location coordinates of the result.
        sig { returns(T.nilable(NextbillionSDK::Position)) }
        attr_reader :position

        sig { params(position: NextbillionSDK::Position::OrHash).void }
        attr_writer :position

        # Score of the result. A higher score indicates a closer match.
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Models::GeocodeBatchCreateResponse::Item::Scoring
            )
          )
        end
        attr_reader :scoring

        sig do
          params(
            scoring:
              NextbillionSDK::Models::GeocodeBatchCreateResponse::Item::Scoring::OrHash
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
            access: NextbillionSDK::Access::OrHash,
            address: NextbillionSDK::Address::OrHash,
            categories: T::Array[NextbillionSDK::Categories::OrHash],
            contacts: T::Array[NextbillionSDK::Contacts::OrHash],
            distance: Integer,
            map_view: NextbillionSDK::MapView::OrHash,
            position: NextbillionSDK::Position::OrHash,
            scoring:
              NextbillionSDK::Models::GeocodeBatchCreateResponse::Item::Scoring::OrHash,
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
              access: NextbillionSDK::Access,
              address: NextbillionSDK::Address,
              categories: T::Array[NextbillionSDK::Categories],
              contacts: T::Array[NextbillionSDK::Contacts],
              distance: Integer,
              map_view: NextbillionSDK::MapView,
              position: NextbillionSDK::Position,
              scoring:
                NextbillionSDK::Models::GeocodeBatchCreateResponse::Item::Scoring,
              title: String
            }
          )
        end
        def to_hash
        end

        class Scoring < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Models::GeocodeBatchCreateResponse::Item::Scoring,
                NextbillionSDK::Internal::AnyHash
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
