# frozen_string_literal: true

require_relative "../../../test_helper"

class NextbillionSDK::Test::Resources::Skynet::Search::PolygonTest < NextbillionSDK::Test::ResourceTest
  def test_create_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.skynet.search.polygon.create(
        key: "key=API_KEY",
        polygon: {coordinates: [0], type: "type"}
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

  def test_get_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.skynet.search.polygon.get(
        key: "key=API_KEY",
        polygon: "polygon=17.4239,78.4590|17.4575,78.4624|17.4547,78.5483|17.4076,78.5527|17.4239,78.4590"
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
