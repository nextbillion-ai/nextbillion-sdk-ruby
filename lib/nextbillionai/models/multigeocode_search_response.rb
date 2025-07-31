# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Multigeocode#search
    class MultigeocodeSearchResponse < Nextbillionai::Internal::Type::BaseModel
      # @!attribute entities
      #   An array of objects containing the search result response. Each object
      #   represents one place returned in the search response. An empty array would be
      #   returned if no matching place is found.
      #
      #   @return [Array<Nextbillionai::Models::MultigeocodeSearchResponse::Entity>, nil]
      optional :entities,
               -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::MultigeocodeSearchResponse::Entity] }

      # @!method initialize(entities: nil)
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::MultigeocodeSearchResponse} for more details.
      #
      #   @param entities [Array<Nextbillionai::Models::MultigeocodeSearchResponse::Entity>] An array of objects containing the search result response. Each object represent

      class Entity < Nextbillionai::Internal::Type::BaseModel
        # @!attribute data_source
        #   It contains information about the dataset that returns the specific result
        #
        #   @return [Nextbillionai::Models::MultigeocodeSearchResponse::Entity::DataSource, nil]
        optional :data_source,
                 -> { Nextbillionai::Models::MultigeocodeSearchResponse::Entity::DataSource },
                 api_name: :dataSource

        # @!attribute doc_id
        #   The unique NextBillion ID for the result item. This ID can be used as input in
        #   “Get Place”, “Update Place”, “Delete Place” methods.
        #
        #   @return [String, nil]
        optional :doc_id, String, api_name: :docId

        # @!attribute place
        #   This parameter represents the place details, including geographical information,
        #   address and other related information.
        #
        #   @return [Array<Nextbillionai::Models::Multigeocode::PlaceItem>, nil]
        optional :place, -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Multigeocode::PlaceItem] }

        # @!attribute score
        #   Integer value representing how good the result is. Higher score indicates a
        #   better match between the search query and the result. This can be used to accept
        #   or reject the results depending on how “relevant” a result is, for a given use
        #   case
        #
        #   @return [Integer, nil]
        optional :score, Integer

        # @!method initialize(data_source: nil, doc_id: nil, place: nil, score: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::MultigeocodeSearchResponse::Entity} for more details.
        #
        #   @param data_source [Nextbillionai::Models::MultigeocodeSearchResponse::Entity::DataSource] It contains information about the dataset that returns the specific result
        #
        #   @param doc_id [String] The unique NextBillion ID for the result item. This ID can be used as input in “
        #
        #   @param place [Array<Nextbillionai::Models::Multigeocode::PlaceItem>] This parameter represents the place details, including geographical information,
        #
        #   @param score [Integer] Integer value representing how good the result is. Higher score indicates a bett

        # @see Nextbillionai::Models::MultigeocodeSearchResponse::Entity#data_source
        class DataSource < Nextbillionai::Internal::Type::BaseModel
          # @!attribute ref_id
          #   This parameter represents the unique reference ID associated with the data
          #   source.
          #
          #   @return [String, nil]
          optional :ref_id, String, api_name: :refId

          # @!attribute source
          #   This parameter represents the source of the data.
          #
          #   @return [String, nil]
          optional :source, String

          # @!attribute status
          #   This parameter indicates if a place is searchable.
          #
          #   @return [Symbol, Nextbillionai::Models::MultigeocodeSearchResponse::Entity::DataSource::Status, nil]
          optional :status,
                   enum: -> { Nextbillionai::Models::MultigeocodeSearchResponse::Entity::DataSource::Status }

          # @!method initialize(ref_id: nil, source: nil, status: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::MultigeocodeSearchResponse::Entity::DataSource} for more
          #   details.
          #
          #   It contains information about the dataset that returns the specific result
          #
          #   @param ref_id [String] This parameter represents the unique reference ID associated with the data sourc
          #
          #   @param source [String] This parameter represents the source of the data.
          #
          #   @param status [Symbol, Nextbillionai::Models::MultigeocodeSearchResponse::Entity::DataSource::Status] This parameter indicates if a place is searchable.

          # This parameter indicates if a place is searchable.
          #
          # @see Nextbillionai::Models::MultigeocodeSearchResponse::Entity::DataSource#status
          module Status
            extend Nextbillionai::Internal::Type::Enum

            ENABLE = :enable
            DISABLE = :disable

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
