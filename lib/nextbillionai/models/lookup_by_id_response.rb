# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Lookup#by_id
    class LookupByIDResponse < Nextbillionai::Internal::Type::BaseModel
      # @!attribute items
      #   The results are presented as a JSON list of candidates in ranked order
      #   (most-likely to least-likely) based on the matched location criteria.
      #
      #   @return [Array<Nextbillionai::Models::LookupByIDResponse::Item>, nil]
      optional :items,
               -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::LookupByIDResponse::Item] }

      # @!method initialize(items: nil)
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::LookupByIDResponse} for more details.
      #
      #   @param items [Array<Nextbillionai::Models::LookupByIDResponse::Item>] The results are presented as a JSON list of candidates in ranked order (most-lik

      class Item < Nextbillionai::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the result item.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute access
        #   An array returning the location coordinates of all the access points of the
        #   search result.
        #
        #   @return [Nextbillionai::Models::Access, nil]
        optional :access, -> { Nextbillionai::Access }

        # @!attribute address
        #   Postal address of the result item.
        #
        #   @return [Nextbillionai::Models::Address, nil]
        optional :address, -> { Nextbillionai::Address }

        # @!attribute categories
        #   The list of categories assigned to this place.
        #
        #   @return [Array<Nextbillionai::Models::Categories>, nil]
        optional :categories, -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Categories] }

        # @!attribute contacts
        #   Contact information like phone, email or website.
        #
        #   @return [Array<Nextbillionai::Models::Contacts>, nil]
        optional :contacts, -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Contacts] }

        # @!attribute map_view
        #   The bounding box enclosing the geometric shape (area or line) that an individual
        #   result covers. place typed results have no mapView.
        #
        #   @return [Nextbillionai::Models::MapView, nil]
        optional :map_view, -> { Nextbillionai::MapView }, api_name: :mapView

        # @!attribute position
        #   Returns the location coordinates of the result.
        #
        #   @return [Nextbillionai::Models::Position, nil]
        optional :position, -> { Nextbillionai::Position }

        # @!attribute title
        #   The localized display name of this result item.
        #
        #   @return [String, nil]
        optional :title, String

        # @!method initialize(id: nil, access: nil, address: nil, categories: nil, contacts: nil, map_view: nil, position: nil, title: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::LookupByIDResponse::Item} for more details.
        #
        #   @param id [String] The unique identifier for the result item.
        #
        #   @param access [Nextbillionai::Models::Access] An array returning the location coordinates of all the access points of the sear
        #
        #   @param address [Nextbillionai::Models::Address] Postal address of the result item.
        #
        #   @param categories [Array<Nextbillionai::Models::Categories>] The list of categories assigned to this place.
        #
        #   @param contacts [Array<Nextbillionai::Models::Contacts>] Contact information like phone, email or website.
        #
        #   @param map_view [Nextbillionai::Models::MapView] The bounding box enclosing the geometric shape (area or line) that an individual
        #
        #   @param position [Nextbillionai::Models::Position] Returns the location coordinates of the result.
        #
        #   @param title [String] The localized display name of this result item.
      end
    end
  end
end
