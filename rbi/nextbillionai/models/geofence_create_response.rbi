# typed: strong

module Nextbillionai
  module Models
    class GeofenceCreateResponse < Nextbillionai::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::Models::GeofenceCreateResponse,
            Nextbillionai::Internal::AnyHash
          )
        end

      # A data object containing the ID of the geofence created.
      sig do
        returns(T.nilable(Nextbillionai::Models::GeofenceCreateResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Nextbillionai::Models::GeofenceCreateResponse::Data::OrHash
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
          data: Nextbillionai::Models::GeofenceCreateResponse::Data::OrHash,
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A data object containing the ID of the geofence created.
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
            data: Nextbillionai::Models::GeofenceCreateResponse::Data,
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
              Nextbillionai::Models::GeofenceCreateResponse::Data,
              Nextbillionai::Internal::AnyHash
            )
          end

        # Unique ID of the geofence created. It will be the same as custom_id, if
        # provided. Else it will be an auto generated UUID. Please note this ID cannot be
        # updated.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # A data object containing the ID of the geofence created.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(
          # Unique ID of the geofence created. It will be the same as custom_id, if
          # provided. Else it will be an auto generated UUID. Please note this ID cannot be
          # updated.
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
