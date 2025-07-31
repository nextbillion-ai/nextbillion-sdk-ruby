# typed: strong

module Nextbillionai
  module Resources
    class Skynet
      class Config
        # Get webhook configuration
        sig do
          params(
            key: String,
            cluster:
              Nextbillionai::Skynet::ConfigRetrieveParams::Cluster::OrSymbol,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(Nextbillionai::Models::Skynet::ConfigRetrieveResponse)
        end
        def retrieve(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          # the cluster of the region you want to use
          cluster: nil,
          request_options: {}
        )
        end

        # Update webhook configuration
        sig do
          params(
            key: String,
            cluster:
              Nextbillionai::Skynet::ConfigUpdateParams::Cluster::OrSymbol,
            webhook: T::Array[String],
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(Nextbillionai::Skynet::SimpleResp)
        end
        def update(
          # Query param: A key is a unique identifier that is required to authenticate a
          # request to the API.
          key:,
          # Query param: the cluster of the region you want to use
          cluster: nil,
          # Body param: Use this array to update information about the webhooks. Please note
          # that the webhooks will be overwritten every time this method is used.
          webhook: nil,
          request_options: {}
        )
        end

        # Test webhook configurations
        sig do
          params(
            key: String,
            request_options: Nextbillionai::RequestOptions::OrHash
          ).returns(Nextbillionai::Models::Skynet::ConfigTestWebhookResponse)
        end
        def test_webhook(
          # A key is a unique identifier that is required to authenticate a request to the
          # API.
          key:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Nextbillionai::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
