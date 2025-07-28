# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      # @see NextbillionSDK::Resources::Skynet::Trip#start
      class TripStartParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute asset_id
        #   Specify the ID of the asset which is making this trip. The asset will be linked
        #   to this trip.
        #
        #   @return [String]
        required :asset_id, String

        # @!attribute cluster
        #   the cluster of the region you want to use
        #
        #   @return [Symbol, NextbillionSDK::Models::Skynet::TripStartParams::Cluster, nil]
        optional :cluster, enum: -> { NextbillionSDK::Skynet::TripStartParams::Cluster }

        # @!attribute attributes
        #   `attributes` can be used to store custom information about a trip in
        #   `key`:`value` format. Use `attributes` to add any useful information or context
        #   to your trips like the driver name, destination etc.
        #
        #   Please note that the maximum number of `key`:`value` pairs that can be added to
        #   an `attributes` object is 100. Also, the overall size of `attributes` object
        #   should not exceed 65kb.
        #
        #   @return [Object, nil]
        optional :attributes, NextbillionSDK::Internal::Type::Unknown

        # @!attribute custom_id
        #   Set a unique ID for the new `trip`. If not provided, an ID will be automatically
        #   generated in UUID format. A valid `custom_id` can contain letters, numbers, “-”,
        #   & “\_” only.
        #
        #   Please note that the ID of a `trip` can not be changed once it is created.
        #
        #   @return [String, nil]
        optional :custom_id, String

        # @!attribute description
        #   Add a custom description for the trip.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute meta_data
        #   An JSON object to collect additional details about the trip. Use this property
        #   to add any custom information / context about the trip. The input will be passed
        #   on to the response as-is and can be used to display useful information on, for
        #   example, a UI app.
        #
        #   @return [Object, nil]
        optional :meta_data, NextbillionSDK::Internal::Type::Unknown

        # @!attribute name
        #   Specify a name for the trip.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute stops
        #   An array of objects to collect the details about all the stops that need to be
        #   made before the trip ends. Each object represents one stop.
        #
        #   @return [Array<NextbillionSDK::Models::Skynet::TripStartParams::Stop>, nil]
        optional :stops,
                 -> { NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Skynet::TripStartParams::Stop] }

        # @!method initialize(key:, asset_id:, cluster: nil, attributes: nil, custom_id: nil, description: nil, meta_data: nil, name: nil, stops: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Skynet::TripStartParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param asset_id [String] Specify the ID of the asset which is making this trip. The asset will be linked
        #
        #   @param cluster [Symbol, NextbillionSDK::Models::Skynet::TripStartParams::Cluster] the cluster of the region you want to use
        #
        #   @param attributes [Object] `attributes` can be used to store custom information about a trip in `key`:`valu
        #
        #   @param custom_id [String] Set a unique ID for the new `trip`. If not provided, an ID will be automatically
        #
        #   @param description [String] Add a custom description for the trip.
        #
        #   @param meta_data [Object] An JSON object to collect additional details about the trip. Use this property t
        #
        #   @param name [String] Specify a name for the trip.
        #
        #   @param stops [Array<NextbillionSDK::Models::Skynet::TripStartParams::Stop>] An array of objects to collect the details about all the stops that need to be m
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
          #   Specify the ID of the geofence indicating the area where the asset needs to make
          #   a stop, during the trip. Only the IDs of geofences created using
          #   [NextBillion.ai's Geofence API](https://docs.nextbillion.ai/docs/tracking/api/geofence#create-a-geofence)
          #   are accepted.
          #
          #   @return [String, nil]
          optional :geofence_id, String

          # @!attribute meta_data
          #   An JSON object to collect additional details about the stop. Use this property
          #   to add any custom information / context about the stop. The input will be passed
          #   on to the response as-is and can be used to display useful information on, for
          #   example, a UI app.
          #
          #   @return [Object, nil]
          optional :meta_data, NextbillionSDK::Internal::Type::Unknown

          # @!attribute name
          #   Specify a custom name for the stop.
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(geofence_id: nil, meta_data: nil, name: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Skynet::TripStartParams::Stop} for more details.
          #
          #   @param geofence_id [String] Specify the ID of the geofence indicating the area where the asset needs to make
          #
          #   @param meta_data [Object] An JSON object to collect additional details about the stop. Use this property t
          #
          #   @param name [String] Specify a custom name for the stop.
        end
      end
    end
  end
end
