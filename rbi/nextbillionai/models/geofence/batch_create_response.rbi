# typed: strong

module Nextbillionai
  module Models
    module Geofence
      class BatchCreateResponse < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::Geofence::BatchCreateResponse,
              Nextbillionai::Internal::AnyHash
            )
          end

        # A data object containing the IDs of the geofences created.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Models::Geofence::BatchCreateResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Nextbillionai::Models::Geofence::BatchCreateResponse::Data::OrHash
          ).void
        end
        attr_writer :data

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
              Nextbillionai::Models::Geofence::BatchCreateResponse::Data::OrHash,
            status: String
          ).returns(T.attached_class)
        end
        def self.new(
          # A data object containing the IDs of the geofences created.
          data: nil,
          # A string indicating the state of the response. On successful responses, the
          # value will be Ok. Indicative error messages are returned for different errors.
          # See the [API Error Codes](#api-error-codes) section below for more information.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              data: Nextbillionai::Models::Geofence::BatchCreateResponse::Data,
              status: String
            }
          )
        end
        def to_hash
        end

        class Data < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::Geofence::BatchCreateResponse::Data,
                Nextbillionai::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :ids

          sig { params(ids: T::Array[String]).void }
          attr_writer :ids

          # A data object containing the IDs of the geofences created.
          sig { params(ids: T::Array[String]).returns(T.attached_class) }
          def self.new(ids: nil)
          end

          sig { override.returns({ ids: T::Array[String] }) }
          def to_hash
          end
        end
      end
    end
  end
end
