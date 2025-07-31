# typed: strong

module NextbillionSDK
  module Models
    module Geofence
      class BatchCreateParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Geofence::BatchCreateParams,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # An array of objects to collect the details of the multiple geofences that need
        # to be created.
        sig do
          returns(T.nilable(T::Array[NextbillionSDK::GeofenceEntityCreate]))
        end
        attr_reader :geofences

        sig do
          params(
            geofences: T::Array[NextbillionSDK::GeofenceEntityCreate::OrHash]
          ).void
        end
        attr_writer :geofences

        sig do
          params(
            key: String,
            geofences: T::Array[NextbillionSDK::GeofenceEntityCreate::OrHash],
            request_options: NextbillionSDK::RequestOptions::OrHash
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
              geofences: T::Array[NextbillionSDK::GeofenceEntityCreate],
              request_options: NextbillionSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
