# frozen_string_literal: true

require_relative "../../test_helper"

class NextbillionSDK::Test::Resources::Skynet::TripTest < NextbillionSDK::Test::ResourceTest
  def test_retrieve_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.trip.retrieve("id", key: "key=API_KEY")

    assert_pattern do
      response => NextbillionSDK::Models::Skynet::TripRetrieveResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Models::Skynet::TripRetrieveResponse::Data | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_update_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.trip.update("id", key: "key=API_KEY", asset_id: "asset_id")

    assert_pattern do
      response => NextbillionSDK::Skynet::SimpleResp
    end

    assert_pattern do
      response => {
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_delete_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.trip.delete("id", key: "key=API_KEY")

    assert_pattern do
      response => NextbillionSDK::Skynet::SimpleResp
    end

    assert_pattern do
      response => {
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_end__required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.trip.end_(key: "key=API_KEY", id: "id")

    assert_pattern do
      response => NextbillionSDK::Skynet::SimpleResp
    end

    assert_pattern do
      response => {
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_get_summary_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.trip.get_summary("id", key: "key=API_KEY")

    assert_pattern do
      response => NextbillionSDK::Models::Skynet::TripGetSummaryResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Models::Skynet::TripGetSummaryResponse::Data | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end

  def test_start_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.skynet.trip.start(key: "key=API_KEY", asset_id: "asset_id")

    assert_pattern do
      response => NextbillionSDK::Models::Skynet::TripStartResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Models::Skynet::TripStartResponse::Data | nil,
        message: String | nil,
        status: String | nil
      }
    end
  end
end
