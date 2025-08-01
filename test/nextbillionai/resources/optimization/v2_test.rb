# frozen_string_literal: true

require_relative "../../test_helper"

class Nextbillionai::Test::Resources::Optimization::V2Test < Nextbillionai::Test::ResourceTest
  def test_retrieve_result_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.optimization.v2.retrieve_result(id: "id", key: "key=API_KEY")

    assert_pattern do
      response => Nextbillionai::Models::Optimization::V2RetrieveResultResponse
    end

    assert_pattern do
      response => {
        description: String | nil,
        message: String | nil,
        result: Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Result | nil,
        status: Nextbillionai::Models::Optimization::V2RetrieveResultResponse::Status | nil
      }
    end
  end

  def test_submit_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.optimization.v2.submit(
        key: "key=API_KEY",
        locations: {location: ["string"]},
        vehicles: [{id: "id", location: {lat: -90, lon: -180}}]
      )

    assert_pattern do
      response => Nextbillionai::PostResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        message: String | nil,
        status: String | nil,
        warnings: ^(Nextbillionai::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end
end
