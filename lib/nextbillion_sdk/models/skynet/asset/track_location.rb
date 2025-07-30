# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      module Asset
        class TrackLocation < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute accuracy
          #   If available, this property returns the accuracy of the GPS information received
          #   at the tracked location. It is represented as an estimated horizontal accuracy
          #   radius, in meters, at the 68th percentile confidence level.
          #
          #   @return [Float, nil]
          optional :accuracy, Float

          # @!attribute altitude
          #   If available in the GPS information, this property returns the altitude of the
          #   asset at the tracked location. It is represented as height, in meters, above the
          #   WGS84 reference ellipsoid.
          #
          #   @return [Float, nil]
          optional :altitude, Float

          # @!attribute battery_level
          #   Returns the battery level of the GPS device, as a percentage, when the location
          #   was tracked. It has a minimum value of 0 and a maximum value of 100.
          #
          #   @return [Integer, nil]
          optional :battery_level, Integer

          # @!attribute bearing
          #   If available in the GPS information, this property returns the heading of the
          #   asset calculated from true north in clockwise direction at the tracked location.
          #   Please note that the bearing is not affected by the device orientation.
          #
          #   The bearing will always be in the range of [0, 360).
          #
          #   @return [Float, nil]
          optional :bearing, Float

          # @!attribute location
          #   An object with the coordinates of the last tracked location.
          #
          #   @return [NextbillionSDK::Models::Skynet::Asset::TrackLocation::Location, nil]
          optional :location, -> { NextbillionSDK::Skynet::Asset::TrackLocation::Location }

          # @!attribute meta_data
          #   Specifies the custom data about the location that was added when the location
          #   was uploaded.
          #
          #   @return [Object, nil]
          optional :meta_data, NextbillionSDK::Internal::Type::Unknown

          # @!attribute speed
          #   If available in the GPS information, this property returns the speed of the
          #   asset, in meters per second, at the tracked location.
          #
          #   @return [Float, nil]
          optional :speed, Float

          # @!attribute timestamp
          #   A UNIX epoch timestamp in milliseconds, representing the time at which the
          #   location was tracked.
          #
          #   @return [Integer, nil]
          optional :timestamp, Integer

          # @!attribute tracking_mode
          #   Internal parameter for tracking mode.
          #
          #   @return [String, nil]
          optional :tracking_mode, String

          # @!method initialize(accuracy: nil, altitude: nil, battery_level: nil, bearing: nil, location: nil, meta_data: nil, speed: nil, timestamp: nil, tracking_mode: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Skynet::Asset::TrackLocation} for more details.
          #
          #   An object with details of the tracked location. Please note that if there are no
          #   tracking records for an asset, no location data will be returned.
          #
          #   @param accuracy [Float] If available, this property returns the accuracy of the GPS information received
          #
          #   @param altitude [Float] If available in the GPS information, this property returns the altitude of the a
          #
          #   @param battery_level [Integer] Returns the battery level of the GPS device, as a percentage, when the location
          #
          #   @param bearing [Float] If available in the GPS information, this property returns the heading of the as
          #
          #   @param location [NextbillionSDK::Models::Skynet::Asset::TrackLocation::Location] An object with the coordinates of the last tracked location.
          #
          #   @param meta_data [Object] Specifies the custom data about the location that was added when the location wa
          #
          #   @param speed [Float] If available in the GPS information, this property returns the speed of the asse
          #
          #   @param timestamp [Integer] A UNIX epoch timestamp in milliseconds, representing the time at which the locat
          #
          #   @param tracking_mode [String] Internal parameter for tracking mode.

          # @see NextbillionSDK::Models::Skynet::Asset::TrackLocation#location
          class Location < NextbillionSDK::Internal::Type::BaseModel
            # @!attribute lat
            #   Latitude of the tracked location of the asset.
            #
            #   @return [Float, nil]
            optional :lat, Float

            # @!attribute lon
            #   Longitude of the tracked location of the asset.
            #
            #   @return [Float, nil]
            optional :lon, Float

            # @!method initialize(lat: nil, lon: nil)
            #   An object with the coordinates of the last tracked location.
            #
            #   @param lat [Float] Latitude of the tracked location of the asset.
            #
            #   @param lon [Float] Longitude of the tracked location of the asset.
          end
        end
      end
    end
  end
end
