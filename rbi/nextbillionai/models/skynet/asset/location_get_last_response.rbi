# typed: strong

module Nextbillionai
  module Models
    module Skynet
      module Asset
        class LocationGetLastResponse < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::Skynet::Asset::LocationGetLastResponse,
                Nextbillionai::Internal::AnyHash
              )
            end

          # An object containing the information about the last tracked location of the
          # requested asset.
          sig do
            returns(
              T.nilable(
                Nextbillionai::Models::Skynet::Asset::LocationGetLastResponse::Data
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Nextbillionai::Models::Skynet::Asset::LocationGetLastResponse::Data::OrHash
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
                Nextbillionai::Models::Skynet::Asset::LocationGetLastResponse::Data::OrHash,
              message: String,
              status: String
            ).returns(T.attached_class)
          end
          def self.new(
            # An object containing the information about the last tracked location of the
            # requested asset.
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
                data:
                  Nextbillionai::Models::Skynet::Asset::LocationGetLastResponse::Data,
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
                  Nextbillionai::Models::Skynet::Asset::LocationGetLastResponse::Data,
                  Nextbillionai::Internal::AnyHash
                )
              end

            # An object with details of the tracked location. Please note that if there are no
            # tracking records for an asset, no location data will be returned.
            sig do
              returns(T.nilable(Nextbillionai::Skynet::Asset::TrackLocation))
            end
            attr_reader :location

            sig do
              params(
                location: Nextbillionai::Skynet::Asset::TrackLocation::OrHash
              ).void
            end
            attr_writer :location

            # An object containing the information about the last tracked location of the
            # requested asset.
            sig do
              params(
                location: Nextbillionai::Skynet::Asset::TrackLocation::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # An object with details of the tracked location. Please note that if there are no
              # tracking records for an asset, no location data will be returned.
              location: nil
            )
            end

            sig do
              override.returns(
                { location: Nextbillionai::Skynet::Asset::TrackLocation }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
