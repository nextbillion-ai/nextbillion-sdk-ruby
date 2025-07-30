# typed: strong

module Nextbillionai
  module Models
    module Geofence
      class BatchCreateParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Geofence::BatchCreateParams,
              Nextbillionai::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # An array of objects to collect the details of the multiple geofences that need
        # to be created.
        sig do
          returns(T.nilable(T::Array[Nextbillionai::GeofenceEntityCreate]))
        end
        attr_reader :geofences

        sig do
          params(
            geofences: T::Array[Nextbillionai::GeofenceEntityCreate::OrHash]
          ).void
        end
        attr_writer :geofences

        sig do
          params(
            key: String,
            geofences: T::Array[Nextbillionai::GeofenceEntityCreate::OrHash],
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # An array of objects to collect the details of the multiple geofences that need
          # to be created.
          geofences: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              geofences: T::Array[Nextbillionai::GeofenceEntityCreate],
              request_options: Nextbillionai::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
