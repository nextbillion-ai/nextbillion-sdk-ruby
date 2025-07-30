# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      class AssetRetrieveResponse < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::Skynet::AssetRetrieveResponse,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # An object containing the information about the asset returned.
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Models::Skynet::AssetRetrieveResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              NextbillionSDK::Models::Skynet::AssetRetrieveResponse::Data::OrHash
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
              NextbillionSDK::Models::Skynet::AssetRetrieveResponse::Data::OrHash,
            message: String,
            status: String
          ).returns(T.attached_class)
        end
        def self.new(
          # An object containing the information about the asset returned.
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
              data: NextbillionSDK::Models::Skynet::AssetRetrieveResponse::Data,
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
                NextbillionSDK::Models::Skynet::AssetRetrieveResponse::Data,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # An object with details of the asset properties.
          sig { returns(T.nilable(NextbillionSDK::Skynet::AssetDetails)) }
          attr_reader :asset

          sig do
            params(asset: NextbillionSDK::Skynet::AssetDetails::OrHash).void
          end
          attr_writer :asset

          # An object containing the information about the asset returned.
          sig do
            params(asset: NextbillionSDK::Skynet::AssetDetails::OrHash).returns(
              T.attached_class
            )
          end
          def self.new(
            # An object with details of the asset properties.
            asset: nil
          )
          end

          sig do
            override.returns({ asset: NextbillionSDK::Skynet::AssetDetails })
          end
          def to_hash
          end
        end
      end
    end
  end
end
