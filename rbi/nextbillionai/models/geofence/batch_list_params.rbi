# typed: strong

module Nextbillionai
  module Models
    module Geofence
      class BatchListParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Geofence::BatchListParams,
              Nextbillionai::Internal::AnyHash
            )
          end

        # Comma(,) separated list of IDs of the geofences to be searched.
        sig { returns(String) }
        attr_accessor :ids

        # A key is a unique identifier that is required to authenticate a request to the
        # API.
        sig { returns(String) }
        attr_accessor :key

        sig do
          params(
            ids: String,
            key: String,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Comma(,) separated list of IDs of the geofences to be searched.
          ids:,
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              ids: String,
              key: String,
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
