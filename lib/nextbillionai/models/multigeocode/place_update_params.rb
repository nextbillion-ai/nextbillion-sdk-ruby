# frozen_string_literal: true

module Nextbillionai
  module Models
    module Multigeocode
      # @see Nextbillionai::Resources::Multigeocode::Place#update
      class PlaceUpdateParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute data_source
        #   dataSource values can be updated to enhance or prioritize the search results to
        #   better suit specific business use cases.
        #
        #   @return [Nextbillionai::Models::Multigeocode::PlaceUpdateParams::DataSource, nil]
        optional :data_source,
                 -> { Nextbillionai::Multigeocode::PlaceUpdateParams::DataSource },
                 api_name: :dataSource

        # @!attribute place
        #   This parameter represents the place details, including geographical information,
        #   address and other related information.
        #
        #   @return [Array<Nextbillionai::Models::Multigeocode::PlaceItem>, nil]
        optional :place, -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Multigeocode::PlaceItem] }

        # @!attribute score
        #   Search score of the place. This is calculated based on how ‘richly’ the place is
        #   defined. For instance, a place with street name, city, state and country
        #   attributes set might be ranked lower than a place which has values of house,
        #   building, street name, city, state and country attributes set. The score
        #   determines the rank of the place among search results. You can also use this
        #   field to set a custom score as per its relevance to rank it among the search
        #   results from multiple data sources.
        #
        #   @return [Integer, nil]
        optional :score, Integer

        # @!method initialize(key:, data_source: nil, place: nil, score: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Multigeocode::PlaceUpdateParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param data_source [Nextbillionai::Models::Multigeocode::PlaceUpdateParams::DataSource] dataSource values can be updated to enhance or prioritize the search results to
        #
        #   @param place [Array<Nextbillionai::Models::Multigeocode::PlaceItem>] This parameter represents the place details, including geographical information,
        #
        #   @param score [Integer] Search score of the place. This is calculated based on how ‘richly’ the place is
        #
        #   @param request_options [Nextbillionai::RequestOptions, Hash{Symbol=>Object}]

        class DataSource < Nextbillionai::Internal::Type::BaseModel
          # @!attribute ref_id
          #   This parameter represents the unique reference ID associated with the data
          #   source.
          #
          #   @return [String, nil]
          optional :ref_id, String, api_name: :refId

          # @!attribute source
          #   1. Move the place to a new dataset by setting the value to a unique dataset
          #      name. You can also move the place to an existing dataset by using an existing
          #      dataset name other than the current one. In both cases, the current
          #      datasource will be replaced for the specified docID.
          #
          #   2. Update the place in an existing dataset by setting the name to the current
          #      value.
          #
          #   @return [String, nil]
          optional :source, String

          # @!attribute status
          #   Set this to either `enable` or `disable` to allow the place to be retrieved by a
          #   search API or block it respectively.
          #
          #   @return [Symbol, Nextbillionai::Models::Multigeocode::PlaceUpdateParams::DataSource::Status, nil]
          optional :status, enum: -> { Nextbillionai::Multigeocode::PlaceUpdateParams::DataSource::Status }

          # @!method initialize(ref_id: nil, source: nil, status: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Multigeocode::PlaceUpdateParams::DataSource} for more
          #   details.
          #
          #   dataSource values can be updated to enhance or prioritize the search results to
          #   better suit specific business use cases.
          #
          #   @param ref_id [String] This parameter represents the unique reference ID associated with the data sourc
          #
          #   @param source [String] 1. Move the place to a new dataset by setting the value to a unique dataset name
          #
          #   @param status [Symbol, Nextbillionai::Models::Multigeocode::PlaceUpdateParams::DataSource::Status] Set this to either `enable` or `disable` to allow the place to be retrieved by a

          # Set this to either `enable` or `disable` to allow the place to be retrieved by a
          # search API or block it respectively.
          #
          # @see Nextbillionai::Models::Multigeocode::PlaceUpdateParams::DataSource#status
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
