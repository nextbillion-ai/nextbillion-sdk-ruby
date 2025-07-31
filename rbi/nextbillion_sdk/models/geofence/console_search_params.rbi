# typed: strong

module NextbillionSDK
  module Models
    module Geofence
      class ConsoleSearchParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Geofence::ConsoleSearchParams,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # string to be searched, will used to match name or id of geofence.
        sig { returns(String) }
        attr_accessor :query

        sig do
          params(
            query: String,
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # string to be searched, will used to match name or id of geofence.
          query:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { query: String, request_options: NextbillionSDK::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
