# frozen_string_literal: true

require_relative "../../test_helper"

class NextbillionSDK::Test::Resources::Skynet::NamespacedApikeysTest < NextbillionSDK::Test::ResourceTest
  def test_create_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.skynet.namespaced_apikeys.create(key: "key=API_KEY", namespace: "namespace=test_name")

    assert_pattern do
      response => NextbillionSDK::Models::Skynet::NamespacedApikeyCreateResponse
    end

    assert_pattern do
      response => {
        error: String | nil,
        message: String | nil,
        result: NextbillionSDK::Models::Skynet::NamespacedApikeyCreateResponse::Result | nil,
        status: Integer | nil
      }
    end
  end

  def test_delete_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @nextbillion_sdk.skynet.namespaced_apikeys.delete(
        key: "key=API_KEY",
        key_to_delete: "key_to_delete",
        namespace: "namespace"
      )

    assert_pattern do
      response => NextbillionSDK::Models::Skynet::NamespacedApikeyDeleteResponse
    end

    assert_pattern do
      response => {
        msg: String | nil,
        status: Integer | nil
      }
    end
  end
end
