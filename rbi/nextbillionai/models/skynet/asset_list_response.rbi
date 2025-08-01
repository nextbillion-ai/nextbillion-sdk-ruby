# typed: strong

module Nextbillionai
  module Models
    module Skynet
      class AssetListResponse < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::Skynet::AssetListResponse,
              Nextbillionai::Internal::AnyHash
            )
          end

        # A data object containing the list of assets.
        sig do
          returns(
            T.nilable(Nextbillionai::Models::Skynet::AssetListResponse::Data)
          )
        end
        attr_reader :data

        sig do
          params(
            data: Nextbillionai::Models::Skynet::AssetListResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        # Displays the error message in case of a failed request. If the request is
        # successful, this field is not present in the response.
        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

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
              Nextbillionai::Models::Skynet::AssetListResponse::Data::OrHash,
            message: String,
            status: String
          ).returns(T.attached_class)
        end
        def self.new(
          # A data object containing the list of assets.
          data: nil,
          # Displays the error message in case of a failed request. If the request is
          # successful, this field is not present in the response.
          message: nil,
          # A string indicating the state of the response. On successful responses, the
          # value will be Ok. Indicative error messages are returned for different errors.
          # See the [API Error Codes](#api-error-codes) section below for more information.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              data: Nextbillionai::Models::Skynet::AssetListResponse::Data,
              message: String,
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
                Nextbillionai::Models::Skynet::AssetListResponse::Data,
                Nextbillionai::Internal::AnyHash
              )
            end

          # An array of objects, with each object representing one asset.
          sig do
            returns(T.nilable(T::Array[Nextbillionai::Skynet::AssetDetails]))
          end
          attr_reader :list

          sig do
            params(
              list: T::Array[Nextbillionai::Skynet::AssetDetails::OrHash]
            ).void
          end
          attr_writer :list

          # An object with pagination details of the search results. Use this object to
          # implement pagination in your application.
          sig { returns(T.nilable(Nextbillionai::Skynet::Pagination)) }
          attr_reader :page

          sig { params(page: Nextbillionai::Skynet::Pagination::OrHash).void }
          attr_writer :page

          # A data object containing the list of assets.
          sig do
            params(
              list: T::Array[Nextbillionai::Skynet::AssetDetails::OrHash],
              page: Nextbillionai::Skynet::Pagination::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # An array of objects, with each object representing one asset.
            list: nil,
            # An object with pagination details of the search results. Use this object to
            # implement pagination in your application.
            page: nil
          )
          end

          sig do
            override.returns(
              {
                list: T::Array[Nextbillionai::Skynet::AssetDetails],
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
end
