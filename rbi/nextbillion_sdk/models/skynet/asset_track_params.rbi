# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      class AssetTrackParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Skynet::AssetTrackParams,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # ID of the device used to upload the tracking information of the `asset`.
        #
        # Please note that the `device_id` used here must already be linked to the
        # `asset`. Use the _Bind Device to Asset_ method to link a device with your
        # `asset`.
        sig { returns(String) }
        attr_accessor :device_id

        # An array of objects to collect the location tracking information for an `asset`.
        # Each object must correspond to details of only one location.
        sig { returns(NextbillionSDK::Skynet::AssetTrackParams::Locations) }
        attr_reader :locations

        sig do
          params(
            locations:
              NextbillionSDK::Skynet::AssetTrackParams::Locations::OrHash
          ).void
        end
        attr_writer :locations

        # the cluster of the region you want to use
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Skynet::AssetTrackParams::Cluster::OrSymbol
            )
          )
        end
        attr_reader :cluster

        sig do
          params(
            cluster: NextbillionSDK::Skynet::AssetTrackParams::Cluster::OrSymbol
          ).void
        end
        attr_writer :cluster

        sig do
          params(
            key: String,
            device_id: String,
            locations:
              NextbillionSDK::Skynet::AssetTrackParams::Locations::OrHash,
            cluster:
              NextbillionSDK::Skynet::AssetTrackParams::Cluster::OrSymbol,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # ID of the device used to upload the tracking information of the `asset`.
          #
          # Please note that the `device_id` used here must already be linked to the
          # `asset`. Use the _Bind Device to Asset_ method to link a device with your
          # `asset`.
          device_id:,
          # An array of objects to collect the location tracking information for an `asset`.
          # Each object must correspond to details of only one location.
          locations:,
          # the cluster of the region you want to use
          cluster: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              device_id: String,
              locations: NextbillionSDK::Skynet::AssetTrackParams::Locations,
              cluster:
                NextbillionSDK::Skynet::AssetTrackParams::Cluster::OrSymbol,
              request_options: NextbillionSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Locations < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Skynet::AssetTrackParams::Locations,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # An object to collect the coordinate details of the tracked location. Please note
          # this field is mandatory when uploading locations for an asset.
          sig do
            returns(
              NextbillionSDK::Skynet::AssetTrackParams::Locations::Location
            )
          end
          attr_reader :location

          sig do
            params(
              location:
                NextbillionSDK::Skynet::AssetTrackParams::Locations::Location::OrHash
            ).void
          end
          attr_writer :location

          # Use this parameter to provide the time, expressed as UNIX epoch timestamp in
          # milliseconds, when the location was tracked. Please note this field is mandatory
          # when uploading locations for an asset.
          sig { returns(Integer) }
          attr_accessor :timestamp

          # Use this parameter to provide the accuracy of the GPS information at the tracked
          # location. It is the estimated horizontal accuracy radius, in meters.
          sig { returns(T.nilable(Float)) }
          attr_reader :accuracy

          sig { params(accuracy: Float).void }
          attr_writer :accuracy

          # Use this parameter to provide the altitude, in meters, of the `asset` at the
          # tracked location.
          sig { returns(T.nilable(Float)) }
          attr_reader :altitude

          sig { params(altitude: Float).void }
          attr_writer :altitude

          # Use this parameter to provide the battery level of the GPS device, as a
          # percentage, when the location is tracked. It should have a minimum value of 0
          # and a maximum value of 100.
          sig { returns(T.nilable(Integer)) }
          attr_reader :battery_level

          sig { params(battery_level: Integer).void }
          attr_writer :battery_level

          # Use this parameter to provide the heading of the `asset`, in radians, calculated
          # from true north in clockwise direction. This should always be in the range of
          # [0, 360).
          sig { returns(T.nilable(Float)) }
          attr_reader :bearing

          sig { params(bearing: Float).void }
          attr_writer :bearing

          # Use this object to add any custom data about the location that is being
          # uploaded. Recommended to use the `key`:`value` format for adding the desired
          # information.
          #
          # Please note that the maximum size of `meta_data` object should not exceed 65Kb.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :meta_data

          sig { params(meta_data: T.anything).void }
          attr_writer :meta_data

          # Use this parameter to provide the speed of the `asset`, in meters per second, at
          # the tracked location.
          sig { returns(T.nilable(Float)) }
          attr_reader :speed

          sig { params(speed: Float).void }
          attr_writer :speed

          # NB tracking mode.
          sig { returns(T.nilable(String)) }
          attr_reader :tracking_mode

          sig { params(tracking_mode: String).void }
          attr_writer :tracking_mode

          # An array of objects to collect the location tracking information for an `asset`.
          # Each object must correspond to details of only one location.
          sig do
            params(
              location:
                NextbillionSDK::Skynet::AssetTrackParams::Locations::Location::OrHash,
              timestamp: Integer,
              accuracy: Float,
              altitude: Float,
              battery_level: Integer,
              bearing: Float,
              meta_data: T.anything,
              speed: Float,
              tracking_mode: String
            ).returns(T.attached_class)
          end
          def self.new(
            # An object to collect the coordinate details of the tracked location. Please note
            # this field is mandatory when uploading locations for an asset.
            location:,
            # Use this parameter to provide the time, expressed as UNIX epoch timestamp in
            # milliseconds, when the location was tracked. Please note this field is mandatory
            # when uploading locations for an asset.
            timestamp:,
            # Use this parameter to provide the accuracy of the GPS information at the tracked
            # location. It is the estimated horizontal accuracy radius, in meters.
            accuracy: nil,
            # Use this parameter to provide the altitude, in meters, of the `asset` at the
            # tracked location.
            altitude: nil,
            # Use this parameter to provide the battery level of the GPS device, as a
            # percentage, when the location is tracked. It should have a minimum value of 0
            # and a maximum value of 100.
            battery_level: nil,
            # Use this parameter to provide the heading of the `asset`, in radians, calculated
            # from true north in clockwise direction. This should always be in the range of
            # [0, 360).
            bearing: nil,
            # Use this object to add any custom data about the location that is being
            # uploaded. Recommended to use the `key`:`value` format for adding the desired
            # information.
            #
            # Please note that the maximum size of `meta_data` object should not exceed 65Kb.
            meta_data: nil,
            # Use this parameter to provide the speed of the `asset`, in meters per second, at
            # the tracked location.
            speed: nil,
            # NB tracking mode.
            tracking_mode: nil
          )
          end

          sig do
            override.returns(
              {
                location:
                  NextbillionSDK::Skynet::AssetTrackParams::Locations::Location,
                timestamp: Integer,
                accuracy: Float,
                altitude: Float,
                battery_level: Integer,
                bearing: Float,
                meta_data: T.anything,
                speed: Float,
                tracking_mode: String
              }
            )
          end
          def to_hash
          end

          class Location < NextbillionSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  NextbillionSDK::Skynet::AssetTrackParams::Locations::Location,
                  NextbillionSDK::Internal::AnyHash
                )
              end

            # Latitude of the tracked location of the `asset`.
            sig { returns(Float) }
            attr_accessor :lat

            # Longitude of the tracked location of the `asset`.
            sig { returns(Float) }
            attr_accessor :lon

            # An object to collect the coordinate details of the tracked location. Please note
            # this field is mandatory when uploading locations for an asset.
            sig { params(lat: Float, lon: Float).returns(T.attached_class) }
            def self.new(
              # Latitude of the tracked location of the `asset`.
              lat:,
              # Longitude of the tracked location of the `asset`.
              lon:
            )
            end

            sig { override.returns({ lat: Float, lon: Float }) }
            def to_hash
            end
          end
        end

        # the cluster of the region you want to use
        module Cluster
          extend NextbillionSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, NextbillionSDK::Skynet::AssetTrackParams::Cluster)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AMERICA =
            T.let(
              :america,
              NextbillionSDK::Skynet::AssetTrackParams::Cluster::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                NextbillionSDK::Skynet::AssetTrackParams::Cluster::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
