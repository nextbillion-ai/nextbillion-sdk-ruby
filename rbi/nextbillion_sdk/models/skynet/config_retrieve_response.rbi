# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      class ConfigRetrieveResponse < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::Skynet::ConfigRetrieveResponse,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # A data object containing the `config` response.
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Models::Skynet::ConfigRetrieveResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              NextbillionSDK::Models::Skynet::ConfigRetrieveResponse::Data::OrHash
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
        # value will be `Ok`. Indicative error messages are returned for different errors.
        # See the [API Error Codes](#api-error-codes) section below for more information.
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        sig do
          params(
            data:
              NextbillionSDK::Models::Skynet::ConfigRetrieveResponse::Data::OrHash,
            message: String,
            status: String
          ).returns(T.attached_class)
        end
        def self.new(
          # A data object containing the `config` response.
          data: nil,
          # Displays the error message in case of a failed request. If the request is
          # successful, this field is not present in the response.
          message: nil,
          # A string indicating the state of the response. On successful responses, the
          # value will be `Ok`. Indicative error messages are returned for different errors.
          # See the [API Error Codes](#api-error-codes) section below for more information.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              data:
                NextbillionSDK::Models::Skynet::ConfigRetrieveResponse::Data,
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
                NextbillionSDK::Models::Skynet::ConfigRetrieveResponse::Data,
                NextbillionSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                NextbillionSDK::Models::Skynet::ConfigRetrieveResponse::Data::Config
              )
            )
          end
          attr_reader :config

          sig do
            params(
              config:
                NextbillionSDK::Models::Skynet::ConfigRetrieveResponse::Data::Config::OrHash
            ).void
          end
          attr_writer :config

          # A data object containing the `config` response.
          sig do
            params(
              config:
                NextbillionSDK::Models::Skynet::ConfigRetrieveResponse::Data::Config::OrHash
            ).returns(T.attached_class)
          end
          def self.new(config: nil)
          end

          sig do
            override.returns(
              {
                config:
                  NextbillionSDK::Models::Skynet::ConfigRetrieveResponse::Data::Config
              }
            )
          end
          def to_hash
          end

          class Config < NextbillionSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  NextbillionSDK::Models::Skynet::ConfigRetrieveResponse::Data::Config,
                  NextbillionSDK::Internal::AnyHash
                )
              end

            # An array of strings representing the list of webhooks. Webhooks are used to
            # receive information, through POST requests, whenever any event is triggered.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :webhook

            sig { params(webhook: T::Array[String]).void }
            attr_writer :webhook

            sig { params(webhook: T::Array[String]).returns(T.attached_class) }
            def self.new(
              # An array of strings representing the list of webhooks. Webhooks are used to
              # receive information, through POST requests, whenever any event is triggered.
              webhook: nil
            )
            end

            sig { override.returns({ webhook: T::Array[String] }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
