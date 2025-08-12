# frozen_string_literal: true

require_relative "../test_helper"

class Nextbillionai::Test::Resources::RouteReportTest < Nextbillionai::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @nextbillion_sdk.route_report.create(
        key: "key=API_KEY",
        original_shape: "original_shape=sbp}_AlmgpFnLuToKmKviB{eDlcGhpFvj@qbAwoA_mA",
        original_shape_type: :polyline
      )

    assert_pattern do
      response => Nextbillionai::Models::RouteReportCreateResponse
    end

    assert_pattern do
      response => {
        geometry: ^(Nextbillionai::Internal::Type::ArrayOf[String]) | nil,
        mileage: ^(Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::RouteReportCreateResponse::Mileage]) | nil,
        msg: String | nil,
        road_summary: ^(Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::RouteReportCreateResponse::RoadSummary]) | nil,
        status: String | nil
      }
    end
  end
end
