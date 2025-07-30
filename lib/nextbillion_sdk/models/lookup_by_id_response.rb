# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::Lookup#by_id
    class LookupByIDResponse < NextbillionSDK::Internal::Type::BaseModel
      # @!attribute items
      #   The results are presented as a JSON list of candidates in ranked order
      #   (most-likely to least-likely) based on the matched location criteria.
      #
      #   @return [Array<NextbillionSDK::Models::LookupByIDResponse::Item>, nil]
      optional :items,
               -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::LookupByIDResponse::Item] }

      # @!method initialize(items: nil)
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::LookupByIDResponse} for more details.
      #
      #   @param items [Array<NextbillionSDK::Models::LookupByIDResponse::Item>] The results are presented as a JSON list of candidates in ranked order (most-lik

      class Item < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the result item.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute access
        #   An array returning the location coordinates of all the access points of the
        #   search result.
        #
        #   @return [NextbillionSDK::Models::Access, nil]
        optional :access, -> { NextbillionSDK::Access }

        # @!attribute address
        #   Postal address of the result item.
        #
        #   @return [NextbillionSDK::Models::Address, nil]
        optional :address, -> { NextbillionSDK::Address }

        # @!attribute categories
        #   The list of categories assigned to this place.
        #
        #   @return [Array<NextbillionSDK::Models::Categories>, nil]
        optional :categories, -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Categories] }

        # @!attribute contacts
        #   Contact information like phone, email or website.
        #
        #   @return [Array<NextbillionSDK::Models::Contacts>, nil]
        optional :contacts, -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Contacts] }

        # @!attribute map_view
        #   The bounding box enclosing the geometric shape (area or line) that an individual
        #   result covers. place typed results have no mapView.
        #
        #   @return [NextbillionSDK::Models::MapView, nil]
        optional :map_view, -> { NextbillionSDK::MapView }, api_name: :mapView

        # @!attribute position
        #   Returns the location coordinates of the result.
        #
        #   @return [NextbillionSDK::Models::Position, nil]
        optional :position, -> { NextbillionSDK::Position }

        # @!attribute title
        #   The localized display name of this result item.
        #
        #   @return [String, nil]
        optional :title, String

        # @!method initialize(id: nil, access: nil, address: nil, categories: nil, contacts: nil, map_view: nil, position: nil, title: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::LookupByIDResponse::Item} for more details.
        #
        #   @param id [String] The unique identifier for the result item.
        #
        #   @param access [NextbillionSDK::Models::Access] An array returning the location coordinates of all the access points of the sear
        #
        #   @param address [NextbillionSDK::Models::Address] Postal address of the result item.
        #
        #   @param categories [Array<NextbillionSDK::Models::Categories>] The list of categories assigned to this place.
        #
        #   @param contacts [Array<NextbillionSDK::Models::Contacts>] Contact information like phone, email or website.
        #
        #   @param map_view [NextbillionSDK::Models::MapView] The bounding box enclosing the geometric shape (area or line) that an individual
        #
        #   @param position [NextbillionSDK::Models::Position] Returns the location coordinates of the result.
        #
        #   @param title [String] The localized display name of this result item.
      end
    end
  end
end
