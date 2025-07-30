# typed: strong

module Nextbillionai
  module Models
    module Skynet
      class TripStartResponse < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::Skynet::TripStartResponse,
              Nextbillionai::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Nextbillionai::Models::Skynet::TripStartResponse::Data)
          )
        end
        attr_reader :data

        sig do
          params(
            data: Nextbillionai::Models::Skynet::TripStartResponse::Data::OrHash
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
        # value will be `Ok`. Indicative error messages are returned for different errors.
        # See the [API Error Codes](#api-error-codes) section below for more information.
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        sig do
          params(
            data:
              Nextbillionai::Models::Skynet::TripStartResponse::Data::OrHash,
            message: String,
            status: String
          ).returns(T.attached_class)
        end
        def self.new(
          data: nil,
          # Displays the error message in case of a failed request. If the request is
          # successful, this field is not present in the response.
          message: nil,
          # A string indicating the state of the response. On successful responses, the
          # value will be `Ok`. Indicative error messages are returned for different errors.
          # See the [API Error Codes](#api-error-codes) section below for more information.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              data: Nextbillionai::Models::Skynet::TripStartResponse::Data,
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
                Nextbillionai::Models::Skynet::TripStartResponse::Data,
                Nextbillionai::Internal::AnyHash
              )
            end

          # Returns the ID of the newly created trip. It will be same as the `custom_id` if
          # that input was provided in the input request. Use this ID to manage this trip
          # using other available Trip methods.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # Returns the ID of the newly created trip. It will be same as the `custom_id` if
            # that input was provided in the input request. Use this ID to manage this trip
            # using other available Trip methods.
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
end
