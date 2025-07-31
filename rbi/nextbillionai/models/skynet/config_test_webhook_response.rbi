# typed: strong

module Nextbillionai
  module Models
    module Skynet
      class ConfigTestWebhookResponse < Nextbillionai::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Nextbillionai::Models::Skynet::ConfigTestWebhookResponse,
              Nextbillionai::Internal::AnyHash
            )
          end

        # A string indicating the state of the response. Please note this value will
        # always be Ok.
        #
        # The sample event information will be received on the webhook, if they were
        # successfully configured. If no event information is received by the webhook,
        # please reconfigure the webhook or else reach out to
        # [support@nextbillion.ai](mailto:support@nextbillion.ai) for help.
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        sig { params(status: String).returns(T.attached_class) }
        def self.new(
          # A string indicating the state of the response. Please note this value will
          # always be Ok.
          #
          # The sample event information will be received on the webhook, if they were
          # successfully configured. If no event information is received by the webhook,
          # please reconfigure the webhook or else reach out to
          # [support@nextbillion.ai](mailto:support@nextbillion.ai) for help.
          status: nil
        )
        end

        sig { override.returns({ status: String }) }
        def to_hash
        end
      end
    end
  end
end
