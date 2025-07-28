# typed: strong

module NextbillionSDK
  module Models
    module Fleetify
      module Routes
        class StepDeleteParams < NextbillionSDK::Internal::Type::BaseModel
          extend NextbillionSDK::Internal::Type::RequestParameters::Converter
          include NextbillionSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Fleetify::Routes::StepDeleteParams,
                NextbillionSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :route_id

          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          sig { returns(String) }
          attr_accessor :key

          sig do
            params(
              route_id: String,
              key: String,
              request_options: NextbillionSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            route_id:,
            # A key is a unique identifier that is required to authenticate a request to the
            # API.
            key:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                route_id: String,
                key: String,
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
end
