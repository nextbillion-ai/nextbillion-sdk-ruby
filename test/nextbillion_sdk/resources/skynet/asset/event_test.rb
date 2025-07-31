# frozen_string_literal: true

require_relative "../../../test_helper"

class NextbillionSDK::Test::Resources::Skynet::Asset::EventTest < NextbillionSDK::Test::ResourceTest
  def test_list_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.asset.event.list("id", key: "key=API_KEY")

    assert_pattern do
      response => NextbillionSDK::Models::Skynet::Asset::EventListResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Models::Skynet::Asset::EventListResponse::Data | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end
end
