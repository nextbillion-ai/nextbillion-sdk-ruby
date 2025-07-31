# frozen_string_literal: true

require_relative "../test_helper"

class NextbillionSDK::Test::Resources::RouteReportTest < NextbillionSDK::Test::ResourceTest
  def test_create_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.route_report.create(
        key: "key=API_KEY",
        original_shape: "original_shape=sbp}_Almgp`FnLuToKmKviB{eDlcGhpFvj@qbAwoA_mA",
        original_shape_type: :"`polyline`"
      )

    assert_pattern do
      response => NextbillionSDK::Models::RouteReportCreateResponse
    end

    assert_pattern do
      response => {
        geometry: ^(NextbillionSDK::Internal::Type::ArrayOf[String]) | nil,
        mileage: ^(NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::RouteReportCreateResponse::Mileage]) | nil,
        msg: String | nil,
        road_summary: ^(NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::RouteReportCreateResponse::RoadSummary]) | nil,
        status: String | nil
      }
    end
  end
end
