# frozen_string_literal: true

module Nextbillionai
  module Models
    module Multigeocode
      # @see Nextbillionai::Resources::Multigeocode::Place#retrieve
      class PlaceRetrieveResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute data_sorce
        #   It displays the information about the current source and current status of the
        #   place. Use the “Update Place” method to change these values, as needed.
        #
        #   @return [Nextbillionai::Models::Multigeocode::PlaceRetrieveResponse::DataSorce, nil]
        optional :data_sorce,
                 -> { Nextbillionai::Models::Multigeocode::PlaceRetrieveResponse::DataSorce },
                 api_name: :dataSorce

        # @!attribute doc_id
        #   The unique NextBillion ID for the result item.
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
        #   It returns the system calculated weighted score of the place. It depends on how
        #   ‘richly’ the place was defined at the time of creation. In order to modify the
        #   score, use “Update Place” method and update information for parameters which are
        #   not set currently. As an alternative, you can directly update the `score` to a
        #   custom value.
        #
        #   @return [Integer, nil]
        optional :score, Integer

        # @!method initialize(data_sorce: nil, doc_id: nil, place: nil, score: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Multigeocode::PlaceRetrieveResponse} for more details.
        #
        #   @param data_sorce [Nextbillionai::Models::Multigeocode::PlaceRetrieveResponse::DataSorce] It displays the information about the current source and current status of the p
        #
        #   @param doc_id [String] The unique NextBillion ID for the result item.
        #
        #   @param place [Array<Nextbillionai::Models::Multigeocode::PlaceItem>] This parameter represents the place details, including geographical information,
        #
        #   @param score [Integer] It returns the system calculated weighted score of the place. It depends on how

        # @see Nextbillionai::Models::Multigeocode::PlaceRetrieveResponse#data_sorce
        class DataSorce < Nextbillionai::Internal::Type::BaseModel
          # @!attribute ref_id
          #   This parameter represents the unique reference ID associated with the data
          #   source.
          #
          #   @return [String, nil]
          optional :ref_id, String, api_name: :refId

          # @!attribute source
          #   This parameter represents the current dataset source of the information returned
          #   in the result.
          #
          #   @return [String, nil]
          optional :source, String

          # @!attribute status
          #   This parameter indicates if a place is currently discoverable by search API or
          #   not.
          #
          #   @return [Symbol, Nextbillionai::Models::Multigeocode::PlaceRetrieveResponse::DataSorce::Status, nil]
          optional :status,
                   enum: -> { Nextbillionai::Models::Multigeocode::PlaceRetrieveResponse::DataSorce::Status }

          # @!method initialize(ref_id: nil, source: nil, status: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Multigeocode::PlaceRetrieveResponse::DataSorce} for more
          #   details.
          #
          #   It displays the information about the current source and current status of the
          #   place. Use the “Update Place” method to change these values, as needed.
          #
          #   @param ref_id [String] This parameter represents the unique reference ID associated with the data sourc
          #
          #   @param source [String] This parameter represents the current dataset source of the information returned
          #
          #   @param status [Symbol, Nextbillionai::Models::Multigeocode::PlaceRetrieveResponse::DataSorce::Status] This parameter indicates if a place is currently discoverable by search API or n

          # This parameter indicates if a place is currently discoverable by search API or
          # not.
          #
          # @see Nextbillionai::Models::Multigeocode::PlaceRetrieveResponse::DataSorce#status
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
