# typed: strong

module NextbillionSDK
  module Models
    class GeofenceListResponse < NextbillionSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            NextbillionSDK::Models::GeofenceListResponse,
            NextbillionSDK::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(NextbillionSDK::Models::GeofenceListResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: NextbillionSDK::Models::GeofenceListResponse::Data::OrHash
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
          data: NextbillionSDK::Models::GeofenceListResponse::Data::OrHash,
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
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
            data: NextbillionSDK::Models::GeofenceListResponse::Data,
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
              NextbillionSDK::Models::GeofenceListResponse::Data,
              NextbillionSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[NextbillionSDK::GeofenceAPI])) }
        attr_reader :list

        sig { params(list: T::Array[NextbillionSDK::GeofenceAPI::OrHash]).void }
        attr_writer :list

        # An object with pagination details of the search results. Use this object to
        # implement pagination in your application.
        sig { returns(T.nilable(NextbillionSDK::Skynet::Pagination)) }
        attr_reader :page

        sig { params(page: NextbillionSDK::Skynet::Pagination::OrHash).void }
        attr_writer :page

        sig do
          params(
            list: T::Array[NextbillionSDK::GeofenceAPI::OrHash],
            page: NextbillionSDK::Skynet::Pagination::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          list: nil,
          # An object with pagination details of the search results. Use this object to
          # implement pagination in your application.
          page: nil
        )
        end

        sig do
          override.returns(
            {
              list: T::Array[NextbillionSDK::GeofenceAPI],
              page: NextbillionSDK::Skynet::Pagination
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
