# frozen_string_literal: true

require_relative "../test_helper"

class NextbillionSDK::Test::Resources::IsochroneTest < NextbillionSDK::Test::ResourceTest
  def test_compute_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.isochrone.compute(
        contours_meters: 0,
        contours_minutes: 0,
        coordinates: "coordinates=1.29363713,103.8383112",
        key: "key=API_KEY"
      )

    assert_pattern do
      response => NextbillionSDK::Models::IsochroneComputeResponse
    end

    assert_pattern do
      response => {
        features: ^(NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::IsochroneComputeResponse::Feature]) | nil,
        msg: String | nil,
        status: String | nil,
        type: String | nil
      }
    end
  end
end
