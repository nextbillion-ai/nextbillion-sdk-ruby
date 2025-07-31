# typed: strong

module NextbillionSDK
  module Models
    class GeofenceRetrieveResponse < NextbillionSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::Models::GeofenceRetrieveResponse,
            NextbillionSDK::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(NextbillionSDK::Models::GeofenceRetrieveResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: NextbillionSDK::Models::GeofenceRetrieveResponse::Data::OrHash
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
          data: NextbillionSDK::Models::GeofenceRetrieveResponse::Data::OrHash,
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
            data: NextbillionSDK::Models::GeofenceRetrieveResponse::Data,
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
              NextbillionSDK::Models::GeofenceRetrieveResponse::Data,
              NextbillionSDK::Internal::AnyHash
            )
          end

        # An object with details of the geofence.
        sig { returns(T.nilable(NextbillionSDK::GeofenceAPI)) }
        attr_reader :geofence

        sig { params(geofence: NextbillionSDK::GeofenceAPI::OrHash).void }
        attr_writer :geofence

        sig do
          params(geofence: NextbillionSDK::GeofenceAPI::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # An object with details of the geofence.
          geofence: nil
        )
        end

        sig { override.returns({ geofence: NextbillionSDK::GeofenceAPI }) }
        def to_hash
        end
      end
    end
  end
end
