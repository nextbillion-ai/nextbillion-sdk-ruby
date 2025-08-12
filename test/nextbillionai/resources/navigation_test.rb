# frozen_string_literal: true

require_relative "../test_helper"

class Nextbillionai::Test::Resources::NavigationTest < Nextbillionai::Test::ResourceTest
  def test_retrieve_route_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.navigation.retrieve_route(key: "key=API_KEY")

    assert_pattern do
      response => Nextbillionai::Models::NavigationRetrieveRouteResponse
    end

    assert_pattern do
      response => {
        msg: String | nil,
        routes: ^(Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::NavigationRetrieveRouteResponse::Route]) | nil,
        status: String | nil,
        warning: ^(Nextbillionai::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end
end
