# frozen_string_literal: true

require_relative "../test_helper"

class NextbillionSDK::Test::Resources::NavigationTest < NextbillionSDK::Test::ResourceTest
  def test_retrieve_route_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.navigation.retrieve_route(key: "key=API_KEY")

    assert_pattern do
      response => NextbillionSDK::Models::NavigationRetrieveRouteResponse
    end

    assert_pattern do
      response => {
        msg: String | nil,
        routes: ^(NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::NavigationRetrieveRouteResponse::Route]) | nil,
        status: String | nil,
        warning: ^(NextbillionSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end
end
