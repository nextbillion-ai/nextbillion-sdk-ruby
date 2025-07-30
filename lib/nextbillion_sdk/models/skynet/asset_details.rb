# frozen_string_literal: true

module NextbillionSDK
  module Models
    module Skynet
      class AssetDetails < NextbillionSDK::Internal::Type::BaseModel
        # @!attribute id
        #   ID of the asset. This is the same ID that was generated/provided at the time of
        #   creating the asset.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute attributes
        #   A string dictionary object containing attributes of the asset. These attributes
        #   were associated with the asset at the time of creating or updating it.
        #
        #   attributes can be added to an asset using the _Update Asset Attributes_ method.
        #
        #   @return [Object, nil]
        optional :attributes, NextbillionSDK::Internal::Type::Unknown

        # @!attribute created_at
        #   A UNIX epoch timestamp in seconds representing the time at which the asset was
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

        # @!attribute device_id
        #   ID of the device that is linked to this asset. Please note that there can be
        #   multiple device_id linked to a single asset. An empty response is returned if no
        #   devices are linked to the asset.
        #
        #   User can link a device to an asset using the _Bind Asset to Device_ method.
        #
        #   @return [String, nil]
        optional :device_id, String

        # @!attribute latest_location
        #   An object with details of the last tracked location of the asset.
        #
        #   @return [NextbillionSDK::Models::Skynet::AssetDetails::LatestLocation, nil]
        optional :latest_location, -> { NextbillionSDK::Skynet::AssetDetails::LatestLocation }

        # @!attribute meta_data
        #   Any valid json object data. Can be used to save customized data. Max size is
        #   65kb.
        #
        #   @return [Object, nil]
        optional :meta_data, NextbillionSDK::Internal::Type::Unknown

        # @!attribute name
        #   Name of the asset. The value would be the same as that provided for the name
        #   parameter at the time of creating or updating the asset.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute state
        #   State of the asset. It will be "active" when the asset is in use or available
        #   for use, and it will be "deleted" in case the asset has been deleted.
        #
        #   @return [String, nil]
        optional :state, String

        # @!attribute tags
        #   **This parameter will be deprecated soon! Please move existing tags to
        #   attributes parameter.**
        #
        #   Tags of the asset. These were associated with the asset when it was created or
        #   updated. tags can be used for filtering assets in operations like _Get Asset
        #   List_ and asset **Search** methods. They can also be used for monitoring of
        #   assets using **Monitor** methods after linking tags and asset.
        #
        #   @return [Array<String>, nil]
        optional :tags, NextbillionSDK::Internal::Type::ArrayOf[String]

        # @!attribute tracked_at
        #   A UNIX epoch timestamp in seconds representing the last time when the asset was
        #   tracked.
        #
        #   @return [Integer, nil]
        optional :tracked_at, Integer

        # @!attribute updated_at
        #   A UNIX epoch timestamp in seconds representing the time at which the asset was
        #   last updated.
        #
        #   @return [Integer, nil]
        optional :updated_at, Integer

        # @!method initialize(id: nil, attributes: nil, created_at: nil, description: nil, device_id: nil, latest_location: nil, meta_data: nil, name: nil, state: nil, tags: nil, tracked_at: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {NextbillionSDK::Models::Skynet::AssetDetails} for more details.
        #
        #   An object with details of the asset properties.
        #
        #   @param id [String] ID of the asset. This is the same ID that was generated/provided at the time of
        #
        #   @param attributes [Object] A string dictionary object containing attributes of the asset. These attributes
        #
        #   @param created_at [Integer] A UNIX epoch timestamp in seconds representing the time at which the asset was c
        #
        #   @param description [String] Description of the asset. The value would be the same as that provided for the d
        #
        #   @param device_id [String] ID of the device that is linked to this asset. Please note that there can be mul
        #
        #   @param latest_location [NextbillionSDK::Models::Skynet::AssetDetails::LatestLocation] An object with details of the last tracked location of the asset.
        #
        #   @param meta_data [Object] Any valid json object data. Can be used to save customized data. Max size is 65k
        #
        #   @param name [String] Name of the asset. The value would be the same as that provided for the name par
        #
        #   @param state [String] State of the asset. It will be "active" when the asset is in use or available fo
        #
        #   @param tags [Array<String>] \*\*This parameter will be deprecated soon! Please move existing tags to
        #   attribute
        #
        #   @param tracked_at [Integer] A UNIX epoch timestamp in seconds representing the last time when the asset was
        #
        #   @param updated_at [Integer] A UNIX epoch timestamp in seconds representing the time at which the asset was l

        # @see NextbillionSDK::Models::Skynet::AssetDetails#latest_location
        class LatestLocation < NextbillionSDK::Internal::Type::BaseModel
          # @!attribute accuracy
          #   If available, this property returns the accuracy of the GPS information received
          #   at the last tracked location. It is represented as an estimated horizontal
          #   accuracy radius, in meters, at the 68th percentile confidence level.
          #
          #   @return [Float, nil]
          optional :accuracy, Float

          # @!attribute altitude
          #   If available in the GPS information, this property returns the altitude of the
          #   asset at the last tracked location. It is represented as height, in meters,
          #   above the WGS84 reference ellipsoid.
          #
          #   @return [Float, nil]
          optional :altitude, Float

          # @!attribute bearing
          #   If available in the GPS information, this property returns the heading of the
          #   asset calculated from true north in clockwise direction at the last tracked
          #   location. Please note that the bearing is not affected by the device
          #   orientation.
          #
          #   The bearing will always be in the range of [0, 360).
          #
          #   @return [Float, nil]
          optional :bearing, Float

          # @!attribute location
          #   An object with the coordinates of the last tracked location.
          #
          #   @return [NextbillionSDK::Models::Skynet::AssetDetails::LatestLocation::Location, nil]
          optional :location, -> { NextbillionSDK::Skynet::AssetDetails::LatestLocation::Location }

          # @!attribute speed
          #   If available in the GPS information, this property returns the speed of the
          #   asset, in meters per second, at the last tracked location.
          #
          #   @return [Float, nil]
          optional :speed, Float

          # @!attribute timestamp
          #   A UNIX epoch timestamp in milliseconds, representing the time at which the
          #   location was tracked.
          #
          #   @return [Integer, nil]
          optional :timestamp, Integer

          # @!method initialize(accuracy: nil, altitude: nil, bearing: nil, location: nil, speed: nil, timestamp: nil)
          #   Some parameter documentations has been truncated, see
          #   {NextbillionSDK::Models::Skynet::AssetDetails::LatestLocation} for more details.
          #
          #   An object with details of the last tracked location of the asset.
          #
          #   @param accuracy [Float] If available, this property returns the accuracy of the GPS information received
          #
          #   @param altitude [Float] If available in the GPS information, this property returns the altitude of the a
          #
          #   @param bearing [Float] If available in the GPS information, this property returns the heading of the as
          #
          #   @param location [NextbillionSDK::Models::Skynet::AssetDetails::LatestLocation::Location] An object with the coordinates of the last tracked location.
          #
          #   @param speed [Float] If available in the GPS information, this property returns the speed of the asse
          #
          #   @param timestamp [Integer] A UNIX epoch timestamp in milliseconds, representing the time at which the locat

          # @see NextbillionSDK::Models::Skynet::AssetDetails::LatestLocation#location
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
