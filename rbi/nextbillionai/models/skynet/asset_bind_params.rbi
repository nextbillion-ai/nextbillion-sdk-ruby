# typed: strong

module Nextbillionai
  module Models
    module Skynet
      class AssetBindParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Skynet::AssetBindParams,
              Nextbillionai::Internal::AnyHash
            )
          end

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        # Device ID to be linked to the asset identified by id.
        #
        # Please note that the device needs to be linked to an asset before using it in
        # the _Upload locations of an Asset_ method for sending GPS information about the
        # asset.
        sig { returns(String) }
        attr_accessor :device_id

        sig do
          params(
            key: String,
            device_id: String,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # Device ID to be linked to the asset identified by id.
          #
          # Please note that the device needs to be linked to an asset before using it in
          # the _Upload locations of an Asset_ method for sending GPS information about the
          # asset.
          device_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              key: String,
              device_id: String,
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
