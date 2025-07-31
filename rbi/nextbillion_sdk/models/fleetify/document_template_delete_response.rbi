# typed: strong

module NextbillionSDK
  module Models
    module Fleetify
      class DocumentTemplateDeleteResponse < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::Fleetify::DocumentTemplateDeleteResponse,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # Returns the error message in case of a failed request. If the request is
        # successful, this field is not present in the response.
        sig { returns(T.nilable(String)) }
        attr_reader :msg

        sig { params(msg: String).void }
        attr_writer :msg

        # Returns the HTTP response code.
        sig { returns(T.nilable(Integer)) }
        attr_reader :status

        sig { params(status: Integer).void }
        attr_writer :status

        sig { params(msg: String, status: Integer).returns(T.attached_class) }
        def self.new(
          # Returns the error message in case of a failed request. If the request is
          # successful, this field is not present in the response.
          msg: nil,
          # Returns the HTTP response code.
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
