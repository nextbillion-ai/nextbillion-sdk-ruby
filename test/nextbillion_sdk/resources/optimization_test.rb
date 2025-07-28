# frozen_string_literal: true

require_relative "../test_helper"

class NextbillionSDK::Test::Resources::OptimizationTest < NextbillionSDK::Test::ResourceTest
  def test_compute_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.optimization.compute(
        coordinates: "coordinates=41.35544869444527,2.0747669962025292|41.37498154684205,2.103705 4530396886|41.38772862000152,2.1311887061315526",
        key: "key=API_KEY"
      )

    assert_pattern do
      response => NextbillionSDK::Models::OptimizationComputeResponse
    end

    assert_pattern do
      response => {
        code: String | nil,
        location: NextbillionSDK::Models::OptimizationComputeResponse::Location | nil,
        trips: ^(NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::OptimizationComputeResponse::Trip]) | nil,
        waypoints: ^(NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::OptimizationComputeResponse::Waypoint]) | nil
      }
    end
  end

  def test_re_optimize_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.optimization.re_optimize(
        key: "key=API_KEY",
        existing_request_id: "existing_request_id"
      )

    assert_pattern do
      response => NextbillionSDK::PostResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        message: String | nil,
        status: String | nil,
        warnings: ^(NextbillionSDK::Internal::Type::ArrayOf[String]) | nil
      }
    end
  end
end
