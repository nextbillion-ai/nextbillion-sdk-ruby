# frozen_string_literal: true

require_relative "../../../test_helper"

class NextbillionSDK::Test::Resources::Fleetify::Routes::StepsTest < NextbillionSDK::Test::ResourceTest
  def test_create_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.fleetify.routes.steps.create(
        "routeID",
        key: "key",
        arrival: 0,
        location: [0],
        position: 0,
        type: :"`start`"
      )

    assert_pattern do
      response => NextbillionSDK::Models::Fleetify::Routes::StepCreateResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Fleetify::Routes::RouteStepsResponse | nil,
        message: String | nil,
        status: Integer | nil
      }
    end
  end

  def test_update_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.fleetify.routes.steps.update(
        "stepID",
        route_id: "routeID",
        key: "key",
        arrival: 0,
        position: 0
      )

    assert_pattern do
      response => NextbillionSDK::Models::Fleetify::Routes::StepUpdateResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Fleetify::Routes::RouteStepsResponse | nil,
        message: String | nil,
        status: Integer | nil
      }
    end
  end

  def test_delete_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.fleetify.routes.steps.delete("stepID", route_id: "routeID", key: "key")

    assert_pattern do
      response => NextbillionSDK::Models::Fleetify::Routes::StepDeleteResponse
    end

    assert_pattern do
      response => {
        message: String | nil,
        status: Integer | nil
      }
    end
  end

  def test_complete_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.fleetify.routes.steps.complete("stepID", route_id: "routeID", key: "key")

    assert_pattern do
      response => nil
    end
  end
end
