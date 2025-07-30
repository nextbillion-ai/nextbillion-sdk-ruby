# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Geocode#batch_create
    class GeocodeBatchCreateResponse < Nextbillionai::Internal::Type::BaseModel
      # @!attribute items
      #   The results are presented as a JSON list of candidates in ranked order
      #   (most-likely to least-likely) based on the matched location criteria.
      #
      #   @return [Array<Nextbillionai::Models::GeocodeBatchCreateResponse::Item>, nil]
      optional :items,
               -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::GeocodeBatchCreateResponse::Item] }

      # @!method initialize(items: nil)
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::GeocodeBatchCreateResponse} for more details.
      #
      #   @param items [Array<Nextbillionai::Models::GeocodeBatchCreateResponse::Item>] The results are presented as a JSON list of candidates in ranked order (most-lik

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

        # @!attribute distance
        #   The distance "as the crow flies" from the search center to this result item in
        #   meters.
        #
        #   @return [Integer, nil]
        optional :distance, Integer

        # @!attribute map_view
        #   The bounding box enclosing the geometric shape (area or line) that an individual
        #   result covers. `place` typed results have no `mapView`.
        #
        #   @return [Nextbillionai::Models::MapView, nil]
        optional :map_view, -> { Nextbillionai::MapView }, api_name: :mapView

        # @!attribute position
        #   Returns the location coordinates of the result.
        #
        #   @return [Nextbillionai::Models::Position, nil]
        optional :position, -> { Nextbillionai::Position }

        # @!attribute scoring
        #   Score of the result. A higher score indicates a closer match.
        #
        #   @return [Nextbillionai::Models::GeocodeBatchCreateResponse::Item::Scoring, nil]
        optional :scoring, -> { Nextbillionai::Models::GeocodeBatchCreateResponse::Item::Scoring }

        # @!attribute title
        #   The localized display name of this result item.
        #
        #   @return [String, nil]
        optional :title, String

        # @!method initialize(id: nil, access: nil, address: nil, categories: nil, contacts: nil, distance: nil, map_view: nil, position: nil, scoring: nil, title: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::GeocodeBatchCreateResponse::Item} for more details.
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
        #   @param distance [Integer] The distance "as the crow flies" from the search center to this result item in m
        #
        #   @param map_view [Nextbillionai::Models::MapView] The bounding box enclosing the geometric shape (area or line) that an individual
        #
        #   @param position [Nextbillionai::Models::Position] Returns the location coordinates of the result.
        #
        #   @param scoring [Nextbillionai::Models::GeocodeBatchCreateResponse::Item::Scoring] Score of the result. A higher score indicates a closer match.
        #
        #   @param title [String] The localized display name of this result item.

        # @see Nextbillionai::Models::GeocodeBatchCreateResponse::Item#scoring
        class Scoring < Nextbillionai::Internal::Type::BaseModel
          # @!attribute field_score
          #   A breakdown of how closely individual field of the result matched with the
          #   provided query `q`.
          #
          #   @return [Object, nil]
          optional :field_score, Nextbillionai::Internal::Type::Unknown, api_name: :fieldScore

          # @!attribute query_score
          #   A score, out of 1, indicating how closely the result matches with the provided
          #   query `q` .
          #
          #   @return [Float, nil]
          optional :query_score, Float, api_name: :queryScore

          # @!method initialize(field_score: nil, query_score: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::GeocodeBatchCreateResponse::Item::Scoring} for more
          #   details.
          #
          #   Score of the result. A higher score indicates a closer match.
          #
          #   @param field_score [Object] A breakdown of how closely individual field of the result matched with the provi
          #
          #   @param query_score [Float] A score, out of 1, indicating how closely the result matches with the provided q
        end
      end
    end
  end
end
