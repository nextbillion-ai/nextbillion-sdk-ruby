# frozen_string_literal: true

require_relative "../../test_helper"

class NextbillionSDK::Test::Resources::Skynet::SearchTest < NextbillionSDK::Test::ResourceTest
  def test_around_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.skynet.search.around(center: "56.597801,43.967836", key: "key=API_KEY", radius: 0)

    assert_pattern do
      response => NextbillionSDK::Skynet::SearchResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Skynet::SearchResponse::Data | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_bound_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.skynet.search.bound(
        bound: "bounds=44.7664,-0.6941|44.9206,-0.4639",
        key: "key=API_KEY"
      )

    assert_pattern do
      response => NextbillionSDK::Skynet::SearchResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Skynet::SearchResponse::Data | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end
end
