# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      # @see NextbillionSDK::Resources::Skynet::Trip#update
      class TripUpdateParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute asset_id
        #   Use this param to update the ID of the asset which made this trip. Please be
        #   cautious when using this field as providing an ID other than what was provided
        #   at the time of starting the trip, will link a new asset to the trip and un-link
        #   the original asset, even if the trip is still active.
        #
        #   @return [String]
        required :asset_id, String

        # @!attribute cluster
        #   the cluster of the region you want to use
        #
        #   @return [Symbol, NextbillionSDK::Models::Skynet::TripUpdateParams::Cluster, nil]
        optional :cluster, enum: -> { NextbillionSDK::Skynet::TripUpdateParams::Cluster }

        # @!attribute attributes
        #   Use this field to update the `attributes` of the trip. Please note that when
        #   updating the `attributes` field, previously added information will be
        #   overwritten.
        #
        #   @return [Object, nil]
        optional :attributes, NextbillionSDK::Internal::Type::Unknown

        # @!attribute description
        #   Use this parameter to update the custom description of the trip.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute meta_data
        #   Use this JSON object to update additional details about the trip. This property
        #   is used to add any custom information / context about the trip.
        #
        #   Please note that updating the `meta_data` field will overwrite the previously
        #   added information.
        #
        #   @return [Object, nil]
        optional :meta_data, NextbillionSDK::Internal::Type::Unknown

        # @!attribute name
        #   Use this property to update the name of the trip.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute stops
        #   Use this object to update the details of the stops made during the trip. Each
        #   object represents a single stop.
        #
        #   Please note that when updating this field, the new stops will overwrite any
        #   existing stops configured for the trip.
        #
        #   @return [Array<NextbillionSDK::Models::Skynet::TripUpdateParams::Stop>, nil]
        optional :stops,
                 -> {
                   NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Skynet::TripUpdateParams::Stop]
                 }

        # @!method initialize(key:, asset_id:, cluster: nil, attributes: nil, description: nil, meta_data: nil, name: nil, stops: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Skynet::TripUpdateParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param asset_id [String] Use this param to update the ID of the asset which made this trip. Please be cau
        #
        #   @param cluster [Symbol, NextbillionSDK::Models::Skynet::TripUpdateParams::Cluster] the cluster of the region you want to use
        #
        #   @param attributes [Object] Use this field to update the `attributes` of the trip. Please note that when upd
        #
        #   @param description [String] Use this parameter to update the custom description of the trip.
        #
        #   @param meta_data [Object] Use this JSON object to update additional details about the trip. This property
        #
        #   @param name [String] Use this property to update the name of the trip.
        #
        #   @param stops [Array<NextbillionSDK::Models::Skynet::TripUpdateParams::Stop>] Use this object to update the details of the stops made during the trip. Each ob
        #
        #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]

        # the cluster of the region you want to use
        module Cluster
          extend NextbillionSDK::Internal::Type::Enum

          AMERICA = :america

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Stop < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute geofence_id
          #   Use this parameter to update the ID of the geofence indicating the area where
          #   the asset needs to make a stop, during the trip. Only the IDs of geofences
          #   created using
          #   [NextBillion.ai's Geofence API](https://docs.nextbillion.ai/docs/tracking/api/geofence#create-a-geofence)
          #   are accepted.
          #
          #   Please note that updating this field will overwrite the previously added
          #   information.
          #
          #   @return [String, nil]
          optional :geofence_id, String

          # @!attribute meta_data
          #   Use this JSON object to update additional details about the stop. This property
          #   is used to add any custom information / context about the stop.
          #
          #   Please note that updating the `meta_data` field will overwrite the previously
          #   added information.
          #
          #   @return [Object, nil]
          optional :meta_data, NextbillionSDK::Internal::Type::Unknown

          # @!attribute name
          #   Use this filed to update the name of the stop.
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(geofence_id: nil, meta_data: nil, name: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Skynet::TripUpdateParams::Stop} for more details.
          #
          #   @param geofence_id [String] Use this parameter to update the ID of the geofence indicating the area where th
          #
          #   @param meta_data [Object] Use this JSON object to update additional details about the stop. This property
          #
          #   @param name [String] Use this filed to update the name of the stop.
        end
      end
    end
  end
end
