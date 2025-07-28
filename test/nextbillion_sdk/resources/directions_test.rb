# frozen_string_literal: true

require_relative "../test_helper"

class NextbillionSDK::Test::Resources::DirectionsTest < NextbillionSDK::Test::ResourceTest
  def test_compute_route_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.directions.compute_route(
        destination: "41.349302,2.136480",
        origin: "41.349302,2.136480"
      )

    assert_pattern do
      response => NextbillionSDK::Models::DirectionComputeRouteResponse
    end

    assert_pattern do
      response => {
        msg: String | nil,
        route: NextbillionSDK::Models::DirectionComputeRouteResponse::Route | nil,
        status: String | nil
      }
    end
  end
end
