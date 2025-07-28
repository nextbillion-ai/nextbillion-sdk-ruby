# frozen_string_literal: true

require_relative "../../test_helper"

class NextbillionSDK::Test::Resources::Skynet::ConfigTest < NextbillionSDK::Test::ResourceTest
  def test_retrieve_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.config.retrieve(key: "key=API_KEY")

    assert_pattern do
      response => NextbillionSDK::Models::Skynet::ConfigRetrieveResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Models::Skynet::ConfigRetrieveResponse::Data | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_update_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.config.update(key: "key=API_KEY")

    assert_pattern do
      response => NextbillionSDK::Skynet::SimpleResp
    end

    assert_pattern do
      response => {
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_test_webhook_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.config.test_webhook(key: "key=API_KEY")

    assert_pattern do
      response => NextbillionSDK::Models::Skynet::ConfigTestWebhookResponse
    end

    assert_pattern do
      response => {
        status: String | nil
      }
    end
  end
end
