# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      module Asset
        class TrackLocation < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Skynet::Asset::TrackLocation,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # If available, this property returns the accuracy of the GPS information received
          # at the tracked location. It is represented as an estimated horizontal accuracy
          # radius, in meters, at the 68th percentile confidence level.
          sig { returns(T.nilable(Float)) }
          attr_reader :accuracy

          sig { params(accuracy: Float).void }
          attr_writer :accuracy

          # If available in the GPS information, this property returns the altitude of the
          # asset at the tracked location. It is represented as height, in meters, above the
          # WGS84 reference ellipsoid.
          sig { returns(T.nilable(Float)) }
          attr_reader :altitude

          sig { params(altitude: Float).void }
          attr_writer :altitude

          # Returns the battery level of the GPS device, as a percentage, when the location
          # was tracked. It has a minimum value of 0 and a maximum value of 100.
          sig { returns(T.nilable(Integer)) }
          attr_reader :battery_level

          sig { params(battery_level: Integer).void }
          attr_writer :battery_level

          # If available in the GPS information, this property returns the heading of the
          # asset calculated from true north in clockwise direction at the tracked location.
          # Please note that the bearing is not affected by the device orientation.
          #
          # The bearing will always be in the range of [0, 360).
          sig { returns(T.nilable(Float)) }
          attr_reader :bearing

          sig { params(bearing: Float).void }
          attr_writer :bearing

          # An object with the coordinates of the last tracked location.
          sig do
            returns(
              T.nilable(NextbillionSDK::Skynet::Asset::TrackLocation::Location)
            )
          end
          attr_reader :location

          sig do
            params(
              location:
                NextbillionSDK::Skynet::Asset::TrackLocation::Location::OrHash
            ).void
          end
          attr_writer :location

          # Specifies the custom data about the location that was added when the location
          # was uploaded.
          sig { returns(T.nilable(T.anything)) }
          attr_reader :meta_data

          sig { params(meta_data: T.anything).void }
          attr_writer :meta_data

          # If available in the GPS information, this property returns the speed of the
          # asset, in meters per second, at the tracked location.
          sig { returns(T.nilable(Float)) }
          attr_reader :speed

          sig { params(speed: Float).void }
          attr_writer :speed

          # A UNIX epoch timestamp in milliseconds, representing the time at which the
          # location was tracked.
          sig { returns(T.nilable(Integer)) }
          attr_reader :timestamp

          sig { params(timestamp: Integer).void }
          attr_writer :timestamp

          # Internal parameter for tracking mode.
          sig { returns(T.nilable(String)) }
          attr_reader :tracking_mode

          sig { params(tracking_mode: String).void }
          attr_writer :tracking_mode

          # An object with details of the tracked location. Please note that if there are no
          # tracking records for an asset, no location data will be returned.
          sig do
            params(
              accuracy: Float,
              altitude: Float,
              battery_level: Integer,
              bearing: Float,
              location:
                NextbillionSDK::Skynet::Asset::TrackLocation::Location::OrHash,
              meta_data: T.anything,
              speed: Float,
              timestamp: Integer,
              tracking_mode: String
            ).returns(T.attached_class)
          end
          def self.new(
            # If available, this property returns the accuracy of the GPS information received
            # at the tracked location. It is represented as an estimated horizontal accuracy
            # radius, in meters, at the 68th percentile confidence level.
            accuracy: nil,
            # If available in the GPS information, this property returns the altitude of the
            # asset at the tracked location. It is represented as height, in meters, above the
            # WGS84 reference ellipsoid.
            altitude: nil,
            # Returns the battery level of the GPS device, as a percentage, when the location
            # was tracked. It has a minimum value of 0 and a maximum value of 100.
            battery_level: nil,
            # If available in the GPS information, this property returns the heading of the
            # asset calculated from true north in clockwise direction at the tracked location.
            # Please note that the bearing is not affected by the device orientation.
            #
            # The bearing will always be in the range of [0, 360).
            bearing: nil,
            # An object with the coordinates of the last tracked location.
            location: nil,
            # Specifies the custom data about the location that was added when the location
            # was uploaded.
            meta_data: nil,
            # If available in the GPS information, this property returns the speed of the
            # asset, in meters per second, at the tracked location.
            speed: nil,
            # A UNIX epoch timestamp in milliseconds, representing the time at which the
            # location was tracked.
            timestamp: nil,
            # Internal parameter for tracking mode.
            tracking_mode: nil
          )
          end

          sig do
            override.returns(
              {
                accuracy: Float,
                altitude: Float,
                battery_level: Integer,
                bearing: Float,
                location:
                  NextbillionSDK::Skynet::Asset::TrackLocation::Location,
                meta_data: T.anything,
                speed: Float,
                timestamp: Integer,
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
                  NextbillionSDK::Skynet::Asset::TrackLocation::Location,
                  NextbillionSDK::Internal::AnyHash
                )
              end

            # Latitude of the tracked location of the asset.
            sig { returns(T.nilable(Float)) }
            attr_reader :lat

            sig { params(lat: Float).void }
            attr_writer :lat

            # Longitude of the tracked location of the asset.
            sig { returns(T.nilable(Float)) }
            attr_reader :lon

            sig { params(lon: Float).void }
            attr_writer :lon

            # An object with the coordinates of the last tracked location.
            sig { params(lat: Float, lon: Float).returns(T.attached_class) }
            def self.new(
              # Latitude of the tracked location of the asset.
              lat: nil,
              # Longitude of the tracked location of the asset.
              lon: nil
            )
            end

            sig { override.returns({ lat: Float, lon: Float }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
