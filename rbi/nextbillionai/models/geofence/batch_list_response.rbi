# typed: strong

module Nextbillionai
  module Models
    module Geofence
      class BatchListResponse < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::Geofence::BatchListResponse,
              Nextbillionai::Internal::AnyHash
            )
          end

        sig do
          returns(Nextbillionai::Models::Geofence::BatchListResponse::Data)
        end
        attr_reader :data

        sig do
          params(
            data:
              Nextbillionai::Models::Geofence::BatchListResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        # A string indicating the state of the response. On successful responses, the
        # value will be `Ok`. Indicative error messages are returned for different errors.
        # See the [API Error Codes](#api-error-codes) section below for more information.
        sig { returns(String) }
        attr_accessor :status

        sig do
          params(
            data:
              Nextbillionai::Models::Geofence::BatchListResponse::Data::OrHash,
            status: String
          ).returns(T.attached_class)
        end
        def self.new(
          data:,
          # A string indicating the state of the response. On successful responses, the
          # value will be `Ok`. Indicative error messages are returned for different errors.
          # See the [API Error Codes](#api-error-codes) section below for more information.
          status:
        )
        end

        sig do
          override.returns(
            {
              data: Nextbillionai::Models::Geofence::BatchListResponse::Data,
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
                Nextbillionai::Models::Geofence::BatchListResponse::Data,
                Nextbillionai::Internal::AnyHash
              )
            end

          # An array of objects containing the details of the geofences returned matching
          # the IDs provided. Each object represents one geofence.
          sig { returns(T::Array[Nextbillionai::GeofenceAPI]) }
          attr_accessor :list

          sig do
            params(list: T::Array[Nextbillionai::GeofenceAPI::OrHash]).returns(
              T.attached_class
            )
          end
          def self.new(
            # An array of objects containing the details of the geofences returned matching
            # the IDs provided. Each object represents one geofence.
            list:
          )
          end

          sig do
            override.returns({ list: T::Array[Nextbillionai::GeofenceAPI] })
          end
          def to_hash
          end
        end
      end
    end
  end
end
