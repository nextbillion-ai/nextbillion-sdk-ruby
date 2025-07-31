# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      class AssetBindParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Skynet::AssetBindParams,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # Device ID to be linked to the `asset` identified by `id`.
        #
        # Please note that the device needs to be linked to an `asset` before using it in
        # the _Upload locations of an Asset_ method for sending GPS information about the
        # `asset`.
        sig { returns(String) }
        attr_accessor :device_id

        sig do
          params(
            key: String,
            device_id: String,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # Device ID to be linked to the `asset` identified by `id`.
          #
          # Please note that the device needs to be linked to an `asset` before using it in
          # the _Upload locations of an Asset_ method for sending GPS information about the
          # `asset`.
          device_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              device_id: String,
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
