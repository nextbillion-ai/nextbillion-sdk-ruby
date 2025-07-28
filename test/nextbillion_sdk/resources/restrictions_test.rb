# frozen_string_literal: true

require_relative "../test_helper"

class NextbillionSDK::Test::Resources::RestrictionsTest < NextbillionSDK::Test::ResourceTest
  def test_create_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.restrictions.create(:turn, key: "key=API_KEY", area: "area", name: "name")

    assert_pattern do
      response => NextbillionSDK::RichGroupResponse
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        area: String | nil,
        bbox: NextbillionSDK::Internal::Type::Unknown | nil,
        comment: String | nil,
        create_at: Time | nil,
        direction: NextbillionSDK::RichGroupResponse::Direction | nil,
        end_time: Float | nil,
        geofence: NextbillionSDK::Internal::Type::Unknown | nil,
        highway: String | nil,
        mode: ^(NextbillionSDK::Internal::Type::ArrayOf[String]) | nil,
        name: String | nil,
        repeat_on: String | nil,
        restriction_type: NextbillionSDK::RichGroupResponse::RestrictionType | nil,
        speed: Float | nil,
        speed_limit: Float | nil,
        start_time: Float | nil,
        state: NextbillionSDK::RichGroupResponse::State | nil,
        status: NextbillionSDK::RichGroupResponse::Status | nil,
        update_at: Time | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.restrictions.retrieve(0, key: "key=API_KEY")

    assert_pattern do
      response => NextbillionSDK::RichGroupResponse
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        area: String | nil,
        bbox: NextbillionSDK::Internal::Type::Unknown | nil,
        comment: String | nil,
        create_at: Time | nil,
        direction: NextbillionSDK::RichGroupResponse::Direction | nil,
        end_time: Float | nil,
        geofence: NextbillionSDK::Internal::Type::Unknown | nil,
        highway: String | nil,
        mode: ^(NextbillionSDK::Internal::Type::ArrayOf[String]) | nil,
        name: String | nil,
        repeat_on: String | nil,
        restriction_type: NextbillionSDK::RichGroupResponse::RestrictionType | nil,
        speed: Float | nil,
        speed_limit: Float | nil,
        start_time: Float | nil,
        state: NextbillionSDK::RichGroupResponse::State | nil,
        status: NextbillionSDK::RichGroupResponse::Status | nil,
        update_at: Time | nil
      }
    end
  end

  def test_update_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.restrictions.update(0, key: "key=API_KEY", area: "area", name: "name")

    assert_pattern do
      response => NextbillionSDK::RichGroupResponse
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        area: String | nil,
        bbox: NextbillionSDK::Internal::Type::Unknown | nil,
        comment: String | nil,
        create_at: Time | nil,
        direction: NextbillionSDK::RichGroupResponse::Direction | nil,
        end_time: Float | nil,
        geofence: NextbillionSDK::Internal::Type::Unknown | nil,
        highway: String | nil,
        mode: ^(NextbillionSDK::Internal::Type::ArrayOf[String]) | nil,
        name: String | nil,
        repeat_on: String | nil,
        restriction_type: NextbillionSDK::RichGroupResponse::RestrictionType | nil,
        speed: Float | nil,
        speed_limit: Float | nil,
        start_time: Float | nil,
        state: NextbillionSDK::RichGroupResponse::State | nil,
        status: NextbillionSDK::RichGroupResponse::Status | nil,
        update_at: Time | nil
      }
    end
  end

  def test_list_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.restrictions.list(area: "area", key: "key=API_KEY", limit: 0, offset: 0)

    assert_pattern do
      response => NextbillionSDK::Models::RestrictionListResponse
    end

    assert_pattern do
      response => {
        data: ^(NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::RichGroupResponse]) | nil,
        meta: NextbillionSDK::Models::RestrictionListResponse::Meta | nil
      }
    end
  end

  def test_delete_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.restrictions.delete(0, key: "key=API_KEY")

    assert_pattern do
      response => NextbillionSDK::Models::RestrictionDeleteResponse
    end

    assert_pattern do
      response => {
        id: Float | nil,
        state: String | nil
      }
    end
  end

  def test_list_by_bbox_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.restrictions.list_by_bbox(
        key: "key=API_KEY",
        max_lat: 0,
        max_lon: 0,
        min_lat: 0,
        min_lon: 0
      )

    assert_pattern do
      response => ^(NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::RichGroupResponse])
    end
  end

  def test_set_state_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.restrictions.set_state(0, key: "key=API_KEY", state: :"`enabled`")

    assert_pattern do
      response => NextbillionSDK::RichGroupResponse
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        area: String | nil,
        bbox: NextbillionSDK::Internal::Type::Unknown | nil,
        comment: String | nil,
        create_at: Time | nil,
        direction: NextbillionSDK::RichGroupResponse::Direction | nil,
        end_time: Float | nil,
        geofence: NextbillionSDK::Internal::Type::Unknown | nil,
        highway: String | nil,
        mode: ^(NextbillionSDK::Internal::Type::ArrayOf[String]) | nil,
        name: String | nil,
        repeat_on: String | nil,
        restriction_type: NextbillionSDK::RichGroupResponse::RestrictionType | nil,
        speed: Float | nil,
        speed_limit: Float | nil,
        start_time: Float | nil,
        state: NextbillionSDK::RichGroupResponse::State | nil,
        status: NextbillionSDK::RichGroupResponse::Status | nil,
        update_at: Time | nil
      }
    end
  end
end
