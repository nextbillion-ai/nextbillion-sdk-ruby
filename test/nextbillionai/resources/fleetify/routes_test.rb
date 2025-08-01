# frozen_string_literal: true

require_relative "../../test_helper"

class Nextbillionai::Test::Resources::Fleetify::RoutesTest < Nextbillionai::Test::ResourceTest
  def test_create_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.fleetify.routes.create(
        key: "key",
        driver_email: "johndoe@abc.com",
        steps: [{arrival: 0, location: [0], type: :start}]
      )

    assert_pattern do
      response => Nextbillionai::Models::Fleetify::RouteCreateResponse
    end

    assert_pattern do
      response => {
        data: Nextbillionai::Models::Fleetify::RouteCreateResponse::Data | nil,
        status: Integer | nil
      }
    end
  end

  def test_redispatch_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.fleetify.routes.redispatch(
        "routeID",
        key: "key",
        operations: [{data: {}, operation: :create}]
      )

    assert_pattern do
      response => Nextbillionai::Models::Fleetify::RouteRedispatchResponse
    end

    assert_pattern do
      response => {
        data: Nextbillionai::Models::Fleetify::RouteRedispatchResponse::Data | nil,
        message: String | nil,
        status: Integer | nil
      }
    end
  end
end
