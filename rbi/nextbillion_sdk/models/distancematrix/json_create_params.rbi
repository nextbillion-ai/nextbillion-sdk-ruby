# typed: strong

module NextbillionSDK
  module Models
    module Distancematrix
      class JsonCreateParams < NextbillionSDK::Internal::Type::BaseModel
        extend NextbillionSDK::Internal::Type::RequestParameters::Converter
        include NextbillionSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Distancematrix::JsonCreateParams,
              NextbillionSDK::Internal::AnyHash
            )
          end

        sig do
          params(
            request_options: NextbillionSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(request_options: {})
        end

        sig do
          override.returns({ request_options: NextbillionSDK::RequestOptions })
        end
        def to_hash
        end
      end
    end
  end
end
