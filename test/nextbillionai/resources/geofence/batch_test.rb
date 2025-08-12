# frozen_string_literal: true

require_relative "../../test_helper"

class Nextbillionai::Test::Resources::Geofence::BatchTest < Nextbillionai::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.geofence.batch.create(key: "key=API_KEY")

    assert_pattern do
      response => Nextbillionai::Models::Geofence::BatchCreateResponse
    end

    assert_pattern do
      response => {
        data: Nextbillionai::Models::Geofence::BatchCreateResponse::Data | nil,
        status: String | nil
      }
    end
  end

  def test_list_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.geofence.batch.list(ids: "ids", key: "key=API_KEY")

    assert_pattern do
      response => Nextbillionai::Models::Geofence::BatchListResponse
    end

    assert_pattern do
      response => {
        data: Nextbillionai::Models::Geofence::BatchListResponse::Data,
        status: String
      }
    end
  end

  def test_delete_required_params
    skip("Prism tests are disabled")

    response = @nextbillion_sdk.geofence.batch.delete(key: "key=API_KEY")

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
end
