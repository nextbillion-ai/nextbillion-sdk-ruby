# frozen_string_literal: true

require_relative "../test_helper"

class Nextbillionai::Test::Resources::DirectionsTest < Nextbillionai::Test::ResourceTest
  def test_compute_route_required_params
    skip("Prism tests are disabled")

    response =
      @nextbillion_sdk.directions.compute_route(
        destination: "41.349302,2.136480",
        origin: "41.349302,2.136480"
      )

    assert_pattern do
      response => Nextbillionai::Models::DirectionComputeRouteResponse
    end

    assert_pattern do
      response => {
        msg: String | nil,
        route: Nextbillionai::Models::DirectionComputeRouteResponse::Route | nil,
        status: String | nil
      }
    end
  end
end
