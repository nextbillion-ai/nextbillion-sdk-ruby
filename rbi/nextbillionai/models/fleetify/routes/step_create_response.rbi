# typed: strong

module Nextbillionai
  module Models
    module Fleetify
      module Routes
        class StepCreateResponse < Nextbillionai::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Nextbillionai::Models::Fleetify::Routes::StepCreateResponse,
                Nextbillionai::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(Nextbillionai::Fleetify::Routes::RouteStepsResponse)
            )
          end
          attr_reader :data

          sig do
            params(
              data: Nextbillionai::Fleetify::Routes::RouteStepsResponse::OrHash
            ).void
          end
          attr_writer :data

          # Returns the error message in case of a failed request. If the request is
          # successful, this field is not present in the response.
          sig { returns(T.nilable(String)) }
          attr_reader :message

          sig { params(message: String).void }
          attr_writer :message

          # Returns the status code of the response.
          sig { returns(T.nilable(Integer)) }
          attr_reader :status

          sig { params(status: Integer).void }
          attr_writer :status

          sig do
            params(
              data: Nextbillionai::Fleetify::Routes::RouteStepsResponse::OrHash,
              message: String,
              status: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            data: nil,
            # Returns the error message in case of a failed request. If the request is
            # successful, this field is not present in the response.
            message: nil,
            # Returns the status code of the response.
            status: nil
          )
          end

          sig do
            override.returns(
              {
                data: Nextbillionai::Fleetify::Routes::RouteStepsResponse,
                message: String,
                status: Integer
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
