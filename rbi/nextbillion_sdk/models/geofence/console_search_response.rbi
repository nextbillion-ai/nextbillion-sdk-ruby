# typed: strong

module NextbillionSDK
  module Models
    module Geofence
      class ConsoleSearchResponse < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::Geofence::ConsoleSearchResponse,
              NextbillionSDK::Internal::AnyHash
            )
          end

        sig do
          returns(NextbillionSDK::Models::Geofence::ConsoleSearchResponse::Data)
        end
        attr_reader :data

        sig do
          params(
            data:
              NextbillionSDK::Models::Geofence::ConsoleSearchResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        # A string indicating the state of the response. On successful responses, the
        # value will be Ok. Indicative error messages are returned for different errors.
        # See the [API Error Codes](#api-error-codes) section below for more information.
        sig { returns(String) }
        attr_accessor :status

        sig do
          params(
            data:
              NextbillionSDK::Models::Geofence::ConsoleSearchResponse::Data::OrHash,
            status: String
          ).returns(T.attached_class)
        end
        def self.new(
          data:,
          # A string indicating the state of the response. On successful responses, the
          # value will be Ok. Indicative error messages are returned for different errors.
          # See the [API Error Codes](#api-error-codes) section below for more information.
          status:
        )
        end

        sig do
          override.returns(
            {
              data:
                NextbillionSDK::Models::Geofence::ConsoleSearchResponse::Data,
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
                NextbillionSDK::Models::Geofence::ConsoleSearchResponse::Data,
                NextbillionSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                NextbillionSDK::Models::Geofence::ConsoleSearchResponse::Data::Result
              ]
            )
          end
          attr_accessor :result

          sig do
            params(
              result:
                T::Array[
                  NextbillionSDK::Models::Geofence::ConsoleSearchResponse::Data::Result::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(result:)
          end

          sig do
            override.returns(
              {
                result:
                  T::Array[
                    NextbillionSDK::Models::Geofence::ConsoleSearchResponse::Data::Result
                  ]
              }
            )
          end
          def to_hash
          end

          class Result < NextbillionSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  NextbillionSDK::Models::Geofence::ConsoleSearchResponse::Data::Result,
                  NextbillionSDK::Internal::AnyHash
                )
              end

            # ID of goefence. Could be empty string.
            sig { returns(String) }
            attr_accessor :id

            # Name of goefence. Could be empty string.
            sig { returns(String) }
            attr_accessor :name

            sig { params(id: String, name: String).returns(T.attached_class) }
            def self.new(
              # ID of goefence. Could be empty string.
              id:,
              # Name of goefence. Could be empty string.
              name:
            )
            end

            sig { override.returns({ id: String, name: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
