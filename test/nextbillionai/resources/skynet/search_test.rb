# frozen_string_literal: true

require_relative "../../test_helper"

class Nextbillionai::Test::Resources::Skynet::SearchTest < Nextbillionai::Test::ResourceTest
  def test_around_required_params
    skip("Prism tests are disabled")

    response =
      @nextbillion_sdk.skynet.search.around(center: "56.597801,43.967836", key: "key=API_KEY", radius: 0)

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

  def test_bound_required_params
    skip("Prism tests are disabled")

    response =
      @nextbillion_sdk.skynet.search.bound(
        bound: "bounds=44.7664,-0.6941|44.9206,-0.4639",
        key: "key=API_KEY"
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
