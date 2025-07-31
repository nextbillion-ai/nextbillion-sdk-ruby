# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::Geofence#list
    class GeofenceListResponse < NextbillionSDK::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [NextbillionSDK::Models::GeofenceListResponse::Data, nil]
      optional :data, -> { NextbillionSDK::Models::GeofenceListResponse::Data }

      # @!attribute status
      #   A string indicating the state of the response. On successful responses, the
      #   value will be `Ok`. Indicative error messages are returned for different errors.
      #   See the [API Error Codes](#api-error-codes) section below for more information.
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(data: nil, status: nil)
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::GeofenceListResponse} for more details.
      #
      #   @param data [NextbillionSDK::Models::GeofenceListResponse::Data]
      #
      #   @param status [String] A string indicating the state of the response. On successful responses, the valu

      # @see NextbillionSDK::Models::GeofenceListResponse#data
      class Data < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute list
        #
        #   @return [Array<NextbillionSDK::Models::GeofenceAPI>, nil]
        optional :list, -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::GeofenceAPI] }

        # @!attribute page
        #   An object with pagination details of the search results. Use this object to
        #   implement pagination in your application.
        #
        #   @return [NextbillionSDK::Models::Skynet::Pagination, nil]
        optional :page, -> { NextbillionSDK::Skynet::Pagination }

        # @!method initialize(list: nil, page: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::GeofenceListResponse::Data} for more details.
        #
        #   @param list [Array<NextbillionSDK::Models::GeofenceAPI>]
        #
        #   @param page [NextbillionSDK::Models::Skynet::Pagination] An object with pagination details of the search results. Use this object to impl
      end
    end
  end
end
