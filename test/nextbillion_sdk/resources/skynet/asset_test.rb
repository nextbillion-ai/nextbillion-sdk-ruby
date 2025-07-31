# frozen_string_literal: true

require_relative "../../test_helper"

class NextbillionSDK::Test::Resources::Skynet::AssetTest < NextbillionSDK::Test::ResourceTest
  def test_create_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.asset.create(key: "key=API_KEY")

    assert_pattern do
      response => NextbillionSDK::Models::Skynet::AssetCreateResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Models::Skynet::AssetCreateResponse::Data | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.asset.retrieve("id", key: "key=API_KEY")

    assert_pattern do
      response => NextbillionSDK::Models::Skynet::AssetRetrieveResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Models::Skynet::AssetRetrieveResponse::Data | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_update_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.asset.update("id", key: "key=API_KEY")

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

    response = @nextbillion_sdk.skynet.asset.list(key: "key=API_KEY")

    assert_pattern do
      response => NextbillionSDK::Models::Skynet::AssetListResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Models::Skynet::AssetListResponse::Data | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_delete_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.asset.delete("id", key: "key=API_KEY")

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

  def test_bind_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.asset.bind("id", key: "key=API_KEY", device_id: "device_id")

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

  def test_track_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.skynet.asset.track(
        "id",
        key: "key=API_KEY",
        device_id: "device_id",
        locations: {location: {lat: 0, lon: 0}, timestamp: 0}
      )

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

  def test_update_attributes_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.skynet.asset.update_attributes(
        "id",
        key: "key=API_KEY",
        attributes: "{\n  \"shift_timing\": \"0800-1700\",\n  \"driver_name\": \"John\"\n}"
      )

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
