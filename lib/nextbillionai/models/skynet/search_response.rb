# frozen_string_literal: true

module Nextbillionai
  module Models
    module Skynet
      # @see Nextbillionai::Resources::Skynet::Search#around
      class SearchResponse < Nextbillionai::Internal::Type::BaseModel
        # @!attribute data
        #   A data object containing the search result.
        #
        #   @return [Nextbillionai::Models::Skynet::SearchResponse::Data, nil]
        optional :data, -> { Nextbillionai::Skynet::SearchResponse::Data }

        # @!attribute message
        #   Displays the error message in case of a failed request. If the request is
        #   successful, this field is not present in the response.
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute status
        #   A string indicating the state of the response. On successful responses, the
        #   value will be Ok. Indicative error messages are returned for different errors.
        #   See the [API Error Codes](#api-error-codes) section below for more information.
        #
        #   @return [String, nil]
        optional :status, String

        # @!method initialize(data: nil, message: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::Skynet::SearchResponse} for more details.
        #
        #   @param data [Nextbillionai::Models::Skynet::SearchResponse::Data] A data object containing the search result.
        #
        #   @param message [String] Displays the error message in case of a failed request. If the request is succes
        #
        #   @param status [String] A string indicating the state of the response. On successful responses, the valu

        # @see Nextbillionai::Models::Skynet::SearchResponse#data
        class Data < Nextbillionai::Internal::Type::BaseModel
          # @!attribute assets
          #   An array of objects with details of the asset(s) returned in the search result.
          #   Each object represents one asset
          #
          #   @return [Array<Nextbillionai::Models::Skynet::SearchResponse::Data::Asset>, nil]
          optional :assets,
                   -> {
                     Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Skynet::SearchResponse::Data::Asset]
                   }

          # @!attribute page
          #   An object with pagination details of the search results. Use this object to
          #   implement pagination in your application.
          #
          #   @return [Nextbillionai::Models::Skynet::Pagination, nil]
          optional :page, -> { Nextbillionai::Skynet::Pagination }

          # @!method initialize(assets: nil, page: nil)
          #   Some parameter documentations has been truncated, see
          #   {Nextbillionai::Models::Skynet::SearchResponse::Data} for more details.
          #
          #   A data object containing the search result.
          #
          #   @param assets [Array<Nextbillionai::Models::Skynet::SearchResponse::Data::Asset>] An array of objects with details of the asset(s) returned in the search result.
          #
          #   @param page [Nextbillionai::Models::Skynet::Pagination] An object with pagination details of the search results. Use this object to impl

          class Asset < Nextbillionai::Internal::Type::BaseModel
            # @!attribute id
            #   ID of asset which was last located inside the specified area in the input
            #   request. This is the same ID that was generated/provided at the time of creating
            #   the asset.
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute created_at
            #   A UNIX timestamp in seconds representing the time at which the asset was
            #   created.
            #
            #   @return [Integer, nil]
            optional :created_at, Integer

            # @!attribute description
            #   Description of the asset. The value would be the same as that provided for the
            #   description parameter at the time of creating or updating the asset.
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute latest_location
            #   An object with details of the tracked location. Please note that if there are no
            #   tracking records for an asset, no location data will be returned.
            #
            #   @return [Nextbillionai::Models::Skynet::Asset::TrackLocation, nil]
            optional :latest_location, -> { Nextbillionai::Skynet::Asset::TrackLocation }

            # @!attribute meta_data
            #   Any valid json object data. Can be used to save customized data. Max size is
            #   65kb.
            #
            #   @return [Object, nil]
            optional :meta_data, Nextbillionai::Internal::Type::Unknown

            # @!attribute name
            #   Name of asset. The value would be the same as that provided for the name
            #   parameter at the time of creating or updating the asset.
            #
            #   @return [String, nil]
            optional :name, String

            # @!attribute ranking_info
            #   An object returning the sorting details of the asset as per the configuration
            #   specified in the input.
            #
            #   @return [Nextbillionai::Models::Skynet::SearchResponse::Data::Asset::RankingInfo, nil]
            optional :ranking_info, -> { Nextbillionai::Skynet::SearchResponse::Data::Asset::RankingInfo }

            # @!attribute tags
            #   **This parameter will be deprecated soon! Please move existing tags to
            #   attributes parameter.**
            #
            #   Tags associated with the asset.
            #
            #   @return [Array<String>, nil]
            optional :tags, Nextbillionai::Internal::Type::ArrayOf[String]

            # @!attribute tracked_at
            #   A UNIX epoch timestamp in seconds representing the last time when the asset was
            #   tracked.
            #
            #   @return [Integer, nil]
            optional :tracked_at, Integer

            # @!attribute updated_at
            #   A UNIX timestamp in seconds representing the time at which the asset was last
            #   updated.
            #
            #   @return [Integer, nil]
            optional :updated_at, Integer

            # @!method initialize(id: nil, created_at: nil, description: nil, latest_location: nil, meta_data: nil, name: nil, ranking_info: nil, tags: nil, tracked_at: nil, updated_at: nil)
            #   Some parameter documentations has been truncated, see
            #   {Nextbillionai::Models::Skynet::SearchResponse::Data::Asset} for more details.
            #
            #   @param id [String] ID of asset which was last located inside the specified area in the input reques
            #
            #   @param created_at [Integer] A UNIX timestamp in seconds representing the time at which the asset was created
            #
            #   @param description [String] Description of the asset. The value would be the same as that provided for the d
            #
            #   @param latest_location [Nextbillionai::Models::Skynet::Asset::TrackLocation] An object with details of the tracked location. Please note that if there are no
            #
            #   @param meta_data [Object] Any valid json object data. Can be used to save customized data. Max size is 65k
            #
            #   @param name [String] Name of asset. The value would be the same as that provided for the name paramet
            #
            #   @param ranking_info [Nextbillionai::Models::Skynet::SearchResponse::Data::Asset::RankingInfo] An object returning the sorting details of the asset as per the configuration sp
            #
            #   @param tags [Array<String>] \*\*This parameter will be deprecated soon! Please move existing tags to
            #   attribute
            #
            #   @param tracked_at [Integer] A UNIX epoch timestamp in seconds representing the last time when the asset was
            #
            #   @param updated_at [Integer] A UNIX timestamp in seconds representing the time at which the asset was last up

            # @see Nextbillionai::Models::Skynet::SearchResponse::Data::Asset#ranking_info
            class RankingInfo < Nextbillionai::Internal::Type::BaseModel
              # @!attribute distance
              #   Driving distance between the asset and the sort_destination.
              #
              #   @return [Float, nil]
              optional :distance, Float

              # @!attribute duration
              #   Driving duration between the asset and the sort_destination. Please note this
              #   field in not returned in the response when sort_by = straight_distance .
              #
              #   @return [Float, nil]
              optional :duration, Float

              # @!attribute index
              #   Index of the ranked asset. The index value starts from 0.
              #
              #   @return [Integer, nil]
              optional :index, Integer

              # @!method initialize(distance: nil, duration: nil, index: nil)
              #   Some parameter documentations has been truncated, see
              #   {Nextbillionai::Models::Skynet::SearchResponse::Data::Asset::RankingInfo} for
              #   more details.
              #
              #   An object returning the sorting details of the asset as per the configuration
              #   specified in the input.
              #
              #   @param distance [Float] Driving distance between the asset and the sort_destination.
              #
              #   @param duration [Float] Driving duration between the asset and the sort_destination. Please note this fi
              #
              #   @param index [Integer] Index of the ranked asset. The index value starts from 0.
            end
          end
        end
      end
    end
  end
end
