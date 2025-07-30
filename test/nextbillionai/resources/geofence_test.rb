# frozen_string_literal: true

require_relative "../test_helper"

class Nextbillionai::Test::Resources::GeofenceTest < Nextbillionai::Test::ResourceTest
  def test_create_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.geofence.create(key: "key=API_KEY", type: :"`circle`")

    assert_pattern do
      response => Nextbillionai::Models::GeofenceCreateResponse
    end

    assert_pattern do
      response => {
        data: Nextbillionai::Models::GeofenceCreateResponse::Data | nil,
        status: String | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.geofence.retrieve("id", key: "key=API_KEY")

    assert_pattern do
      response => Nextbillionai::Models::GeofenceRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Nextbillionai::Models::GeofenceRetrieveResponse::Data | nil,
        status: String | nil
      }
    end
  end

  def test_update_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.geofence.update("id", key: "key=API_KEY")

    assert_pattern do
      response => Nextbillionai::Skynet::SimpleResp
    end

    assert_pattern do
      response => {
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_list_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.geofence.list(key: "key=API_KEY")

    assert_pattern do
      response => Nextbillionai::Models::GeofenceListResponse
    end

    assert_pattern do
      response => {
        data: Nextbillionai::Models::GeofenceListResponse::Data | nil,
        status: String | nil
      }
    end
  end

  def test_delete_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.geofence.delete("id", key: "key=API_KEY")

    assert_pattern do
      response => Nextbillionai::Skynet::SimpleResp
    end

    assert_pattern do
      response => {
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_contains_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.geofence.contains(
        key: "key=API_KEY",
        locations: "13.25805884388484,77.91083661048299|13.25805884388484,77.91083661048299"
      )

    assert_pattern do
      response => Nextbillionai::Models::GeofenceContainsResponse
    end

    assert_pattern do
      response => {
        data: Nextbillionai::Models::GeofenceContainsResponse::Data | nil,
        status: String | nil
      }
    end
  end
end
