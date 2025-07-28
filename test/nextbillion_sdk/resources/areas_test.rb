# frozen_string_literal: true

require_relative "../test_helper"

class NextbillionSDK::Test::Resources::AreasTest < NextbillionSDK::Test::ResourceTest
  def test_list_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.areas.list(key: "key=API_KEY")

    assert_pattern do
      response => ^(NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::AreaListResponseItem])
    end
  end
end
