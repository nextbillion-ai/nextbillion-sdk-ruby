# frozen_string_literal: true

require_relative "../test_helper"

class NextbillionSDK::Test::Resources::SnapToRoadsTest < NextbillionSDK::Test::ResourceTest
  def test_snap_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.snap_to_roads.snap(
        key: "key=API_KEY",
        path: "path=41.38602272,2.17621539|41.38312885,2.17207083|41.38157854,2.17906668|41.38288511,2.18186215"
      )

    assert_pattern do
      response => NextbillionSDK::Models::SnapToRoadSnapResponse
    end

    assert_pattern do
      response => {
        distance: Integer | nil,
        geojson: NextbillionSDK::Models::SnapToRoadSnapResponse::Geojson | nil,
        geometry: ^(NextbillionSDK::Internal::Type::ArrayOf[String]) | nil,
        msg: String | nil,
        road_info: NextbillionSDK::Models::SnapToRoadSnapResponse::RoadInfo | nil,
        snapped_points: ^(NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::SnapToRoadSnapResponse::SnappedPoint]) | nil,
        status: String | nil
      }
    end
  end
end
