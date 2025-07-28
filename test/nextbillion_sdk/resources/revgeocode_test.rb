# frozen_string_literal: true

require_relative "../test_helper"

class NextbillionSDK::Test::Resources::RevgeocodeTest < NextbillionSDK::Test::ResourceTest
  def test_retrieve_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.revgeocode.retrieve(at: "at=52.5308,13.3856", key: "key=API_KEY")

    assert_pattern do
      response => NextbillionSDK::Models::RevgeocodeRetrieveResponse
    end

    assert_pattern do
      response => {
        items: ^(NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::RevgeocodeRetrieveResponse::Item]) | nil
      }
    end
  end
end
