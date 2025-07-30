# frozen_string_literal: true

require_relative "../../test_helper"

class NextbillionSDK::Test::Resources::Skynet::MonitorTest < NextbillionSDK::Test::ResourceTest
  def test_create_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.monitor.create(key: "key=API_KEY", tags: ["string"], type: :enter)

    assert_pattern do
      response => NextbillionSDK::Models::Skynet::MonitorCreateResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Models::Skynet::MonitorCreateResponse::Data | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.monitor.retrieve("id", key: "key=API_KEY")

    assert_pattern do
      response => NextbillionSDK::Models::Skynet::MonitorRetrieveResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Models::Skynet::MonitorRetrieveResponse::Data | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_update_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.monitor.update("id", key: "key=API_KEY")

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

  def test_list_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.monitor.list(key: "key=API_KEY")

    assert_pattern do
      response => NextbillionSDK::Models::Skynet::MonitorListResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Models::Skynet::MonitorListResponse::Data | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_delete_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.monitor.delete("id", key: "key=API_KEY")

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
end
