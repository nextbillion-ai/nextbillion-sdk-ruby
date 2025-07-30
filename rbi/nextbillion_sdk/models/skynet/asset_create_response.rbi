# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      class AssetCreateResponse < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::Skynet::AssetCreateResponse,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # An object containing the ID of the asset created.
        sig do
          returns(
            T.nilable(NextbillionSDK::Models::Skynet::AssetCreateResponse::Data)
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              NextbillionSDK::Models::Skynet::AssetCreateResponse::Data::OrHash
          ).void
        end
        attr_writer :data

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
          params(
            data:
              NextbillionSDK::Models::Skynet::AssetCreateResponse::Data::OrHash,
            message: String,
            status: String
          ).returns(T.attached_class)
        end
        def self.new(
          # An object containing the ID of the asset created.
          data: nil,
          # Displays the error message in case of a failed request. If the request is
          # successful, this field is not present in the response.
          message: nil,
          # A string indicating the state of the response. On successful responses, the
          # value will be Ok. Indicative error messages are returned for different errors.
          # See the [API Error Codes](#api-error-codes) section below for more information.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              data: NextbillionSDK::Models::Skynet::AssetCreateResponse::Data,
              message: String,
              status: String
            }
          )
        end
        def to_hash
        end

        class Data < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Models::Skynet::AssetCreateResponse::Data,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # Unique ID of the asset created. It will be the same as custom_id, if provided.
          # Else it will be an auto generated UUID. Please note this ID cannot be updated.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # An object containing the ID of the asset created.
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # Unique ID of the asset created. It will be the same as custom_id, if provided.
            # Else it will be an auto generated UUID. Please note this ID cannot be updated.
            id: nil
          )
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
