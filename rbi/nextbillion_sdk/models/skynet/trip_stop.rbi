# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      class TripStop < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Skynet::TripStop,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # Returns the ID of the geofence that was used to indicate the area to make a
        # stop.
        sig { returns(T.nilable(String)) }
        attr_reader :geofence_id

        sig { params(geofence_id: String).void }
        attr_writer :geofence_id

        # Returns any meta data that was added to provide additional information about the
        # stop.
        sig { returns(T.nilable(T.anything)) }
        attr_reader :meta_data

        sig { params(meta_data: T.anything).void }
        attr_writer :meta_data

        # Returns the name of the stop that was provided when configuring this stop for
        # the trip.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            geofence_id: String,
            meta_data: T.anything,
            name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Returns the ID of the geofence that was used to indicate the area to make a
          # stop.
          geofence_id: nil,
          # Returns any meta data that was added to provide additional information about the
          # stop.
          meta_data: nil,
          # Returns the name of the stop that was provided when configuring this stop for
          # the trip.
          name: nil
        )
        end

        sig do
          override.returns(
            { geofence_id: String, meta_data: T.anything, name: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
