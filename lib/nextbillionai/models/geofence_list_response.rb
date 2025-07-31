# frozen_string_literal: true

module Nextbillionai
  module Models
    # @see Nextbillionai::Resources::Geofence#list
    class GeofenceListResponse < Nextbillionai::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Nextbillionai::Models::GeofenceListResponse::Data, nil]
      optional :data, -> { Nextbillionai::Models::GeofenceListResponse::Data }

      # @!attribute status
      #   A string indicating the state of the response. On successful responses, the
      #   value will be Ok. Indicative error messages are returned for different errors.
      #   See the [API Error Codes](#api-error-codes) section below for more information.
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(data: nil, status: nil)
      #   Some parameter documentations has been truncated, see
      #   {Nextbillionai::Models::GeofenceListResponse} for more details.
      #
      #   @param data [Nextbillionai::Models::GeofenceListResponse::Data]
      #
      #   @param status [String] A string indicating the state of the response. On successful responses, the valu

      # @see Nextbillionai::Models::GeofenceListResponse#data
      class Data < Nextbillionai::Internal::Type::BaseModel
        # @!attribute list
        #
        #   @return [Array<Nextbillionai::Models::GeofenceAPI>, nil]
        optional :list, -> { Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::GeofenceAPI] }

        # @!attribute page
        #   An object with pagination details of the search results. Use this object to
        #   implement pagination in your application.
        #
        #   @return [Nextbillionai::Models::Skynet::Pagination, nil]
        optional :page, -> { Nextbillionai::Skynet::Pagination }

        # @!method initialize(list: nil, page: nil)
        #   Some parameter documentations has been truncated, see
        #   {Nextbillionai::Models::GeofenceListResponse::Data} for more details.
        #
        #   @param list [Array<Nextbillionai::Models::GeofenceAPI>]
        #
        #   @param page [Nextbillionai::Models::Skynet::Pagination] An object with pagination details of the search results. Use this object to impl
      end
    end
  end
end
