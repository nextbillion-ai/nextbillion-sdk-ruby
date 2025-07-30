# typed: strong

module Nextbillionai
  module Models
    module Skynet
      class MonitorRetrieveResponse < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::Skynet::MonitorRetrieveResponse,
              Nextbillionai::Internal::AnyHash
            )
          end

        # A data object containing the details of the `monitor`.
        sig do
          returns(
            T.nilable(
              Nextbillionai::Models::Skynet::MonitorRetrieveResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Nextbillionai::Models::Skynet::MonitorRetrieveResponse::Data::OrHash
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
              Nextbillionai::Models::Skynet::MonitorRetrieveResponse::Data::OrHash,
            message: String,
            status: String
          ).returns(T.attached_class)
        end
        def self.new(
          # A data object containing the details of the `monitor`.
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
              data:
                Nextbillionai::Models::Skynet::MonitorRetrieveResponse::Data,
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
                Nextbillionai::Models::Skynet::MonitorRetrieveResponse::Data,
                Nextbillionai::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Nextbillionai::Skynet::SkynetMonitor)) }
          attr_reader :monitor

          sig do
            params(monitor: Nextbillionai::Skynet::SkynetMonitor::OrHash).void
          end
          attr_writer :monitor

          # A data object containing the details of the `monitor`.
          sig do
            params(
              monitor: Nextbillionai::Skynet::SkynetMonitor::OrHash
            ).returns(T.attached_class)
          end
          def self.new(monitor: nil)
          end

          sig do
            override.returns({ monitor: Nextbillionai::Skynet::SkynetMonitor })
          end
          def to_hash
          end
        end
      end
    end
  end
end
