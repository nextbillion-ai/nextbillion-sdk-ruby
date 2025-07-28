# frozen_string_literal: true

require_relative "../test_helper"

class NextbillionSDK::Test::Resources::RestrictionsItemsTest < NextbillionSDK::Test::ResourceTest
  def test_list_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.restrictions_items.list(max_lat: 0, max_lon: 0, min_lat: 0, min_lon: 0)

    assert_pattern do
      response => ^(NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::RestrictionsItemListResponseItem])
    end
  end
end
