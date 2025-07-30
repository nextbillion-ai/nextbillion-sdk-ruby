# typed: strong

module NextbillionSDK
  module Models
    module Geofence
      class BatchListResponse < NextbillionSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              NextbillionSDK::Models::Geofence::BatchListResponse,
              NextbillionSDK::Internal::AnyHash
            )
          end

        sig do
          returns(NextbillionSDK::Models::Geofence::BatchListResponse::Data)
        end
        attr_reader :data

        sig do
          params(
            data:
              NextbillionSDK::Models::Geofence::BatchListResponse::Data::OrHash
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
              NextbillionSDK::Models::Geofence::BatchListResponse::Data::OrHash,
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
              data: NextbillionSDK::Models::Geofence::BatchListResponse::Data,
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
                NextbillionSDK::Models::Geofence::BatchListResponse::Data,
                NextbillionSDK::Internal::AnyHash
              )
            end

          # An array of objects containing the details of the geofences returned matching
          # the IDs provided. Each object represents one geofence.
          sig { returns(T::Array[NextbillionSDK::GeofenceAPI]) }
          attr_accessor :list

          sig do
            params(list: T::Array[NextbillionSDK::GeofenceAPI::OrHash]).returns(
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
            override.returns({ list: T::Array[NextbillionSDK::GeofenceAPI] })
          end
          def to_hash
          end
        end
      end
    end
  end
end
