# typed: strong

module Nextbillionai
  module Models
    module Geofence
      class ConsoleSearchParams < Nextbillionai::Internal::Type::BaseModel
        extend Nextbillionai::Internal::Type::RequestParameters::Converter
        include Nextbillionai::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Geofence::ConsoleSearchParams,
              Nextbillionai::Internal::AnyHash
            )
          end

        # string to be searched, will used to match name or id of geofence.
        sig { returns(String) }
        attr_accessor :query

        sig do
          params(
            query: String,
            request_options: Nextbillionai::RequestOptions::OrHash
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
            { query: String, request_options: Nextbillionai::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
