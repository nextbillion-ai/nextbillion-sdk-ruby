# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      class NamespacedApikeyDeleteResponse < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::Skynet::NamespacedApikeyDeleteResponse,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # Its value is OK in case of a successful delete operation. Indicative error
        # messages are returned otherwise, for different errors.
        sig { returns(T.nilable(String)) }
        attr_reader :msg

        sig { params(msg: String).void }
        attr_writer :msg

        # A string indicating the state of the response. A successful delete operation ins
        # indicated by an HTTP code of200. See the
        # [API Error Codes](https://docs.nextbillion.ai/docs/tracking/api/live-tracking-api#api-error-codes)
        # section below for possible values in case of errors.
        sig { returns(T.nilable(Integer)) }
        attr_reader :status

        sig { params(status: Integer).void }
        attr_writer :status

        sig { params(msg: String, status: Integer).returns(T.attached_class) }
        def self.new(
          # Its value is OK in case of a successful delete operation. Indicative error
          # messages are returned otherwise, for different errors.
          msg: nil,
          # A string indicating the state of the response. A successful delete operation ins
          # indicated by an HTTP code of200. See the
          # [API Error Codes](https://docs.nextbillion.ai/docs/tracking/api/live-tracking-api#api-error-codes)
          # section below for possible values in case of errors.
          status: nil
        )
        end

        sig { override.returns({ msg: String, status: Integer }) }
        def to_hash
        end
      end
    end
  end
end
