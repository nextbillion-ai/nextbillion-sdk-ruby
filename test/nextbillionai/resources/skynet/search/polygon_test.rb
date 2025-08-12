# frozen_string_literal: true

require_relative "../../../test_helper"

class Nextbillionai::Test::Resources::Skynet::Search::PolygonTest < Nextbillionai::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @nextbillion_sdk.skynet.search.polygon.create(
        key: "key=API_KEY",
        polygon: {coordinates: [0], type: "type"}
      )

    assert_pattern do
      response => Nextbillionai::Skynet::SearchResponse
    end

    assert_pattern do
      response => {
        data: Nextbillionai::Skynet::SearchResponse::Data | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response =
      @nextbillion_sdk.skynet.search.polygon.get(
        key: "key=API_KEY",
        polygon: "polygon=17.4239,78.4590|17.4575,78.4624|17.4547,78.5483|17.4076,78.5527|17.4239,78.4590"
      )

    assert_pattern do
      response => Nextbillionai::Skynet::SearchResponse
    end

    assert_pattern do
      response => {
        data: Nextbillionai::Skynet::SearchResponse::Data | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end
end
