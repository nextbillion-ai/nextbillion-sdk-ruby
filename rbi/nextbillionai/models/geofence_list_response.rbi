# typed: strong

module Nextbillionai
  module Models
    class GeofenceListResponse < Nextbillionai::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Nextbillionai::Models::GeofenceListResponse,
            Nextbillionai::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Nextbillionai::Models::GeofenceListResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Nextbillionai::Models::GeofenceListResponse::Data::OrHash
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
          data: Nextbillionai::Models::GeofenceListResponse::Data::OrHash,
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
            data: Nextbillionai::Models::GeofenceListResponse::Data,
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
              Nextbillionai::Models::GeofenceListResponse::Data,
              Nextbillionai::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[Nextbillionai::GeofenceAPI])) }
        attr_reader :list

        sig { params(list: T::Array[Nextbillionai::GeofenceAPI::OrHash]).void }
        attr_writer :list

        # An object with pagination details of the search results. Use this object to
        # implement pagination in your application.
        sig { returns(T.nilable(Nextbillionai::Skynet::Pagination)) }
        attr_reader :page

        sig { params(page: Nextbillionai::Skynet::Pagination::OrHash).void }
        attr_writer :page

        sig do
          params(
            list: T::Array[Nextbillionai::GeofenceAPI::OrHash],
            page: Nextbillionai::Skynet::Pagination::OrHash
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
              list: T::Array[Nextbillionai::GeofenceAPI],
              page: Nextbillionai::Skynet::Pagination
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
