# frozen_string_literal: true

require_relative "../test_helper"

class Nextbillionai::Test::Resources::RestrictionsItemsTest < Nextbillionai::Test::ResourceTest
  def test_list_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.restrictions_items.list(max_lat: 0, max_lon: 0, min_lat: 0, min_lon: 0)

    assert_pattern do
      response => ^(Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::RestrictionsItemListResponseItem])
    end
  end
end
