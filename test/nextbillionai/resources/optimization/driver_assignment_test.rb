# frozen_string_literal: true

require_relative "../../test_helper"

class Nextbillionai::Test::Resources::Optimization::DriverAssignmentTest < Nextbillionai::Test::ResourceTest
  def test_assign_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.optimization.driver_assignment.assign(
        key: "key=API_KEY",
        filter: {},
        orders: [{id: "id", pickup: {}}],
        vehicles: [{id: "id", location: {}}]
      )

    assert_pattern do
      response => Nextbillionai::Models::Optimization::DriverAssignmentAssignResponse
    end

    assert_pattern do
      response => {
        message: String | nil,
        result: Nextbillionai::Models::Optimization::DriverAssignmentAssignResponse::Result | nil,
        status: Integer | nil
      }
    end
  end
end
