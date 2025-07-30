# typed: strong

module NextbillionSDK
  module Models
    module Skynet
      class NamespacedApikeyCreateResponse < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::Skynet::NamespacedApikeyCreateResponse,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # Returns the error type in case of any error. If there is no error, then this
        # field is absent in the response.
        sig { returns(T.nilable(String)) }
        attr_reader :error

        sig { params(error: String).void }
        attr_writer :error

        # Returns the error message in case of any error. If there is no error, then this
        # field is absent in the response.
        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        # An object to return the details about the namespace key created.
        sig do
          returns(
            T.nilable(
              NextbillionSDK::Models::Skynet::NamespacedApikeyCreateResponse::Result
            )
          )
        end
        attr_reader :result

        sig do
          params(
            result:
              NextbillionSDK::Models::Skynet::NamespacedApikeyCreateResponse::Result::OrHash
          ).void
        end
        attr_writer :result

        # Returns the API response code.
        sig { returns(T.nilable(Integer)) }
        attr_reader :status

        sig { params(status: Integer).void }
        attr_writer :status

        sig do
          params(
            error: String,
            message: String,
            result:
              NextbillionSDK::Models::Skynet::NamespacedApikeyCreateResponse::Result::OrHash,
            status: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Returns the error type in case of any error. If there is no error, then this
          # field is absent in the response.
          error: nil,
          # Returns the error message in case of any error. If there is no error, then this
          # field is absent in the response.
          message: nil,
          # An object to return the details about the namespace key created.
          result: nil,
          # Returns the API response code.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              error: String,
              message: String,
              result:
                NextbillionSDK::Models::Skynet::NamespacedApikeyCreateResponse::Result,
              status: Integer
            }
          )
        end
        def to_hash
        end

        class Result < NextbillionSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                NextbillionSDK::Models::Skynet::NamespacedApikeyCreateResponse::Result,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # Returns the unique key created for the specified namespace.
          sig { returns(T.nilable(String)) }
          attr_reader :apikey

          sig { params(apikey: String).void }
          attr_writer :apikey

          # Returns the time, expressed as UNIX epoch timestamp in seconds, when the
          # namespace key was created.
          sig { returns(T.nilable(Integer)) }
          attr_reader :created_at

          sig { params(created_at: Integer).void }
          attr_writer :created_at

          # Returns the time, expressed as UNIX epoch timestamp in seconds, when the
          # namespace key will expire.
          sig { returns(T.nilable(Integer)) }
          attr_reader :expires_at

          sig { params(expires_at: Integer).void }
          attr_writer :expires_at

          # Returns the name of the namespace for which the key is created.
          sig { returns(T.nilable(String)) }
          attr_reader :namespace

          sig { params(namespace: String).void }
          attr_writer :namespace

          # An internal subscription ID.
          sig { returns(T.nilable(String)) }
          attr_reader :sub_id

          sig { params(sub_id: String).void }
          attr_writer :sub_id

          # An object to return the details about the namespace key created.
          sig do
            params(
              apikey: String,
              created_at: Integer,
              expires_at: Integer,
              namespace: String,
              sub_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Returns the unique key created for the specified namespace.
            apikey: nil,
            # Returns the time, expressed as UNIX epoch timestamp in seconds, when the
            # namespace key was created.
            created_at: nil,
            # Returns the time, expressed as UNIX epoch timestamp in seconds, when the
            # namespace key will expire.
            expires_at: nil,
            # Returns the name of the namespace for which the key is created.
            namespace: nil,
            # An internal subscription ID.
            sub_id: nil
          )
          end

          sig do
            override.returns(
              {
                apikey: String,
                created_at: Integer,
                expires_at: Integer,
                namespace: String,
                sub_id: String
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
