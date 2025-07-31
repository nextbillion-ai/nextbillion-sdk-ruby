# typed: strong

module NextbillionSDK
  module Models
    module Geofence
      class BatchDeleteParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Geofence::BatchDeleteParams,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # An array IDs of the geofence to be deleted. These are the IDs that were
        # generated/provided at the time of creating the respective geofences.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :ids

        sig { params(ids: T::Array[String]).void }
        attr_writer :ids

        sig do
          params(
            key: String,
            ids: T::Array[String],
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # An array IDs of the geofence to be deleted. These are the IDs that were
          # generated/provided at the time of creating the respective geofences.
          ids: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              ids: T::Array[String],
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
