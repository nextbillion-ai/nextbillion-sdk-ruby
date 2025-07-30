# typed: strong

module Nextbillionai
  module Models
    class LookupByIDResponse < Nextbillionai::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::Models::LookupByIDResponse,
            Nextbillionai::Internal::AnyHash
          )
        end

      # The results are presented as a JSON list of candidates in ranked order
      # (most-likely to least-likely) based on the matched location criteria.
      sig do
        returns(
          T.nilable(T::Array[Nextbillionai::Models::LookupByIDResponse::Item])
        )
      end
      attr_reader :items

      sig do
        params(
          items:
            T::Array[Nextbillionai::Models::LookupByIDResponse::Item::OrHash]
        ).void
      end
      attr_writer :items

      sig do
        params(
          items:
            T::Array[Nextbillionai::Models::LookupByIDResponse::Item::OrHash]
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
          { items: T::Array[Nextbillionai::Models::LookupByIDResponse::Item] }
        )
      end
      def to_hash
      end

      class Item < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::LookupByIDResponse::Item,
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
            map_view: Nextbillionai::MapView::OrHash,
            position: Nextbillionai::Position::OrHash,
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
          # The bounding box enclosing the geometric shape (area or line) that an individual
          # result covers. place typed results have no mapView.
          map_view: nil,
          # Returns the location coordinates of the result.
          position: nil,
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
              map_view: Nextbillionai::MapView,
              position: Nextbillionai::Position,
              title: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
