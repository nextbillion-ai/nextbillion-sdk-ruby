# frozen_string_literal: true

require_relative "../../../test_helper"

class NextbillionSDK::Test::Resources::Skynet::Asset::LocationTest < NextbillionSDK::Test::ResourceTest
  def test_list_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.asset.location.list("id", key: "key=API_KEY")

    assert_pattern do
      response => NextbillionSDK::Models::Skynet::Asset::LocationListResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Models::Skynet::Asset::LocationListResponse::Data | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_get_last_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.asset.location.get_last("id", key: "key=API_KEY")

    assert_pattern do
      response => NextbillionSDK::Models::Skynet::Asset::LocationGetLastResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Models::Skynet::Asset::LocationGetLastResponse::Data | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end
end
