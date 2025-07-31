# typed: strong

module NextbillionSDK
  module Models
    module Multigeocode
      class PlaceUpdateResponse < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::Multigeocode::PlaceUpdateResponse,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # This could be “Ok” representing success or “not found” representing error in
        # processing the request.
        sig { returns(T.nilable(String)) }
        attr_reader :msg

        sig { params(msg: String).void }
        attr_writer :msg

        # Represents the status of the response.
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        sig { params(msg: String, status: String).returns(T.attached_class) }
        def self.new(
          # This could be “Ok” representing success or “not found” representing error in
          # processing the request.
          msg: nil,
          # Represents the status of the response.
          status: nil
        )
        end

        sig { override.returns({ msg: String, status: String }) }
        def to_hash
        end
      end
    end
  end
end
