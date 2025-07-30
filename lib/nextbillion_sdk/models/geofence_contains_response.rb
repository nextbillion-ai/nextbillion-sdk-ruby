# frozen_string_literal: true

module NextbillionSDK
  module Models
    # @see NextbillionSDK::Resources::Geofence#contains
    class GeofenceContainsResponse < NextbillionSDK::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [NextbillionSDK::Models::GeofenceContainsResponse::Data, nil]
      optional :data, -> { NextbillionSDK::Models::GeofenceContainsResponse::Data }

      # @!attribute status
      #   A string indicating the state of the response. On successful responses, the
      #   value will be Ok. Indicative error messages are returned for different errors.
      #   See the [API Error Codes](#api-error-codes) section below for more information.
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(data: nil, status: nil)
      #   Some parameter documentations has been truncated, see
      #   {NextbillionSDK::Models::GeofenceContainsResponse} for more details.
      #
      #   @param data [NextbillionSDK::Models::GeofenceContainsResponse::Data]
      #
      #   @param status [String] A string indicating the state of the response. On successful responses, the valu

      # @see NextbillionSDK::Models::GeofenceContainsResponse#data
      class Data < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute result_list
        #   An array of objects containing each of the geofences provided in the geofences
        #   input. If geofences in not provided then the array will return all the geofences
        #   associated with the key
        #
        #   @return [Array<NextbillionSDK::Models::GeofenceContainsResponse::Data::ResultList>, nil]
        optional :result_list,
                 -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::GeofenceContainsResponse::Data::ResultList] }

        # @!method initialize(result_list: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::GeofenceContainsResponse::Data} for more details.
        #
        #   @param result_list [Array<NextbillionSDK::Models::GeofenceContainsResponse::Data::ResultList>] An array of objects containing each of the geofences provided in the geofences i

        class ResultList < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute geofence_detail
          #   An object with details of the geofence.
          #
          #   @return [NextbillionSDK::Models::GeofenceAPI, nil]
          optional :geofence_detail, -> { NextbillionSDK::GeofenceAPI }

          # @!attribute geofence_id
          #   ID of the geofence provided/generated at the time of creating the geofence.
          #
          #   @return [String, nil]
          optional :geofence_id, String

          # @!attribute result
          #   An array of objects with results of the contains check for each of the
          #   coordinate points in locations against the geofence represented by geofence_id.
          #
          #   @return [Array<NextbillionSDK::Models::GeofenceContainsResponse::Data::ResultList::Result>, nil]
          optional :result,
                   -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::GeofenceContainsResponse::Data::ResultList::Result] }

          # @!method initialize(geofence_detail: nil, geofence_id: nil, result: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::GeofenceContainsResponse::Data::ResultList} for more
          #   details.
          #
          #   @param geofence_detail [NextbillionSDK::Models::GeofenceAPI] An object with details of the geofence.
          #
          #   @param geofence_id [String] ID of the geofence provided/generated at the time of creating the geofence.
          #
          #   @param result [Array<NextbillionSDK::Models::GeofenceContainsResponse::Data::ResultList::Result>] An array of objects with results of the contains check for each of the coordinat

          class Result < NextbillionSDK::Internal::Type::BaseModel
            # @!attribute contain
            #   true when a coordinate point in locations is contained by this geofence.
            #
            #   @return [Boolean, nil]
            optional :contain, NextbillionSDK::Internal::Type::Boolean

            # @!attribute location_index
            #   Index of the coordinate point in the input locations.
            #
            #   @return [Integer, nil]
            optional :location_index, Integer

            # @!method initialize(contain: nil, location_index: nil)
            #   @param contain [Boolean] true when a coordinate point in locations is contained by this geofence.
            #
            #   @param location_index [Integer] Index of the coordinate point in the input locations.
          end
        end
      end
    end
  end
end
