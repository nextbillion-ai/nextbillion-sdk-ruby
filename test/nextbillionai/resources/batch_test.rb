# frozen_string_literal: true

require_relative "../test_helper"

class Nextbillionai::Test::Resources::BatchTest < Nextbillionai::Test::ResourceTest
  def test_create_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.batch.create(key: "key=API_KEY")

    assert_pattern do
      response => Nextbillionai::Models::BatchCreateResponse
    end

    assert_pattern do
      response => {
        msg: String | nil,
        status: String | nil,
        track_id: String | nil
      }
    end
  end

  def test_retrieve_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.batch.retrieve(key: "key=API_KEY", track_id: "track_id")

    assert_pattern do
      response => Nextbillionai::Models::BatchRetrieveResponse
    end

    assert_pattern do
      response => {
        msg: String | nil,
        responses: ^(Nextbillionai::Internal::Type::ArrayOf[Nextbillionai::Models::BatchRetrieveResponse::Response]) | nil,
        status: String | nil,
        track_id: String | nil
      }
    end
  end
end
