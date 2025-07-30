# typed: strong

module Nextbillionai
  module Models
    module Skynet
      class AssetDetails < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Skynet::AssetDetails,
              Nextbillionai::Internal::AnyHash
            )
          end

        # ID of the `asset`. This is the same ID that was generated/provided at the time
        # of creating the `asset`.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # A string dictionary object containing `attributes` of the `asset`. These
        # `attributes` were associated with the `asset` at the time of creating or
        # updating it.
        #
        # `attributes` can be added to an `asset` using the _Update Asset Attributes_
        # method.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :attributes

        sig { params(attributes: T.anything).void }
        attr_writer :attributes

        # A UNIX epoch timestamp in seconds representing the time at which the `asset` was
        # created.
        sig { returns(T.nilable(Integer)) }
        attr_reader :created_at

        sig { params(created_at: Integer).void }
        attr_writer :created_at

        # Description of the `asset`. The value would be the same as that provided for the
        # `description` parameter at the time of creating or updating the `asset`.
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # ID of the `device` that is linked to this asset. Please note that there can be
        # multiple `device_id` linked to a single `asset`. An empty response is returned
        # if no devices are linked to the `asset`.
        #
        # User can link a device to an `asset` using the _Bind Asset to Device_ method.
        sig { returns(T.nilable(String)) }
        attr_reader :device_id

        sig { params(device_id: String).void }
        attr_writer :device_id

        # An object with details of the last tracked location of the asset.
        sig do
          returns(
            T.nilable(Nextbillionai::Skynet::AssetDetails::LatestLocation)
          )
        end
        attr_reader :latest_location

        sig do
          params(
            latest_location:
              Nextbillionai::Skynet::AssetDetails::LatestLocation::OrHash
          ).void
        end
        attr_writer :latest_location

        # Any valid json object data. Can be used to save customized data. Max size is
        # 65kb.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :meta_data

        sig { params(meta_data: T.anything).void }
        attr_writer :meta_data

        # Name of the `asset`. The value would be the same as that provided for the `name`
        # parameter at the time of creating or updating the `asset`.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # State of the asset. It will be "active" when the asset is in use or available
        # for use, and it will be "deleted" in case the asset has been deleted.
        sig { returns(T.nilable(String)) }
        attr_reader :state

        sig { params(state: String).void }
        attr_writer :state

        # **This parameter will be deprecated soon! Please move existing `tags` to
        # `attributes` parameter.**
        #
        # Tags of the asset. These were associated with the `asset` when it was created or
        # updated. `tags` can be used for filtering assets in operations like _Get Asset
        # List_ and asset **Search** methods. They can also be used for monitoring of
        # assets using **Monitor** methods after linking `tags` and `asset`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        # A UNIX epoch timestamp in seconds representing the last time when the `asset`
        # was tracked.
        sig { returns(T.nilable(Integer)) }
        attr_reader :tracked_at

        sig { params(tracked_at: Integer).void }
        attr_writer :tracked_at

        # A UNIX epoch timestamp in seconds representing the time at which the `asset` was
        # last updated.
        sig { returns(T.nilable(Integer)) }
        attr_reader :updated_at

        sig { params(updated_at: Integer).void }
        attr_writer :updated_at

        # An object with details of the `asset` properties.
        sig do
          params(
            id: String,
            attributes: T.anything,
            created_at: Integer,
            description: String,
            device_id: String,
            latest_location:
              Nextbillionai::Skynet::AssetDetails::LatestLocation::OrHash,
            meta_data: T.anything,
            name: String,
            state: String,
            tags: T::Array[String],
            tracked_at: Integer,
            updated_at: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the `asset`. This is the same ID that was generated/provided at the time
          # of creating the `asset`.
          id: nil,
          # A string dictionary object containing `attributes` of the `asset`. These
          # `attributes` were associated with the `asset` at the time of creating or
          # updating it.
          #
          # `attributes` can be added to an `asset` using the _Update Asset Attributes_
          # method.
          attributes: nil,
          # A UNIX epoch timestamp in seconds representing the time at which the `asset` was
          # created.
          created_at: nil,
          # Description of the `asset`. The value would be the same as that provided for the
          # `description` parameter at the time of creating or updating the `asset`.
          description: nil,
          # ID of the `device` that is linked to this asset. Please note that there can be
          # multiple `device_id` linked to a single `asset`. An empty response is returned
          # if no devices are linked to the `asset`.
          #
          # User can link a device to an `asset` using the _Bind Asset to Device_ method.
          device_id: nil,
          # An object with details of the last tracked location of the asset.
          latest_location: nil,
          # Any valid json object data. Can be used to save customized data. Max size is
          # 65kb.
          meta_data: nil,
          # Name of the `asset`. The value would be the same as that provided for the `name`
          # parameter at the time of creating or updating the `asset`.
          name: nil,
          # State of the asset. It will be "active" when the asset is in use or available
          # for use, and it will be "deleted" in case the asset has been deleted.
          state: nil,
          # **This parameter will be deprecated soon! Please move existing `tags` to
          # `attributes` parameter.**
          #
          # Tags of the asset. These were associated with the `asset` when it was created or
          # updated. `tags` can be used for filtering assets in operations like _Get Asset
          # List_ and asset **Search** methods. They can also be used for monitoring of
          # assets using **Monitor** methods after linking `tags` and `asset`.
          tags: nil,
          # A UNIX epoch timestamp in seconds representing the last time when the `asset`
          # was tracked.
          tracked_at: nil,
          # A UNIX epoch timestamp in seconds representing the time at which the `asset` was
          # last updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              attributes: T.anything,
              created_at: Integer,
              description: String,
              device_id: String,
              latest_location:
                Nextbillionai::Skynet::AssetDetails::LatestLocation,
              meta_data: T.anything,
              name: String,
              state: String,
              tags: T::Array[String],
              tracked_at: Integer,
              updated_at: Integer
            }
          )
        end
        def to_hash
        end

        class LatestLocation < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Skynet::AssetDetails::LatestLocation,
                Nextbillionai::Internal::AnyHash
              )
            end

          # If available, this property returns the accuracy of the GPS information received
          # at the last tracked location. It is represented as an estimated horizontal
          # accuracy radius, in meters, at the 68th percentile confidence level.
          sig { returns(T.nilable(Float)) }
          attr_reader :accuracy

          sig { params(accuracy: Float).void }
          attr_writer :accuracy

          # If available in the GPS information, this property returns the altitude of the
          # `asset` at the last tracked location. It is represented as height, in meters,
          # above the WGS84 reference ellipsoid.
          sig { returns(T.nilable(Float)) }
          attr_reader :altitude

          sig { params(altitude: Float).void }
          attr_writer :altitude

          # If available in the GPS information, this property returns the heading of the
          # `asset` calculated from true north in clockwise direction at the last tracked
          # location. Please note that the bearing is not affected by the device
          # orientation.
          #
          # The bearing will always be in the range of [0, 360).
          sig { returns(T.nilable(Float)) }
          attr_reader :bearing

          sig { params(bearing: Float).void }
          attr_writer :bearing

          # An object with the coordinates of the last tracked location.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Skynet::AssetDetails::LatestLocation::Location
              )
            )
          end
          attr_reader :location

          sig do
            params(
              location:
                Nextbillionai::Skynet::AssetDetails::LatestLocation::Location::OrHash
            ).void
          end
          attr_writer :location

          # If available in the GPS information, this property returns the speed of the
          # `asset`, in meters per second, at the last tracked location.
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

          # An object with details of the last tracked location of the asset.
          sig do
            params(
              accuracy: Float,
              altitude: Float,
              bearing: Float,
              location:
                Nextbillionai::Skynet::AssetDetails::LatestLocation::Location::OrHash,
              speed: Float,
              timestamp: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # If available, this property returns the accuracy of the GPS information received
            # at the last tracked location. It is represented as an estimated horizontal
            # accuracy radius, in meters, at the 68th percentile confidence level.
            accuracy: nil,
            # If available in the GPS information, this property returns the altitude of the
            # `asset` at the last tracked location. It is represented as height, in meters,
            # above the WGS84 reference ellipsoid.
            altitude: nil,
            # If available in the GPS information, this property returns the heading of the
            # `asset` calculated from true north in clockwise direction at the last tracked
            # location. Please note that the bearing is not affected by the device
            # orientation.
            #
            # The bearing will always be in the range of [0, 360).
            bearing: nil,
            # An object with the coordinates of the last tracked location.
            location: nil,
            # If available in the GPS information, this property returns the speed of the
            # `asset`, in meters per second, at the last tracked location.
            speed: nil,
            # A UNIX epoch timestamp in milliseconds, representing the time at which the
            # location was tracked.
            timestamp: nil
          )
          end

          sig do
            override.returns(
              {
                accuracy: Float,
                altitude: Float,
                bearing: Float,
                location:
                  Nextbillionai::Skynet::AssetDetails::LatestLocation::Location,
                speed: Float,
                timestamp: Integer
              }
            )
          end
          def to_hash
          end

          class Location < Nextbillionai::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Nextbillionai::Skynet::AssetDetails::LatestLocation::Location,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # Latitude of the tracked location of the `asset`.
            sig { returns(T.nilable(Float)) }
            attr_reader :lat

            sig { params(lat: Float).void }
            attr_writer :lat

            # Longitude of the tracked location of the `asset`.
            sig { returns(T.nilable(Float)) }
            attr_reader :lon

            sig { params(lon: Float).void }
            attr_writer :lon

            # An object with the coordinates of the last tracked location.
            sig { params(lat: Float, lon: Float).returns(T.attached_class) }
            def self.new(
              # Latitude of the tracked location of the `asset`.
              lat: nil,
              # Longitude of the tracked location of the `asset`.
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
