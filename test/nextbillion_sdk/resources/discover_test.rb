# frozen_string_literal: true

require_relative "../test_helper"

class NextbillionSDK::Test::Resources::DiscoverTest < NextbillionSDK::Test::ResourceTest
  def test_retrieve_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.discover.retrieve(key: "key=API_KEY", q: "q=125, Berliner, berlin")

    assert_pattern do
      response => NextbillionSDK::Models::DiscoverRetrieveResponse
    end

    assert_pattern do
      response => {
        items: ^(NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::DiscoverRetrieveResponse::Item]) | nil
      }
    end
  end
end
