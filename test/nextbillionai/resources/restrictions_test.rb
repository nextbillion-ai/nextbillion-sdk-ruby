# frozen_string_literal: true

require_relative "../test_helper"

class Nextbillionai::Test::Resources::RestrictionsTest < Nextbillionai::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.restrictions.create(:turn, key: "key=API_KEY", area: "area", name: "name")

    assert_pattern do
      response => Nextbillionai::RichGroupResponse
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        area: String | nil,
        bbox: Nextbillionai::Internal::Type::Unknown | nil,
        comment: String | nil,
        create_at: Time | nil,
        direction: Nextbillionai::RichGroupResponse::Direction | nil,
        end_time: Float | nil,
        geofence: Nextbillionai::Internal::Type::Unknown | nil,
        highway: String | nil,
        mode: ^(Nextbillionai::Internal::Type::ArrayOf[String]) | nil,
        name: String | nil,
        repeat_on: String | nil,
        restriction_type: Nextbillionai::RichGroupResponse::RestrictionType | nil,
        speed: Float | nil,
        speed_limit: Float | nil,
        start_time: Float | nil,
        state: Nextbillionai::RichGroupResponse::State | nil,
        status: Nextbillionai::RichGroupResponse::Status | nil,
        update_at: Time | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.restrictions.retrieve(0, key: "key=API_KEY")

    assert_pattern do
      response => Nextbillionai::RichGroupResponse
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        area: String | nil,
        bbox: Nextbillionai::Internal::Type::Unknown | nil,
        comment: String | nil,
        create_at: Time | nil,
        direction: Nextbillionai::RichGroupResponse::Direction | nil,
        end_time: Float | nil,
        geofence: Nextbillionai::Internal::Type::Unknown | nil,
        highway: String | nil,
        mode: ^(Nextbillionai::Internal::Type::ArrayOf[String]) | nil,
        name: String | nil,
        repeat_on: String | nil,
        restriction_type: Nextbillionai::RichGroupResponse::RestrictionType | nil,
        speed: Float | nil,
        speed_limit: Float | nil,
        start_time: Float | nil,
        state: Nextbillionai::RichGroupResponse::State | nil,
        status: Nextbillionai::RichGroupResponse::Status | nil,
        update_at: Time | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.restrictions.update(0, key: "key=API_KEY", area: "area", name: "name")

    assert_pattern do
      response => Nextbillionai::RichGroupResponse
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        area: String | nil,
        bbox: Nextbillionai::Internal::Type::Unknown | nil,
        comment: String | nil,
        create_at: Time | nil,
        direction: Nextbillionai::RichGroupResponse::Direction | nil,
        end_time: Float | nil,
        geofence: Nextbillionai::Internal::Type::Unknown | nil,
        highway: String | nil,
        mode: ^(Nextbillionai::Internal::Type::ArrayOf[String]) | nil,
        name: String | nil,
        repeat_on: String | nil,
        restriction_type: Nextbillionai::RichGroupResponse::RestrictionType | nil,
        speed: Float | nil,
        speed_limit: Float | nil,
        start_time: Float | nil,
        state: Nextbillionai::RichGroupResponse::State | nil,
        status: Nextbillionai::RichGroupResponse::Status | nil,
        update_at: Time | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.restrictions.list(area: "area", key: "key=API_KEY", limit: 0, offset: 0)

    assert_pattern do
      response => Nextbillionai::Models::RestrictionListResponse
    end

    assert_pattern do
      response => {
        data: ^(Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::RichGroupResponse]) | nil,
        meta: Nextbillionai::Models::RestrictionListResponse::Meta | nil
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.restrictions.delete(0, key: "key=API_KEY")

    assert_pattern do
      response => Nextbillionai::Models::RestrictionDeleteResponse
    end

    assert_pattern do
      response => {
        id: Float | nil,
        state: String | nil
      }
    end
  end

  def test_list_by_bbox_required_params
    skip("Prism tests are disabled")

    response =
      @nextbillion_sdk.restrictions.list_by_bbox(
        key: "key=API_KEY",
        max_lat: 0,
        max_lon: 0,
        min_lat: 0,
        min_lon: 0
      )

    assert_pattern do
      response => ^(Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::RichGroupResponse])
    end
  end

  def test_set_state_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.restrictions.set_state(0, key: "key=API_KEY", state: :enabled)

    assert_pattern do
      response => Nextbillionai::RichGroupResponse
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        area: String | nil,
        bbox: Nextbillionai::Internal::Type::Unknown | nil,
        comment: String | nil,
        create_at: Time | nil,
        direction: Nextbillionai::RichGroupResponse::Direction | nil,
        end_time: Float | nil,
        geofence: Nextbillionai::Internal::Type::Unknown | nil,
        highway: String | nil,
        mode: ^(Nextbillionai::Internal::Type::ArrayOf[String]) | nil,
        name: String | nil,
        repeat_on: String | nil,
        restriction_type: Nextbillionai::RichGroupResponse::RestrictionType | nil,
        speed: Float | nil,
        speed_limit: Float | nil,
        start_time: Float | nil,
        state: Nextbillionai::RichGroupResponse::State | nil,
        status: Nextbillionai::RichGroupResponse::Status | nil,
        update_at: Time | nil
      }
    end
  end
end
