# frozen_string_literal: true

require_relative "../../test_helper"

class Nextbillionai::Test::Resources::Skynet::ConfigTest < Nextbillionai::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.skynet.config.retrieve(key: "key=API_KEY")

    assert_pattern do
      response => Nextbillionai::Models::Skynet::ConfigRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Nextbillionai::Models::Skynet::ConfigRetrieveResponse::Data | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.skynet.config.update(key: "key=API_KEY")

    assert_pattern do
      response => Nextbillionai::Skynet::SimpleResp
    end

    assert_pattern do
      response => {
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_test_webhook_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.skynet.config.test_webhook(key: "key=API_KEY")

    assert_pattern do
      response => Nextbillionai::Models::Skynet::ConfigTestWebhookResponse
    end

    assert_pattern do
      response => {
        status: String | nil
      }
    end
  end
end
