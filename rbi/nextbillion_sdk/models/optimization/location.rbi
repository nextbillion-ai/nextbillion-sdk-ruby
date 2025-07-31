# typed: strong

module NextbillionSDK
  module Models
    module Optimization
      class Location < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Optimization::Location,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # Latitude of location.
        sig { returns(Float) }
        attr_accessor :lat

        # Longitude of location.
        sig { returns(Float) }
        attr_accessor :lon

        # Location info.
        sig { params(lat: Float, lon: Float).returns(T.attached_class) }
        def self.new(
          # Latitude of location.
          lat:,
          # Longitude of location.
          lon:
        )
        end

        sig { override.returns({ lat: Float, lon: Float }) }
        def to_hash
        end
      end
    end
  end
end
