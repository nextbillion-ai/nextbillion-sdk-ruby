# frozen_string_literal: true

require_relative "../test_helper"

class NextbillionSDK::Test::Resources::BrowseTest < NextbillionSDK::Test::ResourceTest
  def test_search_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.browse.search(key: "key=API_KEY")

    assert_pattern do
      response => NextbillionSDK::Models::BrowseSearchResponse
    end

    assert_pattern do
      response => {
        items: ^(NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::BrowseSearchResponse::Item]) | nil
      }
    end
  end
end
