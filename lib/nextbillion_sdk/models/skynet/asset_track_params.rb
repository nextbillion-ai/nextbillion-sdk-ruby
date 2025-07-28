# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      # @see NextbillionSDK::Resources::Skynet::Asset#track
      class AssetTrackParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        # @!attribute key
        #   A key is a unique identifier that is required to authenticate a request to the
        #   API.
        #
        #   @return [String]
        required :key, String

        # @!attribute device_id
        #   ID of the device used to upload the tracking information of the `asset`.
        #
        #   Please note that the `device_id` used here must already be linked to the
        #   `asset`. Use the _Bind Device to Asset_ method to link a device with your
        #   `asset`.
        #
        #   @return [String]
        required :device_id, String

        # @!attribute locations
        #   An array of objects to collect the location tracking information for an `asset`.
        #   Each object must correspond to details of only one location.
        #
        #   @return [NextbillionSDK::Models::Skynet::AssetTrackParams::Locations]
        required :locations, -> { NextbillionSDK::Skynet::AssetTrackParams::Locations }

        # @!attribute cluster
        #   the cluster of the region you want to use
        #
        #   @return [Symbol, NextbillionSDK::Models::Skynet::AssetTrackParams::Cluster, nil]
        optional :cluster, enum: -> { NextbillionSDK::Skynet::AssetTrackParams::Cluster }

        # @!method initialize(key:, device_id:, locations:, cluster: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Skynet::AssetTrackParams} for more details.
        #
        #   @param key [String] A key is a unique identifier that is required to authenticate a request to the A
        #
        #   @param device_id [String] ID of the device used to upload the tracking information of the `asset`.
        #
        #   @param locations [NextbillionSDK::Models::Skynet::AssetTrackParams::Locations] An array of objects to collect the location tracking information for an `asset`.
        #
        #   @param cluster [Symbol, NextbillionSDK::Models::Skynet::AssetTrackParams::Cluster] the cluster of the region you want to use
        #
        #   @param request_options [NextbillionSDK::RequestOptions, Hash{Symbol=>Object}]

        class Locations < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute location
          #   An object to collect the coordinate details of the tracked location. Please note
          #   this field is mandatory when uploading locations for an asset.
          #
          #   @return [NextbillionSDK::Models::Skynet::AssetTrackParams::Locations::Location]
          required :location, -> { NextbillionSDK::Skynet::AssetTrackParams::Locations::Location }

          # @!attribute timestamp
          #   Use this parameter to provide the time, expressed as UNIX epoch timestamp in
          #   milliseconds, when the location was tracked. Please note this field is mandatory
          #   when uploading locations for an asset.
          #
          #   @return [Integer]
          required :timestamp, Integer

          # @!attribute accuracy
          #   Use this parameter to provide the accuracy of the GPS information at the tracked
          #   location. It is the estimated horizontal accuracy radius, in meters.
          #
          #   @return [Float, nil]
          optional :accuracy, Float

          # @!attribute altitude
          #   Use this parameter to provide the altitude, in meters, of the `asset` at the
          #   tracked location.
          #
          #   @return [Float, nil]
          optional :altitude, Float

          # @!attribute battery_level
          #   Use this parameter to provide the battery level of the GPS device, as a
          #   percentage, when the location is tracked. It should have a minimum value of 0
          #   and a maximum value of 100.
          #
          #   @return [Integer, nil]
          optional :battery_level, Integer

          # @!attribute bearing
          #   Use this parameter to provide the heading of the `asset`, in radians, calculated
          #   from true north in clockwise direction. This should always be in the range of
          #   [0, 360).
          #
          #   @return [Float, nil]
          optional :bearing, Float

          # @!attribute meta_data
          #   Use this object to add any custom data about the location that is being
          #   uploaded. Recommended to use the `key`:`value` format for adding the desired
          #   information.
          #
          #   Please note that the maximum size of `meta_data` object should not exceed 65Kb.
          #
          #   @return [Object, nil]
          optional :meta_data, NextbillionSDK::Internal::Type::Unknown

          # @!attribute speed
          #   Use this parameter to provide the speed of the `asset`, in meters per second, at
          #   the tracked location.
          #
          #   @return [Float, nil]
          optional :speed, Float

          # @!attribute tracking_mode
          #   NB tracking mode.
          #
          #   @return [String, nil]
          optional :tracking_mode, String

          # @!method initialize(location:, timestamp:, accuracy: nil, altitude: nil, battery_level: nil, bearing: nil, meta_data: nil, speed: nil, tracking_mode: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Skynet::AssetTrackParams::Locations} for more details.
          #
          #   An array of objects to collect the location tracking information for an `asset`.
          #   Each object must correspond to details of only one location.
          #
          #   @param location [NextbillionSDK::Models::Skynet::AssetTrackParams::Locations::Location] An object to collect the coordinate details of the tracked location. Please note
          #
          #   @param timestamp [Integer] Use this parameter to provide the time, expressed as UNIX epoch timestamp in mil
          #
          #   @param accuracy [Float] Use this parameter to provide the accuracy of the GPS information at the tracked
          #
          #   @param altitude [Float] Use this parameter to provide the altitude, in meters, of the `asset` at the tra
          #
          #   @param battery_level [Integer] Use this parameter to provide the battery level of the GPS device, as a percenta
          #
          #   @param bearing [Float] Use this parameter to provide the heading of the `asset`, in radians, calculated
          #
          #   @param meta_data [Object] Use this object to add any custom data about the location that is being uploaded
          #
          #   @param speed [Float] Use this parameter to provide the speed of the `asset`, in meters per second, at
          #
          #   @param tracking_mode [String] NB tracking mode.

          # @see NextbillionSDK::Models::Skynet::AssetTrackParams::Locations#location
          class Location < NextbillionSDK::Internal::Type::BaseModel
            # @!attribute lat
            #   Latitude of the tracked location of the `asset`.
            #
            #   @return [Float]
            required :lat, Float

            # @!attribute lon
            #   Longitude of the tracked location of the `asset`.
            #
            #   @return [Float]
            required :lon, Float

            # @!method initialize(lat:, lon:)
            #   An object to collect the coordinate details of the tracked location. Please note
            #   this field is mandatory when uploading locations for an asset.
            #
            #   @param lat [Float] Latitude of the tracked location of the `asset`.
            #
            #   @param lon [Float] Longitude of the tracked location of the `asset`.
          end
        end

        # the cluster of the region you want to use
        module Cluster
          extend NextbillionSDK::Internal::Type::Enum

          AMERICA = :america

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
