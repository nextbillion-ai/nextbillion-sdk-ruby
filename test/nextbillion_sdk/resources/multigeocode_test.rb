# frozen_string_literal: true

require_relative "../test_helper"

class NextbillionSDK::Test::Resources::MultigeocodeTest < NextbillionSDK::Test::ResourceTest
  def test_search_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.multigeocode.search(
        key: "key=API_KEY",
        at: {lat: 0, lng: 0},
        query: "“query”: “Taj Mahal”"
      )

    assert_pattern do
      response => NextbillionSDK::Models::MultigeocodeSearchResponse
    end

    assert_pattern do
      response => {
        entities: ^(NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::MultigeocodeSearchResponse::Entity]) | nil
      }
    end
  end
end
