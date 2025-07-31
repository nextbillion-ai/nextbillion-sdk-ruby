# frozen_string_literal: true

require_relative "../../test_helper"

class Nextbillionai::Test::Resources::Geofence::ConsoleTest < Nextbillionai::Test::ResourceTest
  def test_preview_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.geofence.console.preview(type: :circle)

    assert_pattern do
      response => Nextbillionai::Models::Geofence::ConsolePreviewResponse
    end

    assert_pattern do
      response => {
        data: Nextbillionai::Models::Geofence::ConsolePreviewResponse::Data | nil,
        message: String | nil
      }
    end
  end

  def test_search_required_params
    skip("skipped: tests are disabled for the time being")

    response = @nextbillion_sdk.geofence.console.search(query: "query")

    assert_pattern do
      response => Nextbillionai::Models::Geofence::ConsoleSearchResponse
    end

    assert_pattern do
      response => {
        data: Nextbillionai::Models::Geofence::ConsoleSearchResponse::Data,
        status: String
      }
    end
  end
end
