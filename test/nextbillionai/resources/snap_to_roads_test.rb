# frozen_string_literal: true

require_relative "../test_helper"

class Nextbillionai::Test::Resources::SnapToRoadsTest < Nextbillionai::Test::ResourceTest
  def test_snap_required_params
    skip("Prism tests are disabled")

    response =
      @nextbillion_sdk.snap_to_roads.snap(
        key: "key=API_KEY",
        path: "path=41.38602272,2.17621539|41.38312885,2.17207083|41.38157854,2.17906668|41.38288511,2.18186215"
      )

    assert_pattern do
      response => Nextbillionai::Models::SnapToRoadSnapResponse
    end

    assert_pattern do
      response => {
        distance: Integer | nil,
        geojson: Nextbillionai::Models::SnapToRoadSnapResponse::Geojson | nil,
        geometry: ^(Nextbillionai::Internal::Type::ArrayOf[String]) | nil,
        msg: String | nil,
        road_info: Nextbillionai::Models::SnapToRoadSnapResponse::RoadInfo | nil,
        snapped_points: ^(Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::SnapToRoadSnapResponse::SnappedPoint]) | nil,
        status: String | nil
      }
    end
  end
end
