# frozen_string_literal: true

require_relative "../test_helper"

class NextbillionSDK::Test::Resources::SkynetTest < NextbillionSDK::Test::ResourceTest
  def test_subscribe_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.subscribe(action: :TRIP_SUBSCRIBE)

    assert_pattern do
      response => NextbillionSDK::Models::SkynetSubscribeResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        error: String | nil,
        status: String | nil,
        timestamp: Integer | nil
      }
    end
  end
end
