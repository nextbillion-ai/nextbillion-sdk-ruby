# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      class SimpleResp < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Skynet::SimpleResp,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # Displays the error message in case of a failed request. If the request is
        # successful, this field is not present in the response.
        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        # A string indicating the state of the response. On successful responses, the
        # value will be Ok. Indicative error messages are returned for different errors.
        # See the [API Error Codes](#api-error-codes) section below for more information.
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        sig do
          params(message: String, status: String).returns(T.attached_class)
        end
        def self.new(
          # Displays the error message in case of a failed request. If the request is
          # successful, this field is not present in the response.
          message: nil,
          # A string indicating the state of the response. On successful responses, the
          # value will be Ok. Indicative error messages are returned for different errors.
          # See the [API Error Codes](#api-error-codes) section below for more information.
          status: nil
        )
        end

        sig { override.returns({ message: String, status: String }) }
        def to_hash
        end
      end
    end
  end
end
