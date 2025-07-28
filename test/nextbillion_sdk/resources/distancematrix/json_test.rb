# frozen_string_literal: true

require_relative "../../test_helper"

class NextbillionSDK::Test::Resources::Distancematrix::JsonTest < NextbillionSDK::Test::ResourceTest
  def test_create
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.distancematrix.json.create

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.distancematrix.json.retrieve(
        destinations: "destinations=41.349302,2.136480|41.389925,2.136258|41.357961,2.097878",
        key: "key=API_KEY",
        origins: "origins:41.349302,2.136480|41.389925,2.136258|41.357961,2.097878"
      )

    assert_pattern do
      response => NextbillionSDK::Models::Distancematrix::JsonRetrieveResponse
    end

    assert_pattern do
      response => {
        msg: String | nil,
        rows: ^(NextbillionSDK::Internal::Type::ArrayOf[NextbillionSDK::Models::Distancematrix::JsonRetrieveResponse::Row]) | nil,
        status: String | nil
      }
    end
  end
end
