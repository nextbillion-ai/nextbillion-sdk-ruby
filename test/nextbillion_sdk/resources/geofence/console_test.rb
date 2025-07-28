# frozen_string_literal: true

require_relative "../../test_helper"

class NextbillionSDK::Test::Resources::Geofence::ConsoleTest < NextbillionSDK::Test::ResourceTest
  def test_preview_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.geofence.console.preview(type: :"`circle`")

    assert_pattern do
      response => NextbillionSDK::Models::Geofence::ConsolePreviewResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Models::Geofence::ConsolePreviewResponse::Data | nil,
        message: String | nil
      }
    end
  end

  def test_search_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.geofence.console.search(query: "query")

    assert_pattern do
      response => NextbillionSDK::Models::Geofence::ConsoleSearchResponse
    end

    assert_pattern do
      response => {
        data: NextbillionSDK::Models::Geofence::ConsoleSearchResponse::Data,
        status: String
      }
    end
  end
end
