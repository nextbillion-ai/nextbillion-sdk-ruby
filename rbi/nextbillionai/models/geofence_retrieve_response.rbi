# typed: strong

module Nextbillionai
  module Models
    class GeofenceRetrieveResponse < Nextbillionai::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::Models::GeofenceRetrieveResponse,
            Nextbillionai::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Nextbillionai::Models::GeofenceRetrieveResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Nextbillionai::Models::GeofenceRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      # A string indicating the state of the response. On successful responses, the
      # value will be `Ok`. Indicative error messages are returned for different errors.
      # See the [API Error Codes](#api-error-codes) section below for more information.
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      sig do
        params(
          data: Nextbillionai::Models::GeofenceRetrieveResponse::Data::OrHash,
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
        data: nil,
        # A string indicating the state of the response. On successful responses, the
        # value will be `Ok`. Indicative error messages are returned for different errors.
        # See the [API Error Codes](#api-error-codes) section below for more information.
        status: nil
      )
      end

      sig do
        override.returns(
          {
            data: Nextbillionai::Models::GeofenceRetrieveResponse::Data,
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
              Nextbillionai::Models::GeofenceRetrieveResponse::Data,
              Nextbillionai::Internal::AnyHash
            )
          end

        # An object with details of the geofence.
        sig { returns(T.nilable(Nextbillionai::GeofenceAPI)) }
        attr_reader :geofence

        sig { params(geofence: Nextbillionai::GeofenceAPI::OrHash).void }
        attr_writer :geofence

        sig do
          params(geofence: Nextbillionai::GeofenceAPI::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # An object with details of the geofence.
          geofence: nil
        )
        end

        sig { override.returns({ geofence: Nextbillionai::GeofenceAPI }) }
        def to_hash
        end
      end
    end
  end
end
